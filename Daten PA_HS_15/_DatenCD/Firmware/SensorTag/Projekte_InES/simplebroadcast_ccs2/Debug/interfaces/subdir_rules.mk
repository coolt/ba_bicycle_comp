################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
interfaces/board-i2c.obj: ../interfaces/board-i2c.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="interfaces/board-i2c.pp" --obj_directory="interfaces" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

interfaces/board-spi.obj: ../interfaces/board-spi.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/interfaces" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/sensors" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/overrides" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/pa_table" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/patches" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/radio_files/rfc_api" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/inc" --include_path="D:/GitHub/ti_sensortag/simplebroadcast_ccs/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="interfaces/board-spi.pp" --obj_directory="interfaces" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


