/*
 * File:   main.c
 * Author: bocal
 *
 * Created on April 16, 2016, 12:31 PM
 */


# include "fcts.h"

u32 reception[64];
s8 c = -4;

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
	__attribute__((interrupt(IPL4AUTO), nomips16, vector(_EXTERNAL_2_VECTOR)))
void			ir_receive(void)
{
    LATFbits.LATF1 ^= 1;
    if (c >= 0)
        reception[c] = TMR2;
    c++;
    IFS0bits.INT2IF = 0;
}

int main(void)
{
	LATFbits.LATF1 = 0;	  // led at 0
	TRISFbits.TRISF1 = 0; // led as output
	TRISDbits.TRISD9 = 1; // TSOP as input

        asm("di");
        TMR2 = 0;
	INTCONbits.MVEC = 1;	// multi-vectors mode for interrupt

        IPC2bits.INT2IP = 4; // Set priority for TSOP
        IPC2bits.INT2IS = 3; // Set subpriority for TSOP
        IFS0bits.INT2IF = 0; // Clear the int2 flag
        IEC0bits.INT2IE = 1; // Enable interrupt for TSOP
        INTCONbits.INT2EP = 0;

        T2CONbits.TON = 0; // disable timer 2
        T2CONbits.T32 = 1; // timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
	PR2 = 0b1000000100000000; // wweak bits timer @40MHz -> 40 clock pulse / microseconds. // Tmr period = signal (fixed) length
        PR3 = 0b0000000000101001; // Most significant bits
        T2CONbits.TON = 1; // enable timer 2
        IEC0bits.T3IE = 1; // enable timer 1 interrupt
        IFS0bits.T3IF = 0; // clear timer 1 interrupt
        asm("ei");		// enable interrupts

	uart_init(9600, 40000000);
        u8 y, i;
        u32 trame = 0b0;
	while (1)
        {
            if (c >= 32)
            {
                IEC0bits.INT2IE = 0;
                i = 0;
                for (y = 0; y < 32; y++)
                {
                    if (trame != 0b0)
                    {
                        trame = trame << 1;
                        if ((reception[i + 1] - reception[i]) - 24000 > 25000)
                            trame |= 1;
                        else
                            trame |= 0;
                    }
                    else
                    {
                        if ((reception[i + 1] - reception[i]) - 24000 > 25000)
                            trame |= 1;
                        else
                            trame |= 0;
                    }
                    i += 2;
                }
                uart_putnbr(trame, 2);
                uart_putstr("\n\r");
                TMR2 = 0;
                c = 0;
                IEC0bits.INT2IE = 1;
            }
}
	return (0);
}

//{
//    u8 c = 0;
//    u32 tmr_tmp;
//
//    TMR2 = 0;
//    IFS0bits.T3IF = 0;
//    LATFbits.LATF1 = 1;
//
//    while (!PORTDbits.RD9)  // wait the header (1st bit, low signal)
//        ;
//    while (PORTDbits.RD9)   // header
//        ;
//    if (TMR2 < (40 * 12000))
//    {
//        while (TMR2 < (13000 * 40))
//            ;
//        LATFbits.LATF1 = 0;
//        return ;
//    }
//    while (c < 32)  // lets get the trame
//    {
//        while (!PORTDbits.RD9)  // part up; fixed length : verif here possible (but useful ?)
//            ;
//        tmr_tmp = TMR2;
//        while (PORTDbits.RD9)
//            ;
//        reception[c] = TMR2 - tmr_tmp;
//        c++;
//    }
//    LATFbits.LATF1 = 0;
//    IFS0bits.INT2IF = 0;
//}