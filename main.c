/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rejocic <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/09 15:12:52 by rejocic           #+#    #+#             */
/*   Updated: 2018/09/07 12:38:53 by rejocic          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"
#include "libft/libft.h"

#include <stdio.h>

int		main(int argc, char **argv)
{
	int		i;
	int		fd;
	int		r;
	char	*line;

	i = 1;
	r = 0;
	line = NULL;
	while (i < argc)
	{
		fd = open(argv[i], O_RDONLY);
		while ((r = get_next_line(fd, &line)) > 0)
			ft_putendl(line);
		i++;
	}
	close(fd);
	return (0);
}
