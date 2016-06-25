#include "fcts.h"
#include "p32xxxx.h"

volatile u32 reception[10][35];
volatile u32 c = 0;
volatile s8 d = 0;

__attribute__((interrupt(IPL4AUTO), nomips16, vector(_TIMER_3_VECTOR)))
void        trame_check(void)
{
    IEC0bits.INT0IE = 0;
    T2CONbits.TON = 0; // disable timer 2
    reception[d][34] = c;
    d = (d < 10) ? d + 1 : 0;
    c = 0;
    TMR2 = 0;
    TMR3 = 0;
    IEC0bits.INT0IE = 1;
    IFS0bits.T3IF = 0;
}

__attribute__((interrupt(IPL3AUTO), nomips16, vector(_EXTERNAL_0_VECTOR)))
void        ir_receive(void)
{
    T2CONbits.TON = 1; // enable timer 2
    reception[d][c] = TMR2;
    c++;
    IFS0bits.INT0IF = 0;
}

int main(void)
{
    init();
    uart_init(9600, 40000000);
    uart_putstr("-- INIT COMPLETE --\n\r");

    u8 a = 0, i = 0;
    u32 trame = 0, prev_trame = 0;

    while (a < 10)
    {
        while (i < 35)
            reception[a][i++] = 0;
        ++a;
    }
    while (1)
    {
        if ((trame = analyze_trame(&reception)))
        {
            LATBbits.LATB7 = 1;
            uart_putnbr(trame == REPEAT ? prev_trame : trame, 2);
            uart_putstr("\n\r");
            if (trame != REPEAT && trame != ERROR)
                prev_trame = trame;
            LATBbits.LATB7 = 1;
        }
    }
    return (0);
}