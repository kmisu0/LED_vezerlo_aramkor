/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#include "led.h"

void initialiseLedBrightness()
{
    APP_PARAMETERS initParameters;
    int i;
    
    for(i = 0; i < 5; i++)
    {
        initParameters.LED[i] = 30;
    }
    
    ledBrightnessControl(initParameters);
}

bool ledBrightnessControl(APP_PARAMETERS appParameters)
{
    bool busIsIdle;
    int i;
    
    busIsIdle = PLIB_I2C_BusIsIdle(I2C_ID_2);
    
    switch(ledState)
    {
        case LED_STATE_WAIT:
        {
            for (i = 0; i < 5; i++)
            {
                if((appParameters.LED[i] != currentParam.LED[i]))
                {
                   ledState = LED_STATE_WRITE_LED0;
                }
            }
            
            for(i = 0; i < 5; i++)
            {
                snapshotParameters.LED[i] = appParameters.LED[i];
                
                if (snapshotParameters.LED[i] > 255)
                {
                    snapshotParameters.LED[i] = 255;
                }
                
                if(snapshotParameters.LED[i] < 30)
                {
                    snapshotParameters.LED[i] = 30;
                }
            }
        }
        break;
        
        case LED_STATE_WRITE_LED0:
        {
            messageI2C[0] = 0x01;
            messageI2C[1] = (uint8_t)snapshotParameters.LED[0];
            addressI2C = 0x5C;
            
            if(busIsIdle)
            {
                if (busy)
                {
                    ledState = LED_STATE_WRITE_LED1;
                    busy = false;
                }
                else
                {
                    DRV_I2C0_Transmit(addressI2C, &messageI2C[0], 2, NULL);
                    busy = true;
                }
            }
        }
        break;
        
        case LED_STATE_WRITE_LED1:
        {
            messageI2C[0] = 0x01;
            messageI2C[1] = snapshotParameters.LED[1];
            addressI2C = 0x5A;
            
            if(busIsIdle)
            {
                if (busy)
                {
                    ledState = LED_STATE_WRITE_LED2;
                    busy = false;
                }
                else
                {
                    DRV_I2C0_Transmit(addressI2C, &messageI2C[0], 2, NULL);
                    busy = true;
                }
            }
        }
        break;
        
        case LED_STATE_WRITE_LED2:
        {
            messageI2C[0] = 0x00;
            messageI2C[1] = snapshotParameters.LED[2];
            addressI2C = 0x5A;
            
            if(busIsIdle)
            {
                if (busy)
                {
                    ledState = LED_STATE_WRITE_LED3;
                    busy = false;
                }
                else
                {
                    DRV_I2C0_Transmit(addressI2C, &messageI2C[0], 2, NULL);
                    busy = true;
                }
            }
        }
        break;
        
        case LED_STATE_WRITE_LED3:
        {
            messageI2C[0] = 0x01;
            messageI2C[1] = snapshotParameters.LED[3];
            addressI2C = 0x58;
            
            if(busIsIdle)
            {
                if (busy)
                {
                    ledState = LED_STATE_WRITE_LED4;
                    busy = false;
                }
                else
                {
                    DRV_I2C0_Transmit(addressI2C, &messageI2C[0], 2, NULL);
                    busy = true;
                }
            }
        }
        break;
        
        case LED_STATE_WRITE_LED4:
        {
            messageI2C[0] = 0x00;
            messageI2C[1] = snapshotParameters.LED[4];
            addressI2C = 0x58;
            
            if(busIsIdle)
            {
                if (busy)
                {
                    ledState = LED_STATE_STORE_CURRENT_VALUE;
                    busy = false;
                }
                else
                {
                    DRV_I2C0_Transmit(addressI2C, &messageI2C[0], 2, NULL);
                    busy = true;
                }
            }
        }
        break;
        
        case LED_STATE_STORE_CURRENT_VALUE:
        {
            for (i = 0; i < 5; i++)
            {
                currentParam.LED[i] = snapshotParameters.LED[i];
            }
            ledState = LED_STATE_WAIT;
        }
        break;
    }
    return pocessDone;
}

/* *****************************************************************************
 End of File
 */
