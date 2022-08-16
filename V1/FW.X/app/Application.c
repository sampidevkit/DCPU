#include "libcomp.h"
#include "Application.h"

static void TMR2_UserCallback(void)
{
    RX_LED_Toggle();
}

static void TMR3_UserCallback(void)
{
    TX_LED_Toggle();
}

void Application_Init(void)
{

}

void Application_Tasks(void *pvParameters)
{
    while(1)
    {
        ST_LED_Toggle();
        vTaskDelay(500/portTICK_PERIOD_MS);
    }
}