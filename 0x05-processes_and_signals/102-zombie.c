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

	for (i = 0; i < 5; i++)
	{
		pid_t pid = fork();

		if (pid < 0)
		{
			perror(fork error);
			exit(EXIT_FAILURE);
		}
		else if (pid == 0)
		{
			exit(EXIT_SUCCESS);
		}
		else
		{
			printf("Zombie process created, PID: %dn", pid);
		}
	}

	while (1)
	{
		sleep(1);
	}

	return (0);
}
