################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
core/dev/leds.obj: ../core/dev/leds.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -Ooff --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/about" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/cfs" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/http-socket" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/dev" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx/sensortag" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx/sensortag/cc2650" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/rf-core" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ip" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ip64" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ipv4" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ipv6" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/llsec" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/mac" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/rime" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/rpl" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/ctk" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/dev" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/lib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/loader" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/sys" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/antelope" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/calc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/cmdd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/codeprop" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/collect-view" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/deluge" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/dhcp" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/directory" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/email" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/er-coap" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/ftp" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/http-post-auth" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/httpd-ws" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/irc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/json" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/mqtt" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/netconf" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/ping6" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/powertrace" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/process-list" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/program-handler" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/rest-engine" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/serial-shell" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/servreg-hack" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/shell" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/slip-cmd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/telnet" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/telnetd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/unit-test" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webbrowser" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webserver" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="core/dev/leds.pp" --obj_directory="core/dev" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/dev/nullradio.obj: ../core/dev/nullradio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -Ooff --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/about" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/cfs" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/http-socket" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/dev" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx/sensortag" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx/sensortag/cc2650" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/rf-core" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ip" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ip64" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ipv4" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ipv6" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/llsec" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/mac" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/rime" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/rpl" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/ctk" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/dev" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/lib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/loader" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/sys" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/antelope" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/calc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/cmdd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/codeprop" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/collect-view" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/deluge" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/dhcp" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/directory" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/email" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/er-coap" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/ftp" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/http-post-auth" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/httpd-ws" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/irc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/json" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/mqtt" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/netconf" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/ping6" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/powertrace" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/process-list" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/program-handler" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/rest-engine" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/serial-shell" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/servreg-hack" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/shell" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/slip-cmd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/telnet" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/telnetd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/unit-test" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webbrowser" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webserver" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="core/dev/nullradio.pp" --obj_directory="core/dev" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/dev/serial-line.obj: ../core/dev/serial-line.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -Ooff --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/about" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/cfs" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/http-socket" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/dev" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx/sensortag" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx/sensortag/cc2650" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/rf-core" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ip" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ip64" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ipv4" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ipv6" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/llsec" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/mac" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/rime" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/rpl" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/ctk" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/dev" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/lib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/loader" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/sys" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/antelope" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/calc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/cmdd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/codeprop" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/collect-view" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/deluge" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/dhcp" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/directory" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/email" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/er-coap" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/ftp" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/http-post-auth" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/httpd-ws" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/irc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/json" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/mqtt" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/netconf" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/ping6" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/powertrace" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/process-list" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/program-handler" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/rest-engine" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/serial-shell" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/servreg-hack" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/shell" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/slip-cmd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/telnet" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/telnetd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/unit-test" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webbrowser" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webserver" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="core/dev/serial-line.pp" --obj_directory="core/dev" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/dev/slip.obj: ../core/dev/slip.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" -mv7M3 --code_state=16 --abi=eabi -me -Ooff --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/driverlib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/inc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib/cc26xxware/startup_files" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/arm/common/dbg-io" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/lib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/about" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/cfs" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/http-socket" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/dev" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx/sensortag" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/platform/srf06-cc26xx/sensortag/cc2650" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/cpu/cc26xx-cc13xx/rf-core" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ip" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ip64" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ipv4" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/ipv6" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/llsec" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/mac" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/rime" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net/rpl" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/ctk" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/dev" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/lib" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/loader" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/net" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/core/sys" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/antelope" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/calc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/cmdd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/codeprop" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/collect-view" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/deluge" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/dhcp" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/directory" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/email" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/er-coap" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/ftp" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/http-post-auth" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/httpd-ws" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/irc" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/json" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/mqtt" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/netconf" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/ping6" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/powertrace" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/process-list" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/program-handler" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/rest-engine" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/serial-shell" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/servreg-hack" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/shell" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/slip-cmd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/telnet" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/telnetd" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/unit-test" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webbrowser" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webserver" --include_path="C:/Users/Daniel/Dropbox/_ZHAW/Projektarbeit/Firmware Raw/Contiki/apps/webserver-nano" -g --define=AUTOSTART_ENABLE --define=REST=coap_rest_implementation --define=BOARD_SENSORTAG --define=NETSTACK_CONF_WITH_IPV6 --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="core/dev/slip.pp" --obj_directory="core/dev" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


