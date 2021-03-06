################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
sensors/bmp-280-sensor.obj: ../sensors/bmp-280-sensor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/bmp-280-sensor.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/buzzer.obj: ../sensors/buzzer.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/buzzer.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/ext-flash.obj: ../sensors/ext-flash.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/ext-flash.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/hdc-1000-sensor.obj: ../sensors/hdc-1000-sensor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/hdc-1000-sensor.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/opt-3001-sensor.obj: ../sensors/opt-3001-sensor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/opt-3001-sensor.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/sensor-common.obj: ../sensors/sensor-common.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/sensor-common.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/tmp-007-sensor.obj: ../sensors/tmp-007-sensor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/tmp-007-sensor.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


