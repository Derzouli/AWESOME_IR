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

	while (TMR2 < 40 * (417 + 278))	// header
		;
	while (c < 20 && TMR2 < 4032680)
	{
                LATFbits.LATF1 = 1;
                tmr_comp = TMR2 + 6680; // tmr + 167 microseconds
                if (tmr_comp > PR2)
                    tmr_comp = PR2;
		while (TMR2 <= tmr_comp || !PORTDbits.RD9) // 1st part of a bit : 167us up
                    ;
                LATFbits.LATF1 = 0;
		while (PORTDbits.RD9 && TMR2 > tmr_comp + (40*778)) // second bit part (and bit value) represented by delay down
                    ;
		// bit = TMR1 - tmr_comp
		reception[c] = TMR2 - tmr_comp; // delay down
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
	TRISFbits.TRISF1 = 0;
	TRISDbits.TRISD9 = 1;
	LATFbits.LATF1 = 0;

	asm("ei");
	IFS0bits.INT2IF = 0;
	INTCONbits.MVEC = 1;
	IEC0bits.INT2IE = 1;
	IPC2bits.INT2IP = 4;

	//T2CONbits.TCS = 0;
	T2CONbits.TCKPS = 0;
        T2CONbits.T32 = 1;
	PR2 = 4032680 + 40; // timer @40MHz -> 40 clock pulse / microseconds. Tmr period = signal (fixed) length
	T2CONbits.ON = 1;

	IEC0bits.T2IE = 0;
	IFS0bits.T2IF = 0;

	uart_init(9600, 40000000);
        uart_putstr("begin !\n\r");
	while (1)
            ;
	return (0);
}
