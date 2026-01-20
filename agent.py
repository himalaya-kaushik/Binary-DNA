import os
import sys
import subprocess
import google.generativeai as genai
from qdrant_client import QdrantClient
from transformers import AutoTokenizer, AutoModel
import torch

# --- CONFIGURATION ---
GEMINI_API_KEY = os.getenv("gemini")
EXTRACTOR = "./extractor"
COLLECTION = "binary_dna_pro"
THRESHOLD = 0.80 

# --- CRITICAL SAFETY CHECK ---
if not GEMINI_API_KEY or "YOUR_GEMINI" in GEMINI_API_KEY:
    print(" ERROR: Please check your API Key.")
    sys.exit(1)

# --- SETUP AGENTS ---
print("1. Initializing Agents...")

# Agent 1: The Hunter (CodeBERT)
os.environ["TOKENIZERS_PARALLELISM"] = "false"
try:
    tokenizer = AutoTokenizer.from_pretrained("microsoft/codebert-base")
    model = AutoModel.from_pretrained("microsoft/codebert-base")
except Exception as e:
    print(f"Error loading CodeBERT: {e}")
    sys.exit(1)

qdrant = QdrantClient(host="localhost", port=6333)

# Agent 2: The Analyst (Gemini)
try:
    genai.configure(api_key=GEMINI_API_KEY)
    # FIX 1: Use the correct model name
    llm_model = genai.GenerativeModel("models/gemini-2.5-flash")
except Exception as e:
    print(f" Error configuring Gemini: {e}")
    sys.exit(1)

# --- HELPER FUNCTIONS ---
def get_function_map(file_path):
    """
    Robust Mapper: Ignores Data variables so we only analyze CODE.
    """
    if not os.path.exists(file_path):
        return []
        
    file_size = os.path.getsize(file_path)
    cmd = ["nm", "-n", file_path] 
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    except subprocess.CalledProcessError:
        return []
        
    symbols = []
    for line in result.stdout.splitlines():
        parts = line.split()
        if len(parts) >= 3:
            try:
                addr = int(parts[0], 16)
                symbol_type = parts[1].lower() 
                name = parts[-1]
                
                # FIX 2: CRITICAL FILTER
                # Only look at 't' (Text/Code). Ignore 'd' (Data).
                if symbol_type != 't': continue 
                
                if name.startswith("ltmp") or name.startswith("l_."): continue
                symbols.append({"addr": addr, "name": name})
            except: continue
            
    functions = []
    for i in range(len(symbols)):
        curr = symbols[i]
        # Calculate size carefully
        if i < len(symbols) - 1:
            size = symbols[i+1]["addr"] - curr["addr"]
        else:
            size = file_size - curr["addr"]
            
        if size > 0:
            functions.append({"start": hex(curr["addr"]), "size": str(size), "name": curr["name"]})
    return functions

def embed_code(text):
    inputs = tokenizer(text, return_tensors="pt", padding=True, truncation=True, max_length=512)
    with torch.no_grad():
        outputs = model(**inputs)
    return outputs.pooler_output[0].tolist()

def analyst_agent_review(func_name, assembly_code, qdrant_verdict):
    print(f"   [Agent]  Analyst is reading {len(assembly_code)} bytes of Assembly...")
    
    prompt = f"""
    You are a Binary Security Expert. I have extracted the Assembly Code for a function named '{func_name}'.
    My Vector Database flagged this as '{qdrant_verdict}'.

    RAW ASSEMBLY CODE:
    ```asm
    {assembly_code}
    ```

    YOUR MISSION:
    1. Read the assembly. Look for dangerous calls (like 'memcpy', 'strcpy', 'gets') WITHOUT bounds checks.
    2. If the code looks like a wrapper or is incomplete, assume the Vector DB is correct.
    3. Output your final decision.

    FORMAT:
    VERDICT: [VULNERABLE / SAFE]
    REASON: [1 sentence explanation]
    """
    
    try:
        response = llm_model.generate_content(prompt)
        return response.text
    except Exception as e:
        return f"VERDICT: ERROR\nREASON: LLM failed. {str(e)}"

# --- MAIN WORKFLOW ---
def run_multi_agent_system(file_path):
    filename = os.path.basename(file_path)
    print(f"\n Launching Multi-Agent Scan on: {filename}")
    print("=" * 70)
    
    funcs = get_function_map(file_path)
    if not funcs:
        print("No functions found (or file is invalid/empty).")
        return

    suspects = []

    # --- PHASE 1: THE HUNTER ---
    print(f"[Phase 1] Hunter Agent scanning {len(funcs)} functions...")
    for func in funcs:
        if func['name'].startswith("___"): continue 

        cmd = [EXTRACTOR, file_path, func['start'], func['size']]
        try:
            res = subprocess.run(cmd, capture_output=True, text=True)
            assembly = res.stdout.strip()
        except: continue

        if len(assembly) < 10: continue

        vector = embed_code(assembly)
        
        # Robust Qdrant Query
        try:
            results = qdrant.query_points(collection_name=COLLECTION, query=vector, limit=1).points
        except:
            results = qdrant.search(collection_name=COLLECTION, query_vector=vector, limit=1)

        if results:
            match = results[0]
            if match.score > THRESHOLD and match.payload.get('type') == "VULNERABLE":
                suspects.append({
                    "name": func['name'],
                    "assembly": assembly,
                    "match_score": match.score,
                    "suspected_issue": match.payload.get('type')
                })
                print(f"   [Hunter] 🚩 Suspect Found: {func['name']}")

    # --- PHASE 2: THE ANALYST ---
    print(f"\n[Phase 2] Analyst Agent reviewing {len(suspects)} suspects...")
    print("-" * 70)
    
    if not suspects:
        print(" No suspects found.")
        return

    for suspect in suspects:
        review = analyst_agent_review(suspect['name'], suspect['assembly'], suspect['suspected_issue'])
        
        color = "\033[91m" if "VULNERABLE" in review else "\033[92m"
        
        print(f"\nFunction: {suspect['name']}")
        print(f"Hunter Confidence: {suspect['match_score']*100:.1f}%")
        print(f"{color}{review}\033[0m")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 agent.py <binary.o>")
    else:
        run_multi_agent_system(sys.argv[1])