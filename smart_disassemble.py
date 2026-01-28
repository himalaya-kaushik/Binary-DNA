import os
import subprocess
import re

# --- CONFIGURATION ---
BINARY_DIR = "./data/binaries"
ASSEMBLY_DIR = "./data/assembly"

def get_symbol_map_smart(file_path):
    """
    Runs 'nm' and prioritizes REAL function names over compiler temps (ltmp).
    """
    cmd = ["nm", "-n", file_path]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    except subprocess.CalledProcessError:
        return {}

    symbol_map = {}
    
    for line in result.stdout.splitlines():
        parts = line.split()
        if len(parts) >= 3:
            try:
                addr_int = int(parts[0], 16)
                name = parts[-1]
                symbol_type = parts[1].upper()
                
                # Filter: Only text sections
                if symbol_type != 'T':
                    continue

                # --- THE FIX IS HERE ---
                # 1. If name is a temp label (ltmp...), IGNORE IT completely.
                if name.startswith("ltmp") or name.startswith("Lfunc"):
                    continue
                
                # 2. If we already have a name for this address, 
                # keep the longest one (usually the most descriptive)
                if addr_int in symbol_map:
                    current_name = symbol_map[addr_int]
                    if len(name) > len(current_name):
                        symbol_map[addr_int] = name
                else:
                    symbol_map[addr_int] = name
                    
            except ValueError:
                continue
                
    return symbol_map

def smart_disassemble():
    if not os.path.exists(ASSEMBLY_DIR):
        os.makedirs(ASSEMBLY_DIR)

    files = [f for f in os.listdir(BINARY_DIR) if f.endswith(".o")]
    
    if not files:
        print(f"[!] No .o files found in {BINARY_DIR}")
        return

    print(f"--- V3 DISASSEMBLY OF {len(files)} FILES ---")
    
    # Regex: (AddressHex) <(Label)>:
    func_header_regex = re.compile(r"^([0-9a-fA-F]+)\s+<(.*)>:$")

    count = 0
    for filename in files:
        input_path = os.path.join(BINARY_DIR, filename)
        output_filename = filename.replace(".o", ".asm")
        output_path = os.path.join(ASSEMBLY_DIR, output_filename)

        # 1. Get the CLEAN symbol map
        real_names_map = get_symbol_map_smart(input_path)

        # 2. Get Raw Assembly
        cmd = ["objdump", "-d", "--no-show-raw-insn", input_path]
        try:
            result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        except subprocess.CalledProcessError:
            continue

        # 3. Process
        corrected_lines = []
        matches_fixed = 0
        
        for line in result.stdout.splitlines():
            match = func_header_regex.search(line)
            if match:
                addr_str = match.group(1)
                current_label = match.group(2)
                
                try:
                    addr_int = int(addr_str, 16)
                    
                    if addr_int in real_names_map:
                        true_name = real_names_map[addr_int]
                        
                        # FORCE SWAP if current label is generic (ltmp)
                        if "ltmp" in current_label or true_name != current_label:
                            line = f"{addr_str} <{true_name}>:"
                            matches_fixed += 1
                except ValueError:
                    pass
            
            corrected_lines.append(line)

        with open(output_path, "w") as f:
            f.write("\n".join(corrected_lines))
        
        print(f"   ✅ {filename}: Fixed {matches_fixed} labels")
        count += 1

    print("-" * 40)
    print(f"Fixed {count} files.")

if __name__ == "__main__":
    smart_disassemble()