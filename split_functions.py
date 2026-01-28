import os
import re

# --- CONFIGURATION ---
ASSEMBLY_DIR = "./data/assembly"   # Input folder (Big .asm files)
FUNCTION_DIR = "./data/functions"  # Output folder (Tiny function files)

def split_functions():
    # 1. Create Output Folder
    if not os.path.exists(FUNCTION_DIR):
        os.makedirs(FUNCTION_DIR)
        print(f"[+] Created folder: {FUNCTION_DIR}")

    files = [f for f in os.listdir(ASSEMBLY_DIR) if f.endswith(".asm")]
    
    if not files:
        print(f"[!] No .asm files found in {ASSEMBLY_DIR}")
        return

    print(f"--- SPLITTING {len(files)} FILES INTO FUNCTIONS ---")
    
    total_funcs = 0

    # Regex to find function headers in objdump output
    # Example: 0000000000000000 <_CWE121_bad>:
    func_start_pattern = re.compile(r"^[0-9a-fA-F]+\s+<(.*)>:$")

    for filename in files:
        input_path = os.path.join(ASSEMBLY_DIR, filename)
        base_name = filename.replace(".asm", "") # e.g. "CWE121_..."
        
        current_func_name = None
        current_func_lines = []
        
        with open(input_path, "r") as f:
            lines = f.readlines()

        for line in lines:
            # Check if this line is a function header
            match = func_start_pattern.search(line.strip())
            
            if match:
                # 1. Save the PREVIOUS function (if it exists)
                if current_func_name and current_func_lines:
                    save_function(base_name, current_func_name, current_func_lines)
                    total_funcs += 1

                # 2. Start the NEW function
                current_func_name = match.group(1) # e.g. "_CWE121_bad"
                # Remove leading underscores common on Mac (optional, but cleaner)
                if current_func_name.startswith("_"):
                    current_func_name = current_func_name[1:]
                    
                current_func_lines = [] # Reset buffer
            
            # If we are currently inside a function, record the line
            elif current_func_name:
                # We skip empty lines or "Disassembly of section" headers
                if "Disassembly of section" in line or line.strip() == "":
                    continue
                current_func_lines.append(line)

        # Save the very last function in the file
        if current_func_name and current_func_lines:
            save_function(base_name, current_func_name, current_func_lines)
            total_funcs += 1

    print("-" * 40)
    print(f"✅ Extracted {total_funcs} individual functions into {FUNCTION_DIR}")
    print("-" * 40)

def save_function(base_filename, func_name, lines):
    # Construct a unique filename: OriginalFile__FunctionName.asm
    # We use double underscore __ to separate file from function
    safe_func_name = func_name.replace("/", "_") # Safety for weird names
    output_filename = f"{base_filename}__{safe_func_name}.asm"
    output_path = os.path.join(FUNCTION_DIR, output_filename)
    
    with open(output_path, "w") as f:
        f.writelines(lines)

if __name__ == "__main__":
    split_functions()