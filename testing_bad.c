#include <stdio.h>
#include <stdlib.h>

#define INPUT_SIZE 14

/* Simulate the global const variables from the NIST test case */
const int GLOBAL_TRUE = 1;

void hidden_logic_processor()
{
    int data;
    /* Initialize data */
    data = -1;

    /* BLOCK 1: Get Input (Always executes) */
    if(GLOBAL_TRUE)
    {
        char inputBuffer[INPUT_SIZE] = "";
        
        /* POTENTIAL FLAW: Read data from the console */
        if (fgets(inputBuffer, INPUT_SIZE, stdin) != NULL)
        {
            data = atoi(inputBuffer);
        }
        else
        {
            printf("Error reading input.\n");
        }
    }

    /* BLOCK 2: Use Input (Always executes) */
    if(GLOBAL_TRUE)
    {
        int i;
        int buffer[10] = { 0 };

        /* POTENTIAL FLAW: Check lower bound, but MISS the upper bound check */
        /* If user enters "12", this writes to buffer[12], crashing the stack */
        if (data >= 0)
        {
            buffer[data] = 1;
            
            printf("Written to index %d\n", data);
            for(i = 0; i < 10; i++)
            {
                printf("%d ", buffer[i]);
            }
            printf("\n");
        }
        else
        {
            printf("Error: Negative index.\n");
        }
    }
}

int main()
{
    hidden_logic_processor();
    return 0;
}
