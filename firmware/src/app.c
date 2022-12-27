/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{   
    bool isGetNewMessage, isSentAnswer;
    uint8_t IBuffer[getRxPacketSize()];
    
    switch (appData.state)
    {
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
            
            initialiseOCs();                
            initialiseTachometer();                
            initialiseLedBrightness();         
            
            if (appInitialized)
            {            
                appData.state = APP_STATE_TCP_SERVER_LISTENING;
            }
            break;
        }
        
        case APP_STATE_TCP_SERVER_LISTENING:
        {
            ledBrightnessControl(currentReceivedOnTcpParam);
            
            isGetNewMessage = TCP_Server(&IBuffer, 0, false);           
            if (isGetNewMessage)
            {
                parseTcpMessage(&IBuffer[0], &IBuffer[0] + sizeof(IBuffer) - 1); 
                setDutyCycle(currentReceivedOnTcpParam, 0x1F);
                appData.state = APP_STATE_GET_CURRENT_APP_PARAMERES;
            }
        }
        break;
        
        case APP_STATE_GET_CURRENT_APP_PARAMERES:
        {
            uint8_t i;
            getCurrentPwmParameters();
            for (i = 0; i < 5; i++)
            {
                currentParam.TEMP[i] = -100;
                currentParam.COMM = 0;
            }
            appData.state = APP_STATE_TCP_SERVER_REPLYING;
        }
        break;
        
        case APP_STATE_TCP_SERVER_REPLYING:
        {   
            createNewTcpMessage(OBuffer, sizeof(OBuffer));
            isSentAnswer = TCP_Server(&OBuffer, sizeof(OBuffer), true);
            if(isSentAnswer)
                appData.state = APP_STATE_TCP_SERVER_LISTENING;
        }
        break;

        case APP_STATE_SERVICE_TASKS:
        {
            break;
        }
        
        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


void interruptT1(uintptr_t context, uint32_t alarmCount)
{//40us
}

void interruptT2(uintptr_t context, uint32_t alarmCount)
{//200ms

    //LATB3 = S0(pin14); LATB1 = S1(pin2))
    volatile bool s0ch = LATBbits.LATB3;
    volatile bool s1ch = LATBbits.LATB1;
    
    uint8_t i;
    
    if(!s0ch && !s1ch)
       speedMeasParam.chanelID = 0;
    
    if(s0ch && !s1ch)
       speedMeasParam.chanelID = 1;
    
    if(!s0ch && s1ch)
        speedMeasParam.chanelID = 3;
    
    if(s0ch && s1ch)
        speedMeasParam.chanelID = 4;

    for (i = 0; i < 5; i++)
    {
        if(icWatchCounter[i] > 9)
        {
            currentParam.IC[i] = 0;
            speedMeasParam.executedMeasuring[i] = true;
        }
        else
        {
            icWatchCounter[i]++;
        }
    }
}

void interruptIC5()
{
    //IC5 Interrupt
    if(speedMeasParam.chanelID == 0)
    {
        currentParam.IC[0] = measureRevSpeed(0);
        icWatchCounter[0] = 0;
        speedMeasParam.executedMeasuring[0] = true;
    }
        
    if(speedMeasParam.chanelID == 1)
    {
        currentParam.IC[1] = measureRevSpeed(0);
        icWatchCounter[1] = 0;
        speedMeasParam.executedMeasuring[1] = true;
    }
        
    if(speedMeasParam.chanelID == 2)
    {
       currentParam.IC[2] = measureRevSpeed(0);
       icWatchCounter[2] = 0;
       speedMeasParam.executedMeasuring[2] = true;
    }
    
    while(IC5CONbits.ICBNE)
    {
        uint16_t temp = IC5BUF;
    }
}

void interruptIC3()
{
    //IC5 Interrupt
    if(speedMeasParam.chanelID == 0)
    {
        currentParam.IC[3] = measureRevSpeed(1);
        icWatchCounter[3] = 0;
        speedMeasParam.executedMeasuring[4] = true;
    }
        
    if(speedMeasParam.chanelID == 1)
    {
        currentParam.IC[4] = measureRevSpeed(1);
        icWatchCounter[4] = 0;
        speedMeasParam.executedMeasuring[4] = true;
    }
    
    while(IC3CONbits.ICBNE)
    {
        uint16_t temp = IC3BUF;
    }
}

void parseTcpMessage(uint8_t* startP, uint8_t* endP)
{
    volatile uint8_t i;
    
    while (startP < endP)
    {
        if (strstr(startP, (const char*)"PWM0=") != NULL)
        {
            currentReceivedOnTcpParam.PWM[0] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                    
        if (strstr(startP, (const char*)"PWM1=") != NULL)
        {
            currentReceivedOnTcpParam.PWM[1] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                    
        if (strstr(startP, (const char*)"PWM2=") != NULL)
        {
            currentReceivedOnTcpParam.PWM[2] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                    
        if (strstr(startP, (const char*)"PWM3=") != NULL)
        {
            currentReceivedOnTcpParam.PWM[3] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                    
        if (strstr(startP, (const char*)"PWM4=") != NULL)
        {
            currentReceivedOnTcpParam.PWM[4] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                   
        if (strstr(startP, (const char*)"LED0=") != NULL)
        {
            currentReceivedOnTcpParam.LED[0] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                    
        if (strstr(startP, (const char*)"LED1=") != NULL)
        {
            currentReceivedOnTcpParam.LED[1] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                    
        if (strstr(startP, (const char*)"LED2=") != NULL)
        {
            currentReceivedOnTcpParam.LED[2] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                    
        if (strstr(startP, (const char*)"LED3=") != NULL)
        {
            currentReceivedOnTcpParam.LED[3] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
                    
        if (strstr(startP, (const char*)"LED4=") != NULL)
        {
            currentReceivedOnTcpParam.LED[4] = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
        
        if (strstr(startP, (const char*)"COMM=") != NULL)
        {
            currentReceivedOnTcpParam.COMM = (uint16_t)strtol(startP + 0x0005, NULL, 10);
        }
        
        startP = startP + (uint8_t)strlen(startP) + 1;
    }
    
/*-----------------------------------------------------------------------------------------*/
    for(i = 0; i < 5; i++)
    {
        if(currentReceivedOnTcpParam.PWM[i] > 100 || currentReceivedOnTcpParam.PWM[i] < 0)
        {
            currentReceivedOnTcpParam.PWM[i] = 100;
        }
    }
    
    for(i = 0; i < 5; i++)
    {
        if(currentReceivedOnTcpParam.LED[i] > 255 || currentReceivedOnTcpParam.LED[i] < 0)
        {
            currentReceivedOnTcpParam.LED[i] = 0;
        } 
    }
}

void createNewTcpMessage(uint8_t* startP, int len)
{
    char charBuffer;
    uint8_t i;
    size_t offset = 0;
    
    memset(startP, 0x0000, len);
    for(i = 0; i < 5; i++)
    {
        sprintf(&charBuffer,"PWM%u", i);
        strcat(startP + offset, &charBuffer);
        sprintf(&charBuffer, "=%03u", currentParam.PWM[i]);
        strcat(startP + offset, &charBuffer);
        offset = offset + strlen(startP + offset) + 1;
    }
    
    for(i = 0; i < 5; i++)
    {
        sprintf(&charBuffer,"LED%u", i);
        strcat(startP + offset, &charBuffer);
        sprintf(&charBuffer, "=%03u", currentParam.LED[i]);
        strcat(startP + offset, &charBuffer);
        offset = offset + strlen(startP + offset) + 1;
    }
    
    for(i = 0; i < 5; i++)
    {
        sprintf(&charBuffer,"ICP%u", i);
        strcat(startP + offset, &charBuffer);
        sprintf(&charBuffer, "=%04u", currentParam.IC[i]);
        strcat(startP + offset, &charBuffer);
        offset = offset + strlen(startP + offset) + 1;
    }
    
    for(i = 0; i < 5; i++)
    {
        sprintf(&charBuffer,"TMP%u", i);
        strcat(startP + offset, &charBuffer);
        sprintf(&charBuffer, "=%+03i", currentParam.TEMP[i]);
        strcat(startP + offset, &charBuffer);
        offset = offset + strlen(startP + offset) + 1;
    }    
}
/*******************************************************************************
 End of File
 */
