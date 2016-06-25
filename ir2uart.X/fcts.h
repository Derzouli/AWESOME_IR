/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fcts.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lpoujade <lpoujade@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/04/23 14:40:36 by lpoujade          #+#    #+#             */
/*   Updated: 2016/04/23 14:45:32 by lpoujade         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FCTS_H
# define FCTS_H

# include <p32xxxx.h>
# include "types.h"

# define ERROR      0
# define REPEAT     1

void	uart_init(u16 baudrate, u32 fpb);
void	uart_putstr(u8 *str);
void    uart_putchar(u8 c);
void    uart_putnbr(u32 nbr, u8 base);
int     analyze_trame(volatile u32 (*reception)[10][35]);


#endif
