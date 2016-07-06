#include "fcts.h"

void init(u32 clk_speed, u32 uart_speed)
{
    SYSTEMConfigPerformance(clk_speed);
    asm("di");
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;
    RPB0Rbits.RPB0R = 2; // pin select for UART TX
    OSCCONbits.UFRCEN = 0;
    SYSKEY = 0x33333333;
    asm("ei");

    uart_init(uart_speed, clk_speed);
    INTCONbits.MVEC = 1; // multi-vectors mode for interrupt

    IPC0bits.INT0IP = 3; // Set priority for TSOP
    IPC3bits.T3IS = 3; // Set subpriority for Timer3
    IFS0bits.INT0IF = 0; // Clear the int2 flag
    IEC0bits.INT0IE = 1; // Enable interrupt for TSOP
    INTCONbits.INT0EP = 1;

    IPC3bits.T3IP = 4; // Set priority for Timer3
    IPC3bits.T3IS = 3; // Set subpriority for Timer3
    IFS0bits.T3IF = 0; // clear timer 3 interrupt
    IEC0bits.T3IE = 1; // enable timer 3 interrupt

    T2CONbits.TON = 0; // disable timer 2
    T2CONbits.TCS = 0;
    T2CONbits.TCKPS = 0;
    T2CONbits.T32 = 1; // timer 2 and 3 as one 32 bits timer (instead of 2 16 bits timers)
    PR2 = 0b1000000100000000; // wweak bits timer @40MHz -> 40 clock pulse / microseconds. // Tmr period = signal (fixed) length
    PR3 = 0b0000000000101001; // Most significant bits

    LATBbits.LATB3 = 0;
    _nop();
    TRISBbits.TRISB3 = 0;
    _nop();
    __asm("ei");
}