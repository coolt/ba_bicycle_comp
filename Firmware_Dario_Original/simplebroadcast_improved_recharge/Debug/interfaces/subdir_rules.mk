################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
interfaces/board-i2c.obj: ../interfaces/board-i2c.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/interfaces" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/sensors" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files/patches" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="interfaces/board-i2c.pp" --obj_directory="interfaces" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

interfaces/board-spi.obj: ../interfaces/board-spi.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/interfaces" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/sensors" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files/patches" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="/home/dalyan/Schreibtisch/TestWakeUp/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="interfaces/board-spi.pp" --obj_directory="interfaces" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '


