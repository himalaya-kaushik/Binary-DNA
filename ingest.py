import os
import subprocess
import sys
from qdrant_client import QdrantClient
from qdrant_client.models import PointStruct, VectorParams, Distance
from transformers import AutoTokenizer, AutoModel
import torch

# --- CONFIGURATION ---
EXTRACTOR = "./extractor"
BINARY_DIR = "./data/binaries"
COLLECTION_NAME = "binary_dna_pro"

# --- 1. SETUP ---
print("1. Loading AI & Database...")
tokenizer = AutoTokenizer.from_pretrained("microsoft/codebert-base")
model = AutoModel.from_pretrained("microsoft/codebert-base")

client = QdrantClient(host="localhost", port=6333)
client.recreate_collection(
    collection_name=COLLECTION_NAME,
    vectors_config=VectorParams(size=768, distance=Distance.COSINE),
)

def get_function_map(file_path):
    file_size = os.path.getsize(file_path)
    cmd = ["nm", "-n", file_path]
    result = subprocess.run(cmd, capture_output=True, text=True)
    
    symbols = []
    for line in result.stdout.splitlines():
        parts = line.split()
        if len(parts) >= 3:
            try:
                addr = int(parts[0], 16)
                name = parts[-1]
                
                if name.startswith("ltmp") or name.startswith("l_.") or name.startswith("L_."):
                    continue
                    
                symbols.append({"addr": addr, "name": name})
            except: continue

    functions = []
    for i in range(len(symbols)):
        curr = symbols[i]
        
        if i < len(symbols) - 1:
            size = symbols[i+1]["addr"] - curr["addr"]
        else:
            size = file_size - curr["addr"]
            
        # Labeling
        label = None
        if "_bad" in curr["name"].lower():
            label = "VULNERABLE"
        elif "_good" in curr["name"].lower():
            label = "SAFE"
            
        # Only keep if size is valid (>0)
        if label and size > 0:
            functions.append({
                "start": hex(curr["addr"]),
                "size": str(size),
                "label": label,
                "name": curr["name"]
            })
            
    return functions

# --- 3. EXECUTION ---
print("3. Ingesting...")
points = []
files = [f for f in os.listdir(BINARY_DIR) if f.endswith(".o")]

for filename in files:
    path = os.path.join(BINARY_DIR, filename)
    funcs = get_function_map(path)
    
    for func in funcs:
        cmd = [EXTRACTOR, path, func['start'], func['size']]
        res = subprocess.run(cmd, capture_output=True, text=True)
        assembly = res.stdout.strip()
        
        if len(assembly) < 5: continue

        inputs = tokenizer(assembly, return_tensors="pt", padding=True, truncation=True, max_length=512)
        with torch.no_grad():
            outputs = model(**inputs)
        vector = outputs.pooler_output[0].tolist()
        
        points.append(PointStruct(
            id=len(points),
            vector=vector,
            payload={
                "filename": filename,
                "function": func['name'],
                "type": func['label'],
                "code": assembly[:200]
            }
        ))
        
        # VISUAL CONFIRMATION
        if func['label'] == "VULNERABLE":
            print(f"   [+] \033[91mVULNERABLE\033[0m: {func['name']}")
        else:
            print(f"   [+] \033[92mSAFE\033[0m:       {func['name']}")

if points:
    client.upsert(collection_name=COLLECTION_NAME, points=points)
    print(f"\n[SUCCESS] Uploaded {len(points)} signatures. Verify you see RED text above!")