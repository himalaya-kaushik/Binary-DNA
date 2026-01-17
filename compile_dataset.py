import os
import subprocess

SOURCE_DIR = "./data/source" 
OUTPUT_DIR = "./data/binaries"
OS_TYPE = "linux" # or "windows"

def compile_files():
    if not os.path.exists(OUTPUT_DIR):
        os.makedirs(OUTPUT_DIR)

    files = [f for f in os.listdir(SOURCE_DIR) if f.endswith(".c")]
    print(f"Found {len(files)} C files. Compiling...")

    for filename in files:
        src_path = os.path.join(SOURCE_DIR, filename)
        obj_name = filename.replace(".c", ".o")
        out_path = os.path.join(OUTPUT_DIR, obj_name)
        
        # COMMAND: gcc -c -g -O0 input.c -o output.o
        # -c: Compile only (don't link) - crucial for partial snippets
        # -g: Keep debug symbols (optional, helps Capstone see function names)
        # -O0: No optimization (keeps the assembly structure clean/readable)
        cmd = ["gcc", "-c", "-g", "-O0", src_path, "-o", out_path]
        
        try:
            subprocess.run(cmd, check=True)
            print(f"[OK] Compiled: {obj_name}")
        except subprocess.CalledProcessError:
            print(f"[FAIL] Could not compile: {filename}")

if __name__ == "__main__":
    compile_files()