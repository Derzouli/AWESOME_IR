
#ifndef FCTS_H
# define FCTS_H

#define _SUPPRESS_PLIB_WARNING
#define _DISABLE_OPENADC10_CONFIGPORT_WARNING

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
u32     analyze_trame(volatile u32 (*reception)[30][35]);

#define POWER_KEY       0b111111110001100011100111

#define K_UP            0b111111111010101001010101
#define K_RIGHT         0b111111110100101010110101
#define K_DOWN          0b111111110110001010011101
#define K_LEFT          0b111111110101101010100101
#define K_OK            0b111111110110101010010101
#define K_ESCAPE        0b111111111000101001110101
#define K_CAPSLOCK      0b111111111001101001100101
#define K_PAGE_UP       0b111111111110100000010111
#define K_PAGE_DOWN     0b111111110010101011010101
#define K_TAB           0b111111110110100010010111
#define K_ALT           0b111111110001000011101111

#define K_DEL           0b111111110000000011111111
#define K_PAUSE         0b111111111001001001101101
#define K_NEXT          0b111111111000001001111101
#define K_PREV          0b111111111010001001011101
#define K_MUTE          0b111111110000100011110111
#define K_FORWARD       0b111111110001101011100101
#define K_REWIND        0b111111111101100000100111
#define K_VOL_UP        0b111111111100100000110111
#define K_VOL_DOWN      0b111111110000101011110101
#define K_1             0b111111111101000000101111
#define K_2             0b111111111110000000011111
#define K_3             0b111111111100000000111111
#define K_4             0b111111110101000010101111
#define K_5             0b111111110110000010011111
#define K_6             0b111111110100000010111111
#define K_7             0b111111111001000001101111
#define K_8             0b111111111010000001011111
#define K_9             0b111111111000000001111111
#define K_0             0b111111110010000011011111

#define K_A             0b000000000000100000000001
#define K_B             0b000000000000100000000010
#define K_C             0b000000000000100000000011
#define K_D             0b000000000000100000000100
#define K_E             0b000000000000100000000101
#define K_F             0b000000000000100000000110
#define K_G             0b000000000000100000000111
#define K_H             0b000000000000100000001000
#define K_I             0b000000000000100000001001
#define K_J             0b000000000000100000001010
#define K_K             0b000000000000100000001011
#define K_L             0b000000000000100000001100
#define K_M             0b000000000000100000001101
#define K_N             0b000000000000100000001110
#define K_O             0b000000000000100000001111
#define K_P             0b000000000000100000010000
#define K_Q             0b000000000000100000010001
#define K_R             0b000000000000100000010010
#define K_S             0b000000000000100000010011
#define K_T             0b000000000000100000010100
#define K_U             0b000000000000100000010101
#define K_V             0b000000000000100000010110
#define K_W             0b000000000000100000010111
#define K_X             0b000000000000100000011000
#define K_Y             0b000000000000100000011001
#define K_Z             0b000000000000100000011010
#define K_SPACE         0b000000000000100000011110
#define K_DOT           0b000000000000100000011111
#define K_COLON         0b000000000000100000100001
#define K_SLASH         0b000000000000100000100010

#endif