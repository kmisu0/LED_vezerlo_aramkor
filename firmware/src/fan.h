/* ************************************************************************** */
/** Ventillator.h

  @Company
    SZE-GIVK

  @File Name
    Ventillator.h

  @Summary
    A LED aktív hút?rendszerének föggvénygyújteménye

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#include <stdint.h> 
#include "system_config.h"
#include "system_definitions.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "peripheral/oc/plib_oc.h"
#include "driver/tmr/drv_tmr.h"
#include "system/clk/sys_clk.h"

#define MIN_PWM_VAL 20u
#define MAX_PWM_VAL 100u

SYS_MODULE_OBJ pwmTimerHandleT2;
SYS_MODULE_OBJ ICTimerHandleT3;

bool initialiseTachometer( void );
bool initialiseOCs( void );
bool setDutyCycle(APP_PARAMETERS appParameter, char fanComm);
void getCurrentPwmParameters(void);
uint16_t measureRevSpeed(uint8_t intId);


/* *****************************************************************************
 End of File
 */
