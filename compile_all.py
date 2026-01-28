import os
import subprocess
import time

# --- CONFIGURATION ---
SOURCE_DIR = "./data/source"   # Where your .c files are
BINARY_DIR = "./data/binaries" # Where .o files will go
INCLUDE_DIR = "./data/source"  # Where std_testcase.h lives

def compile_dataset():
    # 1. Create the destination folder if it doesn't exist
    if not os.path.exists(BINARY_DIR):
        os.makedirs(BINARY_DIR)
        print(f"[+] Created folder: {BINARY_DIR}")

    # 2. Find all .c files
    c_files = [f for f in os.listdir(SOURCE_DIR) if f.endswith(".c")]
    
    if not c_files:
        print(f"[!] No .c files found in {SOURCE_DIR}")
        return

    print(f"--- STARTING COMPILATION OF {len(c_files)} FILES (ARM64 NATIVE) ---")
    start_time = time.time()
    success_count = 0
    fail_count = 0

    # 3. Compile Loop
    for filename in c_files:
        source_path = os.path.join(SOURCE_DIR, filename)
        # Output filename: replace .c with .o
        output_filename = filename.replace(".c", ".o")
        output_path = os.path.join(BINARY_DIR, output_filename)

        # The Command: 
        # gcc -c source.c -o dest.o -I include_path
        # No -arch flags needed! Mac defaults to ARM64.
        cmd = [
            "gcc",
            "-c", source_path,
            "-o", output_path,
            "-I", INCLUDE_DIR  # This fixes the 'std_testcase.h not found' error
        ]

        try:
            subprocess.run(cmd, check=True, capture_output=True)
            print(f"   [OK] Compiled: {filename}")
            success_count += 1
        except subprocess.CalledProcessError as e:
            print(f"   [FAIL] Could not compile {filename}")
            # Optional: Print the error if you want to debug specific files
            # print(e.stderr.decode()) 
            fail_count += 1

    elapsed = time.time() - start_time
    print("-" * 40)
    print(f"COMPILATION COMPLETE in {elapsed:.2f} seconds")
    print(f"Success: {success_count}")
    print(f"Failed:  {fail_count}")
    print("-" * 40)

if __name__ == "__main__":
    compile_dataset()