
#ifndef FCTS_H
# define FCTS_H

#define _SUPPRESS_PLIB_WARNING

# include <p32xxxx.h>
# include <plib.h>

# define ERROR      0
# define REPEAT     1

typedef unsigned char   u8;
typedef unsigned short  u16;
typedef unsigned long   u32;
typedef signed char     s8;
typedef signed short    s16;
typedef signed long     s32;

void	uart_init(u16 baudrate, u32 fpb);
void	uart_putstr(u8 *str);
void    uart_putchar(u8 c);
void    uart_putnbr(u32 nbr, u8 base);
void    uart_putendl(u8 *str);
int     analyze_trame(volatile u32 (*reception)[10][35]);

#define K_UP	0b111111111010101001010101
#define K_RIGHT	0b111111110100101010110101
#define K_DOWN	0b111111110110001010011101
#define K_LEFT	0b111111110101101010100101
#define K_OK	0b111111110110101010010101

#define K_1	0b111111111101000000101111
#define K_2	0b111111111110000000011111
#define K_3	0b111111111100000000111111
#define K_4	0b111111110101000010101111
#define K_5	0b111111110110000010011111
#define K_6	0b111111110100000010111111
#define K_7	0b111111111001000001101111
#define K_8	0b111111111010000001011111
#define K_9	0b111111111000000001111111
#define K_0	0b111111110010000011011111


#endif
