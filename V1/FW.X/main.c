#include "libcomp.h"
#include "SystemApp.h"
#include "UserApp.h"

// <editor-fold defaultstate="collapsed" desc="RTOS custom functions">

void vApplicationMallocFailedHook(void) // <editor-fold defaultstate="collapsed" desc="vApplicationMallocFailedHook">
{
    /* vApplicationMallocFailedHook() will only be called if
    configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
    function that will get called if a call to pvPortMalloc() fails.
    pvPortMalloc() is called internally by the kernel whenever a task, queue,
    timer or semaphore is created.  It is also called by various parts of the
    demo application.  If heap_1.c or heap_2.c are used, then the size of the
    heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
    FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
    to query the size of free heap space that remains (although it does not
    provide information on how the remaining heap might be fragmented). */
    taskDISABLE_INTERRUPTS();
    while(1);
} // </editor-fold>

void vApplicationIdleHook(void) // <editor-fold defaultstate="collapsed" desc="vApplicationIdleHook">
{
    /* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
    to 1 in FreeRTOSConfig.h.  It will be called on each iteration of the idle
    task.  It is essential that code added to this hook function never attempts
    to block in any way (for example, call xQueueReceive() with a block time
    specified, or call vTaskDelay()).  If the application makes use of the
    vTaskDelete() API function (as this demo application does) then it is also
    important that vApplicationIdleHook() is permitted to return to its calling
    function, because it is the responsibility of the idle task to clean up
    memory allocated by the kernel to any task that has since been deleted. */
} // </editor-fold>

void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName) // <editor-fold defaultstate="collapsed" desc="vApplicationStackOverflowHook">
{
    (void) pcTaskName;
    (void) pxTask;

    /* Run time task stack overflow checking is performed if
    configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook	function is 
    called if a task stack overflow is detected.  Note the system/interrupt
    stack is not checked. */
    taskDISABLE_INTERRUPTS();
    while(1);
} // </editor-fold>

void vApplicationTickHook(void) // <editor-fold defaultstate="collapsed" desc="vApplicationTickHook">
{
    /* This function will be called by each tick interrupt if
    configUSE_TICK_HOOK is set to 1 in FreeRTOSConfig.h.  User code can be
    added here, but the tick hook is called from an interrupt context, so
    code must not attempt to block, and only the interrupt safe FreeRTOS API
    functions can be used (those that end in FromISR()). */
} // </editor-fold>

void vAssertCalled(const char * pcFile, unsigned long ulLine) // <editor-fold defaultstate="collapsed" desc="vAssertCalled">
{
    volatile unsigned long ul=0;

    (void) pcFile;
    (void) ulLine;

    __asm volatile( "di");
    {
        /* Set ul to a non-zero value using the debugger to step out of this
        function. */
        while(ul==0)
        {
            portNOP();
        }
    }
    __asm volatile( "ei");
} // </editor-fold>
// </editor-fold>

void Task_Manager(void) // <editor-fold defaultstate="collapsed" desc="Task manager">
{

} // </editor-fold>

static void SysApp_Tasks(void *pvParameters) // <editor-fold defaultstate="collapsed" desc="Application tasks">
{
    SystemApp_Init();

    while(1)
    {
        SystemApp_Tasks();
        vTaskDelay(1/portTICK_PERIOD_MS);
    }
} // </editor-fold>

static void UserApp_Tasks(void *pvParameters) // <editor-fold defaultstate="collapsed" desc="Application tasks">
{
    UserApp_Init();

    while(1)
    {
        UserApp_Tasks();
        vTaskDelay(1/portTICK_PERIOD_MS);
    }
} // </editor-fold>

int main(void) // <editor-fold defaultstate="collapsed" desc="main function">
{
    SYSTEM_Initialize();
    portDISABLE_INTERRUPTS();
    
    xTaskCreate(Bootloader_Tasks, /* The function that implements the task. */
            "Bld", /* The text name assigned to the task - for debug only as it is not used by the kernel. */
            configMINIMAL_STACK_SIZE, /* The size of the stack to allocate to the task. */
            NULL, /* The parameter passed to the task - just to check the functionality. */
            BLD_TASK_PRIORITY, /* The priority assigned to the task. */
            NULL); /* The task handle is not required, so NULL is passed. */
    
    xTaskCreate(SysApp_Tasks, /* The function that implements the task. */
            "Sys", /* The text name assigned to the task - for debug only as it is not used by the kernel. */
            configMINIMAL_STACK_SIZE, /* The size of the stack to allocate to the task. */
            NULL, /* The parameter passed to the task - just to check the functionality. */
            SYSAPP_TASK_PRIORITY, /* The priority assigned to the task. */
            NULL); /* The task handle is not required, so NULL is passed. */

    xTaskCreate(UserApp_Tasks, /* The function that implements the task. */
            "Usr", /* The text name assigned to the task - for debug only as it is not used by the kernel. */
            configMINIMAL_STACK_SIZE, /* The size of the stack to allocate to the task. */
            NULL, /* The parameter passed to the task - just to check the functionality. */
            USERAPP_TASK_PRIORITY, /* The priority assigned to the task. */
            NULL); /* The task handle is not required, so NULL is passed. */

    vTaskStartScheduler();

    return 1;
} // </editor-fold>