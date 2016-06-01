/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    awesome.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
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
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "awesome.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

AWESOME_DATA awesomeData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

static void AWESOME_TimerCallback (uintptr_t context, uint32_t alarmCount)
{
    awesomeData.heartbeatCount++;
    if (awesomeData.heartbeatCount >= AWESOME_HEARTBEAT_COUNT_MAX)
    {
        awesomeData.heartbeatCount = 0;
        awesomeData.heartbeatToggle = true;
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void AWESOME_Initialize ( void )

  Remarks:
    See prototype in awesome.h.
 */

void AWESOME_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    awesomeData.state = AWESOME_STATE_INIT;
    awesomeData.heartbeatTimer = DRV_HANDLE_INVALID;
    awesomeData.heartbeatCount = 0;
    awesomeData.heartbeatToggle = false;
}



/******************************************************************************
  Function:
    void AWESOME_Tasks ( void )

  Remarks:
    See prototype in awesome.h.
 */

void AWESOME_Tasks ( void )
{

    if (awesomeData.heartbeatToggle)
    {
        SYS_PORTS_PinToggle(PORTS_ID_0, AWESOME_HEARTBEAT_PORT, AWESOME_HEARTBEAT_PIN);
        awesomeData.heartbeatToggle = false;
    }
    /* Check the application's current state. */
    switch ( awesomeData.state )
    {
        /* Application's initial state. */
        case AWESOME_STATE_INIT:
        {
            awesomeData.heartbeatTimer = DRV_TMR_Open(AWESOME_HEARTBEAT_TMR,
                    DRV_IO_INTENT_EXCLUSIVE);

        
            if (awesomeData.heartbeatTimer != DRV_HANDLE_INVALID)
            {
                DRV_TMR_AlarmRegister(awesomeData.heartbeatTimer,
                        AWESOME_HEARTBEAT_TMR_PERIOD,
                        AWESOME_HEARTBEAT_TMR_IS_PERIODIC,
                        (uintptr_t) &awesomeData,
                        AWESOME_TimerCallback);
                DRV_TMR_Start(awesomeData.heartbeatTimer);
                awesomeData.state = AWESOME_STATE_IDLE;
            }
            break;
        }

        case AWESOME_STATE_IDLE:
            break;

        case AWESOME_STATE_SERVICE_TASKS:
        {
        
            break;
        }

        /* TODO: implement your application state machine.*/
        

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}




/*******************************************************************************
 End of File
 */
