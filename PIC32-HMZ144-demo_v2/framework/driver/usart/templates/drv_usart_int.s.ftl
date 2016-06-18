<#--
/*******************************************************************************
  USART interrupt Template File

  File Name:
    drv_usart_int.s

  Summary:
    This file contains source code necessary to initialize the system.

  Description:
    This file contains source code necessary to run the system.  It
	generates code that is added to system_interrupt.c in order to handle
	all interrupts.
 *******************************************************************************/

/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
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
 -->
<#macro DRV_USART_ASM_MX_INT DRV_USART_INSTANCE DRV_USART_ID>
<#if DRV_USART_ID == "USART_ID_1">
<#assign USART_ISR_VECTOR = CONFIG_INT_VECT_UART_1>
</#if>
<#if DRV_USART_ID == "USART_ID_2">
<#assign USART_ISR_VECTOR = CONFIG_INT_VECT_UART_2>
</#if>
<#if DRV_USART_ID == "USART_ID_3">
<#assign USART_ISR_VECTOR = CONFIG_INT_VECT_UART_3>
</#if>
<#if DRV_USART_ID == "USART_ID_4">
<#assign USART_ISR_VECTOR = CONFIG_INT_VECT_UART_4>
</#if>
<#if DRV_USART_ID == "USART_ID_5">
<#assign USART_ISR_VECTOR = CONFIG_INT_VECT_UART_5>
</#if>
<#if DRV_USART_ID == "USART_ID_6">
<#assign USART_ISR_VECTOR = CONFIG_INT_VECT_UART_6>
</#if>
<#if DRV_USART_INSTANCE == "0">
<#assign USART_ISR_NAME = "DrvUsartInstance0">
</#if>
<#if DRV_USART_INSTANCE == "1">
<#assign USART_ISR_NAME = "DrvUsartInstance1">
</#if>
<#if DRV_USART_INSTANCE == "2">
<#assign USART_ISR_NAME = "DrvUsartInstance2">
</#if>
<#if DRV_USART_INSTANCE == "3">
<#assign USART_ISR_NAME = "DrvUsartInstance3">
</#if>
<#if DRV_USART_INSTANCE == "4">
<#assign USART_ISR_NAME = "DrvUsartInstance4">
</#if>
<#if DRV_USART_INSTANCE == "5">
<#assign USART_ISR_NAME = "DrvUsartInstance5">
</#if>

/* USART Instance ${DRV_USART_INSTANCE} Interrupt */

<@RTOS_ISR VECTOR = USART_ISR_VECTOR NAME = USART_ISR_NAME/>
</#macro>
<#macro DRV_USART_ASM_MZ_INT DRV_USART_INSTANCE DRV_USART_ID>
<#if DRV_USART_ID == "USART_ID_1">
<#assign USART_RX_ISR_VECTOR = CONFIG_INT_VECT_UART1_RX>
<#assign USART_TX_ISR_VECTOR = CONFIG_INT_VECT_UART1_TX>
<#assign USART_FAULT_ISR_VECTOR = CONFIG_INT_VECT_UART1_FAULT>
</#if>
<#if DRV_USART_ID == "USART_ID_2">
<#assign USART_RX_ISR_VECTOR = CONFIG_INT_VECT_UART2_RX>
<#assign USART_TX_ISR_VECTOR = CONFIG_INT_VECT_UART2_TX>
<#assign USART_FAULT_ISR_VECTOR = CONFIG_INT_VECT_UART2_FAULT>
</#if>
<#if DRV_USART_ID == "USART_ID_3">
<#assign USART_RX_ISR_VECTOR = CONFIG_INT_VECT_UART3_RX>
<#assign USART_TX_ISR_VECTOR = CONFIG_INT_VECT_UART3_TX>
<#assign USART_FAULT_ISR_VECTOR = CONFIG_INT_VECT_UART3_FAULT>
</#if>
<#if DRV_USART_ID == "USART_ID_4">
<#assign USART_RX_ISR_VECTOR = CONFIG_INT_VECT_UART4_RX>
<#assign USART_TX_ISR_VECTOR = CONFIG_INT_VECT_UART4_TX>
<#assign USART_FAULT_ISR_VECTOR = CONFIG_INT_VECT_UART4_FAULT>
</#if>
<#if DRV_USART_ID == "USART_ID_5">
<#assign USART_RX_ISR_VECTOR = CONFIG_INT_VECT_UART5_RX>
<#assign USART_TX_ISR_VECTOR = CONFIG_INT_VECT_UART5_TX>
<#assign USART_FAULT_ISR_VECTOR = CONFIG_INT_VECT_UART5_FAULT>
</#if>
<#if DRV_USART_ID == "USART_ID_6">
<#assign USART_RX_ISR_VECTOR = CONFIG_INT_VECT_UART6_RX>
<#assign USART_TX_ISR_VECTOR = CONFIG_INT_VECT_UART6_TX>
<#assign USART_FAULT_ISR_VECTOR = CONFIG_INT_VECT_UART6_FAULT>
</#if>
<#if DRV_USART_INSTANCE == "0">
<#assign USART_RX_ISR_NAME = "DrvUsartReceiveInstance0">
<#assign USART_TX_ISR_NAME = "DrvUsartTransmitInstance0">
<#assign USART_FAULT_ISR_NAME = "DrvUsartErrorInstance0">
</#if>
<#if DRV_USART_INSTANCE == "1">
<#assign USART_RX_ISR_NAME = "DrvUsartReceiveInstance1">
<#assign USART_TX_ISR_NAME = "DrvUsartTransmitInstance1">
<#assign USART_FAULT_ISR_NAME = "DrvUsartErrorInstance1">
</#if>
<#if DRV_USART_INSTANCE == "2">
<#assign USART_RX_ISR_NAME = "DrvUsartReceiveInstance2">
<#assign USART_TX_ISR_NAME = "DrvUsartTransmitInstance2">
<#assign USART_FAULT_ISR_NAME = "DrvUsartErrorInstance2">
</#if>
<#if DRV_USART_INSTANCE == "3">
<#assign USART_RX_ISR_NAME = "DrvUsartReceiveInstance3">
<#assign USART_TX_ISR_NAME = "DrvUsartTransmitInstance3">
<#assign USART_FAULT_ISR_NAME = "DrvUsartErrorInstance3">
</#if>
<#if DRV_USART_INSTANCE == "4">
<#assign USART_RX_ISR_NAME = "DrvUsartReceiveInstance4">
<#assign USART_TX_ISR_NAME = "DrvUsartTransmitInstance4">
<#assign USART_FAULT_ISR_NAME = "DrvUsartErrorInstance4">
</#if>
<#if DRV_USART_INSTANCE == "5">
<#assign USART_RX_ISR_NAME = "DrvUsartReceiveInstance5">
<#assign USART_TX_ISR_NAME = "DrvUsartTransmitInstance5">
<#assign USART_FAULT_ISR_NAME = "DrvUsartErrorInstance5">
</#if>

/* USART Instance ${DRV_USART_INSTANCE} Interrupt */

<@RTOS_ISR VECTOR = USART_RX_ISR_VECTOR NAME = USART_RX_ISR_NAME/>
<@RTOS_ISR VECTOR = USART_TX_ISR_VECTOR NAME = USART_TX_ISR_NAME/>
<@RTOS_ISR VECTOR = USART_FAULT_ISR_VECTOR NAME = USART_FAULT_ISR_NAME/>
</#macro>
<#if CONFIG_DRV_USART_INTERRUPT_MODE == true && CONFIG_DRV_USART_SUPPORT_TRANSMIT_DMA == false && CONFIG_DRV_USART_SUPPORT_RECEIVE_DMA == false>
<#if CONFIG_PIC32MX == true>
<#if CONFIG_DRV_USART_INST_IDX0 == true>
<@DRV_USART_ASM_MX_INT DRV_USART_INSTANCE="0" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX0/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX1 == true>
<@DRV_USART_ASM_MX_INT DRV_USART_INSTANCE="1" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX1/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX2 == true>
<@DRV_USART_ASM_MX_INT DRV_USART_INSTANCE="2" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX2/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX3 == true>
<@DRV_USART_ASM_MX_INT DRV_USART_INSTANCE="3" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX3/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX4 == true>
<@DRV_USART_ASM_MX_INT DRV_USART_INSTANCE="4" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX4/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX5 == true>
<@DRV_USART_ASM_MX_INT DRV_USART_INSTANCE="5" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX5/>
</#if>
<#else>
<#if CONFIG_DRV_USART_INST_IDX0 == true>
<@DRV_USART_ASM_MZ_INT DRV_USART_INSTANCE="0" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX0/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX1 == true>
<@DRV_USART_ASM_MZ_INT DRV_USART_INSTANCE="1" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX1/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX2 == true>
<@DRV_USART_ASM_MZ_INT DRV_USART_INSTANCE="2" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX2/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX3 == true>
<@DRV_USART_ASM_MZ_INT DRV_USART_INSTANCE="3" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX3/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX4 == true>
<@DRV_USART_ASM_MZ_INT DRV_USART_INSTANCE="4" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX4/>
</#if>
<#if CONFIG_DRV_USART_INST_IDX5 == true>
<@DRV_USART_ASM_MZ_INT DRV_USART_INSTANCE="5" DRV_USART_ID=CONFIG_DRV_USART_PERIPHERAL_ID_IDX5/>
</#if>
</#if>
</#if>
