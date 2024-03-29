#include "libcomp.h"
#include "SystemApp.h"

void SystemApp_Init(void) // <editor-fold defaultstate="collapsed" desc="Application initialize">
{
    MCU_VBUS_SetHigh();
    USBDeviceAttach();
    VCELL_EN_SetHigh();
    CELL_ONOFF_N_SetLow();
} // </editor-fold>

void SystemApp_Tasks(void) // <editor-fold defaultstate="collapsed" desc="Application tasks">
{
    USB_CDC_Debug_Tasks();
    
    while(USB_CDC_Debug_Is_RxReady())
    {
        if(UART1_IsTxReady())
            UART1_Write(USB_CDC_Debug_Read());
        else
            break;
    }

    while(UART1_IsRxReady())
    {
        if(USB_CDC_Debug_Is_TxReady())
            USB_CDC_Debug_Write(UART1_Read());
        else
            break;
    }
} // </editor-fold>