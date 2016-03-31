/** V2-0331

 */


#include "cc26xxware_2_22_00_16101/driverLib/ioc.h"
#include "cc26xxware_2_22_00_16101/driverLib/sys_ctrl.h"

#include "sensors/sensor-common.h"
#include "sensors/ext-flash.h"
#include "sensors/bmp-280-sensor.h"
#include "sensors/tmp-007-sensor.h"
#include "sensors/hdc-1000-sensor.h"
#include "sensors/opt-3001-sensor.h"

#include "board.h"
#include "radio.h"

#include "config.h"
#include "cc26xxware_2_22_00_16101/driverLib/gpio.h"
#include "interfaces/board-i2c.h"
#include "rtc.h"
#include "radio.h"
#include "system.h"
#include "cc26xxware_2_22_00_16101/inc/hw_aon_event.h"


extern volatile bool rfBootDone;
extern volatile bool rfSetupDone;
extern volatile bool rfAdvertisingDone;

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

  //Config MCU DIO4 for external interrupt on rising edge and wake up
  IOCPortConfigureSet(BOARD_IOID_KEY_RIGHT, IOC_PORT_GPIO, IOC_IOMODE_NORMAL | IOC_FALLING_EDGE | IOC_INT_ENABLE | IOC_IOPULL_UP | IOC_INPUT_ENABLE | IOC_WAKE_ON_LOW);
  //Set device to wake MCU from standby on PIN4 (BUTTON1)
  HWREG(AON_EVENT_BASE + AON_EVENT_O_MCUWUSEL) = AON_EVENT_MCUWUSEL_WU0_EV_PAD;  //Does not work with AON_EVENT_MCUWUSEL_WU0_EV_PAD4 --> WHY??


  //Config IOID25 for external interrupt on rising edge and wake up
  IOCPortConfigureSet(REED_SWITCH, IOC_PORT_GPIO, IOC_IOMODE_NORMAL | IOC_FALLING_EDGE | IOC_INT_ENABLE | IOC_IOPULL_UP | IOC_INPUT_ENABLE | IOC_WAKE_ON_LOW);
  //Set device to wake MCU from standby on PIN 25
  HWREG(AON_EVENT_BASE + AON_EVENT_O_EVTOMCUSEL ) = AON_EVENT_MCUWUSEL_WU0_EV_PAD;

    //AON_EVENT_O_EVTOMCUSEL
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


    p = 0;
    payload[p++] = 0x03;          /* 2 bytes */
    payload[p++] = 0x03;
    payload[p++] = 0x3;        /* LE Limited Discoverable Mode" & "BR/EDR Not Supported */
    payload[p++] = 0x03;//BLE_ADV_TYPE_NAME;
    payload[p++] = 0x03;//BLE_ADV_TYPE_NAME;
    payload[p++] = 0x3;//BLE_ADV_TYPE_NAME;
    payload[p++] = 0x03;//BLE_ADV_TYPE_NAME;
    payload[p++] = 0x3;//BLE_ADV_TYPE_NAME;

  //Start radio setup and linked advertisment
  radioUpdateAdvData(10, payload);

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
   //}
  while(1) {
	  p = 0;
	      payload[p++] = 0x01;          /* 2 bytes */
	      payload[p++] = 0x01;
	      payload[p++] = 0x01;          /* LE Limited Discoverable Mode" & "BR/EDR Not Supported */
	      payload[p++] = 0x01; //1 + strlen(beacond_config.adv_name);
	      payload[p++] = 0x1;//BLE_ADV_TYPE_NAME;
	      payload[p++] = 0x01;//BLE_ADV_TYPE_NAME;
	      payload[p++] = 0xD1;//BLE_ADV_TYPE_NAME;
	      payload[p++] = 0x01;//BLE_ADV_TYPE_NAME;
	      payload[p++] = 0x1;//BLE_ADV_TYPE_NAME;

	      //Start radio setup and linked advertisment
	        radioUpdateAdvData(10, payload);


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
