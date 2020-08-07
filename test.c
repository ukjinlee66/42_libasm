#include <stdio.h>

void in(int *a)
{
	while (*a < 3)
		(*a)++;
	return;
}

int main(void)
{
	int a = 0;

	in(&a);
	printf("%d",a);
	return (a);
}
