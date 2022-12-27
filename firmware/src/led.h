/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */


#include "peripheral/i2c/plib_i2c.h"
#include "driver/i2c/src/drv_i2c_local.h"
#include "system_definitions.h"

typedef enum
{
	LED_STATE_WAIT=0,
    LED_STATE_WRITE_LED0,
    LED_STATE_WRITE_LED1,
    LED_STATE_WRITE_LED2,
    LED_STATE_WRITE_LED3,
    LED_STATE_WRITE_LED4,
    LED_STATE_STORE_CURRENT_VALUE,
} LED_STATES;

static APP_PARAMETERS snapshotParameters;
static LED_STATES ledState;
static uint8_t addressI2C;
static uint8_t messageI2C[2];
static bool pocessDone = true;
static busy = false;

void initialiseLedBrightness(void);
bool ledBrightnessControl(APP_PARAMETERS appParameters);

/* *****************************************************************************
 End of File
 */
