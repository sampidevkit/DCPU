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
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/SystemApp.c app/UserApp.c ../../Library/Bootloader/Bootloader.c ../../Library/Common/Button.c ../../Library/Common/Util.c ../../Library/Timer/SystemTick.c ../../Library/USB/USB_CDC_Debug.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/memory/flash.c mcc_generated_files/memory/flash_demo.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/mcc.c mcc_generated_files/interrupt_manager.c mcc_generated_files/exceptions.c mcc_generated_files/adc1.c mcc_generated_files/system.c mcc_generated_files/i2c1_driver.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/uart1.c mcc_generated_files/spi2_driver.c ../../Library/RTOS/Core/croutine.c ../../Library/RTOS/Core/event_groups.c ../../Library/RTOS/Core/heap_4.c ../../Library/RTOS/Core/list.c ../../Library/RTOS/Core/queue.c ../../Library/RTOS/Core/stream_buffer.c ../../Library/RTOS/Core/tasks.c ../../Library/RTOS/Core/timers.c ../../Library/RTOS/PIC32MM/port.c ../../Library/RTOS/PIC32MM/port_asm.S ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S ../../Library/RTOS/PIC32MM/i2c1_master_isr.S ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S ../../Library/RTOS/PIC32MM/uart1_err_isr.S ../../Library/RTOS/PIC32MM/uart1_rx_isr.S ../../Library/RTOS/PIC32MM/uart1_tx_isr.S ../../Library/RTOS/PIC32MM/usb_isr.S main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/SystemApp.o ${OBJECTDIR}/app/UserApp.o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ${OBJECTDIR}/_ext/814859167/Button.o ${OBJECTDIR}/_ext/814859167/Util.o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o ${OBJECTDIR}/_ext/1796061812/croutine.o ${OBJECTDIR}/_ext/1796061812/event_groups.o ${OBJECTDIR}/_ext/1796061812/heap_4.o ${OBJECTDIR}/_ext/1796061812/list.o ${OBJECTDIR}/_ext/1796061812/queue.o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ${OBJECTDIR}/_ext/1796061812/tasks.o ${OBJECTDIR}/_ext/1796061812/timers.o ${OBJECTDIR}/_ext/1589728724/port.o ${OBJECTDIR}/_ext/1589728724/port_asm.o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/SystemApp.o.d ${OBJECTDIR}/app/UserApp.o.d ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d ${OBJECTDIR}/_ext/814859167/Button.o.d ${OBJECTDIR}/_ext/814859167/Util.o.d ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d ${OBJECTDIR}/_ext/1796061812/croutine.o.d ${OBJECTDIR}/_ext/1796061812/event_groups.o.d ${OBJECTDIR}/_ext/1796061812/heap_4.o.d ${OBJECTDIR}/_ext/1796061812/list.o.d ${OBJECTDIR}/_ext/1796061812/queue.o.d ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d ${OBJECTDIR}/_ext/1796061812/tasks.o.d ${OBJECTDIR}/_ext/1796061812/timers.o.d ${OBJECTDIR}/_ext/1589728724/port.o.d ${OBJECTDIR}/_ext/1589728724/port_asm.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d ${OBJECTDIR}/_ext/1589728724/usb_isr.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/SystemApp.o ${OBJECTDIR}/app/UserApp.o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ${OBJECTDIR}/_ext/814859167/Button.o ${OBJECTDIR}/_ext/814859167/Util.o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o ${OBJECTDIR}/_ext/1796061812/croutine.o ${OBJECTDIR}/_ext/1796061812/event_groups.o ${OBJECTDIR}/_ext/1796061812/heap_4.o ${OBJECTDIR}/_ext/1796061812/list.o ${OBJECTDIR}/_ext/1796061812/queue.o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ${OBJECTDIR}/_ext/1796061812/tasks.o ${OBJECTDIR}/_ext/1796061812/timers.o ${OBJECTDIR}/_ext/1589728724/port.o ${OBJECTDIR}/_ext/1589728724/port_asm.o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=app/libcomp.c app/SystemApp.c app/UserApp.c ../../Library/Bootloader/Bootloader.c ../../Library/Common/Button.c ../../Library/Common/Util.c ../../Library/Timer/SystemTick.c ../../Library/USB/USB_CDC_Debug.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/memory/flash.c mcc_generated_files/memory/flash_demo.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/mcc.c mcc_generated_files/interrupt_manager.c mcc_generated_files/exceptions.c mcc_generated_files/adc1.c mcc_generated_files/system.c mcc_generated_files/i2c1_driver.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/uart1.c mcc_generated_files/spi2_driver.c ../../Library/RTOS/Core/croutine.c ../../Library/RTOS/Core/event_groups.c ../../Library/RTOS/Core/heap_4.c ../../Library/RTOS/Core/list.c ../../Library/RTOS/Core/queue.c ../../Library/RTOS/Core/stream_buffer.c ../../Library/RTOS/Core/tasks.c ../../Library/RTOS/Core/timers.c ../../Library/RTOS/PIC32MM/port.c ../../Library/RTOS/PIC32MM/port_asm.S ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S ../../Library/RTOS/PIC32MM/i2c1_master_isr.S ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S ../../Library/RTOS/PIC32MM/uart1_err_isr.S ../../Library/RTOS/PIC32MM/uart1_rx_isr.S ../../Library/RTOS/PIC32MM/uart1_tx_isr.S ../../Library/RTOS/PIC32MM/usb_isr.S main.c



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
ProjectDir="D:\GIT\DCPU\V1\FW.X"
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
${OBJECTDIR}/_ext/1589728724/port_asm.o: ../../Library/RTOS/PIC32MM/port_asm.S  .generated_files/flags/default/1c55e2e0a19efdfb9279106a601bccbb166ec816 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.ok ${OBJECTDIR}/_ext/1589728724/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1589728724/port_asm.o ../../Library/RTOS/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/port_asm.o.d" "${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o: ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  .generated_files/flags/default/45eb3cbeb25c76bad459fb901fc22d8a714e204d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o: ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  .generated_files/flags/default/5aaac55d2afd4780095ba2512693f129210b1a2b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o: ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  .generated_files/flags/default/8460749e6de17219b89e369238c21677eb0abc3a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o: ../../Library/RTOS/PIC32MM/uart1_err_isr.S  .generated_files/flags/default/5e587ebebd50232ae50e37776ca101993654d4d7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ../../Library/RTOS/PIC32MM/uart1_err_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o: ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  .generated_files/flags/default/83c87c7febaf05dd0f133aaff9c25f7897364339 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o: ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  .generated_files/flags/default/51bf1a68f20d694207906aeb811549be03edf9df .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/usb_isr.o: ../../Library/RTOS/PIC32MM/usb_isr.S  .generated_files/flags/default/f3cdda6429227cf776d3eadf9aa7cd35f81d35b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/usb_isr.o.ok ${OBJECTDIR}/_ext/1589728724/usb_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/usb_isr.o ../../Library/RTOS/PIC32MM/usb_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/usb_isr.o.d" "${OBJECTDIR}/_ext/1589728724/usb_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1589728724/port_asm.o: ../../Library/RTOS/PIC32MM/port_asm.S  .generated_files/flags/default/c680b7a25ee3ca40eba7cd55df29cff945e81265 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port_asm.o.ok ${OBJECTDIR}/_ext/1589728724/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1589728724/port_asm.o ../../Library/RTOS/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/port_asm.o.d" "${OBJECTDIR}/_ext/1589728724/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o: ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  .generated_files/flags/default/573d9fcdb0c4fd7dbe3a49013b9750617c1393e1 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o ../../Library/RTOS/PIC32MM/i2c1_bus_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_bus_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o: ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  .generated_files/flags/default/1a65ebc2ca49d9e1f8901c3ff95cc459cefa9db5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o ../../Library/RTOS/PIC32MM/i2c1_master_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_master_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o: ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  .generated_files/flags/default/1503f4243e17f811104d4c9f018340bddd8f6604 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.ok ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o ../../Library/RTOS/PIC32MM/i2c1_slave_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.d" "${OBJECTDIR}/_ext/1589728724/i2c1_slave_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o: ../../Library/RTOS/PIC32MM/uart1_err_isr.S  .generated_files/flags/default/4099885df7d8fd3fd5a99d2dbdc7fd34b14f4516 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o ../../Library/RTOS/PIC32MM/uart1_err_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_err_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o: ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  .generated_files/flags/default/50c915621a1e9b50af99c2c6296941083305ce08 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o ../../Library/RTOS/PIC32MM/uart1_rx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_rx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o: ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  .generated_files/flags/default/e726dd0063987a1299167c5e15ddc94e56f4b6ae .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o 
	@${RM} ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.ok ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d"  -o ${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o ../../Library/RTOS/PIC32MM/uart1_tx_isr.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d",--gdwarf-2,-I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.d" "${OBJECTDIR}/_ext/1589728724/uart1_tx_isr.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1589728724/usb_isr.o: ../../Library/RTOS/PIC32MM/usb_isr.S  .generated_files/flags/default/676289fc154fe4ff93de217b6de4c12c0e6cf6d3 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
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
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/ba8b995579ab4bd8f960903da14aac58ca829bb9 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/SystemApp.o: app/SystemApp.c  .generated_files/flags/default/600454fabffbf811ff8d812a0ef2dbb1b7ddeca8 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/SystemApp.o.d 
	@${RM} ${OBJECTDIR}/app/SystemApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/SystemApp.o.d" -o ${OBJECTDIR}/app/SystemApp.o app/SystemApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/UserApp.o: app/UserApp.c  .generated_files/flags/default/31e74aea43d28f898dbb5121fb077fc4b5f103ac .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/UserApp.o.d 
	@${RM} ${OBJECTDIR}/app/UserApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/UserApp.o.d" -o ${OBJECTDIR}/app/UserApp.o app/UserApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919251143/Bootloader.o: ../../Library/Bootloader/Bootloader.c  .generated_files/flags/default/ae6d07a86f5d98fe79708cbb61efc7c1b2b6ef1b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1919251143" 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1919251143/Bootloader.o.d" -o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ../../Library/Bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Button.o: ../../Library/Common/Button.c  .generated_files/flags/default/4829aa1f14c907305939a924e9a479a4b51318f2 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Button.o.d" -o ${OBJECTDIR}/_ext/814859167/Button.o ../../Library/Common/Button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Util.o: ../../Library/Common/Util.c  .generated_files/flags/default/8706762174ed889b55ab929516e81e591ca7428c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Util.o.d" -o ${OBJECTDIR}/_ext/814859167/Util.o ../../Library/Common/Util.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1066572015/SystemTick.o: ../../Library/Timer/SystemTick.c  .generated_files/flags/default/c6c227008cdbd76626d0fcf76330cac401dc619f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1066572015" 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1066572015/SystemTick.o.d" -o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ../../Library/Timer/SystemTick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o: ../../Library/USB/USB_CDC_Debug.c  .generated_files/flags/default/70884e71695ef18142aa258263fbedf5f182c336 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1610046384" 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d" -o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ../../Library/USB/USB_CDC_Debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/a7b5d51296c7412c0feeb81c2671770ef54740e9 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o mcc_generated_files/drivers/i2c_simple_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/a23c34cdbe2add2dc10e48c87adeb03a0fac643d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o mcc_generated_files/drivers/i2c_types.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/a9283563bf445db8fda0c2452456ae53a1c11b7f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o mcc_generated_files/drivers/i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/8337460529b2ab69a99efdfafa80af14fba1b297 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/ed783ad2368ed5d5c14e5d8d5b29cc74a44699a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/687c796ababe016adf98daac62b1551e04378e61 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o mcc_generated_files/memory/flash_demo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/b1428689f1e9cb0e8d7fada27ccf9c3df060c002 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/36dfc21c74434fad61ccfbe947f7d6bb78da181a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/c8afd3932b597f70c2bd037ea2ba44a8abb5c837 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  .generated_files/flags/default/70b856593d025497b5b2ae029418cbf26a41a45f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/87748b18682383d4b512839120f15b6585a6c660 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/4d088482803f7ed021cb7ee399045a8ee0a55e1f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/23c550209013f62732815b5caee7405aa61cdb27 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/7dfd5697de9cb8944a44445291301ae41dddebfb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/30fc655500842c5518b6debc4c736a4cd81fca91 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/aa6921c6111d89b6ed1eb8816b43be58b484c374 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o mcc_generated_files/i2c1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/23a3cc814ce04a04da9d28523c5ddee1d584f59c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/b89d6f6b3eb0fb36cd7d7fc4baa32697e0b21806 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/d7a90a0a743b0a7f9c7d878846ab50a1f65ff171 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2_driver.o: mcc_generated_files/spi2_driver.c  .generated_files/flags/default/731ec0499694590a7f615c40cda3bec53a76fff5 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o mcc_generated_files/spi2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/croutine.o: ../../Library/RTOS/Core/croutine.c  .generated_files/flags/default/59ed34d87caeb73209493721b62aeab3ba5c6a12 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/croutine.o.d" -o ${OBJECTDIR}/_ext/1796061812/croutine.o ../../Library/RTOS/Core/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/event_groups.o: ../../Library/RTOS/Core/event_groups.c  .generated_files/flags/default/50a70ec1be81fbd064b1269aa3f3d7a3ab8677ec .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/event_groups.o.d" -o ${OBJECTDIR}/_ext/1796061812/event_groups.o ../../Library/RTOS/Core/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/heap_4.o: ../../Library/RTOS/Core/heap_4.c  .generated_files/flags/default/41ef6d31826f6a3777227e4f211952d7bbd25f80 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/heap_4.o.d" -o ${OBJECTDIR}/_ext/1796061812/heap_4.o ../../Library/RTOS/Core/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/list.o: ../../Library/RTOS/Core/list.c  .generated_files/flags/default/74d2120854fda5c1cc9bf5bcdc37fbcbf362595c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/list.o.d" -o ${OBJECTDIR}/_ext/1796061812/list.o ../../Library/RTOS/Core/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/queue.o: ../../Library/RTOS/Core/queue.c  .generated_files/flags/default/5cc7c4e88006f6725af13ca4b68147de1fe9e452 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/queue.o.d" -o ${OBJECTDIR}/_ext/1796061812/queue.o ../../Library/RTOS/Core/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/stream_buffer.o: ../../Library/RTOS/Core/stream_buffer.c  .generated_files/flags/default/f5b213125e88b99ab7be447eccfc092a53c16d48 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ../../Library/RTOS/Core/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/tasks.o: ../../Library/RTOS/Core/tasks.c  .generated_files/flags/default/c071d17c7bc7fa8bd00ea0dfb4cf7a8d60aed4e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/tasks.o.d" -o ${OBJECTDIR}/_ext/1796061812/tasks.o ../../Library/RTOS/Core/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/timers.o: ../../Library/RTOS/Core/timers.c  .generated_files/flags/default/7d68584b53f1c4be320a9ce0d66be1c925230819 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/timers.o.d" -o ${OBJECTDIR}/_ext/1796061812/timers.o ../../Library/RTOS/Core/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1589728724/port.o: ../../Library/RTOS/PIC32MM/port.c  .generated_files/flags/default/debd88af451ef6cec86ae0ac85bbef25893c48c4 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1589728724/port.o.d" -o ${OBJECTDIR}/_ext/1589728724/port.o ../../Library/RTOS/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/5a7eb24566a054f406b5aa957617d1236932e495 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/26e6058a28cda194b4ba4a0cc5eb484402452360 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/SystemApp.o: app/SystemApp.c  .generated_files/flags/default/d6e561559d30595dc9da595e3c4b6ccbdb0b11df .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/SystemApp.o.d 
	@${RM} ${OBJECTDIR}/app/SystemApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/SystemApp.o.d" -o ${OBJECTDIR}/app/SystemApp.o app/SystemApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/UserApp.o: app/UserApp.c  .generated_files/flags/default/b8b834b1d9b59ea164960951e39de9e39142620a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/UserApp.o.d 
	@${RM} ${OBJECTDIR}/app/UserApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/app/UserApp.o.d" -o ${OBJECTDIR}/app/UserApp.o app/UserApp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1919251143/Bootloader.o: ../../Library/Bootloader/Bootloader.c  .generated_files/flags/default/5acff0bf447e8989e38f49470852ba619ade2fae .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1919251143" 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1919251143/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1919251143/Bootloader.o.d" -o ${OBJECTDIR}/_ext/1919251143/Bootloader.o ../../Library/Bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Button.o: ../../Library/Common/Button.c  .generated_files/flags/default/9f0a6ae850dc2f6c088eef57e93f8cfee9818470 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Button.o.d" -o ${OBJECTDIR}/_ext/814859167/Button.o ../../Library/Common/Button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/814859167/Util.o: ../../Library/Common/Util.c  .generated_files/flags/default/eb8fa2b4f1b80c2f8d90961586eb46384c285f11 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/814859167" 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o.d 
	@${RM} ${OBJECTDIR}/_ext/814859167/Util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/814859167/Util.o.d" -o ${OBJECTDIR}/_ext/814859167/Util.o ../../Library/Common/Util.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1066572015/SystemTick.o: ../../Library/Timer/SystemTick.c  .generated_files/flags/default/4417f0dcddb0490eabfcf7dcf84d687f0f751e50 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1066572015" 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066572015/SystemTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1066572015/SystemTick.o.d" -o ${OBJECTDIR}/_ext/1066572015/SystemTick.o ../../Library/Timer/SystemTick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o: ../../Library/USB/USB_CDC_Debug.c  .generated_files/flags/default/aca565a6c096c21dbd08e0262f019aa106bf3bb3 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1610046384" 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o.d" -o ${OBJECTDIR}/_ext/1610046384/USB_CDC_Debug.o ../../Library/USB/USB_CDC_Debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/84929321909be9ff25074a3e09d7c87c3dc4f8c3 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o mcc_generated_files/drivers/i2c_simple_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/505742ea49517672b0a1a6f59972bcffec352b11 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o mcc_generated_files/drivers/i2c_types.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/de04eae6d76977de42d0ec3817ebaa64028601c6 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o mcc_generated_files/drivers/i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/4178a45850810e12cf2b2870ed715885513ef7f1 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/cbab0fdcd40931603fe8f32a5cc0f16483b0d697 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/4e562770ed46dabb6d90340c02934d29b2a7a421 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o mcc_generated_files/memory/flash_demo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/e5182202e62e30a6ab2499ca3cf97a9730dc5a26 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/7fb2a0b3b07d19c70baf889236ef4918907de22d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/164d6f28c3d01645feb5aab4cf520cd2aad81ae8 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  .generated_files/flags/default/cb274bea8275a1142f31de9007e3ea014992e0 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/1b7ca80eb201c8c9092798f6ebd94613a7c3ced7 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/d347f84f52746a482896da778ded3942da57b921 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/f524c5724391fd2a3394cd6f50c6477cc9e45c10 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/1e63ce68b387b712cc9698ad4767b98c6d103074 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/82763b60edc8eafa00080a3bfee8e9fdb4608870 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/586d32e7d4b334aad75b8bbf42df34de5c7fea23 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o mcc_generated_files/i2c1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/6678cf96b8aaea59fbee46fec921616a7074c626 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/d89204be389f045c974c0487c544a4b21114b995 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/95731c927d474b66b70a7d712e100b289cffa538 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2_driver.o: mcc_generated_files/spi2_driver.c  .generated_files/flags/default/2e4102dd90f7dd9c3bd0154fec2927f56865cb85 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o mcc_generated_files/spi2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/croutine.o: ../../Library/RTOS/Core/croutine.c  .generated_files/flags/default/cda91020fb7aef10f1353e450b89baf11c383b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/croutine.o.d" -o ${OBJECTDIR}/_ext/1796061812/croutine.o ../../Library/RTOS/Core/croutine.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/event_groups.o: ../../Library/RTOS/Core/event_groups.c  .generated_files/flags/default/51785444bf18fe1d41ffd79efeabcaa3f93e8b6b .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/event_groups.o.d" -o ${OBJECTDIR}/_ext/1796061812/event_groups.o ../../Library/RTOS/Core/event_groups.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/heap_4.o: ../../Library/RTOS/Core/heap_4.c  .generated_files/flags/default/a6955b43647eccdd0c85b714f09ada91e3016e84 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/heap_4.o.d" -o ${OBJECTDIR}/_ext/1796061812/heap_4.o ../../Library/RTOS/Core/heap_4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/list.o: ../../Library/RTOS/Core/list.c  .generated_files/flags/default/a2f46a7812b861068167284f9580ceaf97050b32 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/list.o.d" -o ${OBJECTDIR}/_ext/1796061812/list.o ../../Library/RTOS/Core/list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/queue.o: ../../Library/RTOS/Core/queue.c  .generated_files/flags/default/30cc94211b1e38969ded1e06d0ed7fa0cd261513 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/queue.o.d" -o ${OBJECTDIR}/_ext/1796061812/queue.o ../../Library/RTOS/Core/queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/stream_buffer.o: ../../Library/RTOS/Core/stream_buffer.c  .generated_files/flags/default/92727080e161ae589bd0efe196bc30e2c6d8b2fb .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/1796061812/stream_buffer.o ../../Library/RTOS/Core/stream_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/tasks.o: ../../Library/RTOS/Core/tasks.c  .generated_files/flags/default/7b86ebec31b7618825245ed5cb4c97b0104d0444 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/tasks.o.d" -o ${OBJECTDIR}/_ext/1796061812/tasks.o ../../Library/RTOS/Core/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1796061812/timers.o: ../../Library/RTOS/Core/timers.c  .generated_files/flags/default/78b52b259668439042b9c8cfab840e8a8eb509fc .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1796061812" 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796061812/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1796061812/timers.o.d" -o ${OBJECTDIR}/_ext/1796061812/timers.o ../../Library/RTOS/Core/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1589728724/port.o: ../../Library/RTOS/PIC32MM/port.c  .generated_files/flags/default/3e532530d4de989cc5726f165f935c51ad60b98d .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/_ext/1589728724" 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1589728724/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/_ext/1589728724/port.o.d" -o ${OBJECTDIR}/_ext/1589728724/port.o ../../Library/RTOS/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/207b1bf05d997b637bf959dee0963865a809bc3c .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"../../Library" -I"../../Library/RTOS/Core" -I"../../Library/RTOS/PIC32MM" -ffunction-sections -fdata-sections -O2 -fno-common -DUSE_RTOS -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
