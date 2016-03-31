/*
 * measuremen.c
 *
 *  Created on: 25.03.2016
 *      Author: katrin
 */


#include "measurement.h"
#include "cc26xxware_2_22_00_16101/inc/hw_memmap.h"
#include "cc26xxware_2_22_00_16101/inc/hw_rfc_dbell.h"
#include "cc26xxware_2_22_00_16101/inc/hw_rfc_pwr.h"
#include "cc26xxware_2_22_00_16101/inc/hw_fcfg1.h"
#include "radio_files/rfc_api/common_cmd.h"
#include "radio_files/rfc_api/ble_cmd.h"
#include "radio_files/rfc_api/mailbox.h"
#include "radio_files/patches/ble/apply_patch.h"
#include "radio_files/overrides/ble_overrides.h"


#include "config.h"
#include "cc26xxware_2_22_00_16101/driverLib/prcm.h"
#include "radio.h"
#include "system.h"

void extPinEnable(bool enable){
	// Power on IOC domain
	powerEnablePeriph();
	powerEnableGPIOClockRunMode();

	/* Wait for domains to power on */
	while((PRCMPowerDomainStatus(PRCM_DOMAIN_PERIPH)
			!= PRCM_DOMAIN_POWER_ON));

	if(enable){
		// Enable PIN25 for Interrupts
		IOCPortConfigureSet(BOARD_IOID_DP0, IOC_PORT_GPIO, IOC_IOMODE_NORMAL | IOC_RISING_EDGE | IOC_INT_ENABLE | IOC_IOPULL_DOWN  | IOC_INPUT_ENABLE | IOC_WAKE_ON_HIGH);
		//Set device to wake MCU from standby on PIN 25
		HWREG(AON_EVENT_BASE + AON_EVENT_O_MCUWUSEL) = AON_EVENT_MCUWUSEL_WU1_EV_PAD25;
		// Enable and clear the Interrupt
		IOCIntClear(IOID_25);
		IntPendClear(INT_EDGE_DETECT);
		IntEnable(INT_EDGE_DETECT);
	}
	else{
		// Disable PIN25 for Interrupts
		IOCPortConfigureSet(BOARD_IOID_DP0, IOC_PORT_GPIO, IOC_IOMODE_NORMAL | IOC_RISING_EDGE | IOC_INT_DISABLE | IOC_IOPULL_DOWN  | IOC_INPUT_ENABLE | IOC_WAKE_ON_HIGH);
		//Set device to wake MCU from standby on PIN 25
		HWREG(AON_EVENT_BASE + AON_EVENT_O_MCUWUSEL) = AON_EVENT_MCUWUSEL_WU1_EV_NONE;
		// disable Interrupt
		IntDisable(INT_EDGE_DETECT);
	}

	// Power off IOC domain
	powerDisablePeriph();
	// Disable clock for GPIO in CPU run mode
	HWREGBITW(PRCM_BASE + PRCM_O_GPIOCLKGR, PRCM_GPIOCLKGR_CLK_EN_BITN) = 0;
	// Load clock settings
	HWREGBITW(PRCM_BASE + PRCM_O_CLKLOADCTL, PRCM_CLKLOADCTL_LOAD_BITN) = 1;
}
