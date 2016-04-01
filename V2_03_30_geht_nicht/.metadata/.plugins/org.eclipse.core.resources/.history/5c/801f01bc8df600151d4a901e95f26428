################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
CC2650STK.obj: ../CC2650STK.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/Users/katrin/0330/pinInterrupt_CC2650STK_TI_CC2650F128" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/cc26xxware_2_23_01_16780" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" -g --define=ccs --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="CC2650STK.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ccfg.obj: ../ccfg.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/Users/katrin/0330/pinInterrupt_CC2650STK_TI_CC2650F128" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/cc26xxware_2_23_01_16780" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" -g --define=ccs --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="ccfg.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pinInterrupt.obj: ../pinInterrupt.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M3 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/Users/katrin/0330/pinInterrupt_CC2650STK_TI_CC2650F128" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/cc26xxware_2_23_01_16780" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" -g --define=ccs --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --gen_func_subsections=on --preproc_with_compile --preproc_dependency="pinInterrupt.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: ../pinInterrupt.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_31_01_33_core/xs" --xdcpath="C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/packages;C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/tidrivers_cc13xx_cc26xx_2_16_00_08/packages;C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/bios_6_45_01_29/packages;C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/uia_2_00_05_50/packages;C:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M3 -p ti.platforms.simplelink:CC2650F128 -r release -c "C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7" --compileOptions "-mv7M3 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path=\"C:/Users/katrin/0330/pinInterrupt_CC2650STK_TI_CC2650F128\" --include_path=\"C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/cc26xxware_2_23_01_16780\" --include_path=\"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include\" -g --define=ccs --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --gen_func_subsections=on  " "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/compiler.opt: | configPkg/linker.cmd
configPkg/: | configPkg/linker.cmd


