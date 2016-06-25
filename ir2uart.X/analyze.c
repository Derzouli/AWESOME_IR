#include "fcts.h"

int analyze_trame(volatile u32 (*reception)[10][35])
{
    static u8 a = 0;
    u8 y = 0, i = 0;
    u32 trame;

    trame = 0;

    if ((*reception)[a][34] == 34)
    {
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
    else if ( [a][34] == 2)
    {
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
