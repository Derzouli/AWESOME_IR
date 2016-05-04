/*
 * File:   main.c
 * Author: bocal
 *
 * Created on April 16, 2016, 12:31 PM
 */


# include "fcts.h"

u32 reception[50];
u8  static_index = 0;
u8 index = 0;

	__attribute__((interrupt(IPL4AUTO), nomips16, vector(_EXTERNAL_2_VECTOR)))
void			ir_receive(void)
{
	u32 c = 0; u16 tmr_comp = 0; u32 c2 = 0;
	TMR2 = 0;
	while (TMR2 < 40 * (417 + 278))	// wait header (see freebox_v5 lirc conf files) TODO verify good header
		;
	while (c < 20 && TMR2 < 4032680) // we want 20 datas bits but during ~100817 microseconds. Else trame is wrong
	{
		tmr_comp = (TMR2 + 6680) < PR2 ?: PR2; // tmr + 167 microseconds …

		while (TMR2 <= tmr_comp || !PORTDbits.RD9) // … wait 167us
			;
		while (PORTDbits.RD9 && TMR2 < tmr_comp + (40*778)) // second bit part (which give value) represented by delay down
			;
		reception[c] = TMR2 - tmr_comp; // value
		c++;

	}
	while (c2 <= c) {
		uart_putnbr(reception[c2]/40, 10);
		uart_putstr("\n\r");
		c2++;
	}
	uart_putstr("\n\r ------------------ \n\r");
	IFS0bits.INT2IF = 0;
}

/* Interrupt called each two captured event by Input Capture module.
 * Two events correspond to a falling edge then a rising (TSOP38238 default state is 1 - 3.3V)
 * so interrupt called each bits : if there's probably a way to be late (Input Capture buffer is 4x32 bits),'
 * its more simple if this routine take less than 167 micro seconds (minimum delay between two bits)
 */
__attribute__((interrupt(IPL4AUTO), nomips16, vector(_INPUT_CAPTURE_2_VECTOR)))
void    incap(void)
{
    reception[static_index] = IC2BUF;
    static_index++;
    IFS0bits.IC2IF = 0;
}

int main(void)
{
	LATFbits.LATF1 = 0;	  // led at 0
	TRISFbits.TRISF1 = 0; // led as output
	TRISDbits.TRISD9 = 1; // TSOP as input

/*  INPUT CAPTURE CONFIGURATION
 *
 * For usage :
 *  IC2CONbits.ICOV : read-only bit which signal overflow (losts datas ?)
 *  IC2CONbits.ICBNE : buffer state : 0 empty, 1 not empty but not full
 */
        IC2CONbits.SIDL = 0;    // don't stop in sleep mode (useless now)
        IC2CONbits.ICM = 0b110;   // capture every edge (rising/falling signal)
        IC2CONbits.FEDGE = 0;   // capture falling edge first
        IC2CONbits.C32 = 1;     // use a 32-bits timer
        IC2CONbits.ICI = 00;    // interrupt each event
        IC2CONbits.ON = 1;

        IEC0bits.IC2IE = 1;
        IFS0bits.IC2IF = 0;
        IPC2bits.IC2IP = 4;


	asm("ei");		// enable interrupts
	INTCONbits.MVEC = 1;	// multi-vectors mode for interrupt
	IEC0bits.INT2IE = 0;	// external interrupt 2 (TSOP) enabled
	IFS0bits.INT2IF = 0;	// interrupt flag for ext int 2 cleared (just in case)
	IPC2bits.INT2IP = 4;	// priority of ext int 2 at 4 (same value as in ISR attributes )

        //Let the Input Capture configure the timer; if it does it
	T2CONbits.T32 = 1;	// timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
	//PR2 = 4032680 + 40; // timer @40MHz -> 40 clock pulse / microseconds. Tmr period = signal (fixed) length
	IEC0bits.T2IE = 0;	// timer enabled (line bottom) but no interrupt
	T2CONbits.ON = 1;

	uart_init(9600, 40000000);
	uart_putstr("begin !\n\r");
	while (1)
        {
            if (static_index > 40)
            {
                IEC0bits.IC2IE = 0;
                while (index < static_index)
                {
                    uart_putnbr(index, 10);
                    uart_putstr("\t: ");
                    if (reception[index + 1] > reception[index])
                        uart_putnbr((reception[index + 1] - reception[index]) / 40, 10);
                    else
                        uart_putstr("error");
                    uart_putstr("\n\r");
                    index++;
                }
                static_index = 0;
                index = 0;
                IEC0bits.IC2IE = 1;
            }
        }
	return (0);
}
