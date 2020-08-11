/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: youlee <youlee@student.42seoul.kr>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/10 15:50:04 by youlee            #+#    #+#             */
/*   Updated: 2020/08/11 20:08:42 by youlee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int			ft_strcmp(const char *s1, const char *s2)
{
	int		ret;

	ret = 0;
	while (s1[ret])
	{
		if (s1[ret] != s2[ret])
			return (s1[ret] - s2[ret]);
		ret++;
	}
	return (s1[ret] - s2[ret]);
}
