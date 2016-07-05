

#include "usb.h"
#include <xc.h>
#include <string.h>
#include "usb_config.h"
#include "usb_ch9.h"
#include "usb_hid.h"
#include "fcts.h"

volatile u32 reception[10][35];
volatile u32 c = 0;
volatile s8 d = 0;

__attribute__((interrupt(IPL4AUTO), nomips16, vector(_TIMER_3_VECTOR)))
void        trame_check(void)
{
    IEC0bits.INT0IE = 0;
    T2CONbits.TON = 0; // disable timer 2
    reception[d][34] = c;
    d = (d < 10) ? d + 1 : 0;
    c = 0;
    TMR2 = 0;
    TMR3 = 0;
    IEC0bits.INT0IE = 1;
    IFS0bits.T3IF = 0;
}
__attribute__((interrupt(IPL3AUTO), nomips16, vector(_EXTERNAL_0_VECTOR)))
void        ir_receive(void)
{
    T2CONbits.TON = 1; // enable timer 2
    reception[d][c] = TMR2;
    c++;
    IFS0bits.INT0IF = 0;
}




int main(void)
{
#ifdef USB_USE_INTERRUPTS
    IPC7bits.USBIP = 7; /* Interrupt priority, must set to != 0. */
#endif
    init();
    usb_init();

    int8_t key_press = 4;

    u8 a = 0, i = 0;
    u32 trame = 0, prev_trame = 0;

    while (a < 10)
    {
        while (i < 35)
            reception[a][i++] = 0;
        ++a;
    }
    unsigned char *buf = NULL;
    bool send = false;
    while (1)
    {
        if (usb_is_configured() &&
            !usb_in_endpoint_halted(1) &&
                !usb_in_endpoint_busy(1))
        {
            buf = usb_get_in_buffer(1);

            buf[0] = 0;
            buf[1] = 0;
            buf[2] = send ? key_press : 0;
            buf[3] = 0;
            buf[4] = 0;
            buf[5] = 0;
            buf[6] = 0;
            buf[7] = 0;

            if (send)
                usb_send_in_buffer(1, 8);

            send = false;
        }
        if ((trame = analyze_trame(&reception)))
        {
            send = true;
            uart_putnbr(trame == REPEAT ? prev_trame : trame, 2);
            uart_putstr("\n\r");
            if (trame != REPEAT && trame != ERROR)
                prev_trame = trame;
            switch (trame == REPEAT ? prev_trame : trame)
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
                default:
                    uart_putendl("Key not recognized");
                    send = false;
            }
        }

        #ifndef USB_USE_INTERRUPTS
        usb_service();
        #endif
    }

    return 0;
}

/* Callbacks. These function names are set in usb_config.h. */
void app_set_configuration_callback(uint8_t configuration)
{

}

uint16_t app_get_device_status_callback()
{
	return 0x0000;
}

void app_endpoint_halt_callback(uint8_t endpoint, bool halted)
{

}

int8_t app_set_interface_callback(uint8_t interface, uint8_t alt_setting)
{
	return 0;
}

int8_t app_get_interface_callback(uint8_t interface)
{
	return 0;
}

void app_out_transaction_callback(uint8_t endpoint)
{

}

void app_in_transaction_complete_callback(uint8_t endpoint)
{
    static bool send = true;
    unsigned char *buf = NULL;

    if (send)
    {
        buf = usb_get_in_buffer(1);

        buf[0] = 0;
        buf[1] = 0;
        buf[2] = 0;
        buf[3] = 0;
        buf[4] = 0;
        buf[5] = 0;
        buf[6] = 0;
        buf[7] = 0;

        usb_send_in_buffer(1, 8);
        send = false;
    }
    else
        send = true;

}

int8_t app_unknown_setup_request_callback(const struct setup_packet *setup)
{
	/* To use the HID device class, have a handler for unknown setup
	 * requests and call process_hid_setup_request() (as shown here),
	 * which will check if the setup request is HID-related, and will
	 * call the HID application callbacks defined in usb_hid.h. For
	 * composite devices containing other device classes, make sure
	 * MULTI_CLASS_DEVICE is defined in usb_config.h and call all
	 * appropriate device class setup request functions here.
	 */
	return process_hid_setup_request(setup);
}

int16_t app_unknown_get_descriptor_callback(const struct setup_packet *pkt, const void **descriptor)
{
	return -1;
}

void app_start_of_frame_callback(void)
{

}

void app_usb_reset_callback(void)
{

}

/* HID Callbacks. See usb_hid.h for documentation. */

static uint8_t report_buf[8];

static void get_report_callback(bool transfer_ok, void *context)
{
	/* Nothing to do here really. It either succeeded or failed. If it
	 * failed, the host will ask for it again. It's nice to be on the
	 * device side in USB. */
}

int16_t app_get_report_callback(uint8_t interface, uint8_t report_type,
                                uint8_t report_id, const void **report,
                                usb_ep0_data_stage_callback *callback,
                                void **context)
{
	/* This isn't a composite device, so there's no need to check the
	 * interface here. Also, we know that there's only one report for
	 * this device, so there's no need to check report_type or report_id.
	 *
	 * Set report, callback, and context; and the USB stack will send
	 * the report, calling our callback (get_report_callback()) when
	 * it has finished.
	 */
	*report = report_buf;
	*callback = get_report_callback;
	*context = NULL;
	return sizeof(report_buf);
}

int8_t app_set_report_callback(uint8_t interface, uint8_t report_type,
                               uint8_t report_id)
{
	/* To handle Set_Report, call usb_start_receive_ep0_data_stage()
	 * here. See the documentation for HID_SET_REPORT_CALLBACK() in
	 * usb_hid.h. For this device though, there are no output or
	 * feature reports. */
	return -1;
}

uint8_t app_get_idle_callback(uint8_t interface, uint8_t report_id)
{
	return 0;
}

int8_t app_set_idle_callback(uint8_t interface, uint8_t report_id,
                             uint8_t idle_rate)
{
	return -1;
}

int8_t app_get_protocol_callback(uint8_t interface)
{
	return 1;
}

int8_t app_set_protocol_callback(uint8_t interface, uint8_t report_id)
{
	return -1;
}