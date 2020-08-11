#include<stdio.h>

char		*ft_strcpy(char *dest, const char *str);

int main(void)
{
	char test[5];
	ft_strcpy(test,"aaa");
	printf("test: %s\n", test);
	return (0);
}
