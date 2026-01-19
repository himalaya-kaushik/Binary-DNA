import sys
import os
import subprocess
from qdrant_client import QdrantClient
from transformers import AutoTokenizer, AutoModel
import torch

# --- CONFIGURATION ---
EXTRACTOR = "./extractor"
COLLECTION = "binary_dna_pro"
THRESHOLD = 0.85  # 85% Similarity required to trigger an alert

# --- SETUP ---
print("1. Loading CodeBERT Scanner...")
tokenizer = AutoTokenizer.from_pretrained("microsoft/codebert-base")
model = AutoModel.from_pretrained("microsoft/codebert-base")

client = QdrantClient(host="localhost", port=6333)

# --- HELPER FUNCTIONS (Reused from Ingest) ---
def get_function_map(file_path):
    """Finds functions in the binary using nm"""
    cmd = ["nm", "-n", file_path] 
    result = subprocess.run(cmd, capture_output=True, text=True)
    symbols = []
    for line in result.stdout.splitlines():
        parts = line.split()
        if len(parts) >= 3:
            try:
                addr = int(parts[0], 16)
                name = parts[-1]
                symbols.append({"addr": addr, "name": name})
            except: continue

    functions = []
    for i in range(len(symbols) - 1):
        curr = symbols[i]
        next_sym = symbols[i+1]
        size = next_sym["addr"] - curr["addr"]
        if size > 0:
            functions.append({"start": hex(curr["addr"]), "size": str(size), "name": curr["name"]})
    return functions

def embed_code(text):
    """Convert Assembly to Vector"""
    inputs = tokenizer(text, return_tensors="pt", padding=True, truncation=True, max_length=512)
    with torch.no_grad():
        outputs = model(**inputs)
    return outputs.pooler_output[0].tolist()

# --- MAIN SCANNING LOGIC ---
def scan_file(file_path):
    print(f"\n--- SCANNING: {os.path.basename(file_path)} ---")
    
    # 1. Break file into functions
    funcs = get_function_map(file_path)
    if not funcs:
        print("[!] No functions found. Is this a compiled .o file?")
        return

    vulnerabilities_found = 0

    for func in funcs:
        # Skip internal system functions
        if func['name'].startswith("_") and "bad" not in func['name']: 
            continue

        # 2. Extract Assembly
        cmd = [EXTRACTOR, file_path, func['start'], func['size']]
        res = subprocess.run(cmd, capture_output=True, text=True)
        assembly = res.stdout.strip()
        
        if len(assembly) < 10: continue

        # 3. Vectorize
        vector = embed_code(assembly)

        # 4. Ask Qdrant (UPDATED COMMAND FOR NEW VERSION)
        # We use query_points() instead of search()
        results = client.query_points(
            collection_name=COLLECTION,
            query=vector, # New API uses 'query', not 'query_vector'
            limit=1
        ).points

        if not results: continue

        match = results[0]
        score = match.score
        match_type = match.payload['type']
        match_name = match.payload['function']

        # 5. The Verdict
        if score > THRESHOLD:
            if match_type == "VULNERABLE":
                print(f"\n[!!!] VULNERABILITY DETECTED [!!!]")
                print(f"   Function: {func['name']}")
                print(f"   Matches:  {match_name}")
                print(f"   Confidence: {score*100:.2f}%")
                print(f"   Signature: {match.payload['filename']}")
                vulnerabilities_found += 1
            else:
                print(f"   [OK] {func['name']} looks safe (Matches {match_name} @ {score*100:.1f}%)")
        else:
            print(f"   [?] {func['name']} is Unknown (Low similarity)")

    print("-" * 30)
    if vulnerabilities_found > 0:
        print(f"RESULT: ❌ FILE IS DANGEROUS ({vulnerabilities_found} threats detected)")
    else:
        print("RESULT: ✅ FILE APPEARS SAFE")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 scan.py <path_to_binary.o>")
    else:
        scan_file(sys.argv[1])