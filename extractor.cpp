// // #include <stdio.h>
// // #include <stdlib.h>
// // #include <capstone/capstone.h>

// // int main(int argc, char **argv)
// // {
// //     if (argc != 2)
// //     {
// //         printf("Usage: %s <binary_file.o>\n", argv[0]);
// //         return -1;
// //     }

// //     // Open the file
// //     FILE *f = fopen(argv[1], "rb");
// //     if (!f)
// //     {
// //         printf("Error: Could not open file.\n");
// //         return -1;
// //     }

// //     // Get file size
// //     fseek(f, 0, SEEK_END);
// //     size_t file_size = ftell(f);
// //     fseek(f, 0, SEEK_SET);

// //     // Read file into memory
// //     unsigned char *code = (unsigned char *)malloc(file_size);
// //     fread(code, 1, file_size, f);
// //     fclose(f);

// //     // Initialize Capstone (The Disassembler)
// //     csh handle;
// //     cs_insn *insn;
// //     if (cs_open(CS_ARCH_X86, CS_MODE_64, &handle) != CS_ERR_OK)
// //     {
// //         printf("Error: Could not initialize Capstone.\n");
// //         return -1;
// //     }

// //     // Disassemble
// //     size_t count = cs_disasm(handle, code, file_size, 0x1000, 0, &insn);
// //     if (count > 0)
// //     {
// //         for (size_t i = 0; i < count; i++)
// //         {
// //             printf("%s %s\n", insn[i].mnemonic, insn[i].op_str);
// //         }
// //         cs_free(insn, count);
// //     }
// //     else
// //     {
// //         printf("Error: Failed to disassemble.\n");
// //     }

// //     cs_close(&handle);
// //     free(code);
// //     return 0;
// // }

// #include <stdio.h>
// #include <stdlib.h>
// #include <capstone/capstone.h>

// // Helper to read file
// unsigned char *read_file(const char *filename, size_t *file_size)
// {
//     FILE *f = fopen(filename, "rb");
//     if (!f)
//         return NULL;
//     fseek(f, 0, SEEK_END);
//     *file_size = ftell(f);
//     fseek(f, 0, SEEK_SET);
//     unsigned char *code = (unsigned char *)malloc(*file_size);
//     fread(code, 1, *file_size, f);
//     fclose(f);
//     return code;
// }

// int main(int argc, char **argv)
// {
//     // We now expect: filename, START_OFFSET (hex), SIZE (decimal)
//     if (argc != 4)
//     {
//         printf("Usage: %s <file> <start_hex> <size_dec>\n", argv[0]);
//         return -1;
//     }

//     const char *filename = argv[1];
//     unsigned long start_offset = strtoul(argv[2], NULL, 16); // Hex string -> Number
//     size_t func_size = strtoul(argv[3], NULL, 10);           // Decimal string -> Number

//     csh handle;
//     cs_insn *insn;
//     size_t file_size;

//     unsigned char *buffer = read_file(filename, &file_size);
//     if (!buffer)
//     {
//         printf("Error reading file\n");
//         return -1;
//     }

//     // Safety Check: Don't read past end of file
//     if (start_offset + func_size > file_size)
//     {
//         printf("Error: Offset out of bounds.\n");
//         free(buffer);
//         return -1;
//     }

//     // Initialize Capstone
//     if (cs_open(CS_ARCH_X86, CS_MODE_64, &handle) != CS_ERR_OK)
//     {
//         return -1;
//     }

//     // Disassemble ONLY the specific function bytes
//     // (buffer + start_offset) points exactly to where the function begins
//     size_t count = cs_disasm(handle, buffer + start_offset, func_size, 0x1000, 0, &insn);

//     if (count > 0)
//     {
//         for (size_t i = 0; i < count; i++)
//         {
//             printf("%s %s\n", insn[i].mnemonic, insn[i].op_str);
//         }
//         cs_free(insn, count);
//     }
//     else
//     {
//         printf("Failed to disassemble function.\n");
//     }

//     cs_close(&handle);
//     free(buffer);
//     return 0;
// }

#include <stdio.h>
#include <stdlib.h>
#include <capstone/capstone.h>

// --------------------------------------------------------
// GENERIC C++ EXTRACTOR
// --------------------------------------------------------
// What it does:
// 1. Opens ANY binary file.
// 2. Jumps to ANY start address you give it.
// 3. Reads exactly 'N' bytes.
// 4. Converts them to Assembly text.
// --------------------------------------------------------

unsigned char *read_file_chunk(const char *filename, size_t start_offset, size_t read_size)
{
    FILE *f = fopen(filename, "rb");
    if (!f)
        return NULL;

    // Get total file size just for safety checks
    fseek(f, 0, SEEK_END);
    size_t total_size = ftell(f);

    // Safety: Don't read past the end of the file
    if (start_offset + read_size > total_size)
    {
        read_size = total_size - start_offset; // Truncate to end of file
    }

    // Jump to the start of the function
    fseek(f, start_offset, SEEK_SET);

    unsigned char *code = (unsigned char *)malloc(read_size);
    fread(code, 1, read_size, f);
    fclose(f);
    return code;
}

int main(int argc, char **argv)
{
    if (argc != 4)
    {
        printf("Usage: %s <binary_path> <start_hex> <size_dec>\n", argv[0]);
        return -1;
    }

    const char *filename = argv[1];
    unsigned long start_addr = strtoul(argv[2], NULL, 16); // Hex -> Int
    size_t size = strtoul(argv[3], NULL, 10);              // Dec -> Int

    if (size <= 0)
        return 0;

    // 1. Read the raw bytes from the file
    unsigned char *buffer = read_file_chunk(filename, start_addr, size);
    if (!buffer)
    {
        printf("Error: Could not read file.\n");
        return -1;
    }

    // 2. Initialize Capstone (The Disassembler Engine)
    csh handle;
    cs_insn *insn;
    if (cs_open(CS_ARCH_X86, CS_MODE_64, &handle) != CS_ERR_OK)
    {
        printf("Error: Failed to init Capstone.\n");
        free(buffer);
        return -1;
    }

    // 3. Translate Bytes -> Assembly
    size_t count = cs_disasm(handle, buffer, size, 0x1000, 0, &insn);
    if (count > 0)
    {
        for (size_t i = 0; i < count; i++)
        {
            // Print: "mnemonic operands" (e.g. "mov rax, 1")
            printf("%s %s\n", insn[i].mnemonic, insn[i].op_str);
        }
        cs_free(insn, count);
    }

    cs_close(&handle);
    free(buffer);
    return 0;
}