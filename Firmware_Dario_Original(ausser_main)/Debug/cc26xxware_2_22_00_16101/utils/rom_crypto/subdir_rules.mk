################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
cc26xxware_2_22_00_16101/utils/rom_crypto/standalone_rom_crypto.obj: ../cc26xxware_2_22_00_16101/utils/rom_crypto/standalone_rom_crypto.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.6/include" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/interfaces" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/sensors" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/radio_files" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/radio_files/overrides" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/radio_files/pa_table" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/radio_files/patches" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/radio_files/rfc_api" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/driverlib" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/inc" --include_path="D:/CCS Workspace/Contiki Workspace/simplebroadcast_improved_recharge/cc26xxware_2_22_00_16101/linker_files" -g --define=DEBUG --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="cc26xxware_2_22_00_16101/utils/rom_crypto/standalone_rom_crypto.pp" --obj_directory="cc26xxware_2_22_00_16101/utils/rom_crypto" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


