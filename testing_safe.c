#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CHAR_ARRAY_SIZE 14

void secure_command_processor()
{
    int data;
    int buffer[10] = { 0 };
    char inputBuffer[CHAR_ARRAY_SIZE] = "";

    /* 1. BAD SOURCE: Read data from the console (Identical to the virus) */
    if (fgets(inputBuffer, CHAR_ARRAY_SIZE, stdin) != NULL)
    {
        data = atoi(inputBuffer);
    }
    else
    {
        printf("Error reading input.\n");
        return;
    }

    /* 2. GOOD SINK: The Fix */
    /* We check that data is NOT negative AND NOT too large */
    if (data >= 0 && data < 10)
    {
        buffer[data] = 1;
        printf("Success: Accessed buffer at index %d\n", data);
        
        /* Print loop similar to the NIST example */
        for(int i = 0; i < 10; i++)
        {
            printf("%d ", buffer[i]);
        }
        printf("\n");
    }
    else
    {
        printf("Security Block: Array index %d is out-of-bounds.\n", data);
    }
}

int main()
{
    secure_command_processor();
    return 0;
}