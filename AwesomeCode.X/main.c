/*
 * File:   main.c
 * Author: bocal
 *
 * Created on April 16, 2016, 12:31 PM
 */


# include "fcts.h"

u32 reception[32];

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
    u8 c = 0;
    u32 tmr_tmp;

    IFS0bits.T3IF = 0;
    TMR2 = 0;
    LATFbits.LATF1 = 1;
    while (!PORTDbits.RD9)  // wait the header (1st bit, low signal)
        ;
    LATFbits.LATF1 = 0;
    while (PORTDbits.RD9)   // header
        ;
    LATFbits.LATF1 = 1;
    while (IFS0bits.T3IF == 0)  // lets get the trame
    {
        while (!PORTDbits.RD9)
            ;
        LATFbits.LATF1 = 0;
        tmr_tmp = TMR2;
        while (PORTDbits.RD9)
            ;
        LATFbits.LATF1 = 1;
        reception[c] = TMR2 - tmr_tmp;
        c++;
    }
    LATFbits.LATF1 = 0;
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

        T3CONbits.TON = 0; // disable timer 3
        T2CONbits.TON = 0; // disable timer 2
        T2CONbits.T32 = 1; // timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
	PR2 = 40 * 68160; // timer @40MHz -> 40 clock pulse / microseconds. // Tmr period = signal (fixed) length
        T2CONbits.TON = 1; // enable timer 2
        IEC0bits.T3IE = 1; // enable timer 1 interrupt
        IFS0bits.T3IF = 0; // clear timer 1 interrupt

        asm("ei");		// enable interrupts

	uart_init(9600, 40000000);
	while (1)
            ;
	return (0);
}
