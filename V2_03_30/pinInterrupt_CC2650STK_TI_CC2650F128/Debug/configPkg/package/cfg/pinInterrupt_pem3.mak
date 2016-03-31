#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M3{1,0,5.2,7
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/pinInterrupt_pem3.oem3.dep
package/cfg/pinInterrupt_pem3.oem3.dep: ;
endif

package/cfg/pinInterrupt_pem3.oem3: | .interfaces
package/cfg/pinInterrupt_pem3.oem3: package/cfg/pinInterrupt_pem3.c package/cfg/pinInterrupt_pem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c  -mv7M3 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/Users/katrin/0330/pinInterrupt_CC2650STK_TI_CC2650F128" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/cc26xxware_2_23_01_16780" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" -g --define=ccs --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --gen_func_subsections=on   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/pinInterrupt_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_7 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include/rts -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem3 $< -C   -mv7M3 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/Users/katrin/0330/pinInterrupt_CC2650STK_TI_CC2650F128" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/cc26xxware_2_23_01_16780" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" -g --define=ccs --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --gen_func_subsections=on   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/pinInterrupt_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_7 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include/rts -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/pinInterrupt_pem3.oem3: export C_DIR=
package/cfg/pinInterrupt_pem3.oem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)
package/cfg/pinInterrupt_pem3.oem3: Path:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)

package/cfg/pinInterrupt_pem3.sem3: | .interfaces
package/cfg/pinInterrupt_pem3.sem3: package/cfg/pinInterrupt_pem3.c package/cfg/pinInterrupt_pem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 -n $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c -n -s --symdebug:none -mv7M3 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/Users/katrin/0330/pinInterrupt_CC2650STK_TI_CC2650F128" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/cc26xxware_2_23_01_16780" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" -g --define=ccs --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --gen_func_subsections=on   -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/pinInterrupt_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_7 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include/rts -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem3 $< -C  -n -s --symdebug:none -mv7M3 --code_state=16 --float_support=vfplib --abi=eabi -me --include_path="C:/Users/katrin/0330/pinInterrupt_CC2650STK_TI_CC2650F128" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_16_00_08/products/cc26xxware_2_23_01_16780" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" -g --define=ccs --display_error_number --diag_warning=225 --diag_warning=255 --diag_wrap=off --gen_func_subsections=on   -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/pinInterrupt_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_7 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include/rts -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/pinInterrupt_pem3.sem3: export C_DIR=
package/cfg/pinInterrupt_pem3.sem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)
package/cfg/pinInterrupt_pem3.sem3: Path:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)

clean,em3 ::
	-$(RM) package/cfg/pinInterrupt_pem3.oem3
	-$(RM) package/cfg/pinInterrupt_pem3.sem3

pinInterrupt.pem3: package/cfg/pinInterrupt_pem3.oem3 package/cfg/pinInterrupt_pem3.mak

clean::
	-$(RM) package/cfg/pinInterrupt_pem3.mak
