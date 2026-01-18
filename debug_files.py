import subprocess
import sys

# Pick one file that we KNOW should have a vulnerability
target = "./data/binaries/CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_01.o"

print(f"Inspecting: {target}")
print("-" * 40)

# Run 'nm' to list all symbols
cmd = ["nm", "-n", target]
result = subprocess.run(cmd, capture_output=True, text=True)

print(result.stdout)
print("-" * 40)
print("LOOK ABOVE: Do you see any function with '_bad' in the name?")