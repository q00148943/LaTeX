#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <netdb.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

int main(int argc, char *argv[])
{
	struct sockaddr_in srv_addr;
	struct sockaddr_in cli_addr;

	if (argc != 2)
    {
		fprintf(stderr, "usage: %s <port>\n", argv[0]);
		return -1;
	}

	int fd = socket(AF_INET, SOCK_STREAM, 0);
	if (fd < 0) 
	{
		perror("open socket failed.");
		return -1;
	}

	bzero((char *) &srv_addr, sizeof(srv_addr));

	srv_addr.sin_family = AF_INET;
	srv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	srv_addr.sin_port = htons((unsigned short)atoi(argv[1]));

	if (bind(fd, (struct sockaddr *)&srv_addr, sizeof(srv_addr)) < 0)
	{
		perror("bind error.");
		return -1;
	}

	if (listen(fd, 5) < 0)
	{
		perror("listen error.");
		return -1;
	}

	socklen_t cli_len = sizeof(cli_addr);

	int accepted_fd = accept(fd, (struct sockaddr *)&cli_addr, &cli_len);
	if (accepted_fd < 0) 
	{
		perror("accept error.");
		return -1;
	}

	sleep(20);
	close(accepted_fd);

	sleep(5);
	close(fd);
	return 0;
}


