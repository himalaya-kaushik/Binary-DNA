#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Define a struct with a buffer followed by a pointer */
/* This memory layout is crucial for the exploit */
typedef struct _charVoid {
    char charFirst[16];
    void *voidSecond;
} charVoid;

void struct_logic_processor()
{
    /* Mimic the Control Flow Wrapper "if(1)" */
    if(1)
    {
        charVoid myStruct;
        
        /* Create a source string long enough to fill the whole struct */
        /* 'A' is 0x41 in hex */
        char source[100];
        memset(source, 'A', 100);

        /* 1. Setup: Point voidSecond to a safe location */
        char *safe_data = "SAFE_ZONE";
        myStruct.voidSecond = (void *)safe_data;

        printf("1. Pointer Address BEFORE: %p\n", myStruct.voidSecond);

        /* 2. THE VULNERABILITY: Overrun via memmove */
        /* We are copying into 'charFirst' (size 16). */
        /* BUT, we tell memmove to copy 'sizeof(myStruct)' (size 24 or 32). */
        /* This overwrites the 'charFirst' buffer AND the 'voidSecond' pointer. */
        memmove(myStruct.charFirst, source, sizeof(myStruct));

        /* Null terminate the string so we can print it without crashing immediately */
        myStruct.charFirst[15] = '\0';

        /* 3. The Result: The pointer has been smashed with 0x41414141... */
        printf("2. Pointer Address AFTER:  %p\n", myStruct.voidSecond);

        if (myStruct.voidSecond != safe_data) {
            printf("[!] ALERT: The pointer was overwritten by the buffer overflow!\n");
        }
    }
}

int main()
{
    struct_logic_processor();
    return 0;
}
