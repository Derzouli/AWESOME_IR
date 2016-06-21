/*
 * File:   main.c
 * Author: bocal
 *
 * Created on April 16, 2016, 12:31 PM
 */


# include "fcts.h"

volatile u32 reception[10][35];
volatile u32 c = 0;
volatile s8 d = 0;

// value for NEC
// 560 usec
// 9ms bit de depart
// 4.5 bits de pause

// bit 1:
// 560us impulsion
// 1690us pause
// bit 0:
// 560us impulsion
// 565 pause
        __attribute__((interrupt(IPL3AUTO), nomips16, vector(12)))
void                    trame_check(void)
{
            IEC0bits.INT2IE = 0;
            T2CONbits.TON = 0; // disable timer 2
            reception[d][34] = c;
            d = (d < 10) ? d + 1 : 0;
            c = 0;
            TMR2 = 0;
            IEC0bits.INT2IE = 1;
            IFS0bits.T3IF = 0;
}

	__attribute__((interrupt(IPL4AUTO), nomips16, vector(_EXTERNAL_2_VECTOR)))
void			ir_receive(void)
{
    T2CONbits.TON = 1; // enable timer 2
    //LATFbits.LATF1 ^= 1;
    reception[d][c] = TMR2;
    c++;
    IFS0bits.INT2IF = 0;
}

int main(void)
{
	LATFbits.LATF1 = 0;     // led at 0
	TRISFbits.TRISF1 = 0; // led as output
	TRISDbits.TRISD9 = 1; // TSOP as input

        asm("di");           // disable interrupts
        TMR2 = 0;
	INTCONbits.MVEC = 1; // multi-vectors mode for interrupt

        IPC2bits.INT2IP = 4; // Set priority for TSOP
        IPC2bits.INT2IS = 4; // Set subpriority for TSOP
        IFS0bits.INT2IF = 0; // Clear the int2 flag

        IPC3bits.T3IP = 3; // Set priority for Timer3
        IPC3bits.T3IS = 3; // Set subpriority for Timer3        
        IFS0bits.T3IF = 0; // clear timer 3 interrupt

        T2CONbits.TON = 0; // disable timer 2
        T2CONbits.T32 = 1; // timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
	PR2 = 0b1000000100000000; // wweak bits timer @40MHz -> 40 clock pulse / microseconds. // Tmr period = signal (fixed) length
        PR3 = 0b0000000000101001; // Most significant bits
        asm("ei");	   // enable interrupts

	uart_init(9600, 40000000);
        u8 a, i, y;
        u32 trame;

        a = 0;
        i = 0;
        while (a < 10)
        {
            while (i < 35)
                reception[a][i++] = 0;
            ++a;
        }
        IEC0bits.T3IE = 1; // enable timer 3 interrupt
        IEC0bits.INT2IE = 1; // Enable interrupt for TSOP
        a = 0;
	while (1)
        {
            trame = 0;

            if (reception[a][34] == 34)
            {
                i = 0;
                for (y = 0; y < 32; y++)
                {
                    trame <<= 1;
                    if ((reception[a][i + 1] - reception[a][i]) > 66000)
                        trame |= 1;
                    else
                        trame |= 0;
                    i++;
                }
                reception[a][34] = 0;
                uart_putnbr(trame, 2);
                uart_putstr("\n\r");
                trame = 0;
            }
            else if (reception[a][34] == 2)
            {
                reception[a][34] = 0;
                uart_putstr("repeat\n\r");
            }
            else if (reception[a][34] != 0)
            {
                reception[a][34] = 0;
                uart_putstr("fail\n\r");
            }
            a = (a < 10) ? a + 1 : 0;
        }
        return (0);
}