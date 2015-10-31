// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
// Date        : Sat Oct 31 15:35:48 2015
// Host        : linuxlab006.seas.wustl.edu running 64-bit CentOS Linux release 7.1.1503 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/warehouse/l.kirchner/566_project/vivado_src/vivado_src.srcs/sources_1/ip/axi_intc_0/axi_intc_0_funcsim.v
// Design      : axi_intc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_intc,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "axi_intc_0,axi_intc,{}" *) 
(* core_generation_info = "axi_intc_0,axi_intc,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_intc,x_ipVersion=4.1,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=kintex7,C_INSTANCE=axi_intc_inst,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_NUM_INTR_INPUTS=8,C_NUM_SW_INTR=0,C_KIND_OF_INTR=0xffffffff,C_KIND_OF_EDGE=0xffffffff,C_KIND_OF_LVL=0xffffffff,C_ASYNC_INTR=0xFFFFFFFF,C_NUM_SYNC_FF=2,C_IVAR_RESET_VALUE=0x00000010,C_ENABLE_ASYNC=0,C_HAS_IPR=1,C_HAS_SIE=1,C_HAS_CIE=1,C_HAS_IVR=1,C_HAS_ILR=0,C_IRQ_IS_LEVEL=1,C_IRQ_ACTIVE=0x1,C_DISABLE_SYNCHRONIZERS=1,C_MB_CLK_NOT_CONNECTED=1,C_HAS_FAST=0,C_EN_CASCADE_MODE=0,C_CASCADE_MASTER=0}" *) 
(* NotValidForBitStream *)
module axi_intc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    irq);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_resetn RST" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  input [7:0]intr;
  (* x_interface_info = "xilinx.com:interface:mbinterrupt:1.0 interrupt INTERRUPT" *) output irq;

  wire [7:0]intr;
  wire irq;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]NLW_U0_interrupt_address_UNCONNECTED;
  wire [1:0]NLW_U0_processor_ack_out_UNCONNECTED;

(* C_ASYNC_INTR = "-1" *) 
   (* C_CASCADE_MASTER = "0" *) 
   (* C_DISABLE_SYNCHRONIZERS = "1" *) 
   (* C_ENABLE_ASYNC = "0" *) 
   (* C_EN_CASCADE_MODE = "0" *) 
   (* C_FAMILY = "kintex7" *) 
   (* C_HAS_CIE = "1" *) 
   (* C_HAS_FAST = "0" *) 
   (* C_HAS_ILR = "0" *) 
   (* C_HAS_IPR = "1" *) 
   (* C_HAS_IVR = "1" *) 
   (* C_HAS_SIE = "1" *) 
   (* C_INSTANCE = "axi_intc_inst" *) 
   (* C_IRQ_ACTIVE = "1'b1" *) 
   (* C_IRQ_IS_LEVEL = "1" *) 
   (* C_IVAR_RESET_VALUE = "16" *) 
   (* C_KIND_OF_EDGE = "-1" *) 
   (* C_KIND_OF_INTR = "-1" *) 
   (* C_KIND_OF_LVL = "-1" *) 
   (* C_MB_CLK_NOT_CONNECTED = "1" *) 
   (* C_NUM_INTR_INPUTS = "8" *) 
   (* C_NUM_SW_INTR = "0" *) 
   (* C_NUM_SYNC_FF = "2" *) 
   (* C_S_AXI_ADDR_WIDTH = "9" *) 
   (* C_S_AXI_DATA_WIDTH = "32" *) 
   (* hdl = "VHDL" *) 
   (* imp_netlist = "true" *) 
   (* ip_group = "LOGICORE" *) 
   (* iptype = "PERIPHERAL" *) 
   (* run_ngcbuild = "true" *) 
   (* style = "HDL" *) 
   axi_intc_0_axi_intc__parameterized0 U0
       (.interrupt_address(NLW_U0_interrupt_address_UNCONNECTED[31:0]),
        .interrupt_address_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .intr(intr),
        .irq(irq),
        .processor_ack({1'b0,1'b0}),
        .processor_ack_out(NLW_U0_processor_ack_out_UNCONNECTED[1:0]),
        .processor_clk(1'b0),
        .processor_rst(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module axi_intc_0_address_decoder
   (O1,
    O2,
    ip2bus_wrack_prev2,
    D,
    p_14_in,
    ip2bus_rdack_prev2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    p_0_in2_out,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    p_0_in20_out,
    start2,
    s_axi_aclk,
    ip2bus_wrack_int_d1,
    s_axi_aresetn,
    ip2bus_wrack,
    Q,
    ip2bus_rdack,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    I23,
    I24,
    I25,
    I26,
    I27,
    I28,
    I29,
    I30,
    I31,
    I32,
    I33,
    I34,
    I35,
    I36,
    I37,
    I38,
    I39,
    I40,
    I41,
    I42,
    I43,
    I44,
    I45,
    I46,
    I47,
    I48,
    I49,
    ip2bus_rdack_int_d1,
    s_axi_wdata,
    p_0_in,
    I50,
    p_0_in114_in,
    p_0_in104_in,
    p_0_in94_in,
    p_0_in84_in,
    p_0_in74_in,
    p_0_in64_in,
    p_0_in54_in,
    I51,
    p_0_in77_in,
    p_0_in75_in,
    p_0_in73_in,
    p_0_in71_in,
    p_0_in69_in,
    p_0_in67_in,
    p_0_in65_in,
    mer,
    p_0_in49_in,
    p_0_in51_in,
    p_0_in53_in,
    p_0_in55_in,
    p_0_in57_in,
    p_0_in59_in,
    p_0_in61_in,
    I52,
    I53,
    I54,
    I55,
    I56,
    I57,
    I58,
    I59,
    I60,
    I61,
    I62,
    I63,
    data3,
    I64,
    I65,
    I66,
    I67,
    I68,
    I69);
  output O1;
  output O2;
  output ip2bus_wrack_prev2;
  output [31:0]D;
  output p_14_in;
  output ip2bus_rdack_prev2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output p_0_in2_out;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output p_0_in20_out;
  input start2;
  input s_axi_aclk;
  input ip2bus_wrack_int_d1;
  input s_axi_aresetn;
  input ip2bus_wrack;
  input [0:0]Q;
  input ip2bus_rdack;
  input I1;
  input I2;
  input [6:0]I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input I19;
  input I20;
  input I21;
  input I22;
  input I23;
  input I24;
  input I25;
  input I26;
  input I27;
  input I28;
  input I29;
  input I30;
  input I31;
  input I32;
  input I33;
  input I34;
  input I35;
  input I36;
  input I37;
  input I38;
  input I39;
  input I40;
  input I41;
  input I42;
  input I43;
  input I44;
  input I45;
  input I46;
  input I47;
  input I48;
  input I49;
  input ip2bus_rdack_int_d1;
  input [7:0]s_axi_wdata;
  input p_0_in;
  input I50;
  input p_0_in114_in;
  input p_0_in104_in;
  input p_0_in94_in;
  input p_0_in84_in;
  input p_0_in74_in;
  input p_0_in64_in;
  input p_0_in54_in;
  input I51;
  input p_0_in77_in;
  input p_0_in75_in;
  input p_0_in73_in;
  input p_0_in71_in;
  input p_0_in69_in;
  input p_0_in67_in;
  input p_0_in65_in;
  input mer;
  input p_0_in49_in;
  input p_0_in51_in;
  input p_0_in53_in;
  input p_0_in55_in;
  input p_0_in57_in;
  input p_0_in59_in;
  input p_0_in61_in;
  input I52;
  input I53;
  input I54;
  input I55;
  input I56;
  input I57;
  input I58;
  input I59;
  input I60;
  input I61;
  input I62;
  input I63;
  input [0:0]data3;
  input I64;
  input I65;
  input I66;
  input I67;
  input I68;
  input I69;

  wire [31:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire [6:0]I3;
  wire I30;
  wire I31;
  wire I32;
  wire I33;
  wire I34;
  wire I35;
  wire I36;
  wire I37;
  wire I38;
  wire I39;
  wire I4;
  wire I40;
  wire I41;
  wire I42;
  wire I43;
  wire I44;
  wire I45;
  wire I46;
  wire I47;
  wire I48;
  wire I49;
  wire I5;
  wire I50;
  wire I51;
  wire I52;
  wire I53;
  wire I54;
  wire I55;
  wire I56;
  wire I57;
  wire I58;
  wire I59;
  wire I6;
  wire I60;
  wire I61;
  wire I62;
  wire I63;
  wire I64;
  wire I65;
  wire I66;
  wire I67;
  wire I68;
  wire I69;
  wire I7;
  wire I8;
  wire I9;
  wire \INTC_CORE_I/read ;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire cs_ce_clr;
  wire [0:0]data3;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire mer;
  wire n_0_Bus_RNW_reg_i_1;
  wire \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 ;
  wire n_0_ip2bus_wrack_i_2;
  wire n_0_ip2bus_wrack_int_d1_i_2;
  wire n_0_ip2bus_wrack_int_d1_i_3;
  wire n_0_ip2bus_wrack_int_d1_i_4;
  wire \n_0_s_axi_rdata_i[1]_i_3 ;
  wire \n_0_s_axi_rdata_i[1]_i_6 ;
  wire \n_0_s_axi_rdata_i[31]_i_6 ;
  wire p_0_in;
  wire p_0_in104_in;
  wire p_0_in114_in;
  wire p_0_in20_out;
  wire p_0_in2_out;
  wire p_0_in49_in;
  wire p_0_in51_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in57_in;
  wire p_0_in59_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in67_in;
  wire p_0_in69_in;
  wire p_0_in71_in;
  wire p_0_in73_in;
  wire p_0_in74_in;
  wire p_0_in75_in;
  wire p_0_in77_in;
  wire p_0_in84_in;
  wire p_0_in94_in;
  wire p_0_out;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_14_in_0;
  wire p_15_in;
  wire p_16_in;
  wire p_1_out;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire start2;

LUT3 #(
    .INIT(8'hB8)) 
     Bus_RNW_reg_i_1
       (.I0(I69),
        .I1(start2),
        .I2(O2),
        .O(n_0_Bus_RNW_reg_i_1));
FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Bus_RNW_reg_i_1),
        .Q(O2),
        .R(1'b0));
LUT5 #(
    .INIT(32'h00004000)) 
     \CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1 
       (.I0(O2),
        .I1(p_12_in),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_aresetn),
        .I4(I51),
        .O(O12));
LUT5 #(
    .INIT(32'h00004000)) 
     \CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1 
       (.I0(O2),
        .I1(p_12_in),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_aresetn),
        .I4(p_0_in77_in),
        .O(O13));
LUT5 #(
    .INIT(32'h00004000)) 
     \CIE_GEN.CIE_BIT_GEN[2].cie[2]_i_1 
       (.I0(O2),
        .I1(p_12_in),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_aresetn),
        .I4(p_0_in75_in),
        .O(O14));
LUT5 #(
    .INIT(32'h00004000)) 
     \CIE_GEN.CIE_BIT_GEN[3].cie[3]_i_1 
       (.I0(O2),
        .I1(p_12_in),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_aresetn),
        .I4(p_0_in73_in),
        .O(O15));
LUT5 #(
    .INIT(32'h00004000)) 
     \CIE_GEN.CIE_BIT_GEN[4].cie[4]_i_1 
       (.I0(O2),
        .I1(p_12_in),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_aresetn),
        .I4(p_0_in71_in),
        .O(O16));
LUT5 #(
    .INIT(32'h00004000)) 
     \CIE_GEN.CIE_BIT_GEN[5].cie[5]_i_1 
       (.I0(O2),
        .I1(p_12_in),
        .I2(s_axi_wdata[5]),
        .I3(s_axi_aresetn),
        .I4(p_0_in69_in),
        .O(O17));
LUT5 #(
    .INIT(32'h00004000)) 
     \CIE_GEN.CIE_BIT_GEN[6].cie[6]_i_1 
       (.I0(O2),
        .I1(p_12_in),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_aresetn),
        .I4(p_0_in67_in),
        .O(O18));
LUT5 #(
    .INIT(32'h00004000)) 
     \CIE_GEN.CIE_BIT_GEN[7].cie[7]_i_1 
       (.I0(O2),
        .I1(p_12_in),
        .I2(s_axi_wdata[7]),
        .I3(s_axi_aresetn),
        .I4(p_0_in65_in),
        .O(O19));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(I3[0]),
        .I1(I3[2]),
        .I2(I3[1]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ),
        .O(p_1_out));
FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_1_out),
        .Q(O1),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(I3[0]),
        .I1(I3[1]),
        .I2(I3[2]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ),
        .Q(p_7_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h0800)) 
     \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(I3[0]),
        .I1(I3[1]),
        .I2(I3[2]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 ),
        .Q(p_6_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0200)) 
     \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(I3[2]),
        .I1(I3[0]),
        .I2(I3[1]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 ),
        .Q(p_5_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h0800)) 
     \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(I3[2]),
        .I1(I3[0]),
        .I2(I3[1]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 ),
        .Q(p_4_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(I3[0]),
        .I1(I3[2]),
        .I2(I3[1]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(I3[2]),
        .I1(I3[1]),
        .I2(I3[0]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00100000)) 
     \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 
       (.I0(I3[5]),
        .I1(I3[6]),
        .I2(start2),
        .I3(I3[4]),
        .I4(I3[3]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ));
FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 ),
        .Q(p_2_in),
        .R(cs_ce_clr));
LUT4 #(
    .INIT(16'hFFFD)) 
     \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(s_axi_aresetn),
        .I1(ip2bus_wrack),
        .I2(Q),
        .I3(ip2bus_rdack),
        .O(cs_ce_clr));
LUT3 #(
    .INIT(8'h40)) 
     \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2 
       (.I0(I3[5]),
        .I1(I3[6]),
        .I2(start2),
        .O(p_0_out));
FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(p_0_out),
        .Q(\n_0_GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(I3[2]),
        .I1(I3[1]),
        .I2(I3[0]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(I3[0]),
        .I1(I3[1]),
        .I2(I3[2]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 ),
        .Q(p_15_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h0800)) 
     \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(I3[0]),
        .I1(I3[1]),
        .I2(I3[2]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 ),
        .Q(p_14_in_0),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h0200)) 
     \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(I3[2]),
        .I1(I3[0]),
        .I2(I3[1]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 ),
        .Q(p_13_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h0800)) 
     \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(I3[2]),
        .I1(I3[0]),
        .I2(I3[1]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 ),
        .Q(p_12_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(I3[0]),
        .I1(I3[2]),
        .I2(I3[1]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 ),
        .Q(p_11_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(I3[2]),
        .I1(I3[1]),
        .I2(I3[0]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00000010)) 
     \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 
       (.I0(I3[5]),
        .I1(I3[6]),
        .I2(start2),
        .I3(I3[4]),
        .I4(I3[3]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 ));
FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ),
        .Q(p_10_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(I3[0]),
        .I1(I3[2]),
        .I2(I3[1]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ),
        .Q(p_9_in),
        .R(cs_ce_clr));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(I3[2]),
        .I1(I3[1]),
        .I2(I3[0]),
        .I3(\n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 ),
        .Q(p_8_in),
        .R(cs_ce_clr));
LUT5 #(
    .INIT(32'h00000800)) 
     \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(s_axi_aresetn),
        .I4(I52),
        .O(O28));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \REG_GEN[0].ier[0]_i_2 
       (.I0(p_15_in),
        .I1(O2),
        .O(p_14_in));
LUT5 #(
    .INIT(32'h00000800)) 
     \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(s_axi_aresetn),
        .I4(p_0_in61_in),
        .O(O27));
LUT5 #(
    .INIT(32'h00000800)) 
     \REG_GEN[2].IAR_NORMAL_MODE_GEN.iar[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(s_axi_aresetn),
        .I4(p_0_in59_in),
        .O(O26));
LUT5 #(
    .INIT(32'h00000800)) 
     \REG_GEN[3].IAR_NORMAL_MODE_GEN.iar[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(s_axi_aresetn),
        .I4(p_0_in57_in),
        .O(O25));
LUT5 #(
    .INIT(32'h00000800)) 
     \REG_GEN[4].IAR_NORMAL_MODE_GEN.iar[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(s_axi_aresetn),
        .I4(p_0_in55_in),
        .O(O24));
LUT5 #(
    .INIT(32'h00000800)) 
     \REG_GEN[5].IAR_NORMAL_MODE_GEN.iar[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(s_axi_aresetn),
        .I4(p_0_in53_in),
        .O(O23));
LUT5 #(
    .INIT(32'h00000800)) 
     \REG_GEN[6].IAR_NORMAL_MODE_GEN.iar[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(s_axi_aresetn),
        .I4(p_0_in51_in),
        .O(O22));
LUT5 #(
    .INIT(32'h00000800)) 
     \REG_GEN[7].IAR_NORMAL_MODE_GEN.iar[7]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(s_axi_aresetn),
        .I4(p_0_in49_in),
        .O(O21));
LUT5 #(
    .INIT(32'h00004000)) 
     \SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1 
       (.I0(O2),
        .I1(p_13_in),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_aresetn),
        .I4(I50),
        .O(O4));
LUT5 #(
    .INIT(32'h00004000)) 
     \SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1 
       (.I0(O2),
        .I1(p_13_in),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_aresetn),
        .I4(p_0_in114_in),
        .O(O5));
LUT5 #(
    .INIT(32'h00004000)) 
     \SIE_GEN.SIE_BIT_GEN[2].sie[2]_i_1 
       (.I0(O2),
        .I1(p_13_in),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_aresetn),
        .I4(p_0_in104_in),
        .O(O6));
LUT5 #(
    .INIT(32'h00004000)) 
     \SIE_GEN.SIE_BIT_GEN[3].sie[3]_i_1 
       (.I0(O2),
        .I1(p_13_in),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_aresetn),
        .I4(p_0_in94_in),
        .O(O7));
LUT5 #(
    .INIT(32'h00004000)) 
     \SIE_GEN.SIE_BIT_GEN[4].sie[4]_i_1 
       (.I0(O2),
        .I1(p_13_in),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_aresetn),
        .I4(p_0_in84_in),
        .O(O8));
LUT5 #(
    .INIT(32'h00004000)) 
     \SIE_GEN.SIE_BIT_GEN[5].sie[5]_i_1 
       (.I0(O2),
        .I1(p_13_in),
        .I2(s_axi_wdata[5]),
        .I3(s_axi_aresetn),
        .I4(p_0_in74_in),
        .O(O9));
LUT5 #(
    .INIT(32'h00004000)) 
     \SIE_GEN.SIE_BIT_GEN[6].sie[6]_i_1 
       (.I0(O2),
        .I1(p_13_in),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_aresetn),
        .I4(p_0_in64_in),
        .O(O10));
LUT5 #(
    .INIT(32'h00004000)) 
     \SIE_GEN.SIE_BIT_GEN[7].sie[7]_i_1 
       (.I0(O2),
        .I1(p_13_in),
        .I2(s_axi_wdata[7]),
        .I3(s_axi_aresetn),
        .I4(p_0_in54_in),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h0000CCC8)) 
     ip2bus_rdack_i_1
       (.I0(\n_0_s_axi_rdata_i[1]_i_3 ),
        .I1(O2),
        .I2(p_14_in_0),
        .I3(n_0_ip2bus_wrack_int_d1_i_2),
        .I4(ip2bus_rdack_int_d1),
        .O(ip2bus_rdack_prev2));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'hF0E0)) 
     ip2bus_rdack_int_d1_i_1
       (.I0(n_0_ip2bus_wrack_int_d1_i_2),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(\n_0_s_axi_rdata_i[1]_i_3 ),
        .O(p_0_in20_out));
LUT4 #(
    .INIT(16'h00AE)) 
     ip2bus_wrack_i_1
       (.I0(n_0_ip2bus_wrack_i_2),
        .I1(n_0_ip2bus_wrack_int_d1_i_2),
        .I2(O2),
        .I3(ip2bus_wrack_int_d1),
        .O(ip2bus_wrack_prev2));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'hAFAFAFAE)) 
     ip2bus_wrack_i_2
       (.I0(n_0_ip2bus_wrack_int_d1_i_3),
        .I1(p_14_in_0),
        .I2(O2),
        .I3(p_15_in),
        .I4(p_10_in),
        .O(n_0_ip2bus_wrack_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFF00FF00FE)) 
     ip2bus_wrack_int_d1_i_1
       (.I0(n_0_ip2bus_wrack_int_d1_i_2),
        .I1(p_10_in),
        .I2(p_15_in),
        .I3(O2),
        .I4(p_14_in_0),
        .I5(n_0_ip2bus_wrack_int_d1_i_3),
        .O(p_0_in2_out));
LUT4 #(
    .INIT(16'hFFFE)) 
     ip2bus_wrack_int_d1_i_2
       (.I0(p_6_in),
        .I1(p_5_in),
        .I2(p_7_in),
        .I3(n_0_ip2bus_wrack_int_d1_i_4),
        .O(n_0_ip2bus_wrack_int_d1_i_2));
LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
     ip2bus_wrack_int_d1_i_3
       (.I0(p_11_in),
        .I1(p_9_in),
        .I2(O1),
        .I3(p_8_in),
        .I4(p_16_in),
        .I5(O2),
        .O(n_0_ip2bus_wrack_int_d1_i_3));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     ip2bus_wrack_int_d1_i_4
       (.I0(p_3_in),
        .I1(p_4_in),
        .I2(p_12_in),
        .I3(p_13_in),
        .I4(\n_0_GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I5(p_2_in),
        .O(n_0_ip2bus_wrack_int_d1_i_4));
LUT4 #(
    .INIT(16'hFB08)) 
     \mer_int[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_10_in),
        .I2(O2),
        .I3(mer),
        .O(O20));
LUT4 #(
    .INIT(16'hFF20)) 
     \mer_int[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(O2),
        .I2(p_10_in),
        .I3(p_0_in),
        .O(O3));
LUT6 #(
    .INIT(64'h4000400040000000)) 
     \s_axi_rdata_i[0]_i_1 
       (.I0(I53),
        .I1(\n_0_s_axi_rdata_i[1]_i_3 ),
        .I2(O2),
        .I3(I54),
        .I4(I3[3]),
        .I5(I55),
        .O(D[0]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[10]_i_1 
       (.I0(I6),
        .I1(\INTC_CORE_I/read ),
        .I2(I7),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[10]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[11]_i_1 
       (.I0(I8),
        .I1(\INTC_CORE_I/read ),
        .I2(I9),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[11]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[12]_i_1 
       (.I0(I10),
        .I1(\INTC_CORE_I/read ),
        .I2(I11),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[12]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[13]_i_1 
       (.I0(I12),
        .I1(\INTC_CORE_I/read ),
        .I2(I13),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[13]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[14]_i_1 
       (.I0(I14),
        .I1(\INTC_CORE_I/read ),
        .I2(I15),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[14]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[15]_i_1 
       (.I0(I16),
        .I1(\INTC_CORE_I/read ),
        .I2(I17),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[15]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[16]_i_1 
       (.I0(I18),
        .I1(\INTC_CORE_I/read ),
        .I2(I19),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[16]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[17]_i_1 
       (.I0(I20),
        .I1(\INTC_CORE_I/read ),
        .I2(I21),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[17]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[18]_i_1 
       (.I0(I22),
        .I1(\INTC_CORE_I/read ),
        .I2(I23),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[18]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[19]_i_1 
       (.I0(I24),
        .I1(\INTC_CORE_I/read ),
        .I2(I25),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[19]));
LUT6 #(
    .INIT(64'h4000400040000000)) 
     \s_axi_rdata_i[1]_i_1 
       (.I0(I56),
        .I1(\n_0_s_axi_rdata_i[1]_i_3 ),
        .I2(O2),
        .I3(I57),
        .I4(I3[3]),
        .I5(I58),
        .O(D[1]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \s_axi_rdata_i[1]_i_3 
       (.I0(p_15_in),
        .I1(p_10_in),
        .I2(p_16_in),
        .I3(\n_0_s_axi_rdata_i[1]_i_6 ),
        .I4(p_8_in),
        .I5(O1),
        .O(\n_0_s_axi_rdata_i[1]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \s_axi_rdata_i[1]_i_6 
       (.I0(p_11_in),
        .I1(p_9_in),
        .O(\n_0_s_axi_rdata_i[1]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[20]_i_1 
       (.I0(I26),
        .I1(\INTC_CORE_I/read ),
        .I2(I27),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[20]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[21]_i_1 
       (.I0(I28),
        .I1(\INTC_CORE_I/read ),
        .I2(I29),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[21]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[22]_i_1 
       (.I0(I30),
        .I1(\INTC_CORE_I/read ),
        .I2(I31),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[22]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[23]_i_1 
       (.I0(I32),
        .I1(\INTC_CORE_I/read ),
        .I2(I33),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[23]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[24]_i_1 
       (.I0(I34),
        .I1(\INTC_CORE_I/read ),
        .I2(I35),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[24]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[25]_i_1 
       (.I0(I36),
        .I1(\INTC_CORE_I/read ),
        .I2(I37),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[25]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[26]_i_1 
       (.I0(I38),
        .I1(\INTC_CORE_I/read ),
        .I2(I39),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[26]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[27]_i_1 
       (.I0(I40),
        .I1(\INTC_CORE_I/read ),
        .I2(I41),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[27]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[28]_i_1 
       (.I0(I42),
        .I1(\INTC_CORE_I/read ),
        .I2(I43),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[28]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[29]_i_1 
       (.I0(I44),
        .I1(\INTC_CORE_I/read ),
        .I2(I45),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[29]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \s_axi_rdata_i[2]_i_1 
       (.I0(I59),
        .I1(\INTC_CORE_I/read ),
        .I2(I60),
        .O(D[2]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[30]_i_1 
       (.I0(I46),
        .I1(\INTC_CORE_I/read ),
        .I2(I47),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[30]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[31]_i_2 
       (.I0(I48),
        .I1(\INTC_CORE_I/read ),
        .I2(I49),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[31]));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \s_axi_rdata_i[31]_i_4 
       (.I0(\n_0_s_axi_rdata_i[31]_i_6 ),
        .I1(p_16_in),
        .I2(p_10_in),
        .I3(p_15_in),
        .I4(O2),
        .O(\INTC_CORE_I/read ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \s_axi_rdata_i[31]_i_6 
       (.I0(O1),
        .I1(p_8_in),
        .I2(p_9_in),
        .I3(p_11_in),
        .O(\n_0_s_axi_rdata_i[31]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \s_axi_rdata_i[3]_i_1 
       (.I0(I61),
        .I1(\INTC_CORE_I/read ),
        .I2(I62),
        .O(D[3]));
LUT6 #(
    .INIT(64'h8888888888880080)) 
     \s_axi_rdata_i[4]_i_1 
       (.I0(I63),
        .I1(\INTC_CORE_I/read ),
        .I2(data3),
        .I3(I64),
        .I4(I65),
        .I5(I3[3]),
        .O(D[4]));
LUT6 #(
    .INIT(64'h8888888888880080)) 
     \s_axi_rdata_i[5]_i_1 
       (.I0(I66),
        .I1(\INTC_CORE_I/read ),
        .I2(data3),
        .I3(I64),
        .I4(I65),
        .I5(I3[3]),
        .O(D[5]));
LUT6 #(
    .INIT(64'h8888888888880080)) 
     \s_axi_rdata_i[6]_i_1 
       (.I0(I67),
        .I1(\INTC_CORE_I/read ),
        .I2(data3),
        .I3(I64),
        .I4(I65),
        .I5(I3[3]),
        .O(D[6]));
LUT6 #(
    .INIT(64'h8888888888880080)) 
     \s_axi_rdata_i[7]_i_1 
       (.I0(I68),
        .I1(\INTC_CORE_I/read ),
        .I2(data3),
        .I3(I64),
        .I4(I65),
        .I5(I3[3]),
        .O(D[7]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[8]_i_1 
       (.I0(I1),
        .I1(\INTC_CORE_I/read ),
        .I2(I2),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[8]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \s_axi_rdata_i[9]_i_1 
       (.I0(I4),
        .I1(\INTC_CORE_I/read ),
        .I2(I5),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "axi_intc" *) (* C_FAMILY = "kintex7" *) (* C_INSTANCE = "axi_intc_inst" *) 
(* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_NUM_INTR_INPUTS = "8" *) 
(* C_NUM_SW_INTR = "0" *) (* C_KIND_OF_INTR = "-1" *) (* C_KIND_OF_EDGE = "-1" *) 
(* C_KIND_OF_LVL = "-1" *) (* C_ASYNC_INTR = "-1" *) (* C_NUM_SYNC_FF = "2" *) 
(* C_IVAR_RESET_VALUE = "16" *) (* C_HAS_IPR = "1" *) (* C_HAS_SIE = "1" *) 
(* C_HAS_CIE = "1" *) (* C_HAS_IVR = "1" *) (* C_HAS_ILR = "0" *) 
(* C_IRQ_IS_LEVEL = "1" *) (* C_IRQ_ACTIVE = "1'b1" *) (* C_DISABLE_SYNCHRONIZERS = "1" *) 
(* C_MB_CLK_NOT_CONNECTED = "1" *) (* C_HAS_FAST = "0" *) (* C_ENABLE_ASYNC = "0" *) 
(* C_EN_CASCADE_MODE = "0" *) (* C_CASCADE_MASTER = "0" *) (* ip_group = "LOGICORE" *) 
(* iptype = "PERIPHERAL" *) (* hdl = "VHDL" *) (* style = "HDL" *) 
(* imp_netlist = "true" *) (* run_ngcbuild = "true" *) 
module axi_intc_0_axi_intc__parameterized0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    processor_clk,
    processor_rst,
    irq,
    processor_ack,
    interrupt_address,
    interrupt_address_in,
    processor_ack_out);
  (* max_fanout = "10000" *) (* sigis = "Clk" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "Rstn" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [7:0]intr;
  input processor_clk;
  input processor_rst;
  output irq;
  input [1:0]processor_ack;
  output [31:0]interrupt_address;
  input [31:0]interrupt_address_in;
  output [1:0]processor_ack_out;

  wire \<const0> ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ;
  wire [31:31]data3;
  wire [31:0]interrupt_address_in;
  wire [7:0]intr;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire [7:2]ipr;
  wire irq;
  wire mer;
  wire n_0_INTC_CORE_I;
  wire n_14_AXI_LITE_IPIF_I;
  wire n_15_AXI_LITE_IPIF_I;
  wire n_16_AXI_LITE_IPIF_I;
  wire n_17_AXI_LITE_IPIF_I;
  wire n_18_AXI_LITE_IPIF_I;
  wire n_19_AXI_LITE_IPIF_I;
  wire n_20_AXI_LITE_IPIF_I;
  wire n_21_AXI_LITE_IPIF_I;
  wire n_22_AXI_LITE_IPIF_I;
  wire n_22_INTC_CORE_I;
  wire n_23_AXI_LITE_IPIF_I;
  wire n_24_AXI_LITE_IPIF_I;
  wire n_25_AXI_LITE_IPIF_I;
  wire n_26_AXI_LITE_IPIF_I;
  wire n_27_AXI_LITE_IPIF_I;
  wire n_28_AXI_LITE_IPIF_I;
  wire n_29_AXI_LITE_IPIF_I;
  wire n_30_AXI_LITE_IPIF_I;
  wire n_30_INTC_CORE_I;
  wire n_31_AXI_LITE_IPIF_I;
  wire n_33_AXI_LITE_IPIF_I;
  wire n_34_AXI_LITE_IPIF_I;
  wire n_35_AXI_LITE_IPIF_I;
  wire n_36_AXI_LITE_IPIF_I;
  wire n_37_AXI_LITE_IPIF_I;
  wire n_38_AXI_LITE_IPIF_I;
  wire n_39_AXI_LITE_IPIF_I;
  wire n_39_INTC_CORE_I;
  wire n_40_AXI_LITE_IPIF_I;
  wire n_40_INTC_CORE_I;
  wire n_42_INTC_CORE_I;
  wire n_43_INTC_CORE_I;
  wire n_7_INTC_CORE_I;
  wire p_0_in;
  wire p_0_in104_in;
  wire p_0_in114_in;
  wire p_0_in13_in;
  wire p_0_in14_in;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire p_0_in20_in;
  wire p_0_in20_out;
  wire p_0_in22_in;
  wire p_0_in2_out;
  wire p_0_in49_in;
  wire p_0_in51_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in57_in;
  wire p_0_in59_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in67_in;
  wire p_0_in69_in;
  wire p_0_in71_in;
  wire p_0_in73_in;
  wire p_0_in74_in;
  wire p_0_in75_in;
  wire p_0_in77_in;
  wire p_0_in84_in;
  wire p_0_in94_in;
  wire p_14_in;
  wire p_1_in;
  wire p_1_in15_in;
  wire p_1_in17_in;
  wire p_1_in19_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire [1:0]processor_ack;
  wire processor_clk;
  wire processor_rst;
  wire [2:0]register_addr;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign interrupt_address[31] = \<const0> ;
  assign interrupt_address[30] = \<const0> ;
  assign interrupt_address[29] = \<const0> ;
  assign interrupt_address[28] = \<const0> ;
  assign interrupt_address[27] = \<const0> ;
  assign interrupt_address[26] = \<const0> ;
  assign interrupt_address[25] = \<const0> ;
  assign interrupt_address[24] = \<const0> ;
  assign interrupt_address[23] = \<const0> ;
  assign interrupt_address[22] = \<const0> ;
  assign interrupt_address[21] = \<const0> ;
  assign interrupt_address[20] = \<const0> ;
  assign interrupt_address[19] = \<const0> ;
  assign interrupt_address[18] = \<const0> ;
  assign interrupt_address[17] = \<const0> ;
  assign interrupt_address[16] = \<const0> ;
  assign interrupt_address[15] = \<const0> ;
  assign interrupt_address[14] = \<const0> ;
  assign interrupt_address[13] = \<const0> ;
  assign interrupt_address[12] = \<const0> ;
  assign interrupt_address[11] = \<const0> ;
  assign interrupt_address[10] = \<const0> ;
  assign interrupt_address[9] = \<const0> ;
  assign interrupt_address[8] = \<const0> ;
  assign interrupt_address[7] = \<const0> ;
  assign interrupt_address[6] = \<const0> ;
  assign interrupt_address[5] = \<const0> ;
  assign interrupt_address[4] = \<const0> ;
  assign interrupt_address[3] = \<const0> ;
  assign interrupt_address[2] = \<const0> ;
  assign interrupt_address[1] = \<const0> ;
  assign interrupt_address[0] = \<const0> ;
  assign processor_ack_out[1] = \<const0> ;
  assign processor_ack_out[0] = \<const0> ;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
axi_intc_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .I1(n_0_INTC_CORE_I),
        .I2(n_22_INTC_CORE_I),
        .I3(n_30_INTC_CORE_I),
        .I4(n_7_INTC_CORE_I),
        .I5(n_39_INTC_CORE_I),
        .I6(n_40_INTC_CORE_I),
        .I7(ipr),
        .I8(n_42_INTC_CORE_I),
        .I9(n_43_INTC_CORE_I),
        .O1(n_14_AXI_LITE_IPIF_I),
        .O10(n_23_AXI_LITE_IPIF_I),
        .O11(n_24_AXI_LITE_IPIF_I),
        .O12(n_25_AXI_LITE_IPIF_I),
        .O13(n_26_AXI_LITE_IPIF_I),
        .O14(n_27_AXI_LITE_IPIF_I),
        .O15(n_28_AXI_LITE_IPIF_I),
        .O16(n_29_AXI_LITE_IPIF_I),
        .O17(n_30_AXI_LITE_IPIF_I),
        .O18(n_31_AXI_LITE_IPIF_I),
        .O19(n_33_AXI_LITE_IPIF_I),
        .O2(n_15_AXI_LITE_IPIF_I),
        .O20(n_34_AXI_LITE_IPIF_I),
        .O21(n_35_AXI_LITE_IPIF_I),
        .O22(n_36_AXI_LITE_IPIF_I),
        .O23(n_37_AXI_LITE_IPIF_I),
        .O24(n_38_AXI_LITE_IPIF_I),
        .O25(n_39_AXI_LITE_IPIF_I),
        .O26(n_40_AXI_LITE_IPIF_I),
        .O3(n_16_AXI_LITE_IPIF_I),
        .O4(n_17_AXI_LITE_IPIF_I),
        .O5(n_18_AXI_LITE_IPIF_I),
        .O6(n_19_AXI_LITE_IPIF_I),
        .O7(n_20_AXI_LITE_IPIF_I),
        .O8(n_21_AXI_LITE_IPIF_I),
        .O9(n_22_AXI_LITE_IPIF_I),
        .Q(register_addr),
        .data3(data3),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .mer(mer),
        .p_0_in(p_0_in),
        .p_0_in104_in(p_0_in104_in),
        .p_0_in114_in(p_0_in114_in),
        .p_0_in13_in(p_0_in13_in),
        .p_0_in14_in(p_0_in14_in),
        .p_0_in16_in(p_0_in16_in),
        .p_0_in18_in(p_0_in18_in),
        .p_0_in20_in(p_0_in20_in),
        .p_0_in20_out(p_0_in20_out),
        .p_0_in22_in(p_0_in22_in),
        .p_0_in2_out(p_0_in2_out),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in51_in(p_0_in51_in),
        .p_0_in53_in(p_0_in53_in),
        .p_0_in54_in(p_0_in54_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in57_in(p_0_in57_in),
        .p_0_in59_in(p_0_in59_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in65_in(p_0_in65_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in69_in(p_0_in69_in),
        .p_0_in71_in(p_0_in71_in),
        .p_0_in73_in(p_0_in73_in),
        .p_0_in74_in(p_0_in74_in),
        .p_0_in75_in(p_0_in75_in),
        .p_0_in77_in(p_0_in77_in),
        .p_0_in84_in(p_0_in84_in),
        .p_0_in94_in(p_0_in94_in),
        .p_14_in(p_14_in),
        .p_17_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ),
        .p_1_in(p_1_in),
        .p_1_in15_in(p_1_in15_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in21_in(p_1_in21_in),
        .p_1_in23_in(p_1_in23_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
GND GND
       (.G(\<const0> ));
axi_intc_0_intc_core INTC_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .I1(n_40_AXI_LITE_IPIF_I),
        .I10(n_15_AXI_LITE_IPIF_I),
        .I11(n_16_AXI_LITE_IPIF_I),
        .I12(n_17_AXI_LITE_IPIF_I),
        .I13(n_18_AXI_LITE_IPIF_I),
        .I14(n_19_AXI_LITE_IPIF_I),
        .I15(n_20_AXI_LITE_IPIF_I),
        .I16(n_21_AXI_LITE_IPIF_I),
        .I17(n_22_AXI_LITE_IPIF_I),
        .I18(n_23_AXI_LITE_IPIF_I),
        .I19(n_24_AXI_LITE_IPIF_I),
        .I2(n_39_AXI_LITE_IPIF_I),
        .I20(n_25_AXI_LITE_IPIF_I),
        .I21(n_26_AXI_LITE_IPIF_I),
        .I22(n_27_AXI_LITE_IPIF_I),
        .I23(n_28_AXI_LITE_IPIF_I),
        .I24(n_29_AXI_LITE_IPIF_I),
        .I25(n_30_AXI_LITE_IPIF_I),
        .I26(n_31_AXI_LITE_IPIF_I),
        .I3(n_38_AXI_LITE_IPIF_I),
        .I4(n_37_AXI_LITE_IPIF_I),
        .I5(n_36_AXI_LITE_IPIF_I),
        .I6(n_35_AXI_LITE_IPIF_I),
        .I7(n_34_AXI_LITE_IPIF_I),
        .I8(n_33_AXI_LITE_IPIF_I),
        .I9(n_14_AXI_LITE_IPIF_I),
        .O1(n_0_INTC_CORE_I),
        .O2(n_7_INTC_CORE_I),
        .O3(n_22_INTC_CORE_I),
        .O4(n_30_INTC_CORE_I),
        .O5(n_39_INTC_CORE_I),
        .O6(n_40_INTC_CORE_I),
        .O7(n_42_INTC_CORE_I),
        .O8(n_43_INTC_CORE_I),
        .O9(ipr),
        .Q(register_addr),
        .data3(data3),
        .intr(intr),
        .irq(irq),
        .mer(mer),
        .p_0_in(p_0_in),
        .p_0_in104_in(p_0_in104_in),
        .p_0_in114_in(p_0_in114_in),
        .p_0_in13_in(p_0_in13_in),
        .p_0_in14_in(p_0_in14_in),
        .p_0_in16_in(p_0_in16_in),
        .p_0_in18_in(p_0_in18_in),
        .p_0_in20_in(p_0_in20_in),
        .p_0_in22_in(p_0_in22_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in51_in(p_0_in51_in),
        .p_0_in53_in(p_0_in53_in),
        .p_0_in54_in(p_0_in54_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in57_in(p_0_in57_in),
        .p_0_in59_in(p_0_in59_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in65_in(p_0_in65_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in69_in(p_0_in69_in),
        .p_0_in71_in(p_0_in71_in),
        .p_0_in73_in(p_0_in73_in),
        .p_0_in74_in(p_0_in74_in),
        .p_0_in75_in(p_0_in75_in),
        .p_0_in77_in(p_0_in77_in),
        .p_0_in84_in(p_0_in84_in),
        .p_0_in94_in(p_0_in94_in),
        .p_14_in(p_14_in),
        .p_17_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ),
        .p_1_in(p_1_in),
        .p_1_in15_in(p_1_in15_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in21_in(p_1_in21_in),
        .p_1_in23_in(p_1_in23_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[7:0]));
FDRE ip2bus_rdack_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in20_out),
        .Q(ip2bus_rdack_int_d1),
        .R(n_0_INTC_CORE_I));
FDRE ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_prev2),
        .Q(ip2bus_rdack),
        .R(n_0_INTC_CORE_I));
FDRE ip2bus_wrack_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in2_out),
        .Q(ip2bus_wrack_int_d1),
        .R(n_0_INTC_CORE_I));
FDRE ip2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_prev2),
        .Q(ip2bus_wrack),
        .R(n_0_INTC_CORE_I));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module axi_intc_0_axi_lite_ipif
   (p_17_in,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    ip2bus_wrack_prev2,
    s_axi_arready,
    s_axi_awready,
    Q,
    p_14_in,
    ip2bus_rdack_prev2,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    p_0_in2_out,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    p_0_in20_out,
    s_axi_rdata,
    I1,
    s_axi_aclk,
    ip2bus_wrack_int_d1,
    s_axi_aresetn,
    ip2bus_wrack,
    ip2bus_rdack,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready,
    ip2bus_rdack_int_d1,
    s_axi_wstrb,
    s_axi_wdata,
    p_0_in,
    I2,
    p_0_in114_in,
    p_0_in104_in,
    p_0_in94_in,
    p_0_in84_in,
    p_0_in74_in,
    p_0_in64_in,
    p_0_in54_in,
    I3,
    p_0_in77_in,
    p_0_in75_in,
    p_0_in73_in,
    p_0_in71_in,
    p_0_in69_in,
    p_0_in67_in,
    p_0_in65_in,
    mer,
    p_0_in49_in,
    p_0_in51_in,
    p_0_in53_in,
    p_0_in55_in,
    p_0_in57_in,
    p_0_in59_in,
    p_0_in61_in,
    I4,
    I5,
    I6,
    p_1_in23_in,
    I7,
    p_0_in22_in,
    p_1_in21_in,
    p_0_in20_in,
    data3,
    p_1_in19_in,
    p_0_in18_in,
    p_1_in17_in,
    p_0_in16_in,
    p_1_in15_in,
    p_0_in14_in,
    p_1_in,
    p_0_in13_in,
    I8,
    I9);
  output p_17_in;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output ip2bus_wrack_prev2;
  output s_axi_arready;
  output s_axi_awready;
  output [2:0]Q;
  output p_14_in;
  output ip2bus_rdack_prev2;
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output p_0_in2_out;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output p_0_in20_out;
  output [31:0]s_axi_rdata;
  input I1;
  input s_axi_aclk;
  input ip2bus_wrack_int_d1;
  input s_axi_aresetn;
  input ip2bus_wrack;
  input ip2bus_rdack;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;
  input ip2bus_rdack_int_d1;
  input [3:0]s_axi_wstrb;
  input [7:0]s_axi_wdata;
  input p_0_in;
  input I2;
  input p_0_in114_in;
  input p_0_in104_in;
  input p_0_in94_in;
  input p_0_in84_in;
  input p_0_in74_in;
  input p_0_in64_in;
  input p_0_in54_in;
  input I3;
  input p_0_in77_in;
  input p_0_in75_in;
  input p_0_in73_in;
  input p_0_in71_in;
  input p_0_in69_in;
  input p_0_in67_in;
  input p_0_in65_in;
  input mer;
  input p_0_in49_in;
  input p_0_in51_in;
  input p_0_in53_in;
  input p_0_in55_in;
  input p_0_in57_in;
  input p_0_in59_in;
  input p_0_in61_in;
  input I4;
  input I5;
  input I6;
  input p_1_in23_in;
  input [5:0]I7;
  input p_0_in22_in;
  input p_1_in21_in;
  input p_0_in20_in;
  input [0:0]data3;
  input p_1_in19_in;
  input p_0_in18_in;
  input p_1_in17_in;
  input p_0_in16_in;
  input p_1_in15_in;
  input p_0_in14_in;
  input p_1_in;
  input p_0_in13_in;
  input I8;
  input I9;

  wire Bus_RNW_reg;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire [5:0]I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [2:0]Q;
  wire [0:0]data3;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire mer;
  wire p_0_in;
  wire p_0_in104_in;
  wire p_0_in114_in;
  wire p_0_in13_in;
  wire p_0_in14_in;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire p_0_in20_in;
  wire p_0_in20_out;
  wire p_0_in22_in;
  wire p_0_in2_out;
  wire p_0_in49_in;
  wire p_0_in51_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in57_in;
  wire p_0_in59_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in67_in;
  wire p_0_in69_in;
  wire p_0_in71_in;
  wire p_0_in73_in;
  wire p_0_in74_in;
  wire p_0_in75_in;
  wire p_0_in77_in;
  wire p_0_in84_in;
  wire p_0_in94_in;
  wire p_14_in;
  wire p_17_in;
  wire p_1_in;
  wire p_1_in15_in;
  wire p_1_in17_in;
  wire p_1_in19_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [7:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

axi_intc_0_slave_attachment I_SLAVE_ATTACHMENT
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(p_17_in),
        .O10(O8),
        .O11(O9),
        .O12(O10),
        .O13(O11),
        .O14(O12),
        .O15(O13),
        .O16(O14),
        .O17(O15),
        .O18(O16),
        .O19(O17),
        .O2(Bus_RNW_reg),
        .O20(O18),
        .O21(O19),
        .O22(O20),
        .O23(O21),
        .O24(O22),
        .O25(O23),
        .O26(O24),
        .O27(O25),
        .O28(O26),
        .O3(O1),
        .O4(O2),
        .O5(O3),
        .O6(O4),
        .O7(O5),
        .O8(O6),
        .O9(O7),
        .Q(Q),
        .data3(data3),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .mer(mer),
        .p_0_in(p_0_in),
        .p_0_in104_in(p_0_in104_in),
        .p_0_in114_in(p_0_in114_in),
        .p_0_in13_in(p_0_in13_in),
        .p_0_in14_in(p_0_in14_in),
        .p_0_in16_in(p_0_in16_in),
        .p_0_in18_in(p_0_in18_in),
        .p_0_in20_in(p_0_in20_in),
        .p_0_in20_out(p_0_in20_out),
        .p_0_in22_in(p_0_in22_in),
        .p_0_in2_out(p_0_in2_out),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in51_in(p_0_in51_in),
        .p_0_in53_in(p_0_in53_in),
        .p_0_in54_in(p_0_in54_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in57_in(p_0_in57_in),
        .p_0_in59_in(p_0_in59_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in65_in(p_0_in65_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in69_in(p_0_in69_in),
        .p_0_in71_in(p_0_in71_in),
        .p_0_in73_in(p_0_in73_in),
        .p_0_in74_in(p_0_in74_in),
        .p_0_in75_in(p_0_in75_in),
        .p_0_in77_in(p_0_in77_in),
        .p_0_in84_in(p_0_in84_in),
        .p_0_in94_in(p_0_in94_in),
        .p_14_in(p_14_in),
        .p_1_in(p_1_in),
        .p_1_in15_in(p_1_in15_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in21_in(p_1_in21_in),
        .p_1_in23_in(p_1_in23_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "intc_core" *) 
module axi_intc_0_intc_core
   (O1,
    p_0_in22_in,
    p_0_in20_in,
    p_0_in18_in,
    p_0_in16_in,
    p_0_in14_in,
    p_0_in13_in,
    O2,
    p_0_in61_in,
    p_0_in59_in,
    p_0_in57_in,
    p_0_in55_in,
    p_0_in53_in,
    p_0_in51_in,
    p_0_in49_in,
    p_0_in,
    p_1_in23_in,
    p_1_in21_in,
    p_1_in19_in,
    p_1_in17_in,
    p_1_in15_in,
    p_1_in,
    O3,
    p_0_in114_in,
    p_0_in104_in,
    p_0_in94_in,
    p_0_in84_in,
    p_0_in74_in,
    p_0_in64_in,
    p_0_in54_in,
    O4,
    p_0_in77_in,
    p_0_in75_in,
    p_0_in73_in,
    p_0_in71_in,
    p_0_in69_in,
    p_0_in67_in,
    p_0_in65_in,
    mer,
    O5,
    O6,
    data3,
    O7,
    O8,
    O9,
    irq,
    s_axi_aclk,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    I23,
    I24,
    I25,
    I26,
    s_axi_aresetn,
    Q,
    p_14_in,
    s_axi_wdata,
    Bus_RNW_reg,
    p_17_in,
    intr);
  output O1;
  output p_0_in22_in;
  output p_0_in20_in;
  output p_0_in18_in;
  output p_0_in16_in;
  output p_0_in14_in;
  output p_0_in13_in;
  output O2;
  output p_0_in61_in;
  output p_0_in59_in;
  output p_0_in57_in;
  output p_0_in55_in;
  output p_0_in53_in;
  output p_0_in51_in;
  output p_0_in49_in;
  output p_0_in;
  output p_1_in23_in;
  output p_1_in21_in;
  output p_1_in19_in;
  output p_1_in17_in;
  output p_1_in15_in;
  output p_1_in;
  output O3;
  output p_0_in114_in;
  output p_0_in104_in;
  output p_0_in94_in;
  output p_0_in84_in;
  output p_0_in74_in;
  output p_0_in64_in;
  output p_0_in54_in;
  output O4;
  output p_0_in77_in;
  output p_0_in75_in;
  output p_0_in73_in;
  output p_0_in71_in;
  output p_0_in69_in;
  output p_0_in67_in;
  output p_0_in65_in;
  output mer;
  output O5;
  output O6;
  output [0:0]data3;
  output O7;
  output O8;
  output [5:0]O9;
  output irq;
  input s_axi_aclk;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input I19;
  input I20;
  input I21;
  input I22;
  input I23;
  input I24;
  input I25;
  input I26;
  input s_axi_aresetn;
  input [2:0]Q;
  input p_14_in;
  input [7:0]s_axi_wdata;
  input Bus_RNW_reg;
  input p_17_in;
  input [7:0]intr;

  wire Bus_RNW_reg;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire [5:0]O9;
  wire [2:0]Q;
  wire [0:0]data3;
  wire [7:0]intr;
  wire intr_d1;
  wire [1:0]ipr;
  wire irq;
  wire irq_gen;
  wire irq_gen3;
  wire irq_gen4;
  wire irq_gen6;
  wire irq_gen7;
  wire irq_gen728_out;
  wire irq_gen_i;
  wire mer;
  wire \n_0_INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0] ;
  wire \n_0_INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1 ;
  wire \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0] ;
  wire \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1] ;
  wire \n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1 ;
  wire \n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg ;
  wire \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0] ;
  wire \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1] ;
  wire \n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1 ;
  wire \n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg ;
  wire \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0] ;
  wire \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1] ;
  wire \n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1 ;
  wire \n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg ;
  wire \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0] ;
  wire \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1] ;
  wire \n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1 ;
  wire \n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg ;
  wire \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0] ;
  wire \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1] ;
  wire \n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1 ;
  wire \n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg ;
  wire \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0] ;
  wire \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1] ;
  wire \n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1 ;
  wire \n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg ;
  wire \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0] ;
  wire \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1] ;
  wire \n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1 ;
  wire \n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg ;
  wire \n_0_IPR_GEN.ipr[0]_i_1 ;
  wire \n_0_IPR_GEN.ipr[1]_i_1 ;
  wire \n_0_IPR_GEN.ipr[2]_i_1 ;
  wire \n_0_IPR_GEN.ipr[3]_i_1 ;
  wire \n_0_IPR_GEN.ipr[4]_i_1 ;
  wire \n_0_IPR_GEN.ipr[5]_i_1 ;
  wire \n_0_IPR_GEN.ipr[6]_i_1 ;
  wire \n_0_IPR_GEN.ipr[7]_i_1 ;
  wire \n_0_IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1 ;
  wire \n_0_IVR_GEN.ivr[0]_i_1 ;
  wire \n_0_IVR_GEN.ivr[0]_i_2 ;
  wire \n_0_IVR_GEN.ivr[1]_i_1 ;
  wire \n_0_IVR_GEN.ivr[2]_i_1 ;
  wire \n_0_IVR_GEN.ivr[2]_i_2 ;
  wire \n_0_IVR_GEN.ivr[3]_i_1 ;
  wire \n_0_IVR_GEN.ivr_reg[0] ;
  wire \n_0_IVR_GEN.ivr_reg[1] ;
  wire \n_0_REG_GEN[0].ier_reg[0] ;
  wire \n_0_REG_GEN[0].isr[0]_i_2 ;
  wire \n_0_REG_GEN[0].isr_reg[0] ;
  wire \n_0_REG_GEN[1].isr[1]_i_2 ;
  wire \n_0_REG_GEN[2].isr[2]_i_2 ;
  wire \n_0_REG_GEN[3].isr[3]_i_2 ;
  wire \n_0_REG_GEN[4].isr[4]_i_2 ;
  wire \n_0_REG_GEN[5].isr[5]_i_2 ;
  wire \n_0_REG_GEN[6].isr[6]_i_2 ;
  wire \n_0_REG_GEN[7].isr[7]_i_2 ;
  wire n_0_irq_gen_i_2;
  wire n_0_irq_gen_i_3;
  wire \n_0_s_axi_rdata_i[0]_i_5 ;
  wire \n_0_s_axi_rdata_i[1]_i_7 ;
  wire p_0_in;
  wire p_0_in104_in;
  wire p_0_in114_in;
  wire p_0_in13_in;
  wire p_0_in14_in;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire p_0_in20_in;
  wire p_0_in22_in;
  wire p_0_in24_in;
  wire p_0_in49_in;
  wire p_0_in51_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in57_in;
  wire p_0_in59_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in67_in;
  wire p_0_in69_in;
  wire p_0_in71_in;
  wire p_0_in73_in;
  wire p_0_in74_in;
  wire p_0_in75_in;
  wire p_0_in77_in;
  wire p_0_in84_in;
  wire p_0_in94_in;
  wire p_14_in;
  wire p_17_in;
  wire p_1_in;
  wire p_1_in15_in;
  wire p_1_in17_in;
  wire p_1_in19_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire p_1_in25_in;
  wire p_20_out;
  wire p_24_out;
  wire p_28_out;
  wire p_32_out;
  wire p_36_out;
  wire p_40_out;
  wire p_44_out;
  wire p_48_out;
  wire p_50_out;
  wire p_52_out;
  wire p_54_out;
  wire p_56_out;
  wire p_58_out;
  wire p_60_out;
  wire p_62_out;
  wire p_64_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire synced_intr;

FDRE \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I18),
        .Q(O4),
        .R(1'b0));
FDRE \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I19),
        .Q(p_0_in77_in),
        .R(1'b0));
FDRE \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I20),
        .Q(p_0_in75_in),
        .R(1'b0));
FDRE \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I21),
        .Q(p_0_in73_in),
        .R(1'b0));
FDRE \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I22),
        .Q(p_0_in71_in),
        .R(1'b0));
FDRE \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I23),
        .Q(p_0_in69_in),
        .R(1'b0));
FDRE \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I24),
        .Q(p_0_in67_in),
        .R(1'b0));
FDRE \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I25),
        .Q(p_0_in65_in),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[0]),
        .Q(\n_0_INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0] ),
        .Q(synced_intr),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000BA00)) 
     \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1 
       (.I0(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(intr_d1),
        .I2(synced_intr),
        .I3(s_axi_aresetn),
        .I4(O2),
        .O(\n_0_INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1 ));
FDRE \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1 ),
        .Q(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
FDRE \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(synced_intr),
        .Q(intr_d1),
        .R(O1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[1]),
        .Q(\n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0] ),
        .Q(\n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000BA00)) 
     \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1 
       (.I0(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg ),
        .I2(\n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1] ),
        .I3(s_axi_aresetn),
        .I4(p_0_in61_in),
        .O(\n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1 ));
FDRE \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1 ),
        .Q(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
FDRE \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1] ),
        .Q(\n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg ),
        .R(O1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[2]),
        .Q(\n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0] ),
        .Q(\n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000BA00)) 
     \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1 
       (.I0(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg ),
        .I2(\n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1] ),
        .I3(s_axi_aresetn),
        .I4(p_0_in59_in),
        .O(\n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1 ));
FDRE \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1 ),
        .Q(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
FDRE \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1] ),
        .Q(\n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg ),
        .R(O1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[3]),
        .Q(\n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0] ),
        .Q(\n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000BA00)) 
     \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1 
       (.I0(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg ),
        .I2(\n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1] ),
        .I3(s_axi_aresetn),
        .I4(p_0_in57_in),
        .O(\n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1 ));
FDRE \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1 ),
        .Q(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
FDRE \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1] ),
        .Q(\n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg ),
        .R(O1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[4]),
        .Q(\n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0] ),
        .Q(\n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000BA00)) 
     \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1 
       (.I0(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg ),
        .I2(\n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1] ),
        .I3(s_axi_aresetn),
        .I4(p_0_in55_in),
        .O(\n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1 ));
FDRE \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1 ),
        .Q(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
FDRE \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1] ),
        .Q(\n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg ),
        .R(O1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[5]),
        .Q(\n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0] ),
        .Q(\n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000BA00)) 
     \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1 
       (.I0(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg ),
        .I2(\n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1] ),
        .I3(s_axi_aresetn),
        .I4(p_0_in53_in),
        .O(\n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1 ));
FDRE \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1 ),
        .Q(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
FDRE \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1] ),
        .Q(\n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg ),
        .R(O1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[6]),
        .Q(\n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0] ),
        .Q(\n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000BA00)) 
     \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1 
       (.I0(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg ),
        .I2(\n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1] ),
        .I3(s_axi_aresetn),
        .I4(p_0_in51_in),
        .O(\n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1 ));
FDRE \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1 ),
        .Q(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
FDRE \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1] ),
        .Q(\n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg ),
        .R(O1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[7]),
        .Q(\n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0] ),
        .Q(\n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000BA00)) 
     \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1 
       (.I0(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg ),
        .I2(\n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1] ),
        .I3(s_axi_aresetn),
        .I4(p_0_in49_in),
        .O(\n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1 ));
FDRE \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1 ),
        .Q(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
FDRE \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1] ),
        .Q(\n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg ),
        .R(O1));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IPR_GEN.ipr[0]_i_1 
       (.I0(\n_0_REG_GEN[0].isr_reg[0] ),
        .I1(\n_0_REG_GEN[0].ier_reg[0] ),
        .O(\n_0_IPR_GEN.ipr[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IPR_GEN.ipr[1]_i_1 
       (.I0(p_1_in25_in),
        .I1(p_0_in24_in),
        .O(\n_0_IPR_GEN.ipr[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IPR_GEN.ipr[2]_i_1 
       (.I0(p_1_in23_in),
        .I1(p_0_in22_in),
        .O(\n_0_IPR_GEN.ipr[2]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \IPR_GEN.ipr[3]_i_1 
       (.I0(p_1_in21_in),
        .I1(p_0_in20_in),
        .O(\n_0_IPR_GEN.ipr[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IPR_GEN.ipr[4]_i_1 
       (.I0(p_1_in19_in),
        .I1(p_0_in18_in),
        .O(\n_0_IPR_GEN.ipr[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IPR_GEN.ipr[5]_i_1 
       (.I0(p_1_in17_in),
        .I1(p_0_in16_in),
        .O(\n_0_IPR_GEN.ipr[5]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \IPR_GEN.ipr[6]_i_1 
       (.I0(p_1_in15_in),
        .I1(p_0_in14_in),
        .O(\n_0_IPR_GEN.ipr[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IPR_GEN.ipr[7]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in13_in),
        .O(\n_0_IPR_GEN.ipr[7]_i_1 ));
FDRE \IPR_GEN.ipr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IPR_GEN.ipr[0]_i_1 ),
        .Q(ipr[0]),
        .R(O1));
FDRE \IPR_GEN.ipr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IPR_GEN.ipr[1]_i_1 ),
        .Q(ipr[1]),
        .R(O1));
FDRE \IPR_GEN.ipr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IPR_GEN.ipr[2]_i_1 ),
        .Q(O9[0]),
        .R(O1));
FDRE \IPR_GEN.ipr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IPR_GEN.ipr[3]_i_1 ),
        .Q(O9[1]),
        .R(O1));
FDRE \IPR_GEN.ipr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IPR_GEN.ipr[4]_i_1 ),
        .Q(O9[2]),
        .R(O1));
FDRE \IPR_GEN.ipr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IPR_GEN.ipr[5]_i_1 ),
        .Q(O9[3]),
        .R(O1));
FDRE \IPR_GEN.ipr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IPR_GEN.ipr[6]_i_1 ),
        .Q(O9[4]),
        .R(O1));
FDRE \IPR_GEN.ipr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IPR_GEN.ipr[7]_i_1 ),
        .Q(O9[5]),
        .R(O1));
LUT4 #(
    .INIT(16'hE000)) 
     \IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1 
       (.I0(irq),
        .I1(mer),
        .I2(irq_gen),
        .I3(s_axi_aresetn),
        .O(\n_0_IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1 ));
FDRE \IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1 ),
        .Q(irq),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
     \IVR_GEN.ivr[0]_i_1 
       (.I0(\n_0_IVR_GEN.ivr[0]_i_2 ),
        .I1(irq_gen6),
        .I2(p_1_in21_in),
        .I3(p_0_in20_in),
        .I4(irq_gen7),
        .I5(irq_gen728_out),
        .O(\n_0_IVR_GEN.ivr[0]_i_1 ));
LUT6 #(
    .INIT(64'h1515151500151515)) 
     \IVR_GEN.ivr[0]_i_2 
       (.I0(irq_gen4),
        .I1(p_1_in23_in),
        .I2(p_0_in22_in),
        .I3(p_1_in15_in),
        .I4(p_0_in14_in),
        .I5(irq_gen3),
        .O(\n_0_IVR_GEN.ivr[0]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \IVR_GEN.ivr[0]_i_3 
       (.I0(p_1_in23_in),
        .I1(p_0_in22_in),
        .O(irq_gen6));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IVR_GEN.ivr[0]_i_4 
       (.I0(\n_0_REG_GEN[0].isr_reg[0] ),
        .I1(\n_0_REG_GEN[0].ier_reg[0] ),
        .O(irq_gen728_out));
LUT6 #(
    .INIT(64'h0000222322232223)) 
     \IVR_GEN.ivr[1]_i_1 
       (.I0(\n_0_IVR_GEN.ivr[2]_i_2 ),
        .I1(irq_gen7),
        .I2(irq_gen4),
        .I3(irq_gen3),
        .I4(\n_0_REG_GEN[0].ier_reg[0] ),
        .I5(\n_0_REG_GEN[0].isr_reg[0] ),
        .O(\n_0_IVR_GEN.ivr[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IVR_GEN.ivr[1]_i_2 
       (.I0(p_1_in25_in),
        .I1(p_0_in24_in),
        .O(irq_gen7));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IVR_GEN.ivr[1]_i_3 
       (.I0(p_1_in19_in),
        .I1(p_0_in18_in),
        .O(irq_gen4));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IVR_GEN.ivr[1]_i_4 
       (.I0(p_1_in17_in),
        .I1(p_0_in16_in),
        .O(irq_gen3));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT5 #(
    .INIT(32'h00151515)) 
     \IVR_GEN.ivr[2]_i_1 
       (.I0(\n_0_IVR_GEN.ivr[2]_i_2 ),
        .I1(\n_0_REG_GEN[0].ier_reg[0] ),
        .I2(\n_0_REG_GEN[0].isr_reg[0] ),
        .I3(p_0_in24_in),
        .I4(p_1_in25_in),
        .O(\n_0_IVR_GEN.ivr[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     \IVR_GEN.ivr[2]_i_2 
       (.I0(p_0_in22_in),
        .I1(p_1_in23_in),
        .I2(p_0_in20_in),
        .I3(p_1_in21_in),
        .O(\n_0_IVR_GEN.ivr[2]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000070707)) 
     \IVR_GEN.ivr[3]_i_1 
       (.I0(p_1_in19_in),
        .I1(p_0_in18_in),
        .I2(n_0_irq_gen_i_2),
        .I3(p_0_in16_in),
        .I4(p_1_in17_in),
        .I5(n_0_irq_gen_i_3),
        .O(\n_0_IVR_GEN.ivr[3]_i_1 ));
FDSE \IVR_GEN.ivr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IVR_GEN.ivr[0]_i_1 ),
        .Q(\n_0_IVR_GEN.ivr_reg[0] ),
        .S(O1));
FDSE \IVR_GEN.ivr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IVR_GEN.ivr[1]_i_1 ),
        .Q(\n_0_IVR_GEN.ivr_reg[1] ),
        .S(O1));
FDSE \IVR_GEN.ivr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IVR_GEN.ivr[2]_i_1 ),
        .Q(O7),
        .S(O1));
FDSE \IVR_GEN.ivr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_IVR_GEN.ivr[3]_i_1 ),
        .Q(O8),
        .S(O1));
FDRE \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(O2),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0C0C0C080C0C0008)) 
     \REG_GEN[0].ier[0]_i_1 
       (.I0(\n_0_REG_GEN[0].ier_reg[0] ),
        .I1(s_axi_aresetn),
        .I2(O4),
        .I3(p_14_in),
        .I4(O3),
        .I5(s_axi_wdata[0]),
        .O(p_48_out));
FDRE \REG_GEN[0].ier_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_48_out),
        .Q(\n_0_REG_GEN[0].ier_reg[0] ),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \REG_GEN[0].isr[0]_i_1 
       (.I0(O2),
        .I1(s_axi_aresetn),
        .O(p_64_out));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
     \REG_GEN[0].isr[0]_i_2 
       (.I0(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[0]),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_0_in),
        .I5(\n_0_REG_GEN[0].isr_reg[0] ),
        .O(\n_0_REG_GEN[0].isr[0]_i_2 ));
FDRE \REG_GEN[0].isr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_REG_GEN[0].isr[0]_i_2 ),
        .Q(\n_0_REG_GEN[0].isr_reg[0] ),
        .R(p_64_out));
FDRE \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(p_0_in61_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0C0C0C080C0C0008)) 
     \REG_GEN[1].ier[1]_i_1 
       (.I0(p_0_in24_in),
        .I1(s_axi_aresetn),
        .I2(p_0_in77_in),
        .I3(p_14_in),
        .I4(p_0_in114_in),
        .I5(s_axi_wdata[1]),
        .O(p_44_out));
FDRE \REG_GEN[1].ier_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_44_out),
        .Q(p_0_in24_in),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \REG_GEN[1].isr[1]_i_1 
       (.I0(p_0_in61_in),
        .I1(s_axi_aresetn),
        .O(p_62_out));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
     \REG_GEN[1].isr[1]_i_2 
       (.I0(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[1]),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_0_in),
        .I5(p_1_in25_in),
        .O(\n_0_REG_GEN[1].isr[1]_i_2 ));
FDRE \REG_GEN[1].isr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_REG_GEN[1].isr[1]_i_2 ),
        .Q(p_1_in25_in),
        .R(p_62_out));
FDRE \REG_GEN[2].IAR_NORMAL_MODE_GEN.iar_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I3),
        .Q(p_0_in59_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0C0C0C080C0C0008)) 
     \REG_GEN[2].ier[2]_i_1 
       (.I0(p_0_in22_in),
        .I1(s_axi_aresetn),
        .I2(p_0_in75_in),
        .I3(p_14_in),
        .I4(p_0_in104_in),
        .I5(s_axi_wdata[2]),
        .O(p_40_out));
FDRE \REG_GEN[2].ier_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_40_out),
        .Q(p_0_in22_in),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \REG_GEN[2].isr[2]_i_1 
       (.I0(p_0_in59_in),
        .I1(s_axi_aresetn),
        .O(p_60_out));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
     \REG_GEN[2].isr[2]_i_2 
       (.I0(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[2]),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_0_in),
        .I5(p_1_in23_in),
        .O(\n_0_REG_GEN[2].isr[2]_i_2 ));
FDRE \REG_GEN[2].isr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_REG_GEN[2].isr[2]_i_2 ),
        .Q(p_1_in23_in),
        .R(p_60_out));
FDRE \REG_GEN[3].IAR_NORMAL_MODE_GEN.iar_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I4),
        .Q(p_0_in57_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0C0C0C080C0C0008)) 
     \REG_GEN[3].ier[3]_i_1 
       (.I0(p_0_in20_in),
        .I1(s_axi_aresetn),
        .I2(p_0_in73_in),
        .I3(p_14_in),
        .I4(p_0_in94_in),
        .I5(s_axi_wdata[3]),
        .O(p_36_out));
FDRE \REG_GEN[3].ier_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_36_out),
        .Q(p_0_in20_in),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \REG_GEN[3].isr[3]_i_1 
       (.I0(p_0_in57_in),
        .I1(s_axi_aresetn),
        .O(p_58_out));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
     \REG_GEN[3].isr[3]_i_2 
       (.I0(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[3]),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_0_in),
        .I5(p_1_in21_in),
        .O(\n_0_REG_GEN[3].isr[3]_i_2 ));
FDRE \REG_GEN[3].isr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_REG_GEN[3].isr[3]_i_2 ),
        .Q(p_1_in21_in),
        .R(p_58_out));
FDRE \REG_GEN[4].IAR_NORMAL_MODE_GEN.iar_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I5),
        .Q(p_0_in55_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0C0C0C080C0C0008)) 
     \REG_GEN[4].ier[4]_i_1 
       (.I0(p_0_in18_in),
        .I1(s_axi_aresetn),
        .I2(p_0_in71_in),
        .I3(p_14_in),
        .I4(p_0_in84_in),
        .I5(s_axi_wdata[4]),
        .O(p_32_out));
FDRE \REG_GEN[4].ier_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_32_out),
        .Q(p_0_in18_in),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \REG_GEN[4].isr[4]_i_1 
       (.I0(p_0_in55_in),
        .I1(s_axi_aresetn),
        .O(p_56_out));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
     \REG_GEN[4].isr[4]_i_2 
       (.I0(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[4]),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_0_in),
        .I5(p_1_in19_in),
        .O(\n_0_REG_GEN[4].isr[4]_i_2 ));
FDRE \REG_GEN[4].isr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_REG_GEN[4].isr[4]_i_2 ),
        .Q(p_1_in19_in),
        .R(p_56_out));
FDRE \REG_GEN[5].IAR_NORMAL_MODE_GEN.iar_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I6),
        .Q(p_0_in53_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0C0C0C080C0C0008)) 
     \REG_GEN[5].ier[5]_i_1 
       (.I0(p_0_in16_in),
        .I1(s_axi_aresetn),
        .I2(p_0_in69_in),
        .I3(p_14_in),
        .I4(p_0_in74_in),
        .I5(s_axi_wdata[5]),
        .O(p_28_out));
FDRE \REG_GEN[5].ier_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_28_out),
        .Q(p_0_in16_in),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \REG_GEN[5].isr[5]_i_1 
       (.I0(p_0_in53_in),
        .I1(s_axi_aresetn),
        .O(p_54_out));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
     \REG_GEN[5].isr[5]_i_2 
       (.I0(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[5]),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_0_in),
        .I5(p_1_in17_in),
        .O(\n_0_REG_GEN[5].isr[5]_i_2 ));
FDRE \REG_GEN[5].isr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_REG_GEN[5].isr[5]_i_2 ),
        .Q(p_1_in17_in),
        .R(p_54_out));
FDRE \REG_GEN[6].IAR_NORMAL_MODE_GEN.iar_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I7),
        .Q(p_0_in51_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0C0C0C080C0C0008)) 
     \REG_GEN[6].ier[6]_i_1 
       (.I0(p_0_in14_in),
        .I1(s_axi_aresetn),
        .I2(p_0_in67_in),
        .I3(p_14_in),
        .I4(p_0_in64_in),
        .I5(s_axi_wdata[6]),
        .O(p_24_out));
FDRE \REG_GEN[6].ier_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_24_out),
        .Q(p_0_in14_in),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \REG_GEN[6].isr[6]_i_1 
       (.I0(p_0_in51_in),
        .I1(s_axi_aresetn),
        .O(p_52_out));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
     \REG_GEN[6].isr[6]_i_2 
       (.I0(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[6]),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_0_in),
        .I5(p_1_in15_in),
        .O(\n_0_REG_GEN[6].isr[6]_i_2 ));
FDRE \REG_GEN[6].isr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_REG_GEN[6].isr[6]_i_2 ),
        .Q(p_1_in15_in),
        .R(p_52_out));
FDRE \REG_GEN[7].IAR_NORMAL_MODE_GEN.iar_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I8),
        .Q(p_0_in49_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0C0C0C080C0C0008)) 
     \REG_GEN[7].ier[7]_i_1 
       (.I0(p_0_in13_in),
        .I1(s_axi_aresetn),
        .I2(p_0_in65_in),
        .I3(p_14_in),
        .I4(p_0_in54_in),
        .I5(s_axi_wdata[7]),
        .O(p_20_out));
FDRE \REG_GEN[7].ier_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_20_out),
        .Q(p_0_in13_in),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \REG_GEN[7].isr[7]_i_1 
       (.I0(p_0_in49_in),
        .I1(s_axi_aresetn),
        .O(p_50_out));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
     \REG_GEN[7].isr[7]_i_2 
       (.I0(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[7]),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_0_in),
        .I5(p_1_in),
        .O(\n_0_REG_GEN[7].isr[7]_i_2 ));
FDRE \REG_GEN[7].isr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_REG_GEN[7].isr[7]_i_2 ),
        .Q(p_1_in),
        .R(p_50_out));
FDRE \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I10),
        .Q(O3),
        .R(1'b0));
FDRE \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I11),
        .Q(p_0_in114_in),
        .R(1'b0));
FDRE \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I12),
        .Q(p_0_in104_in),
        .R(1'b0));
FDRE \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I13),
        .Q(p_0_in94_in),
        .R(1'b0));
FDRE \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I14),
        .Q(p_0_in84_in),
        .R(1'b0));
FDRE \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I15),
        .Q(p_0_in74_in),
        .R(1'b0));
FDRE \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I16),
        .Q(p_0_in64_in),
        .R(1'b0));
FDRE \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I17),
        .Q(p_0_in54_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
     irq_gen_i_1
       (.I0(n_0_irq_gen_i_2),
        .I1(p_1_in17_in),
        .I2(p_0_in16_in),
        .I3(n_0_irq_gen_i_3),
        .I4(p_1_in19_in),
        .I5(p_0_in18_in),
        .O(irq_gen_i));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     irq_gen_i_2
       (.I0(p_1_in),
        .I1(p_0_in13_in),
        .I2(p_0_in14_in),
        .I3(p_1_in15_in),
        .O(n_0_irq_gen_i_2));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT5 #(
    .INIT(32'hFFFFF888)) 
     irq_gen_i_3
       (.I0(p_1_in25_in),
        .I1(p_0_in24_in),
        .I2(\n_0_REG_GEN[0].isr_reg[0] ),
        .I3(\n_0_REG_GEN[0].ier_reg[0] ),
        .I4(\n_0_IVR_GEN.ivr[2]_i_2 ),
        .O(n_0_irq_gen_i_3));
FDRE irq_gen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_gen_i),
        .Q(irq_gen),
        .R(O1));
FDRE \mer_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I26),
        .Q(mer),
        .R(O1));
FDRE \mer_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I9),
        .Q(p_0_in),
        .R(O1));
LUT1 #(
    .INIT(2'h1)) 
     rst_i_1
       (.I0(s_axi_aresetn),
        .O(O1));
LUT6 #(
    .INIT(64'hFFFFFFFFE0002000)) 
     \s_axi_rdata_i[0]_i_4 
       (.I0(\n_0_IVR_GEN.ivr_reg[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(mer),
        .I5(\n_0_s_axi_rdata_i[0]_i_5 ),
        .O(O5));
LUT6 #(
    .INIT(64'h000000CC00F000AA)) 
     \s_axi_rdata_i[0]_i_5 
       (.I0(\n_0_REG_GEN[0].isr_reg[0] ),
        .I1(ipr[0]),
        .I2(\n_0_REG_GEN[0].ier_reg[0] ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\n_0_s_axi_rdata_i[0]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFFE0002000)) 
     \s_axi_rdata_i[1]_i_5 
       (.I0(\n_0_IVR_GEN.ivr_reg[1] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(p_0_in),
        .I5(\n_0_s_axi_rdata_i[1]_i_7 ),
        .O(O6));
LUT6 #(
    .INIT(64'h000000CC00F000AA)) 
     \s_axi_rdata_i[1]_i_7 
       (.I0(p_1_in25_in),
        .I1(ipr[1]),
        .I2(p_0_in24_in),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\n_0_s_axi_rdata_i[1]_i_7 ));
LUT4 #(
    .INIT(16'h8000)) 
     \s_axi_rdata_i[7]_i_3 
       (.I0(\n_0_IVR_GEN.ivr_reg[1] ),
        .I1(\n_0_IVR_GEN.ivr_reg[0] ),
        .I2(O7),
        .I3(O8),
        .O(data3));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module axi_intc_0_slave_attachment
   (O1,
    s_axi_rresp,
    O2,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    ip2bus_wrack_prev2,
    s_axi_arready,
    s_axi_awready,
    Q,
    p_14_in,
    ip2bus_rdack_prev2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    p_0_in2_out,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    p_0_in20_out,
    s_axi_rdata,
    I1,
    s_axi_aclk,
    ip2bus_wrack_int_d1,
    s_axi_aresetn,
    ip2bus_wrack,
    ip2bus_rdack,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready,
    ip2bus_rdack_int_d1,
    s_axi_wstrb,
    s_axi_wdata,
    p_0_in,
    I2,
    p_0_in114_in,
    p_0_in104_in,
    p_0_in94_in,
    p_0_in84_in,
    p_0_in74_in,
    p_0_in64_in,
    p_0_in54_in,
    I3,
    p_0_in77_in,
    p_0_in75_in,
    p_0_in73_in,
    p_0_in71_in,
    p_0_in69_in,
    p_0_in67_in,
    p_0_in65_in,
    mer,
    p_0_in49_in,
    p_0_in51_in,
    p_0_in53_in,
    p_0_in55_in,
    p_0_in57_in,
    p_0_in59_in,
    p_0_in61_in,
    I4,
    I5,
    I6,
    p_1_in23_in,
    I7,
    p_0_in22_in,
    p_1_in21_in,
    p_0_in20_in,
    data3,
    p_1_in19_in,
    p_0_in18_in,
    p_1_in17_in,
    p_0_in16_in,
    p_1_in15_in,
    p_0_in14_in,
    p_1_in,
    p_0_in13_in,
    I8,
    I9);
  output O1;
  output [0:0]s_axi_rresp;
  output O2;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output ip2bus_wrack_prev2;
  output s_axi_arready;
  output s_axi_awready;
  output [2:0]Q;
  output p_14_in;
  output ip2bus_rdack_prev2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output p_0_in2_out;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output p_0_in20_out;
  output [31:0]s_axi_rdata;
  input I1;
  input s_axi_aclk;
  input ip2bus_wrack_int_d1;
  input s_axi_aresetn;
  input ip2bus_wrack;
  input ip2bus_rdack;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;
  input ip2bus_rdack_int_d1;
  input [3:0]s_axi_wstrb;
  input [7:0]s_axi_wdata;
  input p_0_in;
  input I2;
  input p_0_in114_in;
  input p_0_in104_in;
  input p_0_in94_in;
  input p_0_in84_in;
  input p_0_in74_in;
  input p_0_in64_in;
  input p_0_in54_in;
  input I3;
  input p_0_in77_in;
  input p_0_in75_in;
  input p_0_in73_in;
  input p_0_in71_in;
  input p_0_in69_in;
  input p_0_in67_in;
  input p_0_in65_in;
  input mer;
  input p_0_in49_in;
  input p_0_in51_in;
  input p_0_in53_in;
  input p_0_in55_in;
  input p_0_in57_in;
  input p_0_in59_in;
  input p_0_in61_in;
  input I4;
  input I5;
  input I6;
  input p_1_in23_in;
  input [5:0]I7;
  input p_0_in22_in;
  input p_1_in21_in;
  input p_0_in20_in;
  input [0:0]data3;
  input p_1_in19_in;
  input p_0_in18_in;
  input p_1_in17_in;
  input p_0_in16_in;
  input p_1_in15_in;
  input p_0_in14_in;
  input p_1_in;
  input p_0_in13_in;
  input I8;
  input I9;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire [5:0]I7;
  wire I8;
  wire I9;
  wire [31:0]IP2Bus_Data;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [2:0]Q;
  wire clear;
  wire [0:0]data3;
  wire ip2bus_error;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire mer;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  wire \n_0_bus2ip_addr_i[2]_i_1 ;
  wire \n_0_bus2ip_addr_i[3]_i_1 ;
  wire \n_0_bus2ip_addr_i[4]_i_1 ;
  wire \n_0_bus2ip_addr_i[5]_i_1 ;
  wire \n_0_bus2ip_addr_i[6]_i_1 ;
  wire \n_0_bus2ip_addr_i[7]_i_1 ;
  wire \n_0_bus2ip_addr_i[8]_i_1 ;
  wire \n_0_bus2ip_addr_i[8]_i_2 ;
  wire n_0_bus2ip_rnw_i_i_1;
  wire n_0_bus2ip_rnw_i_i_2;
  wire n_0_bus2ip_rnw_i_reg;
  wire \n_0_s_axi_bresp_i[1]_i_1 ;
  wire n_0_s_axi_bvalid_i_i_1;
  wire \n_0_s_axi_rdata_i[0]_i_2 ;
  wire \n_0_s_axi_rdata_i[0]_i_3 ;
  wire \n_0_s_axi_rdata_i[10]_i_2 ;
  wire \n_0_s_axi_rdata_i[10]_i_3 ;
  wire \n_0_s_axi_rdata_i[11]_i_2 ;
  wire \n_0_s_axi_rdata_i[11]_i_3 ;
  wire \n_0_s_axi_rdata_i[12]_i_2 ;
  wire \n_0_s_axi_rdata_i[12]_i_3 ;
  wire \n_0_s_axi_rdata_i[13]_i_2 ;
  wire \n_0_s_axi_rdata_i[13]_i_3 ;
  wire \n_0_s_axi_rdata_i[14]_i_2 ;
  wire \n_0_s_axi_rdata_i[14]_i_3 ;
  wire \n_0_s_axi_rdata_i[15]_i_2 ;
  wire \n_0_s_axi_rdata_i[15]_i_3 ;
  wire \n_0_s_axi_rdata_i[16]_i_2 ;
  wire \n_0_s_axi_rdata_i[16]_i_3 ;
  wire \n_0_s_axi_rdata_i[17]_i_2 ;
  wire \n_0_s_axi_rdata_i[17]_i_3 ;
  wire \n_0_s_axi_rdata_i[18]_i_2 ;
  wire \n_0_s_axi_rdata_i[18]_i_3 ;
  wire \n_0_s_axi_rdata_i[19]_i_2 ;
  wire \n_0_s_axi_rdata_i[19]_i_3 ;
  wire \n_0_s_axi_rdata_i[1]_i_2 ;
  wire \n_0_s_axi_rdata_i[1]_i_4 ;
  wire \n_0_s_axi_rdata_i[20]_i_2 ;
  wire \n_0_s_axi_rdata_i[20]_i_3 ;
  wire \n_0_s_axi_rdata_i[21]_i_2 ;
  wire \n_0_s_axi_rdata_i[21]_i_3 ;
  wire \n_0_s_axi_rdata_i[22]_i_2 ;
  wire \n_0_s_axi_rdata_i[22]_i_3 ;
  wire \n_0_s_axi_rdata_i[23]_i_2 ;
  wire \n_0_s_axi_rdata_i[23]_i_3 ;
  wire \n_0_s_axi_rdata_i[24]_i_2 ;
  wire \n_0_s_axi_rdata_i[24]_i_3 ;
  wire \n_0_s_axi_rdata_i[25]_i_2 ;
  wire \n_0_s_axi_rdata_i[25]_i_3 ;
  wire \n_0_s_axi_rdata_i[26]_i_2 ;
  wire \n_0_s_axi_rdata_i[26]_i_3 ;
  wire \n_0_s_axi_rdata_i[27]_i_2 ;
  wire \n_0_s_axi_rdata_i[27]_i_3 ;
  wire \n_0_s_axi_rdata_i[28]_i_2 ;
  wire \n_0_s_axi_rdata_i[28]_i_3 ;
  wire \n_0_s_axi_rdata_i[29]_i_2 ;
  wire \n_0_s_axi_rdata_i[29]_i_3 ;
  wire \n_0_s_axi_rdata_i[2]_i_2 ;
  wire \n_0_s_axi_rdata_i[2]_i_3 ;
  wire \n_0_s_axi_rdata_i[2]_i_4 ;
  wire \n_0_s_axi_rdata_i[30]_i_2 ;
  wire \n_0_s_axi_rdata_i[30]_i_3 ;
  wire \n_0_s_axi_rdata_i[31]_i_1 ;
  wire \n_0_s_axi_rdata_i[31]_i_3 ;
  wire \n_0_s_axi_rdata_i[31]_i_5 ;
  wire \n_0_s_axi_rdata_i[3]_i_2 ;
  wire \n_0_s_axi_rdata_i[3]_i_3 ;
  wire \n_0_s_axi_rdata_i[3]_i_4 ;
  wire \n_0_s_axi_rdata_i[4]_i_2 ;
  wire \n_0_s_axi_rdata_i[4]_i_3 ;
  wire \n_0_s_axi_rdata_i[5]_i_2 ;
  wire \n_0_s_axi_rdata_i[5]_i_3 ;
  wire \n_0_s_axi_rdata_i[6]_i_2 ;
  wire \n_0_s_axi_rdata_i[6]_i_3 ;
  wire \n_0_s_axi_rdata_i[7]_i_2 ;
  wire \n_0_s_axi_rdata_i[7]_i_4 ;
  wire \n_0_s_axi_rdata_i[7]_i_5 ;
  wire \n_0_s_axi_rdata_i[7]_i_6 ;
  wire \n_0_s_axi_rdata_i[7]_i_7 ;
  wire \n_0_s_axi_rdata_i[8]_i_2 ;
  wire \n_0_s_axi_rdata_i[8]_i_3 ;
  wire \n_0_s_axi_rdata_i[9]_i_2 ;
  wire \n_0_s_axi_rdata_i[9]_i_3 ;
  wire n_0_s_axi_rvalid_i_i_1;
  wire n_0_start2_i_1;
  wire \n_0_state[0]_i_1 ;
  wire \n_0_state[1]_i_1 ;
  wire \n_0_state[1]_i_2 ;
  wire p_0_in;
  wire p_0_in104_in;
  wire p_0_in114_in;
  wire p_0_in13_in;
  wire p_0_in14_in;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire p_0_in20_in;
  wire p_0_in20_out;
  wire p_0_in22_in;
  wire p_0_in2_out;
  wire p_0_in49_in;
  wire p_0_in51_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in57_in;
  wire p_0_in59_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in67_in;
  wire p_0_in69_in;
  wire p_0_in71_in;
  wire p_0_in73_in;
  wire p_0_in74_in;
  wire p_0_in75_in;
  wire p_0_in77_in;
  wire p_0_in84_in;
  wire p_0_in94_in;
  wire p_14_in;
  wire p_1_in;
  wire p_1_in15_in;
  wire p_1_in17_in;
  wire p_1_in19_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire [3:0]plusOp;
  wire [6:3]register_addr;
  wire rst;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [7:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start2;
  wire [1:0]state;
  wire state1;
  wire timeout;

(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .I2(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .O(plusOp[2]));
LUT2 #(
    .INIT(4'h9)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I2(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .I3(timeout),
        .O(plusOp[3]));
FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .R(clear));
FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .R(clear));
FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .R(clear));
FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(timeout),
        .R(clear));
axi_intc_0_address_decoder I_DECODER
       (.D(IP2Bus_Data),
        .I1(\n_0_s_axi_rdata_i[8]_i_2 ),
        .I10(\n_0_s_axi_rdata_i[12]_i_2 ),
        .I11(\n_0_s_axi_rdata_i[12]_i_3 ),
        .I12(\n_0_s_axi_rdata_i[13]_i_2 ),
        .I13(\n_0_s_axi_rdata_i[13]_i_3 ),
        .I14(\n_0_s_axi_rdata_i[14]_i_2 ),
        .I15(\n_0_s_axi_rdata_i[14]_i_3 ),
        .I16(\n_0_s_axi_rdata_i[15]_i_2 ),
        .I17(\n_0_s_axi_rdata_i[15]_i_3 ),
        .I18(\n_0_s_axi_rdata_i[16]_i_2 ),
        .I19(\n_0_s_axi_rdata_i[16]_i_3 ),
        .I2(\n_0_s_axi_rdata_i[8]_i_3 ),
        .I20(\n_0_s_axi_rdata_i[17]_i_2 ),
        .I21(\n_0_s_axi_rdata_i[17]_i_3 ),
        .I22(\n_0_s_axi_rdata_i[18]_i_2 ),
        .I23(\n_0_s_axi_rdata_i[18]_i_3 ),
        .I24(\n_0_s_axi_rdata_i[19]_i_2 ),
        .I25(\n_0_s_axi_rdata_i[19]_i_3 ),
        .I26(\n_0_s_axi_rdata_i[20]_i_2 ),
        .I27(\n_0_s_axi_rdata_i[20]_i_3 ),
        .I28(\n_0_s_axi_rdata_i[21]_i_2 ),
        .I29(\n_0_s_axi_rdata_i[21]_i_3 ),
        .I3({register_addr,Q}),
        .I30(\n_0_s_axi_rdata_i[22]_i_2 ),
        .I31(\n_0_s_axi_rdata_i[22]_i_3 ),
        .I32(\n_0_s_axi_rdata_i[23]_i_2 ),
        .I33(\n_0_s_axi_rdata_i[23]_i_3 ),
        .I34(\n_0_s_axi_rdata_i[24]_i_2 ),
        .I35(\n_0_s_axi_rdata_i[24]_i_3 ),
        .I36(\n_0_s_axi_rdata_i[25]_i_2 ),
        .I37(\n_0_s_axi_rdata_i[25]_i_3 ),
        .I38(\n_0_s_axi_rdata_i[26]_i_2 ),
        .I39(\n_0_s_axi_rdata_i[26]_i_3 ),
        .I4(\n_0_s_axi_rdata_i[9]_i_2 ),
        .I40(\n_0_s_axi_rdata_i[27]_i_2 ),
        .I41(\n_0_s_axi_rdata_i[27]_i_3 ),
        .I42(\n_0_s_axi_rdata_i[28]_i_2 ),
        .I43(\n_0_s_axi_rdata_i[28]_i_3 ),
        .I44(\n_0_s_axi_rdata_i[29]_i_2 ),
        .I45(\n_0_s_axi_rdata_i[29]_i_3 ),
        .I46(\n_0_s_axi_rdata_i[30]_i_2 ),
        .I47(\n_0_s_axi_rdata_i[30]_i_3 ),
        .I48(\n_0_s_axi_rdata_i[31]_i_3 ),
        .I49(\n_0_s_axi_rdata_i[31]_i_5 ),
        .I5(\n_0_s_axi_rdata_i[9]_i_3 ),
        .I50(I2),
        .I51(I3),
        .I52(I4),
        .I53(\n_0_s_axi_rdata_i[0]_i_2 ),
        .I54(\n_0_s_axi_rdata_i[0]_i_3 ),
        .I55(I5),
        .I56(\n_0_s_axi_rdata_i[1]_i_2 ),
        .I57(\n_0_s_axi_rdata_i[1]_i_4 ),
        .I58(I6),
        .I59(\n_0_s_axi_rdata_i[2]_i_2 ),
        .I6(\n_0_s_axi_rdata_i[10]_i_2 ),
        .I60(\n_0_s_axi_rdata_i[2]_i_3 ),
        .I61(\n_0_s_axi_rdata_i[3]_i_2 ),
        .I62(\n_0_s_axi_rdata_i[3]_i_3 ),
        .I63(\n_0_s_axi_rdata_i[4]_i_2 ),
        .I64(\n_0_s_axi_rdata_i[7]_i_4 ),
        .I65(\n_0_s_axi_rdata_i[7]_i_5 ),
        .I66(\n_0_s_axi_rdata_i[5]_i_2 ),
        .I67(\n_0_s_axi_rdata_i[6]_i_2 ),
        .I68(\n_0_s_axi_rdata_i[7]_i_2 ),
        .I69(n_0_bus2ip_rnw_i_reg),
        .I7(\n_0_s_axi_rdata_i[10]_i_3 ),
        .I8(\n_0_s_axi_rdata_i[11]_i_2 ),
        .I9(\n_0_s_axi_rdata_i[11]_i_3 ),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(O2),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(timeout),
        .data3(data3),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .mer(mer),
        .p_0_in(p_0_in),
        .p_0_in104_in(p_0_in104_in),
        .p_0_in114_in(p_0_in114_in),
        .p_0_in20_out(p_0_in20_out),
        .p_0_in2_out(p_0_in2_out),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in51_in(p_0_in51_in),
        .p_0_in53_in(p_0_in53_in),
        .p_0_in54_in(p_0_in54_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in57_in(p_0_in57_in),
        .p_0_in59_in(p_0_in59_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in65_in(p_0_in65_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in69_in(p_0_in69_in),
        .p_0_in71_in(p_0_in71_in),
        .p_0_in73_in(p_0_in73_in),
        .p_0_in74_in(p_0_in74_in),
        .p_0_in75_in(p_0_in75_in),
        .p_0_in77_in(p_0_in77_in),
        .p_0_in84_in(p_0_in84_in),
        .p_0_in94_in(p_0_in94_in),
        .p_14_in(p_14_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .start2(start2));
LUT5 #(
    .INIT(32'hFEFF0200)) 
     \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[0]),
        .O(\n_0_bus2ip_addr_i[2]_i_1 ));
LUT5 #(
    .INIT(32'hFEFF0200)) 
     \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[1]),
        .O(\n_0_bus2ip_addr_i[3]_i_1 ));
LUT5 #(
    .INIT(32'hFEFF0200)) 
     \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[2]),
        .O(\n_0_bus2ip_addr_i[4]_i_1 ));
LUT5 #(
    .INIT(32'hFEFF0200)) 
     \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[3]),
        .O(\n_0_bus2ip_addr_i[5]_i_1 ));
LUT5 #(
    .INIT(32'hFEFF0200)) 
     \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[4]),
        .O(\n_0_bus2ip_addr_i[6]_i_1 ));
LUT5 #(
    .INIT(32'hFEFF0200)) 
     \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[5]),
        .O(\n_0_bus2ip_addr_i[7]_i_1 ));
LUT5 #(
    .INIT(32'h03020202)) 
     \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .O(\n_0_bus2ip_addr_i[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'hFEFF0200)) 
     \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awaddr[6]),
        .O(\n_0_bus2ip_addr_i[8]_i_2 ));
FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[2]_i_1 ),
        .Q(Q[0]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[3]_i_1 ),
        .Q(Q[1]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[4]_i_1 ),
        .Q(Q[2]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[5]_i_1 ),
        .Q(register_addr[3]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[6]_i_1 ),
        .Q(register_addr[4]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[7]_i_1 ),
        .Q(register_addr[5]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[8]_i_2 ),
        .Q(register_addr[6]),
        .R(rst));
LUT6 #(
    .INIT(64'h5515555555000000)) 
     bus2ip_rnw_i_i_1
       (.I0(rst),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_arvalid),
        .I4(n_0_bus2ip_rnw_i_i_2),
        .I5(n_0_bus2ip_rnw_i_reg),
        .O(n_0_bus2ip_rnw_i_i_1));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h1)) 
     bus2ip_rnw_i_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .O(n_0_bus2ip_rnw_i_i_2));
FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_bus2ip_rnw_i_i_1),
        .Q(n_0_bus2ip_rnw_i_reg),
        .R(1'b0));
FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(rst),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT2 #(
    .INIT(4'hE)) 
     s_axi_arready_INST_0
       (.I0(ip2bus_rdack),
        .I1(timeout),
        .O(s_axi_arready));
LUT4 #(
    .INIT(16'hFB08)) 
     \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bresp),
        .O(\n_0_s_axi_bresp_i[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_s_axi_bresp_i[1]_i_1 ),
        .Q(s_axi_bresp),
        .R(rst));
LUT6 #(
    .INIT(64'h1111511100005000)) 
     s_axi_bvalid_i_i_1
       (.I0(rst),
        .I1(s_axi_bready),
        .I2(s_axi_awready),
        .I3(state[1]),
        .I4(state[0]),
        .I5(s_axi_bvalid),
        .O(n_0_s_axi_bvalid_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_s_axi_bvalid_i_i_1),
        .Q(s_axi_bvalid),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \s_axi_rdata_i[0]_i_2 
       (.I0(register_addr[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\n_0_s_axi_rdata_i[0]_i_2 ));
LUT6 #(
    .INIT(64'h000000000000001F)) 
     \s_axi_rdata_i[0]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(register_addr[3]),
        .I3(register_addr[5]),
        .I4(register_addr[6]),
        .I5(register_addr[4]),
        .O(\n_0_s_axi_rdata_i[0]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[10]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[10]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[10]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[10]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[11]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[11]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[11]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[11]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[12]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[12]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[12]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[12]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[13]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[13]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[13]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[13]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[14]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[14]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[14]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[14]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[15]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[15]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[15]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[15]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[16]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[16]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[16]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[16]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[17]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[17]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[17]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[17]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[18]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[18]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[18]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[18]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[19]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[19]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[19]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[19]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \s_axi_rdata_i[1]_i_2 
       (.I0(register_addr[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\n_0_s_axi_rdata_i[1]_i_2 ));
LUT6 #(
    .INIT(64'h000000000000001F)) 
     \s_axi_rdata_i[1]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(register_addr[3]),
        .I3(register_addr[5]),
        .I4(register_addr[6]),
        .I5(register_addr[4]),
        .O(\n_0_s_axi_rdata_i[1]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[20]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[20]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[20]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[20]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[21]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[21]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[21]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[21]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[22]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[22]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[22]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[22]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[23]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[23]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[23]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[23]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[24]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[24]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[24]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[24]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[25]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[25]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[25]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[25]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[26]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[26]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[26]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[26]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[27]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[27]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[27]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[27]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[28]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[28]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[28]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[28]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[29]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[29]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[29]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[29]_i_3 ));
LUT6 #(
    .INIT(64'h0500004005050545)) 
     \s_axi_rdata_i[2]_i_2 
       (.I0(\n_0_s_axi_rdata_i[7]_i_6 ),
        .I1(Q[0]),
        .I2(register_addr[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\n_0_s_axi_rdata_i[2]_i_4 ),
        .O(\n_0_s_axi_rdata_i[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'h0000B000)) 
     \s_axi_rdata_i[2]_i_3 
       (.I0(Q[0]),
        .I1(I8),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[2]_i_3 ));
LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
     \s_axi_rdata_i[2]_i_4 
       (.I0(Q[2]),
        .I1(p_1_in23_in),
        .I2(Q[0]),
        .I3(I7[0]),
        .I4(Q[1]),
        .I5(p_0_in22_in),
        .O(\n_0_s_axi_rdata_i[2]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[30]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[30]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[30]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[30]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\n_0_s_axi_rdata_i[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[31]_i_3 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[31]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[31]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[31]_i_5 ));
LUT6 #(
    .INIT(64'h0500004005050545)) 
     \s_axi_rdata_i[3]_i_2 
       (.I0(\n_0_s_axi_rdata_i[7]_i_6 ),
        .I1(Q[0]),
        .I2(register_addr[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\n_0_s_axi_rdata_i[3]_i_4 ),
        .O(\n_0_s_axi_rdata_i[3]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h0000B000)) 
     \s_axi_rdata_i[3]_i_3 
       (.I0(Q[0]),
        .I1(I9),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[3]_i_3 ));
LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
     \s_axi_rdata_i[3]_i_4 
       (.I0(Q[2]),
        .I1(p_1_in21_in),
        .I2(Q[0]),
        .I3(I7[1]),
        .I4(Q[1]),
        .I5(p_0_in20_in),
        .O(\n_0_s_axi_rdata_i[3]_i_4 ));
LUT6 #(
    .INIT(64'h0500004005050545)) 
     \s_axi_rdata_i[4]_i_2 
       (.I0(\n_0_s_axi_rdata_i[7]_i_6 ),
        .I1(Q[0]),
        .I2(register_addr[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\n_0_s_axi_rdata_i[4]_i_3 ),
        .O(\n_0_s_axi_rdata_i[4]_i_2 ));
LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
     \s_axi_rdata_i[4]_i_3 
       (.I0(Q[2]),
        .I1(p_1_in19_in),
        .I2(Q[0]),
        .I3(I7[2]),
        .I4(Q[1]),
        .I5(p_0_in18_in),
        .O(\n_0_s_axi_rdata_i[4]_i_3 ));
LUT6 #(
    .INIT(64'h0500004005050545)) 
     \s_axi_rdata_i[5]_i_2 
       (.I0(\n_0_s_axi_rdata_i[7]_i_6 ),
        .I1(Q[0]),
        .I2(register_addr[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\n_0_s_axi_rdata_i[5]_i_3 ),
        .O(\n_0_s_axi_rdata_i[5]_i_2 ));
LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
     \s_axi_rdata_i[5]_i_3 
       (.I0(Q[2]),
        .I1(p_1_in17_in),
        .I2(Q[0]),
        .I3(I7[3]),
        .I4(Q[1]),
        .I5(p_0_in16_in),
        .O(\n_0_s_axi_rdata_i[5]_i_3 ));
LUT6 #(
    .INIT(64'h0500004005050545)) 
     \s_axi_rdata_i[6]_i_2 
       (.I0(\n_0_s_axi_rdata_i[7]_i_6 ),
        .I1(Q[0]),
        .I2(register_addr[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\n_0_s_axi_rdata_i[6]_i_3 ),
        .O(\n_0_s_axi_rdata_i[6]_i_2 ));
LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
     \s_axi_rdata_i[6]_i_3 
       (.I0(Q[2]),
        .I1(p_1_in15_in),
        .I2(Q[0]),
        .I3(I7[4]),
        .I4(Q[1]),
        .I5(p_0_in14_in),
        .O(\n_0_s_axi_rdata_i[6]_i_3 ));
LUT6 #(
    .INIT(64'h0500004005050545)) 
     \s_axi_rdata_i[7]_i_2 
       (.I0(\n_0_s_axi_rdata_i[7]_i_6 ),
        .I1(Q[0]),
        .I2(register_addr[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\n_0_s_axi_rdata_i[7]_i_7 ),
        .O(\n_0_s_axi_rdata_i[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'h8F)) 
     \s_axi_rdata_i[7]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\n_0_s_axi_rdata_i[7]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT2 #(
    .INIT(4'h7)) 
     \s_axi_rdata_i[7]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\n_0_s_axi_rdata_i[7]_i_5 ));
LUT3 #(
    .INIT(8'hFE)) 
     \s_axi_rdata_i[7]_i_6 
       (.I0(register_addr[4]),
        .I1(register_addr[6]),
        .I2(register_addr[5]),
        .O(\n_0_s_axi_rdata_i[7]_i_6 ));
LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
     \s_axi_rdata_i[7]_i_7 
       (.I0(Q[2]),
        .I1(p_1_in),
        .I2(Q[0]),
        .I3(I7[5]),
        .I4(Q[1]),
        .I5(p_0_in13_in),
        .O(\n_0_s_axi_rdata_i[7]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[8]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[8]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[8]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[8]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'h0000D000)) 
     \s_axi_rdata_i[9]_i_2 
       (.I0(data3),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[9]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'hFD3F)) 
     \s_axi_rdata_i[9]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(register_addr[3]),
        .O(\n_0_s_axi_rdata_i[9]_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[16]),
        .Q(s_axi_rdata[16]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[17]),
        .Q(s_axi_rdata[17]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[18]),
        .Q(s_axi_rdata[18]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[19]),
        .Q(s_axi_rdata[19]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[20]),
        .Q(s_axi_rdata[20]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[21]),
        .Q(s_axi_rdata[21]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[22]),
        .Q(s_axi_rdata[22]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[23]),
        .Q(s_axi_rdata[23]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[24]),
        .Q(s_axi_rdata[24]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[25]),
        .Q(s_axi_rdata[25]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[26]),
        .Q(s_axi_rdata[26]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[27]),
        .Q(s_axi_rdata[27]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[28]),
        .Q(s_axi_rdata[28]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[29]),
        .Q(s_axi_rdata[29]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[30]),
        .Q(s_axi_rdata[30]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[31]),
        .Q(s_axi_rdata[31]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(IP2Bus_Data[9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
LUT5 #(
    .INIT(32'h070F0F0F)) 
     \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_wstrb[2]),
        .I2(n_0_bus2ip_rnw_i_reg),
        .I3(s_axi_wstrb[0]),
        .I4(s_axi_wstrb[3]),
        .O(ip2bus_error));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(rst));
LUT6 #(
    .INIT(64'h5551111155500000)) 
     s_axi_rvalid_i_i_1
       (.I0(rst),
        .I1(s_axi_rready),
        .I2(ip2bus_rdack),
        .I3(timeout),
        .I4(\n_0_s_axi_rdata_i[31]_i_1 ),
        .I5(s_axi_rvalid),
        .O(n_0_s_axi_rvalid_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_s_axi_rvalid_i_i_1),
        .Q(s_axi_rvalid),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT2 #(
    .INIT(4'hE)) 
     s_axi_wready_INST_0
       (.I0(ip2bus_wrack),
        .I1(timeout),
        .O(s_axi_awready));
LUT6 #(
    .INIT(64'h0000000011101010)) 
     start2_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(s_axi_arvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(rst),
        .O(n_0_start2_i_1));
FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_start2_i_1),
        .Q(start2),
        .R(1'b0));
LUT6 #(
    .INIT(64'h000000007722FAFA)) 
     \state[0]_i_1 
       (.I0(state[0]),
        .I1(state1),
        .I2(s_axi_arvalid),
        .I3(s_axi_awready),
        .I4(state[1]),
        .I5(rst),
        .O(\n_0_state[0]_i_1 ));
LUT6 #(
    .INIT(64'h00000000BBBBFAAA)) 
     \state[1]_i_1 
       (.I0(\n_0_state[1]_i_2 ),
        .I1(state1),
        .I2(s_axi_arready),
        .I3(state[0]),
        .I4(state[1]),
        .I5(rst),
        .O(\n_0_state[1]_i_1 ));
LUT5 #(
    .INIT(32'h00FF0008)) 
     \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[0]),
        .I4(state[1]),
        .O(\n_0_state[1]_i_2 ));
LUT4 #(
    .INIT(16'hF888)) 
     \state[1]_i_3 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(state1));
FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_state[0]_i_1 ),
        .Q(state[0]),
        .R(1'b0));
FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_state[1]_i_1 ),
        .Q(state[1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
