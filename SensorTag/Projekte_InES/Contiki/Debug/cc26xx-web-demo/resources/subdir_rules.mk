################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
cc26xx-web-demo/resources/res-ble-advd.obj: ../cc26xx-web-demo/resources/res-ble-advd.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -O2 --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo/resources" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/about" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/cfs" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/http-socket" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag/cc2650" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/rf-core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip64" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv4" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/llsec" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/mac" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rime" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rpl" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/ctk" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/loader" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/sys" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/antelope" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/calc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/cmdd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/codeprop" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/collect-view" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/deluge" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/dhcp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/directory" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/email" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/er-coap" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ftp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/http-post-auth" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/httpd-ws" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/irc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/json" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/mqtt" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/netconf" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ping6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/powertrace" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/process-list" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/program-handler" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/rest-engine" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/serial-shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/servreg-hack" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/slip-cmd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnet" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnetd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/unit-test" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webbrowser" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cc26xx-web-demo/resources/res-ble-advd.pp" --obj_directory="cc26xx-web-demo/resources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cc26xx-web-demo/resources/res-device.obj: ../cc26xx-web-demo/resources/res-device.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -O2 --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo/resources" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/about" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/cfs" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/http-socket" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag/cc2650" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/rf-core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip64" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv4" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/llsec" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/mac" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rime" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rpl" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/ctk" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/loader" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/sys" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/antelope" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/calc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/cmdd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/codeprop" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/collect-view" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/deluge" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/dhcp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/directory" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/email" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/er-coap" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ftp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/http-post-auth" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/httpd-ws" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/irc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/json" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/mqtt" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/netconf" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ping6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/powertrace" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/process-list" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/program-handler" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/rest-engine" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/serial-shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/servreg-hack" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/slip-cmd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnet" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnetd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/unit-test" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webbrowser" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cc26xx-web-demo/resources/res-device.pp" --obj_directory="cc26xx-web-demo/resources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cc26xx-web-demo/resources/res-leds.obj: ../cc26xx-web-demo/resources/res-leds.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -O2 --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo/resources" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/about" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/cfs" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/http-socket" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag/cc2650" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/rf-core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip64" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv4" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/llsec" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/mac" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rime" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rpl" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/ctk" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/loader" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/sys" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/antelope" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/calc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/cmdd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/codeprop" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/collect-view" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/deluge" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/dhcp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/directory" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/email" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/er-coap" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ftp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/http-post-auth" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/httpd-ws" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/irc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/json" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/mqtt" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/netconf" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ping6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/powertrace" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/process-list" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/program-handler" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/rest-engine" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/serial-shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/servreg-hack" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/slip-cmd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnet" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnetd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/unit-test" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webbrowser" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cc26xx-web-demo/resources/res-leds.pp" --obj_directory="cc26xx-web-demo/resources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cc26xx-web-demo/resources/res-net.obj: ../cc26xx-web-demo/resources/res-net.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -O2 --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo/resources" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/about" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/cfs" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/http-socket" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag/cc2650" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/rf-core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip64" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv4" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/llsec" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/mac" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rime" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rpl" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/ctk" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/loader" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/sys" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/antelope" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/calc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/cmdd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/codeprop" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/collect-view" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/deluge" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/dhcp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/directory" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/email" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/er-coap" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ftp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/http-post-auth" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/httpd-ws" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/irc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/json" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/mqtt" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/netconf" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ping6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/powertrace" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/process-list" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/program-handler" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/rest-engine" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/serial-shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/servreg-hack" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/slip-cmd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnet" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnetd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/unit-test" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webbrowser" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cc26xx-web-demo/resources/res-net.pp" --obj_directory="cc26xx-web-demo/resources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cc26xx-web-demo/resources/res-sensors.obj: ../cc26xx-web-demo/resources/res-sensors.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -O2 --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo/resources" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/about" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/cfs" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/http-socket" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag/cc2650" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/rf-core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip64" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv4" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/llsec" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/mac" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rime" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rpl" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/ctk" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/loader" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/sys" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/antelope" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/calc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/cmdd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/codeprop" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/collect-view" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/deluge" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/dhcp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/directory" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/email" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/er-coap" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ftp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/http-post-auth" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/httpd-ws" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/irc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/json" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/mqtt" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/netconf" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ping6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/powertrace" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/process-list" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/program-handler" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/rest-engine" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/serial-shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/servreg-hack" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/slip-cmd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnet" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnetd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/unit-test" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webbrowser" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cc26xx-web-demo/resources/res-sensors.pp" --obj_directory="cc26xx-web-demo/resources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cc26xx-web-demo/resources/res-toggle-leds.obj: ../cc26xx-web-demo/resources/res-toggle-leds.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -O2 --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cc26xx-web-demo/resources" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/about" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/cfs" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/http-socket" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/platform/srf06-cc26xx/sensortag/cc2650" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/cpu/cc26xx-cc13xx/rf-core" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ip64" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv4" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/ipv6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/llsec" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/mac" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rime" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net/rpl" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/ctk" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/dev" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/lib" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/loader" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/net" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/core/sys" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/antelope" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/calc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/cmdd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/codeprop" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/collect-view" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/deluge" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/dhcp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/directory" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/email" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/er-coap" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ftp" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/http-post-auth" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/httpd-ws" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/irc" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/json" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/mqtt" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/netconf" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/ping6" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/powertrace" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/process-list" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/program-handler" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/rest-engine" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/serial-shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/servreg-hack" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/shell" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/slip-cmd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnet" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/telnetd" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/unit-test" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webbrowser" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver" --include_path="D:/CCS Workspace/Contiki Workspace/Contiki_Final/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="cc26xx-web-demo/resources/res-toggle-leds.pp" --obj_directory="cc26xx-web-demo/resources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


