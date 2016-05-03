/*
 * File:   main.c
 * Author: bocal
 *
 * Created on April 16, 2016, 12:31 PM
 */


# include "fcts.h"

u32 reception[50];

	__attribute__((interrupt(IPL4AUTO), nomips16, vector(_EXTERNAL_2_VECTOR)))
void			ir_receive(void)
{
	u32 c = 0; u16 tmr_comp = 0; u32 c2 = 0;
	// header: 417us '1', 278us '0'
	TMR2 = 0;

	while (TMR2 < 40 * (417 + 278))	// wait header (see freebox_v5 lirc conf files) TODO verify good header
		;
	while (c < 20 && TMR2 < 4032680) // we want 20 datas bits but during ~100817 microseconds. Else trame is wrong
	{
		LATFbits.LATF1 = 1;
		tmr_comp = TMR2 + 6680; // tmr + 167 microseconds …
		if (tmr_comp > PR2)	// (in case we go up to the timer, theorically not possible here)
			tmr_comp = PR2;
		while (TMR2 <= tmr_comp || !PORTDbits.RD9) // … wait 167us
			;
		LATFbits.LATF1 = 0;
		while (PORTDbits.RD9 && TMR2 > tmr_comp + (40*778)) // second bit part (which give value) represented by delay down
			;
		reception[c] = TMR2 - tmr_comp; // value
		c++;

	}
	IFS0bits.T2IF = 0;
	while (c2 <= c) {
		uart_putnbr(reception[c2]/40, 10);
		uart_putstr("\n\r");
		c2++;
	}
	uart_putstr("\n\r ------------------ \n\r");
	IFS0bits.INT2IF = 0;
}

int main(void)
{
	LATFbits.LATF1 = 0;	  // led at 0
	TRISFbits.TRISF1 = 0; // led as output
	TRISDbits.TRISD9 = 1; // TSOP as input

	asm("ei");				// enable interrupts
	INTCONbits.MVEC = 1;	// multi-vectors mode for interrupt
	IEC0bits.INT2IE = 1;	// external interrupt 2 (TSOP) enabled
	IFS0bits.INT2IF = 0;	// interrupt flag for ext int 2 cleared (just in case)
	IPC2bits.INT2IP = 4;	// priority of ext int 2 at 4 (same value as in ISR attributes )

	T2CONbits.T32 = 1;	// timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
	PR2 = 4032680 + 40; // timer @40MHz -> 40 clock pulse / microseconds. Tmr period = signal (fixed) length
	IEC0bits.T2IE = 0;	// timer enabled (line bottom) but no interrupt
	T2CONbits.ON = 1;


	uart_init(9600, 40000000);
	uart_putstr("begin !\n\r");
	while (1)
		;
	return (0);
}
