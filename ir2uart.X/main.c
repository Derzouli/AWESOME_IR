#include "fcts.h"
#include "p32xxxx.h"

volatile u32 reception[10][35];
volatile u32 c = 0;
volatile s8 d = 0;

__attribute__((interrupt(IPL3AUTO), nomips16, vector(_TIMER_3_VECTOR)))
void        trame_check(void)
{
    IEC0bits.INT0IE = 0;
    T2CONbits.TON = 0; // disable timer 2
    reception[d][34] = c;
    d = (d < 10) ? d + 1 : 0;
    c = 0;
    TMR2 = 0;
    IEC0bits.INT0IE = 1;
    IFS0bits.T3IF = 0;
}

__attribute__((interrupt(IPL4AUTO), nomips16, vector(_EXTERNAL_0_VECTOR)))
void        ir_receive(void)
{
    T2CONbits.TON = 1; // enable timer 2
    reception[d][c] = TMR2;
    c++;
    IFS0bits.INT0IF = 0;
}


int main(void)
{

    // pin select for UART tx
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;
    RPB0Rbits.RPB0R = 2;
    SYSKEY = 0x33333333;

    uart_init(9600, 4000000);

    INTCONbits.MVEC = 1; // multi-vectors mode for interrupt

    IPC0bits.INT0IP = 4; // Set priority for TSOP
    IFS0bits.INT0IF = 0; // Clear the int2 flag
    IEC0bits.INT0IE = 1; // Enable interrupt for TSOP

    IPC3bits.T3IP = 3; // Set priority for Timer3
    IPC3bits.T3IS = 3; // Set subpriority for Timer3
    IFS0bits.T3IF = 0; // clear timer 3 interrupt
    IEC0bits.T3IE = 1; // enable timer 3 interrupt

    T2CONbits.TON = 0; // disable timer 2
    T2CONbits.T32 = 1; // timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
    PR2 = 0b0010011010000000; // weak bits timer @40MHz -> 40 clock pulse / microseconds. // Tmr period = signal (fixed) length
    PR3 = 0b0000000000000100; // Most significant bits
    __asm("ei");

    LATBbits.LATB3 = 0;
    _nop();
    TRISBbits.TRISB3 = 0;
    _nop();

    uart_putstr("-- START --\n\r");

    u8 a = 0, i = 0, y;
    u32 trame;

    while (a < 10)
    {
        while (i < 35)
            reception[a][i++] = 0;
        ++a;
    }
    a = 0;
    while (1)
    {
        trame = 0;

        if (reception[a][34] == 34)
        {
            LATBbits.LATB3 = 1;
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
            if (trame)
            {
                uart_putnbr(trame, 10);
                uart_putstr("\n\r");
                trame = 0;
            }
            else
                uart_putstr("PROBLEME : trame vide\n\r");
            LATBbits.LATB3 = 0;
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