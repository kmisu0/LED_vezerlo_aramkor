#include "fan.h"
#include "peripheral/ic/plib_ic.h"
#include <math.h>


bool initialiseTachometer()
{   
    uint16_t buf;
    bool initialised = false;
    
    // MUX kimenetek inicializálása
    TRISBbits.TRISB1 = 0;
    TRISBbits.TRISB3 = 0;
    
    // MUX vezérlése 1I0, 2I0 aktív
    LATBbits.LATB3 = 0; //74HC153 SEL 0        
    LATBbits.LATB1 = 0; //74HC153 SEL 1    
    
    // Input Capture Inicializálás
    TRISDbits.TRISD10 = 1;
    TRISDbits.TRISD12 = 1;
    
    ICTimerHandleT3 = DRV_TMR_Open(DRV_TMR_INDEX_2, DRV_IO_INTENT_EXCLUSIVE);    
    DRV_TMR_AlarmRegister(ICTimerHandleT3, 65535, true, 0 , interruptT2);
    
    //Starting the Timer   
    DRV_TMR_Start(ICTimerHandleT3);
            
    DRV_IC0_Start();
    DRV_IC1_Start();
    
    while(IC5CONbits.ICBNE)
    {
        buf = IC5BUF;
    }    
    IFS0bits.IC5IF = 0;         // Clear IC5 Interrupt Status Flag

    while(IC3CONbits.ICBNE)
    {
        buf = IC3BUF;
    }
    IFS0bits.IC3IF = 0;         // Clear IC3 Interrupt Status Flag    
    
    initialised = true;
    return initialised;
}

uint16_t measureRevSpeed(uint8_t intId)
{
    volatile uint16_t capuredCounterVal[4];
    volatile uint16_t d_capturedCounterVal[3];
    volatile uint16_t d_AvgCapturedCounterVal;
    volatile double refTimerRes;
    volatile uint32_t actualT3InputFrequency;
    volatile double actualRevSpeed;
    int i, j;
    
    actualT3InputFrequency = DRV_TMR_CounterFrequencyGet(ICTimerHandleT3);
    refTimerRes = (double)1/actualT3InputFrequency;    
    
    j = 0;
    d_AvgCapturedCounterVal = 0;   
    
    for (i = 0; i < 4; i++)
    {
        if (intId == 0)
        {
            capuredCounterVal[i] = IC5BUF;
        }
        else
        {
            capuredCounterVal[i] = IC3BUF;
        }
    }
     
    for (i = 0; i < 3; i++)
    {
        if (capuredCounterVal[i+1] >= capuredCounterVal[i])
        {
            d_capturedCounterVal[i] = capuredCounterVal[i+1]-capuredCounterVal[i];
        }
        else
        {
            d_capturedCounterVal[i] = capuredCounterVal[i+1]+(PR3 - capuredCounterVal[i]);
        }
        
        if(d_capturedCounterVal[i] > 500)
        {
            d_AvgCapturedCounterVal = d_capturedCounterVal[i] + d_AvgCapturedCounterVal;
            j++;
        }
    }
    d_AvgCapturedCounterVal = d_AvgCapturedCounterVal / j;
    
    
    actualRevSpeed = d_AvgCapturedCounterVal * refTimerRes * 4; // fordulatonként négy logikai változás   
    actualRevSpeed = (1 / actualRevSpeed) * 60;    
    return (uint16_t)actualRevSpeed;
}

bool initialiseOCs()
{
    bool initialised = false;
    
    pwmTimerHandleT2 = DRV_TMR_Open(DRV_TMR_INDEX_1, DRV_IO_INTENT_EXCLUSIVE);
 
    //calculate the divider value and register the ISR
    volatile uint32_t desiredFrequency = 25000;
    volatile uint32_t actualFrequency = DRV_TMR_CounterFrequencyGet(pwmTimerHandleT2);
    volatile uint32_t divider = actualFrequency/desiredFrequency; // cacluate divider value    
      
    DRV_TMR_AlarmRegister(pwmTimerHandleT2, divider, true, 0 , interruptT1);
 
    //Starting the Timer   
    DRV_TMR_Start(pwmTimerHandleT2);
    
    DRV_OC0_Start();
    DRV_OC1_Start();
    DRV_OC2_Start();
    DRV_OC3_Start();
    DRV_OC4_Start();
        
    PLIB_OC_PulseWidth16BitSet(OC_ID_1, 0);
    PLIB_OC_PulseWidth16BitSet(OC_ID_2, 0);
    PLIB_OC_PulseWidth16BitSet(OC_ID_3, 0);
    PLIB_OC_PulseWidth16BitSet(OC_ID_4, 0);
    PLIB_OC_PulseWidth16BitSet(OC_ID_5, 0);
    
    DRV_OC0_Enable();
    DRV_OC1_Enable();
    DRV_OC2_Enable();
    DRV_OC3_Enable();
    DRV_OC4_Enable();
    
    initialised = true;    
    return initialised;
}

bool setDutyCycle(APP_PARAMETERS appParameter, char fanComm)
{
    uint16_t i;
    uint32_t pwmTimerPeriod = (uint32_t)DRV_TMR_AlarmPeriod16BitGet(pwmTimerHandleT2);
    pwmTimerPeriod++;
    
    for(i = 0; i < 5; i++)
    {
        if(appParameter.PWM[i] < MIN_PWM_VAL)
            appParameter.PWM[i] = MIN_PWM_VAL;
    }
    
    if((fanComm & 0x01) == 0x01)
        PLIB_OC_PulseWidth16BitSet(OC_ID_2, (100 - appParameter.PWM[0])*(pwmTimerPeriod/100));
    
    if((fanComm & 0x02) == 0x02)
        PLIB_OC_PulseWidth16BitSet(OC_ID_4, (100 - appParameter.PWM[1])*(pwmTimerPeriod/100));
    
    if((fanComm & 0x04) == 0x04)
        PLIB_OC_PulseWidth16BitSet(OC_ID_5, (100 - appParameter.PWM[2])*(pwmTimerPeriod/100));
    
    if((fanComm & 0x08) == 0x08)
        PLIB_OC_PulseWidth16BitSet(OC_ID_3, (100 - appParameter.PWM[3])*(pwmTimerPeriod/100));
    
    if((fanComm & 0x10) == 0x10)
        PLIB_OC_PulseWidth16BitSet(OC_ID_1, (100 - appParameter.PWM[4])*(pwmTimerPeriod/100));
    
    return true;
}

void getCurrentPwmParameters(void)
{
    uint32_t pwmTimerPeriod = (uint32_t)DRV_TMR_AlarmPeriod16BitGet(pwmTimerHandleT2);
    pwmTimerPeriod++;

    currentParam.PWM[0] = 100 - ((OC2RS*100) / (pwmTimerPeriod));
    currentParam.PWM[1] = 100 - ((OC4RS*100) / (pwmTimerPeriod));
    currentParam.PWM[2] = 100 - ((OC5RS*100) / (pwmTimerPeriod));
    currentParam.PWM[3] = 100 - ((OC3RS*100) / (pwmTimerPeriod));
    currentParam.PWM[4] = 100 - ((OC1RS*100) / (pwmTimerPeriod));
}