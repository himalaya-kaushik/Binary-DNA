#include <stdio.h>
#include <stdlib.h>

void fixed_value_processor()
{
    int data;
    /* Initialize to default */
    data = -1;

    /* 1. GOOD SOURCE: Explicitly set data to a safe value */
    /* In the original NIST file, this was inside an if(staticTrue) block */
    data = 7; 

    {
        int i;
        int buffer[10] = { 0 };

        /* 2. BAD SINK: This check is technically insufficient! */
        /* It only checks the lower bound, not the upper bound. */
        /* However, because data is guaranteed to be 7, this is safe. */
        if (data >= 0)
        {
            buffer[data] = 1;
            
            /* Print values */
            printf("Accessing index %d (Safe)\n", data);
            for(i = 0; i < 10; i++)
            {
                printf("%d ", buffer[i]);
            }
            printf("\n");
        }
        else
        {
            printf("Error: Array index is negative.\n");
        }
    }
}

int main()
{
    fixed_value_processor();
    return 0;
}