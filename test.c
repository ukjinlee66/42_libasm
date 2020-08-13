#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>

ssize_t		ft_read(int fildes, void *buf, size_t nbyte);

int main(void)
{
	char b[5];
	int	fd;

	fd = open("tex.text", O_RDONLY);
	printf("%zd\n",ft_read(fd, "ab", 1));
}
