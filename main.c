/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: youlee <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/13 20:08:08 by youlee            #+#    #+#             */
/*   Updated: 2020/08/13 20:25:36 by youlee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

size_t		ft_strlen(const char *str);
char		*ft_strcpy(char *dest, const char *src);
ssize_t		ft_write(int fildes, void *buf, size_t nbyte);
ssize_t		ft_read(int fildes, const void *buf, size_t nbytes);
char		*ft_strdup(const char *str);

int main(void)
{
	char str[10];
	char *str2;
	str[0] = 'a';
	str[1] = 'b';
	str[2] = '\0';
	printf("%zd\n", ft_strlen(str));
	str2 = ft_strdup(str);
	printf("str2 : %s\n",str2);
	char buf[100];
	int fd = open("./tex.text", O_RDONLY);
	printf("%zd\n",ft_read(fd, buf, 7));
	printf("buf : %s\n",buf);
	return (0);
}
