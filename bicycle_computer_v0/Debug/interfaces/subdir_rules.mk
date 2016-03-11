################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
interfaces/board-i2c.obj: ../interfaces/board-i2c.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/radio_files" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/sensors" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/interfaces" -g --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="interfaces/board-i2c.pp" --obj_directory="interfaces" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

interfaces/board-spi.obj: ../interfaces/board-spi.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/cc26xxware_2_22_00_16101/startup_files" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/cc26xxware_2_22_00_16101/utils" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/radio_files/pa_table" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/cc26xxware_2_22_00_16101/driverLib" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/radio_files" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/sensors" --include_path="C:/Users/katrin/workspace_ba/bicycle_computer/interfaces" -g --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="interfaces/board-spi.pp" --obj_directory="interfaces" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


