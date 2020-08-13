#include<stdio.h>
#include <fcntl.h>
#include<unistd.h>
ssize_t		ft_read(int fildes, const void *buf, size_t nbytes);

int main(void)
{
	char buf[100];
	int fd = open("./tex.text", O_RDONLY);
	printf("%zd\n",ft_read(fd, buf, 7));
	printf("buf : %s\n",buf);
	return (0);
}
