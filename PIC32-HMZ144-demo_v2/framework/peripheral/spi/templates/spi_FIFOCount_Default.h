/*******************************************************************************
  SPI Peripheral Library Template Implementation

  File Name:
    spi_FIFOCount_Default.h

  Summary:
    SPI PLIB Template Implementation

  Description:
    This header file contains template implementations
    For Feature : FIFOCount
    and its Variant : Default
    For following APIs :
        PLIB_SPI_FIFOCountGet
        PLIB_SPI_ExistsFIFOCount

*******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*******************************************************************************/

//DOM-IGNORE-END

#ifndef _SPI_FIFOCOUNT_DEFAULT_H
#define _SPI_FIFOCOUNT_DEFAULT_H

//******************************************************************************
/* Routines available for accessing VREGS, MASKS, POS, LEN are 

  VREGs: 
    _SPI_FIFO_COUNT_VREG(index)

  MASKs: 
    _SPI_FIFO_COUNT_MASK(index)

  POSs: 
    _SPI_FIFO_COUNT_POS(index)

  LENs: 
    _SPI_FIFO_COUNT_LEN(index)

*/


//******************************************************************************
/* Function :  SPI_FIFOCountGet_Default

  Summary:
    Implements Default variant of PLIB_SPI_FIFOCountGet 

  Description:
    This template implements the Default variant of the PLIB_SPI_FIFOCountGet function.
*/

PLIB_TEMPLATE uint8_t SPI_FIFOCountGet_Default( SPI_MODULE_ID index , SPI_FIFO_TYPE type )
{
    return( _SFR_FIELD_READ( _SPI_FIFO_COUNT_VREG( index ),
                             _SPI_FIFO_COUNT_MASK( index ),
                             _SPI_FIFO_COUNT_POS( index ) ) );
}


//******************************************************************************
/* Function :  SPI_ExistsFIFOCount_Default

  Summary:
    Implements Default variant of PLIB_SPI_ExistsFIFOCount

  Description:
    This template implements the Default variant of the PLIB_SPI_ExistsFIFOCount function.
*/

#define PLIB_SPI_ExistsFIFOCount PLIB_SPI_ExistsFIFOCount
PLIB_TEMPLATE bool SPI_ExistsFIFOCount_Default( SPI_MODULE_ID index )
{
    return true;
}


#endif /*_SPI_FIFOCOUNT_DEFAULT_H*/

/******************************************************************************
 End of File
*/

