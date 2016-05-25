/*
 * File:   main.c
 * Author: bocal
 *
 * Created on April 16, 2016, 12:31 PM
 */


# include "fcts.h"

u32 reception[50];
u8  static_index = 0;

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
            u32 header;
            u32 h_down;
            u32 h_up;
            u32 i;

        header = 0;
        i = 0;
        h_down = 0;
        IFS0bits.T3IF = 0;
	TMR2 = 0;
        LATFbits.LATF1 = 1;
        while (IFS0bits.T3IF == 0)
        {
            if (PORTDbits.RD9 == 0 && TMR2 < 360000) // down 0
              header |= 1;
            else if (PORTDbits.RD9 == 1 && TMR2 < 360000 && TMR2 < 539000) // up 0
              header |= 2;
            if (PORTDbits.RD9 == 0 && (TMR2 > 540000 && TMR2 < 562400))
                h_down |= 1;
            else if (PORTDbits.RD9 == 0 && (TMR2 > 540000 + 22400 && TMR2 < 562400 + 22400))
                h_down |= 4;
            else if (PORTDbits.RD9 == 0 && (TMR2 > 540000 + 22400 * 2 && TMR2 < 562400 + 22400 * 2))
                h_down |= 8;
            else if (PORTDbits.RD9 == 0 && (TMR2 > 540000 + 22400 * 3 && TMR2 < 562400 + 22400 * 3))
                h_down |= 16;
            else if (PORTDbits.RD9 == 0 && (TMR2 > 540000 + 22400 * 4 && TMR2 < 562400 + 22400 * 4))
                h_down |= 32;
            else if (PORTDbits.RD9 == 0 && (TMR2 > 540000 + 22400 * 5 && TMR2 < 562400 + 22400 * 5))
                h_down |= 64;
            else if (PORTDbits.RD9 == 0 && (TMR2 > 540000 + 22400 * 6 && TMR2 < 562400 + 22400 * 6))
                h_down |= 128;
            else if (PORTDbits.RD9 == 0 && (TMR2 > 540000 + 22400 * 7 && TMR2 < 562400 + 22400 * 7))
                h_down |= 256;
            else if (PORTDbits.RD9 == 0 && (TMR2 > 540000 + 22400 * 8 && TMR2 < 562400 + 22400 * 8))
                h_down |= 512;
        }
        uart_putstr("\r\n");
        uart_putnbr(h_down, 10);
        uart_putstr("\r\n");
        LATFbits.LATF1 = 0;
        IFS0bits.INT2IF = 0;
}

/* Interrupt called each two captured event by Input Capture module.
 * Two events correspond to a falling edge then a rising (TSOP38238 default state is 1 - 3.3V)
 * so interrupt called each bits : if there's probably a way to be late (Input Capture buffer is 4x32 bits),'
 * its more simple if this routine take less than 167 micro seconds (minimum delay between two bits)
 */
//__attribute__((interrupt(IPL4AUTO), nomips16, vector(_INPUT_CAPTURE_2_VECTOR)))
//void    incap(void)
//{
//    reception[static_index] = IC2BUF;
//    static_index++;
//    IFS0bits.IC2IF = 0;
//}

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
        IFS0bits.INT2IF = 0; // Clear the int2
        IEC0bits.INT2IE = 1; // Enable interrupt for TSOP

        //Let the Input Capture configure the timer; if it does it
        T3CONbits.TON = 0; // disable timer 3
        T2CONbits.TON = 0; // disable timer 2
        T2CONbits.T32 = 1; // timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
	PR2 = 40 * 67500; // timer @40MHz -> 40 clock pulse / microseconds. // Tmr period = signal (fixed) length
        T2CONbits.TON = 1; // enable timer 2
        IEC0bits.T3IE = 1; // enable timer 1 interrupt
        IFS0bits.T3IF = 0; // clear timer 1 interrupt

        asm("ei");		// enable interrupts

	uart_init(9600, 40000000);
	while (1)
            ;
	return (0);
}
