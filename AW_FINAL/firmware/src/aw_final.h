/*******************************************************************************
  MPLAB Harmony AW_FINALlication Header File

  Company:
    Microchip Technology Inc.

  File Name:
    AW_FINAL.h

  Summary:
    This header file provides prototypes and definitions for the AW_FINALlication.

  Description:
    This header file provides function prototypes and data type definitions for
    the AW_FINALlication.  Some of these are required by the system (such as the
    "AW_FINAL_Initialize" and "AW_FINAL_Tasks" prototypes) and some of them are only used
    internally by the AW_FINALlication (such as the "AW_FINAL_STATES" definition).  Both
    are defined here for convenience.
*******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

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

#ifndef _AW_FINAL_H
#define _AW_FINAL_H


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"
#include "keyboard.h"

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* AW_FINALlication states

  Summary:
    AW_FINALlication states enumeration

  Description:
    This enumeration defines the valid AW_FINALlication states.  These states
    determine the behavior of the AW_FINALlication at various times.
*/

typedef enum
{
	/* AW_FINALlication's state machine's initial state. */
	AW_FINAL_STATE_INIT=0,

	/* AW_FINALlication waits for configuration in this state */
    AW_FINAL_STATE_WAIT_FOR_CONFIGURATION,

    /* AW_FINALlication checks if an output report is available */
    AW_FINAL_STATE_CHECK_FOR_OUTPUT_REPORT,

    /* AW_FINALlication updates the switch states */
    AW_FINAL_STATE_SWITCH_PROCESS,

    /* AW_FINALlication checks if it is still configured*/
    AW_FINAL_STATE_CHECK_IF_CONFIGURED,

    /* AW_FINALlication emulates keyboard */
    AW_FINAL_STATE_EMULATE_KEYBOARD,

    /* AW_FINALlication error state */
    AW_FINAL_STATE_ERROR

} AW_FINAL_STATES;


// *****************************************************************************
/* AW_FINALlication Data

  Summary:
    Holds AW_FINALlication data

  Description:
    This structure holds the AW_FINALlication's data.

  Remarks:
    AW_FINALlication strings and buffers are be defined outside this structure.
 */

typedef struct
{
    /* The AW_FINALlication's current state */
    AW_FINAL_STATES state;

    /* Handle to the device layer */
    USB_DEVICE_HANDLE deviceHandle;

    /* AW_FINALlication HID instance */
    USB_DEVICE_HID_INDEX hidInstance;

    /* Keyboard modifier keys*/
    KEYBOARD_MODIFIER_KEYS keyboardModifierKeys;

    /* Key code array*/
    KEYBOARD_KEYCODE_ARRAY keyCodeArray;

    /* Is device configured */
    bool isConfigured;

    /* Switch state*/
    bool ignoreSwitchPress;

    /* Tracks switch press*/
    bool isSwitchPressed;

    /* Track the send report status */
    bool isReportSentComplete;

    /* Track if a report was received */
    bool isReportReceived;

    /* USB HID current Idle */
    uint8_t idleRate;

    /* Flag determines SOF event occurrence */
    bool sofEventHasOccurred;

    /* Receive transfer handle */
    USB_DEVICE_HID_TRANSFER_HANDLE receiveTransferHandle;

    /* Send transfer handle */
    USB_DEVICE_HID_TRANSFER_HANDLE sendTransferHandle;

    /* Keycode to be sent */
    USB_HID_KEYBOARD_KEYPAD key;

    /* USB HID active Protocol */
    USB_HID_PROTOCOL_CODE activeProtocol;

    /* Switch debounce timer */
    unsigned int switchDebounceTimer;

} AW_FINAL_DATA;


// *****************************************************************************
// *****************************************************************************
// Section: AW_FINALlication Callback Routines
// *****************************************************************************
// *****************************************************************************
/* These routines are called by drivers when certain events occur.
*/


// *****************************************************************************
// *****************************************************************************
// Section: AW_FINALlication Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void AW_FINAL_Initialize ( void )

  Summary:
     MPLAB Harmony AW_FINALlication initialization routine.

  Description:
    This function initializes the Harmony AW_FINALlication.  It places the
    AW_FINALlication in its initial state and prepares it to run so that its
    AW_FINAL_Tasks function can be called.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    AW_FINAL_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/

void AW_FINAL_Initialize ( void );


/*******************************************************************************
  Function:
    void AW_FINAL_Tasks ( void )

  Summary:
    MPLAB Harmony Demo AW_FINALlication tasks function

  Description:
    This routine is the Harmony Demo AW_FINALlication's tasks function.  It
    defines the AW_FINALlication's state machine and core logic.

  Precondition:
    The system and AW_FINALlication initialization ("SYS_Initialize") should be
    called before calling this.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    AW_FINAL_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */

void AW_FINAL_Tasks ( void );


#endif /* _AW_FINAL_H */
/*******************************************************************************
 End of File
 */

