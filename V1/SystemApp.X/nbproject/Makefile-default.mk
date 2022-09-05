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
FINAL_IMAGE=${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/SystemApp.c app/UserApp.c ../../Library/Bootloader/Bootloader.c ../../Library/Common/Button.c ../../Library/Common/Util.c ../../Library/Timer/SystemTick.c ../../Library/USB/USB_CDC_Debug.c ../../Library/RTOS/Core/croutine.c ../../Library/RTOS/Core/event_groups.c ../../Library/RTOS/Core/heap_4.c ../../Library/RTOS/Core/list.c ../../Library/RTOS/Core/queue.c ../../Library/RTOS/Core/stream_buffer.c ../../Library/RTOS/Core/tasks.c ../../Library/RTOS/Core/timers.c ../../Library/RTOS/PIC32MM/port.c ../../Library/RTOS/PIC32MM/port_asm.S ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S ../../Library/RTOS/PIC32MM/i2c1_master_isr.S ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S ../../Library/RTOS/PIC32MM/uart1_err_isr.S ../../Library/RTOS/PIC32MM/uart1_rx_isr.S ../../Library/RTOS/PIC32MM/uart1_tx_isr.S ../../Library/RTOS/PIC32MM/usb_isr.S main.c mcc_generated_files/exceptions.c mcc_generated_files/uart1.c mcc_generated_files/memory/flash.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/mcc.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/adc1.c mcc_generated_files/clock.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/system.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/pin_manager.c mcc_generated_files/i2c1_driver.c mcc_generated_files/spi2_driver.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/interrupt_manager.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device.c mcc_generated_files/memory/flash_demo.c mcc_generated_files/drivers/spi_master.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/SystemApp.o ${OBJECTDIR}/app/UserApp.o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ${OBJECTDIR}/_ext/814859167/Button.o ${OBJECTDIR}/_ext/814859167/Util.o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ${OBJECTDIR}/_ext/1796061812/croutine.o ${OBJECTDIR}/_ext/1796061812/event_groups.o ${OBJECTDIR}/_ext/1796061812/heap_4.o ${OBJECTDIR}/_ext/1796061812/list.o ${OBJECTDIR}/_ext/1796061812/queue.o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ${OBJECTDIR}/_ext/1796061812/tasks.o ${OBJECTDIR}/_ext/1796061812/timers.o ${OBJECTDIR}/_ext/1589728724/port.o ${OBJECTDIR}/_ext/1589728724/port_asm.o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/SystemApp.o.d ${OBJECTDIR}/app/UserApp.o.d ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d ${OBJECTDIR}/_ext/814859167/Button.o.d ${OBJECTDIR}/_ext/814859167/Util.o.d ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d ${OBJECTDIR}/_ext/1796061812/croutine.o.d ${OBJECTDIR}/_ext/1796061812/event_groups.o.d ${OBJECTDIR}/_ext/1796061812/heap_4.o.d ${OBJECTDIR}/_ext/1796061812/list.o.d ${OBJECTDIR}/_ext/1796061812/queue.o.d ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d ${OBJECTDIR}/_ext/1796061812/tasks.o.d ${OBJECTDIR}/_ext/1796061812/timers.o.d ${OBJECTDIR}/_ext/1589728724/port.o.d ${OBJECTDIR}/_ext/1589728724/port_asm.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d ${OBJECTDIR}/_ext/1589728724/usb_isr.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/SystemApp.o ${OBJECTDIR}/app/UserApp.o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ${OBJECTDIR}/_ext/814859167/Button.o ${OBJECTDIR}/_ext/814859167/Util.o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ${OBJECTDIR}/_ext/1796061812/croutine.o ${OBJECTDIR}/_ext/1796061812/event_groups.o ${OBJECTDIR}/_ext/1796061812/heap_4.o ${OBJECTDIR}/_ext/1796061812/list.o ${OBJECTDIR}/_ext/1796061812/queue.o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ${OBJECTDIR}/_ext/1796061812/tasks.o ${OBJECTDIR}/_ext/1796061812/timers.o ${OBJECTDIR}/_ext/1589728724/port.o ${OBJECTDIR}/_ext/1589728724/port_asm.o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o

# Source Files
SOURCEFILES=app/libcomp.c app/SystemApp.c app/UserApp.c ../../Library/Bootloader/Bootloader.c ../../Library/Common/Button.c ../../Library/Common/Util.c ../../Library/Timer/SystemTick.c ../../Library/USB/USB_CDC_Debug.c ../../Library/RTOS/Core/croutine.c ../../Library/RTOS/Core/event_groups.c ../../Library/RTOS/Core/heap_4.c ../../Library/RTOS/Core/list.c ../../Library/RTOS/Core/queue.c ../../Library/RTOS/Core/stream_buffer.c ../../Library/RTOS/Core/tasks.c ../../Library/RTOS/Core/timers.c ../../Library/RTOS/PIC32MM/port.c ../../Library/RTOS/PIC32MM/port_asm.S ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S ../../Library/RTOS/PIC32MM/i2c1_master_isr.S ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S ../../Library/RTOS/PIC32MM/uart1_err_isr.S ../../Library/RTOS/PIC32MM/uart1_rx_isr.S ../../Library/RTOS/PIC32MM/uart1_tx_isr.S ../../Library/RTOS/PIC32MM/usb_isr.S main.c mcc_generated_files/exceptions.c mcc_generated_files/uart1.c mcc_generated_files/memory/flash.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/mcc.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/adc1.c mcc_generated_files/clock.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/system.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/pin_manager.c mcc_generated_files/i2c1_driver.c mcc_generated_files/spi2_driver.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/interrupt_manager.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device.c mcc_generated_files/memory/flash_demo.c mcc_generated_files/drivers/spi_master.c



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
ProjectDir="C:\Working\Git\DCPU\V1\SystemApp.X"
ProjectName=SystemApp
ConfName=default
ImagePath="${DISTDIR}\SystemApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="SystemApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/_ext/1589728724/port_asm.o: ../../Library/RTOS/PIC32MM/port_asm.S  .generated_files/flags/default/899ba7c88bdb8f5753f47ddbc5dfaf12b16ee75d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.ok ${OBJECTDIR}/_ext/1589728724/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1589728724/port_asm.o ../../Library/RTOS/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/port_asm.o.d" "${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o: ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  .generated_files/flags/default/2fb9987f091767e9b5493cb95d470bc2a30131a2 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o: ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  .generated_files/flags/default/1214957d774bcb14f4f13baa454b9e93cc3b95ec .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o: ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  .generated_files/flags/default/fdbfd9bc2152e63c7baea9b7e05ae9e8305775b5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o: ../../Library/RTOS/PIC32MM/uart1_err_isr.S  .generated_files/flags/default/dcf9cdc6cba835a9e78c86f5c6c6c0d25ccb52a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ../../Library/RTOS/PIC32MM/uart1_err_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o: ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  .generated_files/flags/default/2ad7bf4bf423867d442f21fcca831e455fa86527 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o: ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  .generated_files/flags/default/53f599ec139dfd1f5e7e6740411e9de7f412c724 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/usb_isr.o: ../../Library/RTOS/PIC32MM/usb_isr.S  .generated_files/flags/default/31e2f9a278a0ee70ee1a88791a443693096c41e2 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.ok ${OBJECTDIR}/_ext/1589728724/usb_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ../../Library/RTOS/PIC32MM/usb_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d" "${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1589728724/port_asm.o: ../../Library/RTOS/PIC32MM/port_asm.S  .generated_files/flags/default/235ce0cbd6fc9f1b82bdf067f2fccdd9fb16c253 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.ok ${OBJECTDIR}/_ext/1589728724/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1589728724/port_asm.o ../../Library/RTOS/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/port_asm.o.d" "${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o: ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  .generated_files/flags/default/f35d3d3bed7780c838cb0c3720fb7661e02997d3 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o: ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  .generated_files/flags/default/b1622970e658933d5d3171beefcbc66ba343e608 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o: ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  .generated_files/flags/default/adc8fc7c24b7c9a11059e3e2e4a05978d5177b2d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o: ../../Library/RTOS/PIC32MM/uart1_err_isr.S  .generated_files/flags/default/3a5df7b68a869e295eb77fe32e3b7069eac8644a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ../../Library/RTOS/PIC32MM/uart1_err_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o: ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  .generated_files/flags/default/4eaafa0e25003fb5663ad4b93b9f391e6a3d377a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o: ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  .generated_files/flags/default/61802020df003d0b38a5c67d5d6acbc1be43ca6f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/usb_isr.o: ../../Library/RTOS/PIC32MM/usb_isr.S  .generated_files/flags/default/9ef7883e670f1148543a5737b60ad479a388b7ae .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.ok ${OBJECTDIR}/_ext/1589728724/usb_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ../../Library/RTOS/PIC32MM/usb_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d" "${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/d69fcaaf21364d2207022ee69ce8975fc19e6a25 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/SystemApp.o: app/SystemApp.c  .generated_files/flags/default/2e0a5df3058f00f8fedd5db75e7a38d5a8258a74 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/SystemApp.o.d 
	@${RM} ${OBJECTDIR}/app/SystemApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/SystemApp.o.d" -o ${OBJECTDIR}/app/SystemApp.o app/SystemApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/UserApp.o: app/UserApp.c  .generated_files/flags/default/b64d9805be27cb4e007623e405699c8f574ee775 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/UserApp.o.d 
	@${RM} ${OBJECTDIR}/app/UserApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/UserApp.o.d" -o ${OBJECTDIR}/app/UserApp.o app/UserApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919251143/Bootloader.o: ../../Library/Bootloader/Bootloader.c  .generated_files/flags/default/e4be6f3cb56bdd3237b329313c5d57c2807fc981 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1919251143" 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1919251143/Bootloader.o.d" -o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ../../Library/Bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Button.o: ../../Library/Common/Button.c  .generated_files/flags/default/171c136f8e75d54e4065b57f5a77c389c23af436 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Button.o.d" -o ${OBJECTDIR}/_ext/814859167/Button.o ../../Library/Common/Button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Util.o: ../../Library/Common/Util.c  .generated_files/flags/default/43cbea8c41d87891d146da2a6204251b88a900a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Util.o.d" -o ${OBJECTDIR}/_ext/814859167/Util.o ../../Library/Common/Util.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1066572015/SystemTick.o: ../../Library/Timer/SystemTick.c  .generated_files/flags/default/ceff8b564b572f2771346553135e01319dee156d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1066572015" 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1066572015/SystemTick.o.d" -o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ../../Library/Timer/SystemTick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o: ../../Library/USB/USB_CDC_Debug.c  .generated_files/flags/default/99b1b6628c75057162d918ca172d82bfe032ca6a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1610046384" 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d" -o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ../../Library/USB/USB_CDC_Debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/croutine.o: ../../Library/RTOS/Core/croutine.c  .generated_files/flags/default/1f9ea72dadd1aa58e6a89c55d5ce1b579ee0dabb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/croutine.o.d" -o ${OBJECTDIR}/_ext/1796061812/croutine.o ../../Library/RTOS/Core/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/event_groups.o: ../../Library/RTOS/Core/event_groups.c  .generated_files/flags/default/b67c9c3d1081d47367172eeae937bd663b129f3a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/event_groups.o.d" -o ${OBJECTDIR}/_ext/1796061812/event_groups.o ../../Library/RTOS/Core/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/heap_4.o: ../../Library/RTOS/Core/heap_4.c  .generated_files/flags/default/d209f4098d9d104dd63dc3dd4c747c2927618bfb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/heap_4.o.d" -o ${OBJECTDIR}/_ext/1796061812/heap_4.o ../../Library/RTOS/Core/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/list.o: ../../Library/RTOS/Core/list.c  .generated_files/flags/default/c11bdeef17a9b6f46645467c273a90574ca1e011 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/list.o.d" -o ${OBJECTDIR}/_ext/1796061812/list.o ../../Library/RTOS/Core/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/queue.o: ../../Library/RTOS/Core/queue.c  .generated_files/flags/default/a73b249bd5010aaae05488ee4aba031e2ff76601 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/queue.o.d" -o ${OBJECTDIR}/_ext/1796061812/queue.o ../../Library/RTOS/Core/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/stream_buffer.o: ../../Library/RTOS/Core/stream_buffer.c  .generated_files/flags/default/c9f891fc4b7ceb797de6c8ca3f24e9ab97b8bbd9 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ../../Library/RTOS/Core/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/tasks.o: ../../Library/RTOS/Core/tasks.c  .generated_files/flags/default/9c4d37d17a4aa0c92ba4435e376275a46b191312 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/tasks.o.d" -o ${OBJECTDIR}/_ext/1796061812/tasks.o ../../Library/RTOS/Core/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/timers.o: ../../Library/RTOS/Core/timers.c  .generated_files/flags/default/a497d088baefc0d64692fdf58e63a9f2ce44171c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/timers.o.d" -o ${OBJECTDIR}/_ext/1796061812/timers.o ../../Library/RTOS/Core/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1589728724/port.o: ../../Library/RTOS/PIC32MM/port.c  .generated_files/flags/default/64a5a77a68d9986b7879511b64e97b002bfb7fcf .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1589728724/port.o.d" -o ${OBJECTDIR}/_ext/1589728724/port.o ../../Library/RTOS/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/c0f4a8b5cd862aa2ab0d8d37ee266c3f0ab4734e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/1f29833f36298eb0ee8a8f81e97d621224ebc15b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/fcfd32c653019a7be67597485d83d33f08b49900 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/c18d38163054f527412e54b58bdd64107f3f284a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/370d4592ca30d1860331162518a71d7d112746d8 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o mcc_generated_files/drivers/i2c_simple_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/82d025e3a0324c51ecbf74a94fba60ecdbff87c8 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/95e4699838a5ab9fc798abf5f9e4d5b3ab60ee43 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o mcc_generated_files/drivers/i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/27fa803ebab4325e3275896b7dc6ec3a6e904817 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/3bd139b9919a0b9a80d6f7e91005f83472e53576 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/40845b5296bb1318ffab8f172af5c26e7ebe5aab .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/5fc08740f47b239203c64ebb63cf03bd1a465fa6 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  .generated_files/flags/default/f314e0fdc3f33191413b46c4c7dc969b32afdff0 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/12f7590c68dfdb7259c040a6fc95c266a90a2e8e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/24b16483c56d03a0dbaa33de0d3999775c8900f8 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o mcc_generated_files/i2c1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2_driver.o: mcc_generated_files/spi2_driver.c  .generated_files/flags/default/163bc0906d4b0c0f474334ebb8b33206324a366 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o mcc_generated_files/spi2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/13f7415de99a9f2ac7e91c8d87f143a8381e1cfe .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o mcc_generated_files/drivers/i2c_types.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/3c19a73e708774b68a1d162fecd67c747580b399 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/ef7ed7c54b076f6d14ac7f5f0fe0ba2e194f99b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/d98115cec587aef95c9c328ad6421a4cfc498346 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/a63929bd741fce90a52c78e820596d6283eb7bb1 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o mcc_generated_files/memory/flash_demo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/8a0cf9b325e19dd3c1c0055efa46766ea786ba52 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/33bb08c5aa38828525a756f4125109d2220096f6 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/SystemApp.o: app/SystemApp.c  .generated_files/flags/default/bbcca80216b14289db5bfac55655eda465f5f13b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/SystemApp.o.d 
	@${RM} ${OBJECTDIR}/app/SystemApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/SystemApp.o.d" -o ${OBJECTDIR}/app/SystemApp.o app/SystemApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/UserApp.o: app/UserApp.c  .generated_files/flags/default/889ad0619084427eac7bc5eaf2958a172f6d087c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/UserApp.o.d 
	@${RM} ${OBJECTDIR}/app/UserApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/UserApp.o.d" -o ${OBJECTDIR}/app/UserApp.o app/UserApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919251143/Bootloader.o: ../../Library/Bootloader/Bootloader.c  .generated_files/flags/default/2878f840a10f65712eb3bf768dba8acad848a642 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1919251143" 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1919251143/Bootloader.o.d" -o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ../../Library/Bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Button.o: ../../Library/Common/Button.c  .generated_files/flags/default/683f34e13a609e75aa54eb1312695c9a34c7b5af .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Button.o.d" -o ${OBJECTDIR}/_ext/814859167/Button.o ../../Library/Common/Button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Util.o: ../../Library/Common/Util.c  .generated_files/flags/default/6b7aa2a679784529a54004c0217ccc83f5984c2d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Util.o.d" -o ${OBJECTDIR}/_ext/814859167/Util.o ../../Library/Common/Util.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1066572015/SystemTick.o: ../../Library/Timer/SystemTick.c  .generated_files/flags/default/34100374c967f51c006579dcd7cf2ca34d9adb1d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1066572015" 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1066572015/SystemTick.o.d" -o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ../../Library/Timer/SystemTick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o: ../../Library/USB/USB_CDC_Debug.c  .generated_files/flags/default/9ee2ee7a8e4003b8409109f0d52bec7bc347f863 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1610046384" 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d" -o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ../../Library/USB/USB_CDC_Debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/croutine.o: ../../Library/RTOS/Core/croutine.c  .generated_files/flags/default/6eebddebbacbbfe7aae8de19aa79619acc5c9a49 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/croutine.o.d" -o ${OBJECTDIR}/_ext/1796061812/croutine.o ../../Library/RTOS/Core/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/event_groups.o: ../../Library/RTOS/Core/event_groups.c  .generated_files/flags/default/e0ac6de8f8672d84104f7b69a0d30cf480337c1a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/event_groups.o.d" -o ${OBJECTDIR}/_ext/1796061812/event_groups.o ../../Library/RTOS/Core/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/heap_4.o: ../../Library/RTOS/Core/heap_4.c  .generated_files/flags/default/4cf7a10e350bad946527796fc7cd0fbcac48d95d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/heap_4.o.d" -o ${OBJECTDIR}/_ext/1796061812/heap_4.o ../../Library/RTOS/Core/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/list.o: ../../Library/RTOS/Core/list.c  .generated_files/flags/default/e5abeb75a3e2ac498bd29e5c264e2cc0767b7a4 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/list.o.d" -o ${OBJECTDIR}/_ext/1796061812/list.o ../../Library/RTOS/Core/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/queue.o: ../../Library/RTOS/Core/queue.c  .generated_files/flags/default/6c9144ad0ea851f7a26e80990d58298e9d162404 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/queue.o.d" -o ${OBJECTDIR}/_ext/1796061812/queue.o ../../Library/RTOS/Core/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/stream_buffer.o: ../../Library/RTOS/Core/stream_buffer.c  .generated_files/flags/default/c9130734bc33d7fc62b9d474a3e777379711ea9 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ../../Library/RTOS/Core/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/tasks.o: ../../Library/RTOS/Core/tasks.c  .generated_files/flags/default/9f0b112d9e05d4630a3833651ef26e2a75c5f91b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/tasks.o.d" -o ${OBJECTDIR}/_ext/1796061812/tasks.o ../../Library/RTOS/Core/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/timers.o: ../../Library/RTOS/Core/timers.c  .generated_files/flags/default/13f3752ad7deb3f9a6b1b6cdeb5ed35612440075 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/timers.o.d" -o ${OBJECTDIR}/_ext/1796061812/timers.o ../../Library/RTOS/Core/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1589728724/port.o: ../../Library/RTOS/PIC32MM/port.c  .generated_files/flags/default/3b86cfd643459fec741ba3cf8619dbd50150af67 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1589728724/port.o.d" -o ${OBJECTDIR}/_ext/1589728724/port.o ../../Library/RTOS/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f93e4c9e7538accfc5c6b9c0831298aa9db07b72 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/2d0770c56972ae9247985d51758db6e379e698e0 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/3ed8210f8b48cf1e96f6cfa7f189f8487f23f516 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/fda284f01e1fc37a24aca4e2fae344a34b2ba998 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/10525ee9ee6e21b07af55eedbfb419db8c813ce9 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o mcc_generated_files/drivers/i2c_simple_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/282d60e7ed72290d06ecaba050f8ec2c4d4cc277 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/567dea452c71cc9692a3404a19adcbfb14df44fa .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o mcc_generated_files/drivers/i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/68a5b2c78fda24390afa428d22f680c766205012 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/1b005540de14b35bab86cdd1a6e5faa8fc76ab50 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/4384d339d62d7b5a86d6b43d5bd793b51003a5b1 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/4771f1b37579e3cbb400c7dc8a5689223ac2fcce .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  .generated_files/flags/default/75bbbe05cdd0244efc334499278598636c9cec96 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/358afc2e898d34aae3ab5d78c503ade7ab2bde52 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/46e9997335d8836184888da0285d0bc08ccd3306 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o mcc_generated_files/i2c1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2_driver.o: mcc_generated_files/spi2_driver.c  .generated_files/flags/default/98eedef91ab7c14fd673d9f1a651a049c5fc9ce7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o mcc_generated_files/spi2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/cd3b7618f7cc8d33030d9a3f5344f712491edaf5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o mcc_generated_files/drivers/i2c_types.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/d7235c334faf637a2214efef350d835b3aaae060 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/ebbf8deee08a7607eab8c30065d791e022eba3ac .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/2a54ec937cf65fab13cd6636468a61174ff526de .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/ae0e540b1127e30d4e5c41eb6fe6d4031c84170e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o mcc_generated_files/memory/flash_demo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/6c38671c2e7662fcbfecb3b6babae9a8942c7a69 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../Loadables/App.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o ${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--defsym=_min_stack_size=64,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../Loadables/App.ld ../../Loadables/bldv1.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o ${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--defsym=_min_stack_size=64,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.hex -o${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.hex

	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/SystemApp.X.${IMAGE_TYPE}.hex ../../Loadables/bldv1.hex -odist/${CND_CONF}/production/SystemApp.X.production.unified.hex

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
