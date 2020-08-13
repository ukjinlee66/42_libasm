#include<stdio.h>

ssize_t		ft_write(int fildes, const void *buf, size_t nbytes);

int main(void)
{
	ft_write(1, "abc", 4);
	return (0);
}
