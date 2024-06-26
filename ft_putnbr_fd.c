/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: brfernan <brfernan@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/06 15:44:33 by brfernan          #+#    #+#             */
/*   Updated: 2023/10/23 15:18:02 by brfernan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	char	c;

	if (n == -2147483648)
	{
		write(fd, "-2147483648", 11);
		return ;
	}
	if (n < 0)
	{
		write(fd, "-", 1);
		n *= -1;
	}
	if (n >= 10)
	{
		ft_putnbr_fd(n / 10, fd);
		n = n % 10;
	}
	if (n < 10)
	{
		c = '0' + n;
		write(fd, &c, 1);
	}
}
/*#include <unistd.h>
int main(void)
{
    ft_putnbr_fd(12345678, 1);
    write(1, "\n", 1);
    ft_putnbr_fd(-2147483648, 1);
    write(1, "\n", 1);
    ft_putnbr_fd(0, 1);
    write(1, "\n", 1);
}*/
