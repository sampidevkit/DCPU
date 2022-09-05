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
FINAL_IMAGE=${DISTDIR}/UserApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/UserApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/UserApp.c ../../Library/Bootloader/Bootloader.c ../../Library/Common/Button.c ../../Library/Common/Util.c ../../Library/Timer/SystemTick.c ../../Library/USB/USB_CDC_Debug.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/memory/flash.c mcc_generated_files/memory/flash_demo.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device.c mcc_generated_files/exceptions.c mcc_generated_files/uart1.c mcc_generated_files/mcc.c mcc_generated_files/adc1.c mcc_generated_files/clock.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/i2c1_driver.c mcc_generated_files/spi2_driver.c mcc_generated_files/interrupt_manager.c ../../Library/RTOS/Core/croutine.c ../../Library/RTOS/Core/event_groups.c ../../Library/RTOS/Core/heap_4.c ../../Library/RTOS/Core/list.c ../../Library/RTOS/Core/queue.c ../../Library/RTOS/Core/stream_buffer.c ../../Library/RTOS/Core/tasks.c ../../Library/RTOS/Core/timers.c ../../Library/RTOS/PIC32MM/port.c ../../Library/RTOS/PIC32MM/port_asm.S ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S ../../Library/RTOS/PIC32MM/i2c1_master_isr.S ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S ../../Library/RTOS/PIC32MM/uart1_err_isr.S ../../Library/RTOS/PIC32MM/uart1_rx_isr.S ../../Library/RTOS/PIC32MM/uart1_tx_isr.S ../../Library/RTOS/PIC32MM/usb_isr.S main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/UserApp.o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ${OBJECTDIR}/_ext/814859167/Button.o ${OBJECTDIR}/_ext/814859167/Util.o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/_ext/1796061812/croutine.o ${OBJECTDIR}/_ext/1796061812/event_groups.o ${OBJECTDIR}/_ext/1796061812/heap_4.o ${OBJECTDIR}/_ext/1796061812/list.o ${OBJECTDIR}/_ext/1796061812/queue.o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ${OBJECTDIR}/_ext/1796061812/tasks.o ${OBJECTDIR}/_ext/1796061812/timers.o ${OBJECTDIR}/_ext/1589728724/port.o ${OBJECTDIR}/_ext/1589728724/port_asm.o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/UserApp.o.d ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d ${OBJECTDIR}/_ext/814859167/Button.o.d ${OBJECTDIR}/_ext/814859167/Util.o.d ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/_ext/1796061812/croutine.o.d ${OBJECTDIR}/_ext/1796061812/event_groups.o.d ${OBJECTDIR}/_ext/1796061812/heap_4.o.d ${OBJECTDIR}/_ext/1796061812/list.o.d ${OBJECTDIR}/_ext/1796061812/queue.o.d ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d ${OBJECTDIR}/_ext/1796061812/tasks.o.d ${OBJECTDIR}/_ext/1796061812/timers.o.d ${OBJECTDIR}/_ext/1589728724/port.o.d ${OBJECTDIR}/_ext/1589728724/port_asm.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d ${OBJECTDIR}/_ext/1589728724/usb_isr.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/UserApp.o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ${OBJECTDIR}/_ext/814859167/Button.o ${OBJECTDIR}/_ext/814859167/Util.o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/_ext/1796061812/croutine.o ${OBJECTDIR}/_ext/1796061812/event_groups.o ${OBJECTDIR}/_ext/1796061812/heap_4.o ${OBJECTDIR}/_ext/1796061812/list.o ${OBJECTDIR}/_ext/1796061812/queue.o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ${OBJECTDIR}/_ext/1796061812/tasks.o ${OBJECTDIR}/_ext/1796061812/timers.o ${OBJECTDIR}/_ext/1589728724/port.o ${OBJECTDIR}/_ext/1589728724/port_asm.o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=app/libcomp.c app/UserApp.c ../../Library/Bootloader/Bootloader.c ../../Library/Common/Button.c ../../Library/Common/Util.c ../../Library/Timer/SystemTick.c ../../Library/USB/USB_CDC_Debug.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/memory/flash.c mcc_generated_files/memory/flash_demo.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device.c mcc_generated_files/exceptions.c mcc_generated_files/uart1.c mcc_generated_files/mcc.c mcc_generated_files/adc1.c mcc_generated_files/clock.c mcc_generated_files/system.c mcc_generated_files/pin_manager.c mcc_generated_files/i2c1_driver.c mcc_generated_files/spi2_driver.c mcc_generated_files/interrupt_manager.c ../../Library/RTOS/Core/croutine.c ../../Library/RTOS/Core/event_groups.c ../../Library/RTOS/Core/heap_4.c ../../Library/RTOS/Core/list.c ../../Library/RTOS/Core/queue.c ../../Library/RTOS/Core/stream_buffer.c ../../Library/RTOS/Core/tasks.c ../../Library/RTOS/Core/timers.c ../../Library/RTOS/PIC32MM/port.c ../../Library/RTOS/PIC32MM/port_asm.S ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S ../../Library/RTOS/PIC32MM/i2c1_master_isr.S ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S ../../Library/RTOS/PIC32MM/uart1_err_isr.S ../../Library/RTOS/PIC32MM/uart1_rx_isr.S ../../Library/RTOS/PIC32MM/uart1_tx_isr.S ../../Library/RTOS/PIC32MM/usb_isr.S main.c



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
ProjectDir="C:\Working\Git\DCPU\V1\UserApp.X"
ProjectName=UserApp
ConfName=default
ImagePath="${DISTDIR}\UserApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="UserApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/UserApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [MakeProduction.bat]"
	@MakeProduction.bat
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
${OBJECTDIR}/_ext/1589728724/port_asm.o: ../../Library/RTOS/PIC32MM/port_asm.S  .generated_files/flags/default/be99ccacc4ea26a99be568c41c7acfffd054448e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.ok ${OBJECTDIR}/_ext/1589728724/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1589728724/port_asm.o ../../Library/RTOS/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/port_asm.o.d" "${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o: ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  .generated_files/flags/default/510078cd99a485372783672f665bd02826d5b1be .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o: ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  .generated_files/flags/default/12316ee17f00be624a5850f321f143dc470931ca .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o: ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  .generated_files/flags/default/cb9a4c5201ad20f1f4ea778bd676fc032994102 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o: ../../Library/RTOS/PIC32MM/uart1_err_isr.S  .generated_files/flags/default/2234b064ca1a2f1a2f155280f26d7f45c7f1474b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ../../Library/RTOS/PIC32MM/uart1_err_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o: ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  .generated_files/flags/default/1f4d7a5c2d0a15aa9ffb784937a3f1704c848dd1 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o: ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  .generated_files/flags/default/86278103e70dc266aac34d1b58b3b4f0d8cbe787 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/usb_isr.o: ../../Library/RTOS/PIC32MM/usb_isr.S  .generated_files/flags/default/6f0ee36388c27f93154cdcd443ecddf94ef98f5b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.ok ${OBJECTDIR}/_ext/1589728724/usb_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ../../Library/RTOS/PIC32MM/usb_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d" "${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1589728724/port_asm.o: ../../Library/RTOS/PIC32MM/port_asm.S  .generated_files/flags/default/424710adc42f0cad4b5c2677f88b6b3540c1315b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.ok ${OBJECTDIR}/_ext/1589728724/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1589728724/port_asm.o ../../Library/RTOS/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/port_asm.o.d" "${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o: ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  .generated_files/flags/default/a1551e883c4c014719b4f4ff25d28e3e49a6682a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o: ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  .generated_files/flags/default/66ede05f1ea928f581d153df045ae339209553f9 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o: ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  .generated_files/flags/default/fdbe8321edf1fb2d1419897342b1bcea478d9575 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o: ../../Library/RTOS/PIC32MM/uart1_err_isr.S  .generated_files/flags/default/88a8e69313aee10b229937090a01034e6c607b27 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ../../Library/RTOS/PIC32MM/uart1_err_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o: ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  .generated_files/flags/default/cc32d89536cee2d7be9b50586c2f8e1a64236ba .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o: ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  .generated_files/flags/default/ea9cee279508ca79eef3db91a8d9fd25bd87c85e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/usb_isr.o: ../../Library/RTOS/PIC32MM/usb_isr.S  .generated_files/flags/default/e7734062a0768586c1e7c437a73587d428e888a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.ok ${OBJECTDIR}/_ext/1589728724/usb_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ../../Library/RTOS/PIC32MM/usb_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d" "${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/660027fbee0c6e2b1ef3f84b13001d68a7fbfa27 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/UserApp.o: app/UserApp.c  .generated_files/flags/default/e89e8f149481bc0761029786997bdc5b0ee5c24f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/UserApp.o.d 
	@${RM} ${OBJECTDIR}/app/UserApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/UserApp.o.d" -o ${OBJECTDIR}/app/UserApp.o app/UserApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919251143/Bootloader.o: ../../Library/Bootloader/Bootloader.c  .generated_files/flags/default/ae996254da3caefd03bfefa470df4418d4958fb1 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1919251143" 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1919251143/Bootloader.o.d" -o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ../../Library/Bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Button.o: ../../Library/Common/Button.c  .generated_files/flags/default/c25a1b9baee4b950fc924651ca2a5cd4f2b88e9d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Button.o.d" -o ${OBJECTDIR}/_ext/814859167/Button.o ../../Library/Common/Button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Util.o: ../../Library/Common/Util.c  .generated_files/flags/default/a1c072685587dc14d976e7f8d64adf1368f9d0ce .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Util.o.d" -o ${OBJECTDIR}/_ext/814859167/Util.o ../../Library/Common/Util.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1066572015/SystemTick.o: ../../Library/Timer/SystemTick.c  .generated_files/flags/default/5174cc0ade2a2bd611626f5eda74c14f9b8dc1f2 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1066572015" 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1066572015/SystemTick.o.d" -o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ../../Library/Timer/SystemTick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o: ../../Library/USB/USB_CDC_Debug.c  .generated_files/flags/default/77bd0613daea62ae28276dbb97895c1bb58149f8 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1610046384" 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d" -o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ../../Library/USB/USB_CDC_Debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/8f81f1d713126fc2bbac08f3301c9fa1acb7f95d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o mcc_generated_files/drivers/i2c_simple_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/1dab03a93e9e3f01697d68bd2b9441975fe5907 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o mcc_generated_files/drivers/i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/58faf0e31ed957bcfb04cae570f66d11a41f777f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o mcc_generated_files/drivers/i2c_types.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/68bb991de6b122f20fffcb80cdae6e70bb30bceb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/d24ed95b616d5ce733c934d05e9856d8ae9a5f1a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/d71e68119c3d79966eb9aaaffbc4c66180cac960 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o mcc_generated_files/memory/flash_demo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/ca2e3df90d5025f1a182d7084d9b78b9528a9595 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  .generated_files/flags/default/b147bd798ad3a3b0c9e529a3f30ef110475d5c5f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/3e9a4946534116d0945271839b7edd051314096a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/33f84a6d4bb8fbf4650230ee44e2ed1f3af66b00 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/fcd4dbce79a7788890dafbc5fbeba258f9351a52 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/b3b5422572b481cffd3114ae7c65951f4a73878f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/6440d3e68baa91a626acc01c071f65c61fef71a6 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/9f4f315af261a3b489bf454de17c6819f4469942 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/97eab9350482892c9f0cbf03ef4e85387389d4ba .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/f7ea187b856e6f348b227bc13894c18b72781d1d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/8b454dc07e188d1a80687fc126b1a1ba71fde5fc .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/16021ef27132ceadf2cea7c862c631be832c3494 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o mcc_generated_files/i2c1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2_driver.o: mcc_generated_files/spi2_driver.c  .generated_files/flags/default/c8e388738f10ccdd23b48a7c5ae976169f3c4d99 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o mcc_generated_files/spi2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/72e0e5fc7f27a6fbfbb6ea7571ebaa2c5278f45c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/croutine.o: ../../Library/RTOS/Core/croutine.c  .generated_files/flags/default/b0303693da607058401824bfdd48b5194da1ecb2 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/croutine.o.d" -o ${OBJECTDIR}/_ext/1796061812/croutine.o ../../Library/RTOS/Core/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/event_groups.o: ../../Library/RTOS/Core/event_groups.c  .generated_files/flags/default/f767c12f97fbdcf7634422cf288bb1b4928b5ed4 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/event_groups.o.d" -o ${OBJECTDIR}/_ext/1796061812/event_groups.o ../../Library/RTOS/Core/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/heap_4.o: ../../Library/RTOS/Core/heap_4.c  .generated_files/flags/default/e43be998c5d0b702a8041bb5b2e9c9430433b2cf .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/heap_4.o.d" -o ${OBJECTDIR}/_ext/1796061812/heap_4.o ../../Library/RTOS/Core/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/list.o: ../../Library/RTOS/Core/list.c  .generated_files/flags/default/46196bc9c2e88ec1e0119057db2589dc5d5adda6 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/list.o.d" -o ${OBJECTDIR}/_ext/1796061812/list.o ../../Library/RTOS/Core/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/queue.o: ../../Library/RTOS/Core/queue.c  .generated_files/flags/default/7ab65535c45f04eae835af514bcc3d705259caee .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/queue.o.d" -o ${OBJECTDIR}/_ext/1796061812/queue.o ../../Library/RTOS/Core/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/stream_buffer.o: ../../Library/RTOS/Core/stream_buffer.c  .generated_files/flags/default/9c495a8ff513e22b4b0c1c4105639ac4421dcece .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ../../Library/RTOS/Core/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/tasks.o: ../../Library/RTOS/Core/tasks.c  .generated_files/flags/default/417b543fd65d63b5d95f151ad1e3a35586855c18 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/tasks.o.d" -o ${OBJECTDIR}/_ext/1796061812/tasks.o ../../Library/RTOS/Core/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/timers.o: ../../Library/RTOS/Core/timers.c  .generated_files/flags/default/1a702999d959535f1a49995f242613e563d9972c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/timers.o.d" -o ${OBJECTDIR}/_ext/1796061812/timers.o ../../Library/RTOS/Core/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1589728724/port.o: ../../Library/RTOS/PIC32MM/port.c  .generated_files/flags/default/a539453b1280d49ba28fa18c73ae4ca86872fd50 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1589728724/port.o.d" -o ${OBJECTDIR}/_ext/1589728724/port.o ../../Library/RTOS/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/38751b5f018abdf1414e182a6352c8c9181be4b5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/44b40481e0526c8e56dd8e9f91ebf38d94303042 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/UserApp.o: app/UserApp.c  .generated_files/flags/default/bd5a0609782e675b8a87a8a3e476a44520b8f1ad .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/UserApp.o.d 
	@${RM} ${OBJECTDIR}/app/UserApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/UserApp.o.d" -o ${OBJECTDIR}/app/UserApp.o app/UserApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919251143/Bootloader.o: ../../Library/Bootloader/Bootloader.c  .generated_files/flags/default/2a72fa24a1fdc7426f12ff5b974d22896e558052 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1919251143" 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1919251143/Bootloader.o.d" -o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ../../Library/Bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Button.o: ../../Library/Common/Button.c  .generated_files/flags/default/bdf7dd931537fbf3880a26179c505b90533e1f79 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Button.o.d" -o ${OBJECTDIR}/_ext/814859167/Button.o ../../Library/Common/Button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Util.o: ../../Library/Common/Util.c  .generated_files/flags/default/d8df8e2280e800620f93afe8102a8f560be3023b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Util.o.d" -o ${OBJECTDIR}/_ext/814859167/Util.o ../../Library/Common/Util.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1066572015/SystemTick.o: ../../Library/Timer/SystemTick.c  .generated_files/flags/default/94e8ff4b5b34401fea44dc9d987f3049fcbc2587 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1066572015" 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1066572015/SystemTick.o.d" -o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ../../Library/Timer/SystemTick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o: ../../Library/USB/USB_CDC_Debug.c  .generated_files/flags/default/8289ef099582a152afe59b4bfd001719bad45962 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1610046384" 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d" -o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ../../Library/USB/USB_CDC_Debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/cc6f460dffe232173521cbdf7666970aa02be1a4 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o mcc_generated_files/drivers/i2c_simple_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/707790de1ac28497316222aa1046cae9e19d3a92 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o mcc_generated_files/drivers/i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/c1615cd3e8fc816d2163ac301e5f2b5f1ea1bf5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o mcc_generated_files/drivers/i2c_types.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/554038c37cb1b968e4af368335c898ec20580075 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/3e54bddea1d1fab1478579d6ef9b72ab9865c189 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/5fdeab896374125c4581e091f929a39931bbd2d7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o mcc_generated_files/memory/flash_demo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/b0a59920d1d2f12f7d94596df88b0e379f01ce44 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  .generated_files/flags/default/78846c1712c45104c32a43b65db91282e622d4d7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/282a8f72dd3f4fc76cf0027b310871953b07d879 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/73278d4b9cdc6d986b9c658234db84c414f0203f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/c2938b07eb7cdb6878d67484c1ed018af5d71911 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/ec38ed7340301846da8b18bf0ad75858d58da0e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -I"../SystemApp.X/app" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPR