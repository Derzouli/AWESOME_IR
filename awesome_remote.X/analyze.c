#include "fcts.h"

u32 analyze_trame(volatile u32 (*reception)[10][35])
{
    static u8 a = 0;
    u8 y = 0, i = 0;
    u32 trame;

    trame = 0;

    if ((*reception)[a][34] == 34)
    {
        LATBbits.LATB3 = 1;
        i = 1;
        for (y = 0; y < 32; y++)
        {
            trame <<= 1;
            if (((*reception)[a][i + 1] - (*reception)[a][i]) > 56500)
                trame |= 1;
            else
                trame |= 0;
            i++;
        }
        (*reception)[a][34] = 0;
    }
    else if ((*reception)[a][34] == 2)
    {
        LATBbits.LATB3 = 1;
        (*reception)[a][34] = 0;
        trame = REPEAT;
    }
    else if ((*reception)[a][34] != 0)
    {
        (*reception)[a][34] = 0;
        trame = ERROR;
    }
    a = (a < 10) ? a + 1 : 0;
    return (trame);
}

u8 trame_to_keycode(u32 trame)
{
    u32 key_press = 0;

    switch (trame)
    {
        case K_RIGHT:
            key_press = 79;
            break;
        case K_LEFT:
            key_press = 80;
            break;
        case K_DOWN:
            key_press = 81;
            break;
        case K_UP:
            key_press = 82;
            break;
        case K_1:
            key_press = 30;
            break;
        case K_2:
            key_press = 31;
            break;
        case K_3:
            key_press = 32;
            break;
        case K_4:
            key_press = 33;
            break;
        case K_5:
            key_press = 34;
            break;
        case K_6:
            key_press = 35;
            break;
        case K_7:
            key_press = 36;
            break;
        case K_8:
            key_press = 37;
            break;
        case K_9:
            key_press = 38;
            break;
        case K_0:
            key_press = 39;
            break;
    }
    return (key_press);
}