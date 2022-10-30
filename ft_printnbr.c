/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printnbr.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mel-gand <mel-gand@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/25 16:10:16 by mel-gand          #+#    #+#             */
/*   Updated: 2022/10/25 16:10:23 by mel-gand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printnbr(long nb)
{
	int	cnt;

	cnt = 0;
	if (nb < 0)
	{
		cnt += ft_printchar('-');
		nb *= -1;
	}
	if (nb > 9)
	{
		cnt += ft_printnbr(nb / 10);
		cnt += ft_printnbr(nb % 10);
	}
	if (nb >= 0 && nb <= 9)
		cnt += ft_printchar(nb + '0');
	return (cnt);
}
