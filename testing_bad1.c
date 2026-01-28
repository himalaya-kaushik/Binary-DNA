#include <stdio.h>
#include <stdlib.h>

#define INPUT_BUFFER_SIZE 14

void process_user_command()
{
    int cmd_index;
    
    cmd_index = -1;

    {
        char inputBuffer[INPUT_BUFFER_SIZE] = "";
        
        if (fgets(inputBuffer, INPUT_BUFFER_SIZE, stdin) != NULL)
        {
            cmd_index = atoi(inputBuffer);
        }
        else
        {
            printf("Error reading input.\n");
        }
    }

    {
        int i;
        int command_list[10] = { 0 };

        if (cmd_index >= 0)
        {
            command_list[cmd_index] = 1; 
            
            for(i = 0; i < 10; i++)
            {
                printf("%d ", command_list[i]);
            }
            printf("\n");
        }
        else
        {
            printf("Index is negative, ignoring.\n");
        }
    }
}

int main() {
    process_user_command();
    return 0;
}