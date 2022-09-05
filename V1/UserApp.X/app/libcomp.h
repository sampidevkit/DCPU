#ifndef LIBCOMP_H
#define LIBCOMP_H

#include <xc.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "FreeRTOS.h"
#include "adc1.h"
#include "uart1.h"
#include "drivers/i2c_simple_master.h"
#include "memory/flash.h"
#include "usb/usb.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "system.h"
#include "watchdog.h"
#include "pin_manager.h"
#include "Bootloader/Bootloader.h"
#include "Common/Button.h"
#include "Common/LibDef.h"
#include "Common/Util.h"
#include "Timer/SystemTick.h"
#include "USB/USB_CDC_Debug.h"

/* ******************************************** SYSTEM MACROS - DO NOT MODIFY */
#define BLD_TASK_PRIORITY       (tskIDLE_PRIORITY+1) // Do not modify
#define SYSAPP_TASK_PRIORITY    (tskIDLE_PRIORITY+2) // Do not modify
#define USRAPP_TASK_PRIORITY    (tskIDLE_PRIORITY+3) // Do not modify
#define BLD_Trigger_GetState()  BUTTON_GetState(&ModeBtCxt, UBT_N_GetValue())
#define BLD_Custom_Tasks()      Task_Manager()

void Task_Manager(void);
/* ************************************* APPLICATION MACROS - USER CAN MODIFY */

#endif