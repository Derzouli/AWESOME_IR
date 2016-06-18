/*******************************************************************************
  OSC Peripheral Library Template Implementation

  File Name:
    osc_ReferenceOutputEnable_PIC32_2.h

  Summary:
    OSC PLIB Template Implementation

  Description:
    This header file contains template implementations
    For Feature : ReferenceOutputEnable
    and its Variant : PIC32_2
    For following APIs :
        PLIB_OSC_ExistsReferenceOutputEnable
        PLIB_OSC_ReferenceOutputEnable
        PLIB_OSC_ReferenceOutputDisable
        PLIB_OSC_ReferenceOutputIsEnabled

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

#ifndef _OSC_REFERENCEOUTPUTENABLE_PIC32_2_H
#define _OSC_REFERENCEOUTPUTENABLE_PIC32_2_H

//******************************************************************************
/* Routines available for accessing VREGS, MASKS, POS, LEN are 

  VREGs: 
    _OSC_REF_OUTPUT_ENABLE_1_VREG(index)
    _OSC_REF_OUTPUT_ENABLE_2_VREG(index)
    _OSC_REF_OUTPUT_ENABLE_3_VREG(index)
    _OSC_REF_OUTPUT_ENABLE_4_VREG(index)

  MASKs: 
    _OSC_REF_OUTPUT_ENABLE_1_MASK(index)
    _OSC_REF_OUTPUT_ENABLE_2_MASK(index)
    _OSC_REF_OUTPUT_ENABLE_3_MASK(index)
    _OSC_REF_OUTPUT_ENABLE_4_MASK(index)

  POSs: 
    _OSC_REF_OUTPUT_ENABLE_1_POS(index)
    _OSC_REF_OUTPUT_ENABLE_2_POS(index)
    _OSC_REF_OUTPUT_ENABLE_3_POS(index)
    _OSC_REF_OUTPUT_ENABLE_4_POS(index)

  LENs: 
    _OSC_REF_OUTPUT_ENABLE_1_LEN(index)
    _OSC_REF_OUTPUT_ENABLE_2_LEN(index)
    _OSC_REF_OUTPUT_ENABLE_3_LEN(index)
    _OSC_REF_OUTPUT_ENABLE_4_LEN(index)

*/


//******************************************************************************
/* Function :  OSC_ExistsReferenceOutputEnable_PIC32_2

  Summary:
    Implements PIC32_2 variant of PLIB_OSC_ExistsReferenceOutputEnable

  Description:
    This template implements the PIC32_2 variant of the PLIB_OSC_ExistsReferenceOutputEnable function.
*/

#define PLIB_OSC_ExistsReferenceOutputEnable PLIB_OSC_ExistsReferenceOutputEnable
PLIB_TEMPLATE bool OSC_ExistsReferenceOutputEnable_PIC32_2( OSC_MODULE_ID index )
{
    return true;
}


//******************************************************************************
/* Function :  OSC_ReferenceOutputEnable_PIC32_2

  Summary:
    Implements PIC32_2 variant of PLIB_OSC_ReferenceOutputEnable 

  Description:
    This template implements the PIC32_2 variant of the PLIB_OSC_ReferenceOutputEnable function.
*/

PLIB_TEMPLATE void OSC_ReferenceOutputEnable_PIC32_2( OSC_MODULE_ID index , OSC_REFERENCE referenceOsc )
{
	switch(referenceOsc)
	{
    case OSC_REFERENCE_1: 	
    	_SFR_BIT_SET(_OSC_REF_OUTPUT_ENABLE_1_VREG(index),
                     _OSC_REF_OUTPUT_ENABLE_1_POS(index) );
		break;
		
	case OSC_REFERENCE_2: 	
		_SFR_BIT_SET(_OSC_REF_OUTPUT_ENABLE_2_VREG(index),
                     _OSC_REF_OUTPUT_ENABLE_2_POS(index) );
		break;
		
	case OSC_REFERENCE_3: 	
		_SFR_BIT_SET(_OSC_REF_OUTPUT_ENABLE_3_VREG(index),
                     _OSC_REF_OUTPUT_ENABLE_3_POS(index) );
		break;
		
	case OSC_REFERENCE_4: 	
		_SFR_BIT_SET(_OSC_REF_OUTPUT_ENABLE_4_VREG(index),
                     _OSC_REF_OUTPUT_ENABLE_4_POS(index) );
		break;
	}
}


//******************************************************************************
/* Function :  OSC_ReferenceOutputDisable_PIC32_2

  Summary:
    Implements PIC32_2 variant of PLIB_OSC_ReferenceOutputDisable 

  Description:
    This template implements the PIC32_2 variant of the PLIB_OSC_ReferenceOutputDisable function.
*/

PLIB_TEMPLATE void OSC_ReferenceOutputDisable_PIC32_2( OSC_MODULE_ID index , OSC_REFERENCE referenceOsc )
{
	switch(referenceOsc)
	{
    case OSC_REFERENCE_1: 	
     	_SFR_BIT_CLEAR(_OSC_REF_OUTPUT_ENABLE_1_VREG(index),
                       _OSC_REF_OUTPUT_ENABLE_1_POS(index) );
		break;
		
	case OSC_REFERENCE_2: 	
		_SFR_BIT_CLEAR(_OSC_REF_OUTPUT_ENABLE_2_VREG(index),
                       _OSC_REF_OUTPUT_ENABLE_2_POS(index) );
		break;
		
	case OSC_REFERENCE_3: 	
		_SFR_BIT_CLEAR(_OSC_REF_OUTPUT_ENABLE_3_VREG(index),
                       _OSC_REF_OUTPUT_ENABLE_3_POS(index) );
		break;
		
	case OSC_REFERENCE_4: 	
		_SFR_BIT_CLEAR(_OSC_REF_OUTPUT_ENABLE_4_VREG(index),
                       _OSC_REF_OUTPUT_ENABLE_4_POS(index) );
		break;
	}
}


//******************************************************************************
/* Function :  OSC_ReferenceOutputIsEnabled_PIC32_2

  Summary:
    Implements PIC32_2 variant of PLIB_OSC_ReferenceOutputIsEnabled 

  Description:
    This template implements the PIC32_2 variant of the PLIB_OSC_ReferenceOutputIsEnabled function.
*/

PLIB_TEMPLATE bool OSC_ReferenceOutputIsEnabled_PIC32_2( OSC_MODULE_ID index , OSC_REFERENCE referenceOsc )
{
	switch(referenceOsc)
	{
    case OSC_REFERENCE_1: 	
    		return _SFR_BIT_READ(_OSC_REF_OUTPUT_ENABLE_1_VREG(index),
                                 _OSC_REF_OUTPUT_ENABLE_1_POS(index) );
		
	case OSC_REFERENCE_2: 	
		    return _SFR_BIT_READ(_OSC_REF_OUTPUT_ENABLE_2_VREG(index),
                                 _OSC_REF_OUTPUT_ENABLE_2_POS(index) );
		
	case OSC_REFERENCE_3: 	
		    return _SFR_BIT_READ(_OSC_REF_OUTPUT_ENABLE_3_VREG(index),
                                 _OSC_REF_OUTPUT_ENABLE_3_POS(index) );
		
	case OSC_REFERENCE_4: 	
		    return _SFR_BIT_READ(_OSC_REF_OUTPUT_ENABLE_4_VREG(index),
                                 _OSC_REF_OUTPUT_ENABLE_4_POS(index) );
	}
}


#endif /*_OSC_REFERENCEOUTPUTENABLE_PIC32_2_H*/

/******************************************************************************
 End of File
*/

