################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
sensors/bmp-280-sensor.obj: ../sensors/bmp-280-sensor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/sensors" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/interfaces" -g --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/bmp-280-sensor.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/buzzer.obj: ../sensors/buzzer.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/sensors" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/interfaces" -g --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/buzzer.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/ext-flash.obj: ../sensors/ext-flash.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/sensors" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/interfaces" -g --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/ext-flash.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/hdc-1000-sensor.obj: ../sensors/hdc-1000-sensor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/sensors" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/interfaces" -g --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/hdc-1000-sensor.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/opt-3001-sensor.obj: ../sensors/opt-3001-sensor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/sensors" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/interfaces" -g --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/opt-3001-sensor.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/sensor-common.obj: ../sensors/sensor-common.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/sensors" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/interfaces" -g --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/sensor-common.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sensors/tmp-007-sensor.obj: ../sensors/tmp-007-sensor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/radio_files" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/sensors" --include_path="C:/Users/katrin/Documents/Dokumente/ZHAW/5Jahr/ba_bicycle_comp/bicycle_computer_v1/interfaces" -g --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="sensors/tmp-007-sensor.pp" --obj_directory="sensors" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


