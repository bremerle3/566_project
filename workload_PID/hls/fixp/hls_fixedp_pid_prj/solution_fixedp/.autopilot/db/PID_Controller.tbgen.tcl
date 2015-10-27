set moduleName PID_Controller
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName PID_Controller
set C_modelType { void 0 }
set C_modelArgList { 
	{ InitN uint 1 regular  }
	{ coeff_0_V int 25 regular {pointer 0}  }
	{ coeff_1_V int 25 regular {pointer 0}  }
	{ coeff_2_V int 25 regular {pointer 0}  }
	{ coeff_3_V int 25 regular {pointer 0}  }
	{ coeff_4_V int 25 regular {pointer 0}  }
	{ coeff_5_V int 25 regular {pointer 0}  }
	{ din_0_V int 25 regular {pointer 0}  }
	{ din_1_V int 25 regular {pointer 0}  }
	{ dout_0_V int 25 regular {pointer 1}  }
	{ dout_1_V int 25 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "InitN", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "InitN","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "coeff_0_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "coeff.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "coeff_1_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "coeff.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "coeff_2_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "coeff.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "coeff_3_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "coeff.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "coeff_4_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "coeff.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "coeff_5_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "coeff.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "din_0_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "din.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "din_1_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "din.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "dout_0_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "dout.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "dout_1_V", "interface" : "wire", "bitwidth" : 25,"bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "dout.V","cData": "int25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ InitN sc_in sc_logic 1 signal 0 } 
	{ coeff_0_V sc_in sc_lv 25 signal 1 } 
	{ coeff_1_V sc_in sc_lv 25 signal 2 } 
	{ coeff_2_V sc_in sc_lv 25 signal 3 } 
	{ coeff_3_V sc_in sc_lv 25 signal 4 } 
	{ coeff_4_V sc_in sc_lv 25 signal 5 } 
	{ coeff_5_V sc_in sc_lv 25 signal 6 } 
	{ din_0_V sc_in sc_lv 25 signal 7 } 
	{ din_1_V sc_in sc_lv 25 signal 8 } 
	{ dout_0_V sc_out sc_lv 25 signal 9 } 
	{ dout_1_V sc_out sc_lv 25 signal 10 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "InitN", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "InitN", "role": "default" }} , 
 	{ "name": "coeff_0_V", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "coeff_0_V", "role": "default" }} , 
 	{ "name": "coeff_1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "coeff_1_V", "role": "default" }} , 
 	{ "name": "coeff_2_V", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "coeff_2_V", "role": "default" }} , 
 	{ "name": "coeff_3_V", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "coeff_3_V", "role": "default" }} , 
 	{ "name": "coeff_4_V", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "coeff_4_V", "role": "default" }} , 
 	{ "name": "coeff_5_V", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "coeff_5_V", "role": "default" }} , 
 	{ "name": "din_0_V", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "din_0_V", "role": "default" }} , 
 	{ "name": "din_1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "din_1_V", "role": "default" }} , 
 	{ "name": "dout_0_V", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "dout_0_V", "role": "default" }} , 
 	{ "name": "dout_1_V", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "dout_1_V", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}
set Spec2ImplPortList { 
	InitN { ap_none {  { InitN in_data 0 1 } } }
	coeff_0_V { ap_none {  { coeff_0_V in_data 0 25 } } }
	coeff_1_V { ap_none {  { coeff_1_V in_data 0 25 } } }
	coeff_2_V { ap_none {  { coeff_2_V in_data 0 25 } } }
	coeff_3_V { ap_none {  { coeff_3_V in_data 0 25 } } }
	coeff_4_V { ap_none {  { coeff_4_V in_data 0 25 } } }
	coeff_5_V { ap_none {  { coeff_5_V in_data 0 25 } } }
	din_0_V { ap_none {  { din_0_V in_data 0 25 } } }
	din_1_V { ap_none {  { din_1_V in_data 0 25 } } }
	dout_0_V { ap_none {  { dout_0_V out_data 1 25 } } }
	dout_1_V { ap_none {  { dout_1_V out_data 1 25 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
