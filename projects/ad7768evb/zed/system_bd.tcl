
source $ad_hdl_dir/projects/common/zed/zed_system_bd.tcl

#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9

sysid_gen_sys_init_file

set num_of_channels 8

source ../common/ad7768evb_bd.tcl

ad_ip_instance ila ila_adc
ad_ip_parameter ila_adc CONFIG.C_MONITOR_TYPE Native
ad_ip_parameter ila_adc CONFIG.C_TRIGIN_EN false
ad_ip_parameter ila_adc CONFIG.C_EN_STRG_QUAL 1
ad_ip_parameter ila_adc CONFIG.C_NUM_OF_PROBES 10
ad_ip_parameter ila_adc CONFIG.C_DATA_DEPTH 16384
ad_ip_parameter ila_adc CONFIG.C_PROBE0_WIDTH 1
ad_ip_parameter ila_adc CONFIG.C_PROBE1_WIDTH 32
ad_ip_parameter ila_adc CONFIG.C_PROBE2_WIDTH 32
ad_ip_parameter ila_adc CONFIG.C_PROBE3_WIDTH 32
ad_ip_parameter ila_adc CONFIG.C_PROBE4_WIDTH 32
ad_ip_parameter ila_adc CONFIG.C_PROBE5_WIDTH 32
ad_ip_parameter ila_adc CONFIG.C_PROBE6_WIDTH 32
ad_ip_parameter ila_adc CONFIG.C_PROBE7_WIDTH 32
ad_ip_parameter ila_adc CONFIG.C_PROBE8_WIDTH 32
ad_ip_parameter ila_adc CONFIG.C_PROBE9_WIDTH 32

ad_connect  adc_clk ila_adc/clk
ad_connect  adc_valid ila_adc/probe0
ad_connect  adc_data ila_adc/probe1
ad_connect  adc_data_0 ila_adc/probe2
ad_connect  adc_data_1 ila_adc/probe3
ad_connect  adc_data_2 ila_adc/probe4
ad_connect  adc_data_3 ila_adc/probe5
ad_connect  adc_data_4 ila_adc/probe6
ad_connect  adc_data_5 ila_adc/probe7
ad_connect  adc_data_6 ila_adc/probe8
ad_connect  adc_data_7 ila_adc/probe9

