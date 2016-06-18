#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ec_sk_int_dyn.mk)" "nbproject/Makefile-local-pic32mz_ec_sk_int_dyn.mk"
include nbproject/Makefile-local-pic32mz_ec_sk_int_dyn.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ec_sk_int_dyn
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC32-HMZ144.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC32-HMZ144.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/clk/src/sys_clk_static.c ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ec_sk_int_dyn/system_init.c ../src/system_config/pic32mz_ec_sk_int_dyn/system_interrupt.c ../src/system_config/pic32mz_ec_sk_int_dyn/system_exceptions.c ../src/system_config/pic32mz_ec_sk_int_dyn/system_tasks.c ../src/app.c ../src/main.c ../src/mouse.c ../../../../../../bsp/pic32mz_ec_sk/bsp_sys_init.c ../../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c ../../../../../../framework/driver/spi/src/dynamic/drv_spi.c ../../../../../../framework/driver/spi/src/dynamic/drv_spi_api.c ../../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../../framework/system/fs/fat_fs/src/file_system/ff.c ../../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/ports/src/sys_ports.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_hid.c ../../../../../../framework/system/devcon/src/keyboard.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o ${OBJECTDIR}/_ext/189045468/sys_ports_static.o ${OBJECTDIR}/_ext/1789036259/system_init.o ${OBJECTDIR}/_ext/1789036259/system_interrupt.o ${OBJECTDIR}/_ext/1789036259/system_exceptions.o ${OBJECTDIR}/_ext/1789036259/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/mouse.o ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o ${OBJECTDIR}/_ext/1535967397/drv_spi.o ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1189039745/sys_fs.o ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o ${OBJECTDIR}/_ext/2143635134/ff.o ${OBJECTDIR}/_ext/598511097/diskio.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/1653354328/sys_ports.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o ${OBJECTDIR}/_ext/912498863/keyboard.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o.d ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o.d ${OBJECTDIR}/_ext/189045468/sys_ports_static.o.d ${OBJECTDIR}/_ext/1789036259/system_init.o.d ${OBJECTDIR}/_ext/1789036259/system_interrupt.o.d ${OBJECTDIR}/_ext/1789036259/system_exceptions.o.d ${OBJECTDIR}/_ext/1789036259/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/mouse.o.d ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o.d ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o.d ${OBJECTDIR}/_ext/1535967397/drv_spi.o.d ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o.d ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1189039745/sys_fs.o.d ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/2143635134/ff.o.d ${OBJECTDIR}/_ext/598511097/diskio.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1653354328/sys_ports.o.d ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d ${OBJECTDIR}/_ext/692885480/usb_device.o.d ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d ${OBJECTDIR}/_ext/912498863/keyboard.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o ${OBJECTDIR}/_ext/189045468/sys_ports_static.o ${OBJECTDIR}/_ext/1789036259/system_init.o ${OBJECTDIR}/_ext/1789036259/system_interrupt.o ${OBJECTDIR}/_ext/1789036259/system_exceptions.o ${OBJECTDIR}/_ext/1789036259/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/mouse.o ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o ${OBJECTDIR}/_ext/1535967397/drv_spi.o ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1189039745/sys_fs.o ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o ${OBJECTDIR}/_ext/2143635134/ff.o ${OBJECTDIR}/_ext/598511097/diskio.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/1653354328/sys_ports.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o ${OBJECTDIR}/_ext/912498863/keyboard.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/clk/src/sys_clk_static.c ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ec_sk_int_dyn/system_init.c ../src/system_config/pic32mz_ec_sk_int_dyn/system_interrupt.c ../src/system_config/pic32mz_ec_sk_int_dyn/system_exceptions.c ../src/system_config/pic32mz_ec_sk_int_dyn/system_tasks.c ../src/app.c ../src/main.c ../src/mouse.c ../../../../../../bsp/pic32mz_ec_sk/bsp_sys_init.c ../../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c ../../../../../../framework/driver/spi/src/dynamic/drv_spi.c ../../../../../../framework/driver/spi/src/dynamic/drv_spi_api.c ../../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../../framework/system/fs/fat_fs/src/file_system/ff.c ../../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/ports/src/sys_ports.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_hid.c ../../../../../../framework/system/devcon/src/keyboard.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz_ec_sk_int_dyn.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC32-HMZ144.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048ECG144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
	
else
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1748129490" 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_tasks.c   
	
${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1748129490" 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c   
	
${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1748129490" 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o.d" -o ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c   
	
${OBJECTDIR}/_ext/1272385164/sys_clk_static.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272385164" 
	@${RM} ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272385164/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1272385164/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/189045468/sys_ports_static.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/189045468" 
	@${RM} ${OBJECTDIR}/_ext/189045468/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/189045468/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/189045468/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/189045468/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/189045468/sys_ports_static.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1789036259/system_init.o: ../src/system_config/pic32mz_ec_sk_int_dyn/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789036259" 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789036259/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1789036259/system_init.o.d" -o ${OBJECTDIR}/_ext/1789036259/system_init.o ../src/system_config/pic32mz_ec_sk_int_dyn/system_init.c   
	
${OBJECTDIR}/_ext/1789036259/system_interrupt.o: ../src/system_config/pic32mz_ec_sk_int_dyn/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789036259" 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789036259/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1789036259/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1789036259/system_interrupt.o ../src/system_config/pic32mz_ec_sk_int_dyn/system_interrupt.c   
	
${OBJECTDIR}/_ext/1789036259/system_exceptions.o: ../src/system_config/pic32mz_ec_sk_int_dyn/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789036259" 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789036259/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1789036259/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1789036259/system_exceptions.o ../src/system_config/pic32mz_ec_sk_int_dyn/system_exceptions.c   
	
${OBJECTDIR}/_ext/1789036259/system_tasks.o: ../src/system_config/pic32mz_ec_sk_int_dyn/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789036259" 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789036259/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1789036259/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1789036259/system_tasks.o ../src/system_config/pic32mz_ec_sk_int_dyn/system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1360937237/mouse.o: ../src/mouse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mouse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/mouse.o.d" -o ${OBJECTDIR}/_ext/1360937237/mouse.o ../src/mouse.c   
	
${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o: ../../../../../../bsp/pic32mz_ec_sk/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1004665792" 
	@${RM} ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o ../../../../../../bsp/pic32mz_ec_sk/bsp_sys_init.c   
	
${OBJECTDIR}/_ext/1856604796/drv_sdcard.o: ../../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1856604796" 
	@${RM} ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1856604796/drv_sdcard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1856604796/drv_sdcard.o.d" -o ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o ../../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c   
	
${OBJECTDIR}/_ext/1535967397/drv_spi.o: ../../../../../../framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535967397" 
	@${RM} ${OBJECTDIR}/_ext/1535967397/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1535967397/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1535967397/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1535967397/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1535967397/drv_spi.o ../../../../../../framework/driver/spi/src/dynamic/drv_spi.c   
	
${OBJECTDIR}/_ext/1535967397/drv_spi_api.o: ../../../../../../framework/driver/spi/src/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535967397" 
	@${RM} ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1535967397/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1535967397/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o ../../../../../../framework/driver/spi/src/dynamic/drv_spi_api.c   
	
${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o: ../../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/368788181" 
	@${RM} ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o ../../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c   
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c   
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c   
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c   
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c   
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c   
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c   
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c   
	
${OBJECTDIR}/_ext/1189039745/sys_fs.o: ../../../../../../framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1189039745" 
	@${RM} ${OBJECTDIR}/_ext/1189039745/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189039745/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1189039745/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1189039745/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1189039745/sys_fs.o ../../../../../../framework/system/fs/src/dynamic/sys_fs.c   
	
${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o: ../../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1189039745" 
	@${RM} ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o ../../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c   
	
${OBJECTDIR}/_ext/2143635134/ff.o: ../../../../../../framework/system/fs/fat_fs/src/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2143635134" 
	@${RM} ${OBJECTDIR}/_ext/2143635134/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143635134/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2143635134/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/2143635134/ff.o.d" -o ${OBJECTDIR}/_ext/2143635134/ff.o ../../../../../../framework/system/fs/fat_fs/src/file_system/ff.c   
	
${OBJECTDIR}/_ext/598511097/diskio.o: ../../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/598511097" 
	@${RM} ${OBJECTDIR}/_ext/598511097/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/598511097/diskio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/598511097/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/598511097/diskio.o.d" -o ${OBJECTDIR}/_ext/598511097/diskio.o ../../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c   
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/1653354328/sys_ports.o: ../../../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1653354328" 
	@${RM} ${OBJECTDIR}/_ext/1653354328/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1653354328/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1653354328/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1653354328/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1653354328/sys_ports.o ../../../../../../framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c   
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c   
	
${OBJECTDIR}/_ext/692885480/usb_device_hid.o: ../../../../../../framework/usb/src/dynamic/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o ../../../../../../framework/usb/src/dynamic/usb_device_hid.c   
	
${OBJECTDIR}/_ext/912498863/keyboard.o: ../../../../../../framework/system/devcon/src/keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/keyboard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/keyboard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/keyboard.o.d" -o ${OBJECTDIR}/_ext/912498863/keyboard.o ../../../../../../framework/system/devcon/src/keyboard.c   
	
else
${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1748129490" 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/1748129490/drv_spi_tasks.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_tasks.c   
	
${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1748129490" 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/1748129490/drv_spi_master_ebm_tasks.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c   
	
${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1748129490" 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o.d" -o ${OBJECTDIR}/_ext/1748129490/drv_spi_master_rm_tasks.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/driver/spi/dynamic/drv_spi_master_rm_tasks.c   
	
${OBJECTDIR}/_ext/1272385164/sys_clk_static.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272385164" 
	@${RM} ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272385164/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1272385164/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1272385164/sys_clk_static.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/189045468/sys_ports_static.o: ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/189045468" 
	@${RM} ${OBJECTDIR}/_ext/189045468/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/189045468/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/189045468/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/189045468/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/189045468/sys_ports_static.o ../src/system_config/pic32mz_ec_sk_int_dyn/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1789036259/system_init.o: ../src/system_config/pic32mz_ec_sk_int_dyn/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789036259" 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789036259/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1789036259/system_init.o.d" -o ${OBJECTDIR}/_ext/1789036259/system_init.o ../src/system_config/pic32mz_ec_sk_int_dyn/system_init.c   
	
${OBJECTDIR}/_ext/1789036259/system_interrupt.o: ../src/system_config/pic32mz_ec_sk_int_dyn/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789036259" 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789036259/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1789036259/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1789036259/system_interrupt.o ../src/system_config/pic32mz_ec_sk_int_dyn/system_interrupt.c   
	
${OBJECTDIR}/_ext/1789036259/system_exceptions.o: ../src/system_config/pic32mz_ec_sk_int_dyn/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789036259" 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789036259/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1789036259/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1789036259/system_exceptions.o ../src/system_config/pic32mz_ec_sk_int_dyn/system_exceptions.c   
	
${OBJECTDIR}/_ext/1789036259/system_tasks.o: ../src/system_config/pic32mz_ec_sk_int_dyn/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789036259" 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789036259/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789036259/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1789036259/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1789036259/system_tasks.o ../src/system_config/pic32mz_ec_sk_int_dyn/system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1360937237/mouse.o: ../src/mouse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mouse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/mouse.o.d" -o ${OBJECTDIR}/_ext/1360937237/mouse.o ../src/mouse.c   
	
${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o: ../../../../../../bsp/pic32mz_ec_sk/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1004665792" 
	@${RM} ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/1004665792/bsp_sys_init.o ../../../../../../bsp/pic32mz_ec_sk/bsp_sys_init.c   
	
${OBJECTDIR}/_ext/1856604796/drv_sdcard.o: ../../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1856604796" 
	@${RM} ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1856604796/drv_sdcard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1856604796/drv_sdcard.o.d" -o ${OBJECTDIR}/_ext/1856604796/drv_sdcard.o ../../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c   
	
${OBJECTDIR}/_ext/1535967397/drv_spi.o: ../../../../../../framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535967397" 
	@${RM} ${OBJECTDIR}/_ext/1535967397/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1535967397/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1535967397/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1535967397/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1535967397/drv_spi.o ../../../../../../framework/driver/spi/src/dynamic/drv_spi.c   
	
${OBJECTDIR}/_ext/1535967397/drv_spi_api.o: ../../../../../../framework/driver/spi/src/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535967397" 
	@${RM} ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1535967397/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1535967397/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/1535967397/drv_spi_api.o ../../../../../../framework/driver/spi/src/dynamic/drv_spi_api.c   
	
${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o: ../../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/368788181" 
	@${RM} ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/368788181/drv_spi_sys_queue_fifo.o ../../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c   
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c   
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c   
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c   
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c   
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c   
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c   
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c   
	
${OBJECTDIR}/_ext/1189039745/sys_fs.o: ../../../../../../framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1189039745" 
	@${RM} ${OBJECTDIR}/_ext/1189039745/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189039745/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1189039745/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1189039745/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1189039745/sys_fs.o ../../../../../../framework/system/fs/src/dynamic/sys_fs.c   
	
${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o: ../../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1189039745" 
	@${RM} ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1189039745/sys_fs_media_manager.o ../../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c   
	
${OBJECTDIR}/_ext/2143635134/ff.o: ../../../../../../framework/system/fs/fat_fs/src/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2143635134" 
	@${RM} ${OBJECTDIR}/_ext/2143635134/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143635134/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2143635134/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/2143635134/ff.o.d" -o ${OBJECTDIR}/_ext/2143635134/ff.o ../../../../../../framework/system/fs/fat_fs/src/file_system/ff.c   
	
${OBJECTDIR}/_ext/598511097/diskio.o: ../../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/598511097" 
	@${RM} ${OBJECTDIR}/_ext/598511097/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/598511097/diskio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/598511097/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/598511097/diskio.o.d" -o ${OBJECTDIR}/_ext/598511097/diskio.o ../../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c   
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/1653354328/sys_ports.o: ../../../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1653354328" 
	@${RM} ${OBJECTDIR}/_ext/1653354328/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1653354328/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1653354328/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/1653354328/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1653354328/sys_ports.o ../../../../../../framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c   
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c   
	
${OBJECTDIR}/_ext/692885480/usb_device_hid.o: ../../../../../../framework/usb/src/dynamic/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o ../../../../../../framework/usb/src/dynamic/usb_device_hid.c   
	
${OBJECTDIR}/_ext/912498863/keyboard.o: ../../../../../../framework/system/devcon/src/keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/keyboard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/keyboard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ec_sk_int_dyn" -I"../src/system_config/pic32mz_ec_sk_int_dyn/framework" -I"../../../../../../bsp/pic32mz_ec_sk" -Wall -MMD -MF "${OBJECTDIR}/_ext/912498863/keyboard.o.d" -o ${OBJECTDIR}/_ext/912498863/keyboard.o ../../../../../../framework/system/devcon/src/keyboard.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32-HMZ144.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048ECG144_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32-HMZ144.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048ECG144_peripherals.a       -mreserve=data@0x0:0x27F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32-HMZ144.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048ECG144_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32-HMZ144.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048ECG144_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PIC32-HMZ144.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mz_ec_sk_int_dyn
	${RM} -r dist/pic32mz_ec_sk_int_dyn

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
