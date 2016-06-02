/* 
 * File:   main.c
 * Author: bocal
 *
 * Created on May 31, 2016, 2:29 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include "types.h"
#include <p32xxxx.h>

/*
 * 
 */
int main(int argc, char** argv) {

    LATHbits.LATH2 = 1;
    TRISHbits.TRISH2 = 0;


    T1CONbits.TCKPS = 11;
    T1CONbits.TCS = 0;
    PR1 = 60000;
    T1CONbits.ON = 1;
    TMR1 = 0;
    while (1)
    {
        if (TMR1 > 30000)
            LATHbits.LATH2 = 1;
        else
            LATHbits.LATH2 = 0;
    }
    return (EXIT_SUCCESS);
}

