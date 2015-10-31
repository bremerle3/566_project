#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("InitN", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("coeff_0_V", 25, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("coeff_1_V", 25, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("coeff_2_V", 25, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("coeff_3_V", 25, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("coeff_4_V", 25, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("coeff_5_V", 25, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("din_0_V", 25, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("din_1_V", 25, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("dout_0_V", 25, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("dout_1_V", 25, hls_out, 10, "ap_none", "out_data", 1),
	Port_Property("ap_ce", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "PID_Controller";
