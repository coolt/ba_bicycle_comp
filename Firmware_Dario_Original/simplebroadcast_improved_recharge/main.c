/**
  @file  main.c
  @brief main entry of simpleBroadcaster, a bare-bones, speed optimized
         program transmitting BLE advertisment packages every N ms based on input from 5
         GPIOs

  @usage
        - Make a copy of ccfg.c from your CC26XXWARE version and
          configure it to use internal LF RCOSC
        - Configure WAKE_INTERVAL
        - Configure recharge period to 400ms if WAKE_INTERVAL is larger than 400ms(ish)
        - Configure IO's and set up advertisment payload
        - Configure output power to desired value in CMD_RADIO_SETUP (see pa_table_cc26xx.c)

  <!--
  Copyright 2015 Texas Instruments Incorporated. All rights reserved.

  IMPORTANT: Your use of this Software is limited to those specific rights
  granted under the terms of a software license agreement between the user
  who downloaded the software, his/her employer (which must be your employer)
  and Texas Instruments Incorporated (the "License").  You may not use this
  Software unless you agree to abide by the terms of the License. The License
  limits your use, and you acknowledge, that the Software may not be modified,
  copied or distributed unless embedded on a Texas Instruments microcontroller
  or used solely and exclusively in conjunction with a Texas Instruments radio
  frequency transceiver, which is integrated into your product.  Other than for
  the foregoing purpose, you may not use, reproduce, copy, prepare derivative
  works of, modify, distribute, perform, display or sell this Software and/or
  its documentation for any purpose.

  YOU FURTHER ACKNOWLEDGE AND AGREE THAT THE SOFTWARE AND DOCUMENTATION ARE
  PROVIDED ``AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED,
  INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE,
  NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL
  TEXAS INSTRUMENTS OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER CONTRACT,
  NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR OTHER
  LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
  INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE
  OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT
  OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
  (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

  Should you have any questions regarding your right to use this Software,
  contact Texas Instruments Incorporated at www.TI.com.
*/

/*
 * Improved simple broadcast sample (from Ti) edited and optimized.
 * Sensors off --> 3uA sleep current with balanced recharges every ~600ms and peaks arround 10mA
 * (12.01.2016, brts)
 */


#include <driverLib/ioc.h>
#include <driverLib/sys_ctrl.h>

#include "sensor-common.h"
#include "ext-flash.h"
#include "bmp-280-sensor.h"
#include "tmp-007-sensor.h"
#include "hdc-1000-sensor.h"
#include "opt-3001-sensor.h"

#include "board.h"
#include "radio.h"

#include <config.h>
#include <driverLib/gpio.h>
#include "interfaces/board-i2c.h"
#include <rtc.h>
#include <radio.h>
#include <system.h>
#include <inc/hw_aon_event.h>

extern volatile bool rfBootDone;
extern volatile bool rfSetupDone;
extern volatile bool rfAdvertisingDone;

// interrupts -----------------------------------------------------------
void GPIOIntHandler(void){
	uint32_t pin_mask;

	powerEnablePeriph();
	powerEnableGPIOClockRunMode();

	/* Wait for domains to power on */
	while((PRCMPowerDomainStatus(PRCM_DOMAIN_PERIPH) != PRCM_DOMAIN_POWER_ON));

	/* Read interrupt flags */
	pin_mask = (HWREG(GPIO_BASE + GPIO_O_EVFLAGS31_0) & GPIO_PIN_MASK);

	/* Clear the interrupt flags */
	HWREG(GPIO_BASE + GPIO_O_EVFLAGS31_0) = pin_mask;

	powerDisablePeriph();
	// Disable clock for GPIO in CPU run mode
	HWREGBITW(PRCM_BASE + PRCM_O_GPIOCLKGR, PRCM_GPIOCLKGR_CLK_EN_BITN) = 0;
	// Load clock settings
	HWREGBITW(PRCM_BASE + PRCM_O_CLKLOADCTL, PRCM_CLKLOADCTL_LOAD_BITN) = 1;

	//To avoid second interupt with register = 0 (its not fast enough!!)
	__asm(" nop");
	__asm(" nop");
	__asm(" nop");
	__asm(" nop");
	__asm(" nop");
	__asm(" nop");
}

void sensorsInit(void)
{
	uint16_t success = 0;
    uint16_t val;

	//Turn off TMP007
    configure_tmp_007(0);

	//Power down Gyro
	IOCPinTypeGpioOutput(BOARD_IOID_MPU_POWER);
	GPIOPinClear(BOARD_MPU_POWER);

	//Power down Mic
	IOCPinTypeGpioOutput(BOARD_IOID_MIC_POWER);
	GPIOPinClear(1 << BOARD_IOID_MIC_POWER);

	//Turn off external flash
	ext_flash_init(); //includes power down instruction

	//Turn off OPT3001
	configure_opt_3001(0);

	configure_bmp_280(0);

	//Power off Serial domain (Powered on in sensor configurations!)
	PRCMPowerDomainOff(PRCM_DOMAIN_SERIAL);
	while((PRCMPowerDomainStatus(PRCM_DOMAIN_SERIAL) != PRCM_DOMAIN_POWER_OFF));

	//Shut down I2C
	board_i2c_shutdown();
}

void ledInit(void)
{
	IOCPinTypeGpioOutput(BOARD_IOID_LED_1); //LED1
	IOCPinTypeGpioOutput(BOARD_IOID_LED_2); //LED2

	GPIOPinClear(BOARD_LED_1);
	GPIOPinClear(BOARD_LED_2);
}


int main(void) {

  uint8_t payload[ADVLEN];

  //Disable JTAG to allow for Standby
  AONWUCJtagPowerOff();

  //Force AUX on
  powerEnableAuxForceOn();
  powerEnableRFC();

  powerEnableXtalInterface();
  //powerConfigureRecharge(); --> Optimized version later in this code (brts)
  
  // Divide INF clk to save Idle mode power (increases interrupt latency)
  powerDivideInfClkDS(PRCM_INFRCLKDIVDS_RATIO_DIV32);

  //initRTC();

  powerEnablePeriph();
  powerEnableGPIOClockRunMode();

  /* Wait for domains to power on */
  while((PRCMPowerDomainStatus(PRCM_DOMAIN_PERIPH) != PRCM_DOMAIN_POWER_ON));

  sensorsInit();
  ledInit();

  //Config IOID4 for external interrupt on rising edge and wake up
  IOCPortConfigureSet(BOARD_IOID_KEY_RIGHT, IOC_PORT_GPIO, IOC_IOMODE_NORMAL | IOC_FALLING_EDGE | IOC_INT_ENABLE | IOC_IOPULL_UP | IOC_INPUT_ENABLE | IOC_WAKE_ON_LOW);
  //Set device to wake MCU from standby on PIN 4 (BUTTON1)
  HWREG(AON_EVENT_BASE + AON_EVENT_O_MCUWUSEL) = AON_EVENT_MCUWUSEL_WU0_EV_PAD;  //Does not work with AON_EVENT_MCUWUSEL_WU0_EV_PAD4 --> WHY??

  IntEnable(INT_EDGE_DETECT);

  powerDisablePeriph();
  //Disable clock for GPIO in CPU run mode
  HWREGBITW(PRCM_BASE + PRCM_O_GPIOCLKGR, PRCM_GPIOCLKGR_CLK_EN_BITN) = 0;
  // Load clock settings
  HWREGBITW(PRCM_BASE + PRCM_O_CLKLOADCTL, PRCM_CLKLOADCTL_LOAD_BITN) = 1;

  initInterrupts();
  initRadio();

  // Turn off FLASH in idle mode
  powerDisableFlashInIdle();

  // Cache retention must be enabled in Idle if flash domain is turned off (to avoid cache corruption)
  powerEnableCacheRetention();

  //AUX - request to power down (takes no effect since force on is set)
  powerEnableAUXPdReq();
  powerDisableAuxRamRet();

  //Clear payload buffer
    memset(payload, 0, BLE_ADV_PAYLOAD_BUF_LEN);

    //Fill payload buffer with adv parameter data
    uint8_t p;
    p = 0;
    payload[p++] = 0x02;          /* 2 bytes */
    payload[p++] = 0x01;
    payload[p++] = 0x05;          /* LE Limited Discoverable Mode" & "BR/EDR Not Supported */
    payload[p++] = 0x09; //1 + strlen(beacond_config.adv_name);
    payload[p++] = 0x03;//BLE_ADV_TYPE_NAME;
    payload[p++] = 0x00;//BLE_ADV_TYPE_NAME;
    payload[p++] = 0xDE;//BLE_ADV_TYPE_NAME;
    payload[p++] = 0x01;//BLE_ADV_TYPE_NAME;
    payload[p++] = 0x35;//BLE_ADV_TYPE_NAME;

  //Start radio setup and linked advertisment
  radioUpdateAdvData(10, payload);

  while(1) {

    rfBootDone  = 0;
    rfSetupDone = 0;
    rfAdvertisingDone = 0;

    //Wait until RF Core PD is ready before accessing radio
    waitUntilRFCReady();
    initRadioInts();
    runRadio();

    //Wait until AUX is ready before configuring oscillators
    waitUntilAUXReady();

    //Enable 24MHz XTAL
    OSCHF_TurnOnXosc();

    //IDLE until BOOT_DONE interrupt from RFCore is triggered
    while( ! rfBootDone) {
      powerDisableCPU();
      PRCMDeepSleep();
    }

    //This code runs after BOOT_DONE interrupt has woken up the CPU again
    // ->
    //Request radio to keep on system bus
    radioCmdBusRequest(true);

    //Patch CM0 - no RFE patch needed for TX only
    radioPatch();

    //Start radio timer
    radioCmdStartRAT();

    //Enable Flash access while doing radio setup
    powerEnableFlashInIdle();

    //Switch to XTAL
    while( !OSCHF_AttemptToSwitchToXosc())
    {}
  
    //Start radio setup and linked advertisment
    radioSetupAndTransmit();

    //Wait in IDLE for CMD_DONE interrupt after radio setup. ISR will disable radio interrupts
    while( ! rfSetupDone) {
      powerDisableCPU();
      PRCMDeepSleep();
    }

    //Disable flash in IDLE after CMD_RADIO_SETUP is done (radio setup reads FCFG trim values)
    powerDisableFlashInIdle();

    //Wait in IDLE for LAST_CMD_DONE after 3 adv packets
    while( ! rfAdvertisingDone) {
      powerDisableCPU();
      PRCMDeepSleep();
    }

    //Request radio to not force on system bus any more
    radioCmdBusRequest(false);
    
    //
    // Standby procedure
    //
    
    powerDisableXtal();

    // Turn off radio
    powerDisableRFC();
    
    // Switch to RCOSC_HF
    OSCHfSourceSwitch();

    // Allow AUX to turn off again. No longer need oscillator interface
    powerDisableAuxForceOn();

    // Goto Standby. MCU will now request to be powered down on DeepSleep
    powerEnableMcuPdReq();

    // Disable cache and retention
    powerDisableCache();
    powerDisableCacheRetention();

    //Calculate next recharge
    SysCtrlSetRechargeBeforePowerDown(XOSC_IN_HIGH_POWER_MODE);

    // Synchronize transactions to AON domain to ensure AUX has turned off
    SysCtrlAonSync();

    //
    // Enter Standby
    //

    powerDisableCPU();
    PRCMDeepSleep();

    SysCtrlAonUpdate();
    SysCtrlAdjustRechargeAfterPowerDown();
    SysCtrlAonSync();

    //
	// Wakeup from RTC every 100ms, code starts execution from here
	//
   
    powerEnableRFC();
    powerEnableAuxForceOn();

    //Re-enable cache and retention
    powerEnableCache();
    powerEnableCacheRetention();

    //MCU will not request to be powered down on DeepSleep -> System goes only to IDLE
    powerDisableMcuPdReq();
  }
}
