################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
ccfg.obj: ../ccfg.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/interfaces" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/sensors" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/patches" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="ccfg.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/interfaces" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/sensors" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/patches" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

radio.obj: ../radio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/interfaces" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/sensors" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/patches" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="radio.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

rtc.obj: ../rtc.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/interfaces" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/sensors" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/patches" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="rtc.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

system.obj: ../system.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/interfaces" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/sensors" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/patches" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="C:/Users/katrin/workspace_v6_1/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --diag_wrap=off --display_error_number --diag_warning=225 --preproc_with_compile --preproc_dependency="system.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


