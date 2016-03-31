// Communication with M0-Cortex for sending Data

//#define BLE_ADV_PAYLOAD_BUF_LEN     64

void initRadio(void);  // ev. in system.h
void initRadioInts(void);	// ev. in system.h
void initRadioStructs(void); // ev. in system.h

void extPinEnable(bool enable); // new from PA
void runRadio(void);
void radioPatch(void);
void radioCmdBusRequest(bool enabled);

void radioUpdateAdvData(int size, char* data);

void radioCmdStartRAT(void);
void radioSetupAndTransmit(void);
