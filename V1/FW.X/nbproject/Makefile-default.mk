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
FINAL_IMAGE=${DISTDIR}/FW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/Application.c ../../Library/Bootloader/Bootloader.c ../../Library/Common/Button.c ../../Library/Timer/SystemTick.c ../../Library/RTOS/Core/croutine.c ../../Library/RTOS/Core/event_groups.c ../../Library/RTOS/Core/heap_4.c ../../Library/RTOS/Core/list.c ../../Library/RTOS/Core/queue.c ../../Library/RTOS/Core/stream_buffer.c ../../Library/RTOS/Core/tasks.c ../../Library/RTOS/Core/timers.c ../../Library/RTOS/PIC32MM/port.c ../../Library/RTOS/PIC32MM/port_asm.S main.c mcc_generated_files/exceptions.c mcc_generated_files/memory/flash_demo.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/spi2.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/adc1.c mcc_generated_files/clock.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/coretimer.c mcc_generated_files/uart1.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/i2c1_driver.c mcc_generated_files/usb/usb_device_events.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/Application.o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ${OBJECTDIR}/_ext/814859167/Button.o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ${OBJECTDIR}/_ext/1796061812/croutine.o ${OBJECTDIR}/_ext/1796061812/event_groups.o ${OBJECTDIR}/_ext/1796061812/heap_4.o ${OBJECTDIR}/_ext/1796061812/list.o ${OBJECTDIR}/_ext/1796061812/queue.o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ${OBJECTDIR}/_ext/1796061812/tasks.o ${OBJECTDIR}/_ext/1796061812/timers.o ${OBJECTDIR}/_ext/1589728724/port.o ${OBJECTDIR}/_ext/1589728724/port_asm.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/Application.o.d ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d ${OBJECTDIR}/_ext/814859167/Button.o.d ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d ${OBJECTDIR}/_ext/1796061812/croutine.o.d ${OBJECTDIR}/_ext/1796061812/event_groups.o.d ${OBJECTDIR}/_ext/1796061812/heap_4.o.d ${OBJECTDIR}/_ext/1796061812/list.o.d ${OBJECTDIR}/_ext/1796061812/queue.o.d ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d ${OBJECTDIR}/_ext/1796061812/tasks.o.d ${OBJECTDIR}/_ext/1796061812/timers.o.d ${OBJECTDIR}/_ext/1589728724/port.o.d ${OBJECTDIR}/_ext/1589728724/port_asm.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/Application.o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ${OBJECTDIR}/_ext/814859167/Button.o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ${OBJECTDIR}/_ext/1796061812/croutine.o ${OBJECTDIR}/_ext/1796061812/event_groups.o ${OBJECTDIR}/_ext/1796061812/heap_4.o ${OBJECTDIR}/_ext/1796061812/list.o ${OBJECTDIR}/_ext/1796061812/queue.o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ${OBJECTDIR}/_ext/1796061812/tasks.o ${OBJECTDIR}/_ext/1796061812/timers.o ${OBJECTDIR}/_ext/1589728724/port.o ${OBJECTDIR}/_ext/1589728724/port_asm.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o

# Source Files
SOURCEFILES=app/libcomp.c app/Application.c ../../Library/Bootloader/Bootloader.c ../../Library/Common/Button.c ../../Library/Timer/SystemTick.c ../../Library/RTOS/Core/croutine.c ../../Library/RTOS/Core/event_groups.c ../../Library/RTOS/Core/heap_4.c ../../Library/RTOS/Core/list.c ../../Library/RTOS/Core/queue.c ../../Library/RTOS/Core/stream_buffer.c ../../Library/RTOS/Core/tasks.c ../../Library/RTOS/Core/timers.c ../../Library/RTOS/PIC32MM/port.c ../../Library/RTOS/PIC32MM/port_asm.S main.c mcc_generated_files/exceptions.c mcc_generated_files/memory/flash_demo.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/spi2.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/adc1.c mcc_generated_files/clock.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/coretimer.c mcc_generated_files/uart1.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/i2c1_driver.c mcc_generated_files/usb/usb_device_events.c



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MM0256GPM036
ProjectDir="C:\Users\sampi\OneDrive\Documents\Working\Git\DCPU\V1\FW.X"
ProjectName=FW
ConfName=default
ImagePath="${DISTDIR}\FW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="FW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/FW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\lastbuild.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\lastbuild.${OUTPUT_SUFFIX}"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MM0256GPM036
MP_LINKER_FILE_OPTION=,--script="..\..\Loadables\App.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1589728724/port_asm.o: ../../Library/RTOS/PIC32MM/port_asm.S  .generated_files/flags/default/29237b16813aa382d1327e2ebb54173894a49c34 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.ok ${OBJECTDIR}/_ext/1589728724/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1589728724/port_asm.o ../../Library/RTOS/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/port_asm.o.d" "${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1589728724/port_asm.o: ../../Library/RTOS/PIC32MM/port_asm.S  .generated_files/flags/default/5fcb828174af0b2fce563aab4fdb19de5d47f821 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.ok ${OBJECTDIR}/_ext/1589728724/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1589728724/port_asm.o ../../Library/RTOS/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/port_asm.o.d" "${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/b18569bb1275ba78f15b6d1d8b8d967dd9e88c9e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Application.o: app/Application.c  .generated_files/flags/default/a49cc07a3d666a391323525ce55b108a6dfccd07 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Application.o.d 
	@${RM} ${OBJECTDIR}/app/Application.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/Application.o.d" -o ${OBJECTDIR}/app/Application.o app/Application.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919251143/Bootloader.o: ../../Library/Bootloader/Bootloader.c  .generated_files/flags/default/60e5da98272f70df30a22325958f32679f157dbb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1919251143" 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1919251143/Bootloader.o.d" -o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ../../Library/Bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Button.o: ../../Library/Common/Button.c  .generated_files/flags/default/669843faa8d159a49560211ffadd6be7dbc445b0 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Button.o.d" -o ${OBJECTDIR}/_ext/814859167/Button.o ../../Library/Common/Button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1066572015/SystemTick.o: ../../Library/Timer/SystemTick.c  .generated_files/flags/default/869469d319ef7194bfb1dc357729abf1cc8845a0 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1066572015" 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1066572015/SystemTick.o.d" -o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ../../Library/Timer/SystemTick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/croutine.o: ../../Library/RTOS/Core/croutine.c  .generated_files/flags/default/81a0ebb5bb1ed581bc7e4f1a2dedbb3b4e6d2fa3 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/croutine.o.d" -o ${OBJECTDIR}/_ext/1796061812/croutine.o ../../Library/RTOS/Core/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/event_groups.o: ../../Library/RTOS/Core/event_groups.c  .generated_files/flags/default/a14cc43f1661634d811ac540823f973e6cb7ac73 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/event_groups.o.d" -o ${OBJECTDIR}/_ext/1796061812/event_groups.o ../../Library/RTOS/Core/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/heap_4.o: ../../Library/RTOS/Core/heap_4.c  .generated_files/flags/default/28c4c4aedd3a790e7e7a64bb9be79c95d87e8c4a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/heap_4.o.d" -o ${OBJECTDIR}/_ext/1796061812/heap_4.o ../../Library/RTOS/Core/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/list.o: ../../Library/RTOS/Core/list.c  .generated_files/flags/default/414c8dea193f2ee415309fc60d11f9366d44d105 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/list.o.d" -o ${OBJECTDIR}/_ext/1796061812/list.o ../../Library/RTOS/Core/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/queue.o: ../../Library/RTOS/Core/queue.c  .generated_files/flags/default/b63da91e1b15ab245d3876d36cbc8cb0960518f5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/queue.o.d" -o ${OBJECTDIR}/_ext/1796061812/queue.o ../../Library/RTOS/Core/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/stream_buffer.o: ../../Library/RTOS/Core/stream_buffer.c  .generated_files/flags/default/9e1985824a5733b2b17d48e5a9e845b58d2a70b7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ../../Library/RTOS/Core/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/tasks.o: ../../Library/RTOS/Core/tasks.c  .generated_files/flags/default/a33b5a7a2155e3c873855f2ba737d798ea3ab065 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/tasks.o.d" -o ${OBJECTDIR}/_ext/1796061812/tasks.o ../../Library/RTOS/Core/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/timers.o: ../../Library/RTOS/Core/timers.c  .generated_files/flags/default/5913d152afb204a2aac48024ae7f56db81736c7a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/timers.o.d" -o ${OBJECTDIR}/_ext/1796061812/timers.o ../../Library/RTOS/Core/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1589728724/port.o: ../../Library/RTOS/PIC32MM/port.c  .generated_files/flags/default/c8cdb66cc1266b1f09c7b00d64187d24db74837 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1589728724/port.o.d" -o ${OBJECTDIR}/_ext/1589728724/port.o ../../Library/RTOS/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f21bb5198a947c742947d38271f830029530ac36 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/3051bd53f4e41039ab81f09fd2fa842905cef074 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/10488177ade260f4327c5bd6853fd236f82b4a0a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o mcc_generated_files/memory/flash_demo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/7f8399c3a62fc1fff258c166e5214dd4e380b4d3 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/6a87364b906e071480b3ac9a432514208d0b18cb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/default/845fe239c4e16060ff00c1e9c6f6f3b4f30c3e6b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/dcd4a078adf0727b277277191ea40ff26c8c3c24 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/d43b0583e8011394386965eb5fc7a270cebe8c94 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/abb5440d98ecfa2f0cbd3ef39abbb1eefab43dd7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/8637b906a71ff9e471ffbc8ca7b73e7f24f0efca .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/ad190c1d38a567cf671872385e738764e854dab1 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/flags/default/87d305d981cdabcd26eeb8fb64f4dff5b79e24de .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o mcc_generated_files/usb/usb_device_generic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/bf2721c78e3773413a95424dd176c91e72261985 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/f55087669ea8ea4c9fe4f248281b0d53d507505b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/73258cdd6dc73baa228367faf284ce8108510ebb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/7dd44588293da8ce9ad91c8ecf574d0f6bcb8ff7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/d893f0a5e6fc5e242bc0999b62999cad4ad27f43 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o mcc_generated_files/i2c1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/ae5268c3d7ede88a4f7bd4aafdfb817fe3e4e817 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/3428fb2fe1ed3e8c850d61fc5e27eaf4db031b59 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/Application.o: app/Application.c  .generated_files/flags/default/8b1db4888f7f281d0a0f7a0bfcf89c1915b4864f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/Application.o.d 
	@${RM} ${OBJECTDIR}/app/Application.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/Application.o.d" -o ${OBJECTDIR}/app/Application.o app/Application.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919251143/Bootloader.o: ../../Library/Bootloader/Bootloader.c  .generated_files/flags/default/b7fdd56637c534f6d08541c044aac445fb2cbda0 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1919251143" 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1919251143/Bootloader.o.d" -o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ../../Library/Bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Button.o: ../../Library/Common/Button.c  .generated_files/flags/default/517443432e810e34912aee2d607b9525c53643e5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Button.o.d" -o ${OBJECTDIR}/_ext/814859167/Button.o ../../Library/Common/Button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1066572015/SystemTick.o: ../../Library/Timer/SystemTick.c  .generated_files/flags/default/c3270cbf421e0ae29bd55813af95c982432de0d8 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1066572015" 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1066572015/SystemTick.o.d" -o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ../../Library/Timer/SystemTick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/croutine.o: ../../Library/RTOS/Core/croutine.c  .generated_files/flags/default/ad8bf3fcd7c052720ad750890b044617727b8e41 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/croutine.o.d" -o ${OBJECTDIR}/_ext/1796061812/croutine.o ../../Library/RTOS/Core/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/event_groups.o: ../../Library/RTOS/Core/event_groups.c  .generated_files/flags/default/874d54612d014db4cce319f9ec5bbd8656dd5c97 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/event_groups.o.d" -o ${OBJECTDIR}/_ext/1796061812/event_groups.o ../../Library/RTOS/Core/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/heap_4.o: ../../Library/RTOS/Core/heap_4.c  .generated_files/flags/default/4955943b9aa76d8545bc1d55cc87e4ad73efca55 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/heap_4.o.d" -o ${OBJECTDIR}/_ext/1796061812/heap_4.o ../../Library/RTOS/Core/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/list.o: ../../Library/RTOS/Core/list.c  .generated_files/flags/default/637934943dc74970aa3169836028f4354dc36fcb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/list.o.d" -o ${OBJECTDIR}/_ext/1796061812/list.o ../../Library/RTOS/Core/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/queue.o: ../../Library/RTOS/Core/queue.c  .generated_files/flags/default/374477483aa4aea1c1180a09fbe886d4021b5bcd .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/queue.o.d" -o ${OBJECTDIR}/_ext/1796061812/queue.o ../../Library/RTOS/Core/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/stream_buffer.o: ../../Library/RTOS/Core/stream_buffer.c  .generated_files/flags/default/a3db14bc024044f4e390eceda67e70e8cc7c71aa .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ../../Library/RTOS/Core/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/tasks.o: ../../Library/RTOS/Core/tasks.c  .generated_files/flags/default/6a6ef12549b229f0b2029131bd0b22ed6ce6de20 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/tasks.o.d" -o ${OBJECTDIR}/_ext/1796061812/tasks.o ../../Library/RTOS/Core/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/timers.o: ../../Library/RTOS/Core/timers.c  .generated_files/flags/default/dc3aa75f5d6bc673ca1e75af6af28be4be2c12ea .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/timers.o.d" -o ${OBJECTDIR}/_ext/1796061812/timers.o ../../Library/RTOS/Core/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1589728724/port.o: ../../Library/RTOS/PIC32MM/port.c  .generated_files/flags/default/4fb9c1a3628149e425cc227463f15fe8d3d1a0ab .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1589728724/port.o.d" -o ${OBJECTDIR}/_ext/1589728724/port.o ../../Library/RTOS/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/e361372d4072a467b5c32891a4a790a57b054b3a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/ca2d530168e97e5854126a02aaea85e89c6b2b0a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/4570f72110d570f11798acc0844933cea70ca579 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o mcc_generated_files/memory/flash_demo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/9514d6ce343bc684aa2a57f2bf216c144eced195 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/15f13968c80b0f8b151c808eea5b31789e672429 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/default/69c4ad709ecfb2bf0b690dc5e4be73393415c8d4 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/c5a31ca3070c35beaeff8bd78af3a4c3b84deca5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/c56f2a4b0a07b50aa041309ba10eaad88ed7b035 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/f4d87cd5d9a77eecb15c806a6d670bd0a3b898cb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/434ecc8570f78b62c248e4751b34c427ba1498ff .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/a395874f178146ef46ee41586a9ffe3bb092751e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/flags/default/f3ce8babdce9440793aeeeaf0186382a3478b46b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o mcc_generated_files/usb/usb_device_generic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/1466b4dc9561e042efc847dd3a0a8cbb9066a6e0 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/309b06fb2ca30f460b59ecb6b103826240326e3a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/be2282cd32b8e313b7699fa378ee0cab7925c7d4 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/b02806767a7925dceec1f344a12bbde31e755b0a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/d50388d1cc8bf498324184c558f9c96b81157cf7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o mcc_generated_files/i2c1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/9e8c0468aca613bad8d7fc9ca6a1bae4cf77a59c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/FW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../Loadables/App.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o ${DISTDIR}/FW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--defsym=_min_stack_size=64,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/FW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../Loadables/App.ld ../../Loadables/bldv1.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o ${DISTDIR}/FW.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--defsym=_min_stack_size=64,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/FW.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/FW.X.${IMAGE_TYPE}.hex -o${DISTDIR}/FW.X.${IMAGE_TYPE}.hex

	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/FW.X.${IMAGE_TYPE}.hex ../../Loadables/bldv1.hex -odist/${CND_CONF}/production/FW.X.production.unified.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
