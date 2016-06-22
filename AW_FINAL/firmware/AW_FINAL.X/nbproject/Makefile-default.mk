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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AW_FINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AW_FINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\tmr\src\dynamic\drv_tmr.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_pic32mz.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_cache_pic32mz.S ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\int\src\sys_int_pic32.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\ports\src\sys_ports.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\tmr\src\sys_tmr.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs_device.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device_hid.c ..\src\aw_final.c ..\src\system_config\default\framework\system\clk\src\sys_clk_static.c ..\src\system_config\default\framework\system\ports\src\sys_ports_static.c ..\src\system_config\default\system_init.c ..\src\system_config\default\system_interrupt.c ..\src\system_config\default\system_exceptions.c ..\src\main.c ..\src\system_config\default\system_tasks.c ../src/keyboard.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1988626013/drv_tmr.o ${OBJECTDIR}/_ext/158324619/sys_devcon.o ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o ${OBJECTDIR}/_ext/154959226/sys_ports.o ${OBJECTDIR}/_ext/820641023/sys_tmr.o ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o ${OBJECTDIR}/_ext/1482069634/usb_device.o ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o ${OBJECTDIR}/_ext/1362277832/aw_final.o ${OBJECTDIR}/_ext/364129844/sys_clk_static.o ${OBJECTDIR}/_ext/743124316/sys_ports_static.o ${OBJECTDIR}/_ext/1611509597/system_init.o ${OBJECTDIR}/_ext/1611509597/system_interrupt.o ${OBJECTDIR}/_ext/1611509597/system_exceptions.o ${OBJECTDIR}/_ext/1362277832/main.o ${OBJECTDIR}/_ext/1611509597/system_tasks.o ${OBJECTDIR}/_ext/1360937237/keyboard.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1988626013/drv_tmr.o.d ${OBJECTDIR}/_ext/158324619/sys_devcon.o.d ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o.d ${OBJECTDIR}/_ext/154959226/sys_ports.o.d ${OBJECTDIR}/_ext/820641023/sys_tmr.o.d ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o.d ${OBJECTDIR}/_ext/1482069634/usb_device.o.d ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o.d ${OBJECTDIR}/_ext/1362277832/aw_final.o.d ${OBJECTDIR}/_ext/364129844/sys_clk_static.o.d ${OBJECTDIR}/_ext/743124316/sys_ports_static.o.d ${OBJECTDIR}/_ext/1611509597/system_init.o.d ${OBJECTDIR}/_ext/1611509597/system_interrupt.o.d ${OBJECTDIR}/_ext/1611509597/system_exceptions.o.d ${OBJECTDIR}/_ext/1362277832/main.o.d ${OBJECTDIR}/_ext/1611509597/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/keyboard.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1988626013/drv_tmr.o ${OBJECTDIR}/_ext/158324619/sys_devcon.o ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o ${OBJECTDIR}/_ext/154959226/sys_ports.o ${OBJECTDIR}/_ext/820641023/sys_tmr.o ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o ${OBJECTDIR}/_ext/1482069634/usb_device.o ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o ${OBJECTDIR}/_ext/1362277832/aw_final.o ${OBJECTDIR}/_ext/364129844/sys_clk_static.o ${OBJECTDIR}/_ext/743124316/sys_ports_static.o ${OBJECTDIR}/_ext/1611509597/system_init.o ${OBJECTDIR}/_ext/1611509597/system_interrupt.o ${OBJECTDIR}/_ext/1611509597/system_exceptions.o ${OBJECTDIR}/_ext/1362277832/main.o ${OBJECTDIR}/_ext/1611509597/system_tasks.o ${OBJECTDIR}/_ext/1360937237/keyboard.o

# Source Files
SOURCEFILES=..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\tmr\src\dynamic\drv_tmr.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_pic32mz.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_cache_pic32mz.S ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\int\src\sys_int_pic32.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\ports\src\sys_ports.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\tmr\src\sys_tmr.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs_device.c ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device_hid.c ..\src\aw_final.c ..\src\system_config\default\framework\system\clk\src\sys_clk_static.c ..\src\system_config\default\framework\system\ports\src\sys_ports_static.c ..\src\system_config\default\system_init.c ..\src\system_config\default\system_interrupt.c ..\src\system_config\default\system_exceptions.c ..\src\main.c ..\src\system_config\default\system_tasks.c ../src/keyboard.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AW_FINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/158324619" 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_cache_pic32mz.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
	
else
${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/158324619" 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_cache_pic32mz.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/158324619/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1988626013/drv_tmr.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\tmr\src\dynamic\drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1988626013" 
	@${RM} ${OBJECTDIR}/_ext/1988626013/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1988626013/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1988626013/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1988626013/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1988626013/drv_tmr.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\tmr\src\dynamic\drv_tmr.c   
	
${OBJECTDIR}/_ext/158324619/sys_devcon.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/158324619" 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/158324619/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/158324619/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/158324619/sys_devcon.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon.c   
	
${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/158324619" 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_pic32mz.c   
	
${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\int\src\sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1962770729" 
	@${RM} ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\int\src\sys_int_pic32.c   
	
${OBJECTDIR}/_ext/154959226/sys_ports.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\ports\src\sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/154959226" 
	@${RM} ${OBJECTDIR}/_ext/154959226/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/154959226/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/154959226/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/154959226/sys_ports.o.d" -o ${OBJECTDIR}/_ext/154959226/sys_ports.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\ports\src\sys_ports.c   
	
${OBJECTDIR}/_ext/820641023/sys_tmr.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\tmr\src\sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/820641023" 
	@${RM} ${OBJECTDIR}/_ext/820641023/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/820641023/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/820641023/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/820641023/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/820641023/sys_tmr.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\tmr\src\sys_tmr.c   
	
${OBJECTDIR}/_ext/1591537989/drv_usbhs.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1591537989" 
	@${RM} ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1591537989/drv_usbhs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1591537989/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs.c   
	
${OBJECTDIR}/_ext/1482069634/usb_device.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482069634" 
	@${RM} ${OBJECTDIR}/_ext/1482069634/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482069634/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482069634/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1482069634/usb_device.o.d" -o ${OBJECTDIR}/_ext/1482069634/usb_device.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device.c   
	
${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1591537989" 
	@${RM} ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs_device.c   
	
${OBJECTDIR}/_ext/1482069634/usb_device_hid.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482069634" 
	@${RM} ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482069634/usb_device_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1482069634/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device_hid.c   
	
${OBJECTDIR}/_ext/1362277832/aw_final.o: ..\src\aw_final.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/aw_final.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/aw_final.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362277832/aw_final.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1362277832/aw_final.o.d" -o ${OBJECTDIR}/_ext/1362277832/aw_final.o ..\src\aw_final.c   
	
${OBJECTDIR}/_ext/364129844/sys_clk_static.o: ..\src\system_config\default\framework\system\clk\src\sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/364129844" 
	@${RM} ${OBJECTDIR}/_ext/364129844/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/364129844/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/364129844/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/364129844/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/364129844/sys_clk_static.o ..\src\system_config\default\framework\system\clk\src\sys_clk_static.c   
	
${OBJECTDIR}/_ext/743124316/sys_ports_static.o: ..\src\system_config\default\framework\system\ports\src\sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/743124316" 
	@${RM} ${OBJECTDIR}/_ext/743124316/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/743124316/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/743124316/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/743124316/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/743124316/sys_ports_static.o ..\src\system_config\default\framework\system\ports\src\sys_ports_static.c   
	
${OBJECTDIR}/_ext/1611509597/system_init.o: ..\src\system_config\default\system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611509597" 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611509597/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1611509597/system_init.o.d" -o ${OBJECTDIR}/_ext/1611509597/system_init.o ..\src\system_config\default\system_init.c   
	
${OBJECTDIR}/_ext/1611509597/system_interrupt.o: ..\src\system_config\default\system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611509597" 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611509597/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1611509597/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1611509597/system_interrupt.o ..\src\system_config\default\system_interrupt.c   
	
${OBJECTDIR}/_ext/1611509597/system_exceptions.o: ..\src\system_config\default\system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611509597" 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611509597/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1611509597/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1611509597/system_exceptions.o ..\src\system_config\default\system_exceptions.c   
	
${OBJECTDIR}/_ext/1362277832/main.o: ..\src\main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362277832/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1362277832/main.o.d" -o ${OBJECTDIR}/_ext/1362277832/main.o ..\src\main.c   
	
${OBJECTDIR}/_ext/1611509597/system_tasks.o: ..\src\system_config\default\system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611509597" 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611509597/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1611509597/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1611509597/system_tasks.o ..\src\system_config\default\system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/keyboard.o: ../src/keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/keyboard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/keyboard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/keyboard.o.d" -o ${OBJECTDIR}/_ext/1360937237/keyboard.o ../src/keyboard.c   
	
else
${OBJECTDIR}/_ext/1988626013/drv_tmr.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\tmr\src\dynamic\drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1988626013" 
	@${RM} ${OBJECTDIR}/_ext/1988626013/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1988626013/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1988626013/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1988626013/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1988626013/drv_tmr.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\tmr\src\dynamic\drv_tmr.c   
	
${OBJECTDIR}/_ext/158324619/sys_devcon.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/158324619" 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/158324619/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/158324619/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/158324619/sys_devcon.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon.c   
	
${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/158324619" 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/158324619/sys_devcon_pic32mz.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\devcon\src\sys_devcon_pic32mz.c   
	
${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\int\src\sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1962770729" 
	@${RM} ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1962770729/sys_int_pic32.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\int\src\sys_int_pic32.c   
	
${OBJECTDIR}/_ext/154959226/sys_ports.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\ports\src\sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/154959226" 
	@${RM} ${OBJECTDIR}/_ext/154959226/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/154959226/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/154959226/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/154959226/sys_ports.o.d" -o ${OBJECTDIR}/_ext/154959226/sys_ports.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\ports\src\sys_ports.c   
	
${OBJECTDIR}/_ext/820641023/sys_tmr.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\tmr\src\sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/820641023" 
	@${RM} ${OBJECTDIR}/_ext/820641023/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/820641023/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/820641023/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/820641023/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/820641023/sys_tmr.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\system\tmr\src\sys_tmr.c   
	
${OBJECTDIR}/_ext/1591537989/drv_usbhs.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1591537989" 
	@${RM} ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1591537989/drv_usbhs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1591537989/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1591537989/drv_usbhs.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs.c   
	
${OBJECTDIR}/_ext/1482069634/usb_device.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482069634" 
	@${RM} ${OBJECTDIR}/_ext/1482069634/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482069634/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482069634/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1482069634/usb_device.o.d" -o ${OBJECTDIR}/_ext/1482069634/usb_device.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device.c   
	
${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1591537989" 
	@${RM} ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1591537989/drv_usbhs_device.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\driver\usb\usbhs\src\dynamic\drv_usbhs_device.c   
	
${OBJECTDIR}/_ext/1482069634/usb_device_hid.o: ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482069634" 
	@${RM} ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482069634/usb_device_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1482069634/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/1482069634/usb_device_hid.o ..\..\..\..\..\..\..\microchip\harmony\v1_07\framework\usb\src\dynamic\usb_device_hid.c   
	
${OBJECTDIR}/_ext/1362277832/aw_final.o: ..\src\aw_final.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/aw_final.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/aw_final.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362277832/aw_final.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1362277832/aw_final.o.d" -o ${OBJECTDIR}/_ext/1362277832/aw_final.o ..\src\aw_final.c   
	
${OBJECTDIR}/_ext/364129844/sys_clk_static.o: ..\src\system_config\default\framework\system\clk\src\sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/364129844" 
	@${RM} ${OBJECTDIR}/_ext/364129844/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/364129844/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/364129844/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/364129844/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/364129844/sys_clk_static.o ..\src\system_config\default\framework\system\clk\src\sys_clk_static.c   
	
${OBJECTDIR}/_ext/743124316/sys_ports_static.o: ..\src\system_config\default\framework\system\ports\src\sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/743124316" 
	@${RM} ${OBJECTDIR}/_ext/743124316/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/743124316/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/743124316/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/743124316/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/743124316/sys_ports_static.o ..\src\system_config\default\framework\system\ports\src\sys_ports_static.c   
	
${OBJECTDIR}/_ext/1611509597/system_init.o: ..\src\system_config\default\system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611509597" 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611509597/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1611509597/system_init.o.d" -o ${OBJECTDIR}/_ext/1611509597/system_init.o ..\src\system_config\default\system_init.c   
	
${OBJECTDIR}/_ext/1611509597/system_interrupt.o: ..\src\system_config\default\system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611509597" 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611509597/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1611509597/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1611509597/system_interrupt.o ..\src\system_config\default\system_interrupt.c   
	
${OBJECTDIR}/_ext/1611509597/system_exceptions.o: ..\src\system_config\default\system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611509597" 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611509597/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1611509597/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1611509597/system_exceptions.o ..\src\system_config\default\system_exceptions.c   
	
${OBJECTDIR}/_ext/1362277832/main.o: ..\src\main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1362277832" 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1362277832/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1362277832/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1362277832/main.o.d" -o ${OBJECTDIR}/_ext/1362277832/main.o ..\src\main.c   
	
${OBJECTDIR}/_ext/1611509597/system_tasks.o: ..\src\system_config\default\system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1611509597" 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1611509597/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1611509597/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1611509597/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1611509597/system_tasks.o ..\src\system_config\default\system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/keyboard.o: ../src/keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/keyboard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/keyboard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../microchip/harmony/v1_07/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/keyboard.o.d" -o ${OBJECTDIR}/_ext/1360937237/keyboard.o ../src/keyboard.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AW_FINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../microchip/harmony/v1_07/bin/framework/peripheral/PIC32MZ2048ECG144_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/AW_FINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\microchip\harmony\v1_07\bin\framework\peripheral\PIC32MZ2048ECG144_peripherals.a       -mreserve=data@0x0:0x27F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/AW_FINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../microchip/harmony/v1_07/bin/framework/peripheral/PIC32MZ2048ECG144_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/AW_FINAL.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\microchip\harmony\v1_07\bin\framework\peripheral\PIC32MZ2048ECG144_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/AW_FINAL.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
