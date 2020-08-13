#include <stdio.h>
#include <stdlib.h>

char		*ft_strdup(const char *str)
{
	size_t		i;
	char		*res;

	i = 0;
	while (str[i])
		i++;
	res = malloc(sizeof(char) * i + 1);
	i = 0;
	while (str[i])
	{
		res[i] = str[i];
		i++;
	}
	res[i] = '\0';
	return (res);
}

int main(void)
{
	char *str;
	str = (char*)malloc(sizeof(char) * 42);
}
