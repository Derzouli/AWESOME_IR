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
#include "usb.h"
#include <xc.h>
#include <string.h>
#include "usb_config.h"
#include "usb_ch9.h"
#include "usb_hid.h"
//#include <plib.h>

int main(int argc, char** argv) {


    /*#ifdef USB_USE_INTERRUPTS
	INTCONbits.MVEC = 1; // Multi-vector interrupts
	IPC11bits.USBIP = 4; // Interrupt priority, must set to != 0.
	__asm volatile("ei");
    #endif*/

    usb_init();

	/* Setup mouse movement. This implementation sends back data for every
	 * IN packet, but sends no movement for all but every delay-th frame.
	 * Adjusting delay will slow down or speed up the movement, which is
	 * also dependent upon the rate at which the host sends IN packets,
	 * which varies between implementations.
	 *
	 * In real life, you wouldn't want to send back data that hadn't
	 * changed, but since there's no real hardware to poll, and since this
	 * example is about showing the HID class, and not about creative ways
	 * to do timing, we send back data every frame. The interested reader
	 * may want to modify it to use the start-of-frame callback for
	 * timing.
	 */
	uint8_t x_count = 100;
	uint8_t delay = 7;
	int8_t x_direc = 1;

	while (1) {
		if (usb_is_configured() &&
		    !usb_in_endpoint_halted(1) &&
		    !usb_in_endpoint_busy(1)) {

			unsigned char *buf = usb_get_in_buffer(1);
			buf[0] = 0x0;
			buf[1] = (--delay)? 0: x_direc;
			buf[2] = 0;
			usb_send_in_buffer(1, 3);

			if (delay == 0) {
				if (--x_count == 0) {
					x_count = 100;
					x_direc *= -1;
				}
				delay = 7;
			}
		}
                usb_service();
	}
    
    /*LATHbits.LATH2 = 1;
    TRISHbits.TRISH2 = 0;


    T1CONbits.TCKPS = 0b11;
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
    }*/
    return ;
}

