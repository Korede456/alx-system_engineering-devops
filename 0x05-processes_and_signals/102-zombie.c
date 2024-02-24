#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * main - creates zombie processes
 * Return: 0
 */

int main(void)
{
    int i;
    
    // Creating 5 zombie processes
    for (i = 0; i < 5; i++) {
        pid_t pid = fork();
        
        if (pid < 0) {
            perror(fork error);
            exit(EXIT_FAILURE);
        } else if (pid == 0) {
            // Child process
            exit(EXIT_SUCCESS);
        } else {
            // Parent process
            printf(Zombie process created, PID: %dn, pid);
            sleep(1); // Sleep for a short time to allow the parent to print the message
        }
    }
    
    // Function to keep the parent process running
    while (1) {
        sleep(1);
    }

    return 0;
}

