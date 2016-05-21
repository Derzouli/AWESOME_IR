/*
 * File:   main.c
 * Author: bocal
 *
 * Created on April 16, 2016, 12:31 PM
 */


# include "fcts.h"

u32 reception[50];
u8  static_index = 0;

	__attribute__((interrupt(IPL4AUTO), nomips16, vector(_EXTERNAL_2_VECTOR)))
void			ir_receive(void)
{
//	u32 c = 0; u16 tmr_comp = 0; u32 c2 = 0;
	TMR2 = 0;
//	while (TMR2 < 40 * (417 + 278))	// wait header (see freebox_v5 lirc conf files) TODO verify good header
//		;
//	while (c < 20 && TMR2 < 4032680) // we want 20 datas bits but during ~100817 microseconds. Else trame is wrong
//	{
//		tmr_comp = (TMR2 + 6680) < PR2 ?: PR2; // tmr + 167 microseconds …
//
//		while (TMR2 <= tmr_comp || !PORTDbits.RD9) // … wait 167us
//			;
//		while (PORTDbits.RD9 && TMR2 < tmr_comp + (40*778)) // second bit part (which give value) represented by delay down
//			;
//		reception[c] = TMR2 - tmr_comp; // value
//		c++;
//
//	}
//	while (c2 <= c) {
//		uart_putnbr(reception[c2]/40, 10);
//		uart_putstr("\n\r");
//		c2++;
//	}
//	uart_putstr("\n\r ------------------ \n\r");
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

        IPC2bits.INT2IP = 4; // Set priority for button
        IPC2bits.INT2IS = 3; // Set subpriority for button
        IFS0bits.INT2IF = 0; // Clear the int1
        IEC0bits.INT2IE = 1; // Enable interrupt for button

        //Let the Input Capture configure the timer; if it does it
//	T2CONbits.T32 = 1;	// timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
//	PR2 = 4032680 + 40; // timer @40MHz -> 40 clock pulse / microseconds. Tmr period = signal (fixed) length
//	T2CONbits.ON = 1;

        asm("ei");		// enable interrupts

	uart_init(9600, 40000000);
	while (1)
            ;
	return (0);
}
