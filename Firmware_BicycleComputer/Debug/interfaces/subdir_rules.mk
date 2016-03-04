################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
interfaces/board-i2c.obj: ../interfaces/board-i2c.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/interfaces" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/sensors" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/patches" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="interfaces/board-i2c.pp" --obj_directory="interfaces" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

interfaces/board-spi.obj: ../interfaces/board-spi.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/interfaces" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/sensors" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/patches" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="interfaces/board-spi.pp" --obj_directory="interfaces" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


