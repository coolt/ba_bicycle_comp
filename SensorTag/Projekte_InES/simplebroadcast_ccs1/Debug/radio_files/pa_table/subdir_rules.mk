################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
radio_files/pa_table/pa_table_cc26xx.obj: ../radio_files/pa_table/pa_table_cc26xx.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/radio_files" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/radio_files/overrides" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/radio_files/pa_table" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/radio_files/patches" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/radio_files/rfc_api" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/cc26xxware_2_21_03_15980" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/cc26xxware_2_21_03_15980/driverlib" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/cc26xxware_2_21_03_15980/inc" --include_path="D:/projekte/workspaces/CodeComposerStudio/workspace_v6_1/BLE_adv_Iar/cc26xxware_2_21_03_15980/linker_files" -g --define=DEBUG --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="radio_files/pa_table/pa_table_cc26xx.pp" --obj_directory="radio_files/pa_table" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


