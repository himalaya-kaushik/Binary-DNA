import os
import sys
from qdrant_client import QdrantClient
from qdrant_client.http import models
from transformers import AutoTokenizer, AutoModel
import torch
from tqdm import tqdm # Progress bar

# --- CONFIGURATION ---
FUNCTION_DIR = "./data/functions"
COLLECTION_NAME = "binary_dna_pro"
QDRANT_HOST = "localhost"
QDRANT_PORT = 6333

def get_device():
    # Use Mac GPU (MPS) if available, otherwise CPU
    if torch.backends.mps.is_available():
        return torch.device("mps")
    return torch.device("cpu")

def setup_collection(client):
    print(f"[*] Checking collection '{COLLECTION_NAME}'...")
    # Delete if exists to start fresh (Clean Brain)
    if client.collection_exists(COLLECTION_NAME):
        client.delete_collection(COLLECTION_NAME)
        print("   [-] Deleted old collection.")
    
    # Create new collection (768 dimensions for CodeBERT)
    client.create_collection(
        collection_name=COLLECTION_NAME,
        vectors_config=models.VectorParams(size=768, distance=models.Distance.COSINE)
    )
    print("   [+] Created new collection.")

def ingest_data():
    # 1. Load the Brain (CodeBERT)
    print("[*] Loading Microsoft CodeBERT...")
    device = get_device()
    print(f"   [i] Using device: {device}")
    
    tokenizer = AutoTokenizer.from_pretrained("microsoft/codebert-base")
    model = AutoModel.from_pretrained("microsoft/codebert-base").to(device)

    # 2. Connect to Database
    client = QdrantClient(host=QDRANT_HOST, port=QDRANT_PORT)
    setup_collection(client)

    # 3. List all function files
    if not os.path.exists(FUNCTION_DIR):
        print(f"[!] Error: {FUNCTION_DIR} not found. Run split_functions.py first.")
        return

    files = [f for f in os.listdir(FUNCTION_DIR) if f.endswith(".asm")]
    print(f"[*] Found {len(files)} functions to ingest.")

    points = []
    
    print("[*] Vectorizing functions...")
    for idx, filename in enumerate(tqdm(files)):
        file_path = os.path.join(FUNCTION_DIR, filename)
        
        # A. Determine Label (Safe vs Vulnerable)
        # Logic: If filename contains "bad", it's vulnerable.
        is_vulnerable = "bad" in filename.lower()
        label = "VULNERABLE" if is_vulnerable else "SAFE"
        
        # B. Read Assembly
        with open(file_path, "r") as f:
            assembly_code = f.read()

        # C. Vectorize (The "Translation")
        inputs = tokenizer(assembly_code, return_tensors="pt", padding=True, truncation=True, max_length=512).to(device)
        with torch.no_grad():
            outputs = model(**inputs)
        
        # Get the embedding (Pooling layer) and move to CPU for storage
        embedding = outputs.pooler_output[0].cpu().tolist()

        # D. Prepare Data Point
        payload = {
            "filename": filename,
            "type": label,
            "function_name": filename.split("__")[-1].replace(".asm", ""), # Extract name from filename
            "code_snippet": assembly_code[:200] # Store preview for debugging
        }

        # Create Point (ID needs to be an integer, so we use the loop index)
        points.append(models.PointStruct(id=idx, vector=embedding, payload=payload))

        # Upload in batches of 100 to stay fast
        if len(points) >= 100:
            client.upsert(collection_name=COLLECTION_NAME, points=points)
            points = []

    # Upload remaining points
    if points:
        client.upsert(collection_name=COLLECTION_NAME, points=points)

    print("-" * 40)
    print("✅ INGESTION COMPLETE")
    print(f"   Stored {len(files)} vectors in Qdrant.")
    print("-" * 40)

if __name__ == "__main__":
    ingest_data()