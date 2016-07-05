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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/awesome_remote.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/awesome_remote.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=usb-mstack/src/usb.c usb-mstack/src/usb_cdc.c usb-mstack/src/usb_hid.c usb-mstack/src/usb_winusb.c main.c uart_minilib.c usb_descriptors.c analyze.c confbits.c init.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/usb-mstack/src/usb.o ${OBJECTDIR}/usb-mstack/src/usb_cdc.o ${OBJECTDIR}/usb-mstack/src/usb_hid.o ${OBJECTDIR}/usb-mstack/src/usb_winusb.o ${OBJECTDIR}/main.o ${OBJECTDIR}/uart_minilib.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/analyze.o ${OBJECTDIR}/confbits.o ${OBJECTDIR}/init.o
POSSIBLE_DEPFILES=${OBJECTDIR}/usb-mstack/src/usb.o.d ${OBJECTDIR}/usb-mstack/src/usb_cdc.o.d ${OBJECTDIR}/usb-mstack/src/usb_hid.o.d ${OBJECTDIR}/usb-mstack/src/usb_winusb.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/uart_minilib.o.d ${OBJECTDIR}/usb_descriptors.o.d ${OBJECTDIR}/analyze.o.d ${OBJECTDIR}/confbits.o.d ${OBJECTDIR}/init.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/usb-mstack/src/usb.o ${OBJECTDIR}/usb-mstack/src/usb_cdc.o ${OBJECTDIR}/usb-mstack/src/usb_hid.o ${OBJECTDIR}/usb-mstack/src/usb_winusb.o ${OBJECTDIR}/main.o ${OBJECTDIR}/uart_minilib.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/analyze.o ${OBJECTDIR}/confbits.o ${OBJECTDIR}/init.o

# Source Files
SOURCEFILES=usb-mstack/src/usb.c usb-mstack/src/usb_cdc.c usb-mstack/src/usb_hid.c usb-mstack/src/usb_winusb.c main.c uart_minilib.c usb_descriptors.c analyze.c confbits.c init.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/awesome_remote.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX220F032B
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/usb-mstack/src/usb.o: usb-mstack/src/usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb-mstack/src" 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb.o.d 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb.o 
	@${FIXDEPS} "${OBJECTDIR}/usb-mstack/src/usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb-mstack/src/usb.o.d" -o ${OBJECTDIR}/usb-mstack/src/usb.o usb-mstack/src/usb.c   
	
${OBJECTDIR}/usb-mstack/src/usb_cdc.o: usb-mstack/src/usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb-mstack/src" 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/usb-mstack/src/usb_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb-mstack/src/usb_cdc.o.d" -o ${OBJECTDIR}/usb-mstack/src/usb_cdc.o usb-mstack/src/usb_cdc.c   
	
${OBJECTDIR}/usb-mstack/src/usb_hid.o: usb-mstack/src/usb_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb-mstack/src" 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/usb-mstack/src/usb_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb-mstack/src/usb_hid.o.d" -o ${OBJECTDIR}/usb-mstack/src/usb_hid.o usb-mstack/src/usb_hid.c   
	
${OBJECTDIR}/usb-mstack/src/usb_winusb.o: usb-mstack/src/usb_winusb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb-mstack/src" 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_winusb.o.d 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_winusb.o 
	@${FIXDEPS} "${OBJECTDIR}/usb-mstack/src/usb_winusb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb-mstack/src/usb_winusb.o.d" -o ${OBJECTDIR}/usb-mstack/src/usb_winusb.o usb-mstack/src/usb_winusb.c   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/uart_minilib.o: uart_minilib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart_minilib.o.d 
	@${RM} ${OBJECTDIR}/uart_minilib.o 
	@${FIXDEPS} "${OBJECTDIR}/uart_minilib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/uart_minilib.o.d" -o ${OBJECTDIR}/uart_minilib.o uart_minilib.c   
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d" -o ${OBJECTDIR}/usb_descriptors.o usb_descriptors.c   
	
${OBJECTDIR}/analyze.o: analyze.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/analyze.o.d 
	@${RM} ${OBJECTDIR}/analyze.o 
	@${FIXDEPS} "${OBJECTDIR}/analyze.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/analyze.o.d" -o ${OBJECTDIR}/analyze.o analyze.c   
	
${OBJECTDIR}/confbits.o: confbits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/confbits.o.d 
	@${RM} ${OBJECTDIR}/confbits.o 
	@${FIXDEPS} "${OBJECTDIR}/confbits.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/confbits.o.d" -o ${OBJECTDIR}/confbits.o confbits.c   
	
${OBJECTDIR}/init.o: init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/init.o.d 
	@${RM} ${OBJECTDIR}/init.o 
	@${FIXDEPS} "${OBJECTDIR}/init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/init.o.d" -o ${OBJECTDIR}/init.o init.c   
	
else
${OBJECTDIR}/usb-mstack/src/usb.o: usb-mstack/src/usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb-mstack/src" 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb.o.d 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb.o 
	@${FIXDEPS} "${OBJECTDIR}/usb-mstack/src/usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb-mstack/src/usb.o.d" -o ${OBJECTDIR}/usb-mstack/src/usb.o usb-mstack/src/usb.c   
	
${OBJECTDIR}/usb-mstack/src/usb_cdc.o: usb-mstack/src/usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb-mstack/src" 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/usb-mstack/src/usb_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb-mstack/src/usb_cdc.o.d" -o ${OBJECTDIR}/usb-mstack/src/usb_cdc.o usb-mstack/src/usb_cdc.c   
	
${OBJECTDIR}/usb-mstack/src/usb_hid.o: usb-mstack/src/usb_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb-mstack/src" 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/usb-mstack/src/usb_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb-mstack/src/usb_hid.o.d" -o ${OBJECTDIR}/usb-mstack/src/usb_hid.o usb-mstack/src/usb_hid.c   
	
${OBJECTDIR}/usb-mstack/src/usb_winusb.o: usb-mstack/src/usb_winusb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb-mstack/src" 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_winusb.o.d 
	@${RM} ${OBJECTDIR}/usb-mstack/src/usb_winusb.o 
	@${FIXDEPS} "${OBJECTDIR}/usb-mstack/src/usb_winusb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb-mstack/src/usb_winusb.o.d" -o ${OBJECTDIR}/usb-mstack/src/usb_winusb.o usb-mstack/src/usb_winusb.c   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/uart_minilib.o: uart_minilib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart_minilib.o.d 
	@${RM} ${OBJECTDIR}/uart_minilib.o 
	@${FIXDEPS} "${OBJECTDIR}/uart_minilib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/uart_minilib.o.d" -o ${OBJECTDIR}/uart_minilib.o uart_minilib.c   
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d" -o ${OBJECTDIR}/usb_descriptors.o usb_descriptors.c   
	
${OBJECTDIR}/analyze.o: analyze.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/analyze.o.d 
	@${RM} ${OBJECTDIR}/analyze.o 
	@${FIXDEPS} "${OBJECTDIR}/analyze.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/analyze.o.d" -o ${OBJECTDIR}/analyze.o analyze.c   
	
${OBJECTDIR}/confbits.o: confbits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/confbits.o.d 
	@${RM} ${OBJECTDIR}/confbits.o 
	@${FIXDEPS} "${OBJECTDIR}/confbits.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/confbits.o.d" -o ${OBJECTDIR}/confbits.o confbits.c   
	
${OBJECTDIR}/init.o: init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/init.o.d 
	@${RM} ${OBJECTDIR}/init.o 
	@${FIXDEPS} "${OBJECTDIR}/init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"usb-mstack/include" -I"." -MMD -MF "${OBJECTDIR}/init.o.d" -o ${OBJECTDIR}/init.o init.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/awesome_remote.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/awesome_remote.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/awesome_remote.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/awesome_remote.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/awesome_remote.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
