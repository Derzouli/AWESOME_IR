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
	U2BRG = fpb / (16 * baudrate) - 1;
	U2MODEbits.PDSEL = 0;
	U2MODEbits.STSEL = 0;
	U2MODEbits.UEN = 0;
	U2STAbits.UTXEN = 1;
	U2MODEbits.ON = 1;
        uart_putstr("UART INITIALIZED\n\r");
}

void	uart_putstr(u8 *str)
{
	while (*str)
	{
		while (U2STAbits.UTXBF)
			;
		U2TXREG = *str;
		while (!U2STAbits.TRMT)
			;
		str++;
	}
}

void uart_putendl(u8 *str)
{
    uart_putstr(str);
    uart_putstr("\n\r");
}

void uart_putchar(u8 c)
{
	while (U2STAbits.UTXBF)
		;
	U2TXREG = c;
	while (!U2STAbits.TRMT)
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
