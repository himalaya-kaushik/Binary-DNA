#include <stdio.h>
#include <stdlib.h>

#define INPUT_SIZE 14

void secure_data_processor()
{
    int index;
    /* Initialize data */
    index = -1;

    /* 1. SOURCE: Read input (Simulates the risky part) */
    {
        char raw_input[INPUT_SIZE] = "";
        
        if (fgets(raw_input, INPUT_SIZE, stdin) != NULL)
        {
            index = atoi(raw_input);
        }
        else
        {
            printf("Input error.\n");
            return;
        }
    }

    /* 2. SINK: The Fix (Simulates the safe part) */
    {
        int i;
        int data_store[10] = { 0 };

        /* CRITICAL FIX: We check BOTH lower limit (0) AND upper limit (10) */
        if (index >= 0 && index < 10)
        {
            data_store[index] = 1;
            
            /* Print values just to match the structure of the original */
            for(i = 0; i < 10; i++)
            {
                printf("%d ", data_store[i]);
            }
            printf("\n");
        }
        else
        {
            printf("Blocked: Index %d is out of bounds.\n", index);
        }
    }
}

int main()
{
    secure_data_processor();
    return 0;
}