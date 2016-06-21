/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   uart_minilib.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lpoujade <lpoujade@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/04/23 14:41:57 by lpoujade          #+#    #+#             */
/*   Updated: 2016/04/23 14:45:59 by lpoujade         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
** CONF FOR SEND ONLY
**
** UART "default" conf : 8N1 : 8 data-bits; no parity bit; one stop bit
** baudrate = FPB/(16 (UxBRG + 1)) || UxBRG = FPB / ((16 * baudrate) - 1)
** TX pin on RD3
** idle state 1 (3V)
*/


# include "fcts.h"

void	uart_init(u16 baudrate, u32 fpb)
{
	U1BRG = fpb / (16 * baudrate) - 1;
	U1MODEbits.PDSEL = 0;
	U1MODEbits.STSEL = 0;
	U1MODEbits.UEN = 0;
	U1STAbits.UTXEN = 1;
	U1MODEbits.ON = 1;
}

void	uart_putstr(u8 *str)
{
	while (*str)
	{
		while (U1STAbits.UTXBF)
			;
		U1TXREG = *str;
		while (!U1STAbits.TRMT)
			;
		str++;
	}
}

void uart_putchar(u8 c)
{
	while (U1STAbits.UTXBF)
		;
	U1TXREG = c;
	while (!U1STAbits.TRMT)
		;
}
void uart_putnbr(u32 nbr, u8 base)
{
	if (nbr >= base)
	{
		uart_putnbr(nbr / base, base);
		uart_putnbr(nbr % base, base);
	}
	else
	{
		if (nbr < 10)
			uart_putchar(nbr + 48);
		else
			uart_putchar(nbr - 10 + 'a');
	}
}
