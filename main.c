/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: youlee <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/13 20:08:08 by youlee            #+#    #+#             */
/*   Updated: 2020/08/14 17:55:05 by youlee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>

size_t		ft_strlen(const char *str);
char		*ft_strcpy(char *dest, const char *src);
ssize_t		ft_write(int fildes, void *buf, size_t nbyte);
ssize_t		ft_read(int fildes, const void *buf, size_t nbytes);
char		*ft_strdup(const char *str);
int			ft_strcmp(const char *s1, const char *s2);

int main(void)
{
	char str[10];
	char s[10];
	char *str2;
	char buf[100];
	char buf2[100];
	s[0] = '4';
	s[1] = '2';
	s[2] = '\0';
	str[0] = 'a';
	str[1] = 'b';
	str[2] = '\0';
	str2 = malloc(sizeof(char) * 10);
	printf("strlen : %zd\n", strlen(str));
	printf("ft_strlen : %zd\n", ft_strlen(str));
	printf("strdup : %s\n",strdup(str));
	printf("ft_strdup : %s\n",ft_strdup(str));
	printf("strcpy : %s\n",strcpy(str2, s));
	printf("ft_strcpy : %s\n",ft_strcpy(str2, s));
	printf("strcmp : %d\n",strcmp("ABCD","ABCC"));
	printf("ft_strcmp : %d\n",ft_strcmp("ABCD","ABCC"));
	write(1, "or_write : 42seoul\n", 19);
	ft_write(1, "ft_write : 42seoul\n", 19);

	int fd = open("./tex.text", O_RDONLY);
	int fd2 = open("./tex2.text", O_RDONLY);

	printf("read function -> return value : %zd errno : %d \n", read(fd2, buf2, -2), errno);
	printf("read function -> return value : %zd errno : %d \n", ft_read(fd2, buf2, -2), errno);

	return (0);
}
