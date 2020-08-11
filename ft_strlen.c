/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: youlee <youlee@student.42seoul.kr>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/10 15:30:51 by youlee            #+#    #+#             */
/*   Updated: 2020/08/11 15:11:00 by youlee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
size_t		ft_strlen(const char *s)
{
	size_t			i;

	i = 0;
	while (s[i])
		i++;
	return (i);
}

int main(void)
{
	char	*str;
	str = malloc(sizeof(char) * 3);
	str[0] = 'a';
	str[1] = 'b';
	str[2] = '\0';
	ft_strlen(str);
	return (0);
}
