#include "fcts.h"

u32 analyze_trame(volatile u32 (*reception)[30][35])
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
    a = (a < 30) ? a + 1 : 0;
    return (trame);
}

u32 repeat_trame(u32 prev_trame)
{
    u32 trame = 0;

    switch (prev_trame)
    {
        case K_1:
            trame = K_A;
            break;
        case K_A:
            trame = K_B;
            break;
        case K_B:
            trame = K_C;
            break;
        case K_C:
            trame = K_1;
            break;
    }
    return (trame);
}

u8 trame_to_keycode(u32 trame)
{
    u32 key_press = 0;

    switch (trame)
    {
        case POWER_KEY: // reboot
            SYSKEY = 0xAA996655;
            SYSKEY = 0x556699AA;
            __asm("nop");
            RSWRSTbits.SWRST = 1;
            break;
        case K_RIGHT:
            key_press = 0x4F;
            break;
        case K_LEFT:
            key_press = 0x50;
            break;
        case K_DOWN:
            key_press = 0x51;
            break;
        case K_UP:
            key_press = 0x52;
            break;
        case K_1:
            key_press = 0x1E;
            break;
        case K_2:
            key_press = 0x1F;
            break;
        case K_3:
            key_press = 0x20;
            break;
        case K_4:
            key_press = 0x21;
            break;
        case K_5:
            key_press = 0x22;
            break;
        case K_6:
            key_press = 0x23;
            break;
        case K_7:
            key_press = 0x24;
            break;
        case K_8:
            key_press = 0x25;
            break;
        case K_9:
            key_press = 0x26;
            break;
        case K_0:
            key_press = 0x27;
            break;
        case K_A:
            key_press = 0x04;
            break;
        case K_B:
            key_press = 0x05;
            break;
        case K_C:
            key_press = 0x06;
            break;
        case K_D:
            key_press = 0x07;
            break;
        case K_E:
            key_press = 0x08;
            break;
        case K_F:
            key_press = 0x09;
            break;
        case K_G:
            key_press = 0x0A;
            break;
        case K_H:
            key_press = 0x0B;
            break;
        case K_I:
            key_press = 0x0C;
            break;
        case K_J:
            key_press = 0x0D;
            break;
        case K_K:
            key_press = 0x0E;
            break;
        case K_L:
            key_press = 0x0F;
            break;
        case K_M:
            key_press = 0x10;
            break;
        case K_N:
            key_press = 0x11;
            break;
        case K_O:
            key_press = 0x12;
            break;
        case K_P:
            key_press = 0x13;
            break;
        case K_Q:
            key_press = 0x14;
            break;
        case K_R:
            key_press = 0x15;
            break;
        case K_S:
            key_press = 0x16;
            break;
        case K_T:
            key_press = 0x17;
            break;
        case K_U:
            key_press = 0x18;
            break;
        case K_V:
            key_press = 0x19;
            break;
        case K_W:
            key_press = 0x1A;
            break;
        case K_X:
            key_press = 0x1B;
            break;
        case K_Y:
            key_press = 0x1C;
            break;
        case K_Z:
            key_press = 0x1D;
            break;
        case K_DEL:
            key_press = 0x2A;
            break;
        case K_V_UP:
            key_press = 0x80;
            break;
        case K_V_DOWN:
            key_press = 0x81;
            break;
        case K_HELP:
            key_press = 0x75;
            break;
        case K_PAGE_UP:
            key_press = 0x4B;
            break;
        case K_PAGE_DOWN:
            key_press = 0x4E;
            break;
        case K_OK:
            key_press = 0x58;
            break;
        case K_PAUSE:
            key_press = 0xB0;
            break;
        default:
            uart_putstr("Unmapped key : ");
            uart_putnbrnl(trame, 2);
            break;
    }
    return (key_press);
}