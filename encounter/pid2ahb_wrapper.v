//------------------------------------------------------------------------------
// WUSTL ESE 566
// Authors: Luke Kirchner
// Date: 11/29/1015
//
// Description: Wrapper to translate HLS PID to AHB Lite interface
//
// Testing: TODO
// 
//------------------------------------------------------------------------------
//`include "../workloads/workload_PID/hls/fixp/pid_synth/PID_Controller.v"

module pid2ahb_wrapper (
    // Clock and reset
    HCLK,
    HRESETn,
    // AHB Interface
                ex_i_ahb_AHB_Slave_PID_hrdata,
                ex_i_ahb_AHB_Slave_PID_hready_resp,
                ex_i_ahb_AHB_Slave_PID_hresp,
                ex_i_ahb_AHB_Slave_PID_haddr,
                ex_i_ahb_AHB_Slave_PID_hburst,
                ex_i_ahb_AHB_Slave_PID_hmastlock,
                ex_i_ahb_AHB_Slave_PID_hprot,
                ex_i_ahb_AHB_Slave_PID_hready,
                ex_i_ahb_AHB_Slave_PID_hsel,
                ex_i_ahb_AHB_Slave_PID_hsize,
                ex_i_ahb_AHB_Slave_PID_htrans,
                ex_i_ahb_AHB_Slave_PID_hwdata,
                ex_i_ahb_AHB_Slave_PID_hwrite,
    // Duty out
    dout_0_pid,
    dout_1_pid
);

// Ports for Interface ex_i_ahb_AHB_Slave_PID
input           HCLK;
input           HRESETn;
output  [31:0]  ex_i_ahb_AHB_Slave_PID_hrdata;
output          ex_i_ahb_AHB_Slave_PID_hready_resp;
output  [1:0]   ex_i_ahb_AHB_Slave_PID_hresp;
input   [31:0]  ex_i_ahb_AHB_Slave_PID_haddr;
input   [2:0]   ex_i_ahb_AHB_Slave_PID_hburst; //Don't use
input           ex_i_ahb_AHB_Slave_PID_hmastlock; //Don't use
input   [3:0]   ex_i_ahb_AHB_Slave_PID_hprot; //Don't use
input           ex_i_ahb_AHB_Slave_PID_hready;
input           ex_i_ahb_AHB_Slave_PID_hsel;
input   [2:0]   ex_i_ahb_AHB_Slave_PID_hsize;
input   [1:0]   ex_i_ahb_AHB_Slave_PID_htrans;
input   [31:0]  ex_i_ahb_AHB_Slave_PID_hwdata;
input           ex_i_ahb_AHB_Slave_PID_hwrite;
output reg[24:0] dout_0_pid;
output reg[24:0] dout_1_pid;

// Asssign output values
wire [31:0] hrdata_wire;
wire [1:0] hresp_wire;
wire  hready_resp_wire;
assign hrdata_wire = 32'b0;
assign hresp_wire = 2'b0;
assign hready_resp_wire = 1'b1;
assign ex_i_ahb_AHB_Slave_PID_hrdata = hrdata_wire;
assign ex_i_ahb_AHB_Slave_PID_hresp = hresp_wire;
assign ex_i_ahb_AHB_Slave_PID_hready_resp = hready_resp_wire;
// Register map
parameter [11:0] INITN_ADDR= 12'h000;
parameter [11:0] COEFF0_ADDR= 12'h004;
parameter [11:0] COEFF1_ADDR= 12'h008;
parameter [11:0] COEFF2_ADDR= 12'h00c;
parameter [11:0] COEFF3_ADDR= 12'h010;
parameter [11:0] COEFF4_ADDR= 12'h014;
parameter [11:0] COEFF5_ADDR= 12'h018;
parameter [11:0] DIN0_ADDR= 12'h01c;
parameter [11:0] DIN1_ADDR= 12'h020;

// Wrapper registers
reg InitN_reg;
reg [24:0] coeff0_reg;
reg [24:0] coeff1_reg;
reg [24:0] coeff2_reg;
reg [24:0] coeff3_reg;
reg [24:0] coeff4_reg;
reg [24:0] coeff5_reg;
reg [24:0] din0_reg;
reg [24:0] din1_reg;

// PID inputs
reg InitN_in;
reg [24:0] coeff0_in;
reg [24:0] coeff1_in;
reg [24:0] coeff2_in;
reg [24:0] coeff3_in;
reg [24:0] coeff4_in;
reg [24:0] coeff5_in;
reg [24:0] din0_in;
reg [24:0] din1_in;

// Pick off register offset
reg [11:0] addr_offset;
always @(posedge HCLK) begin
	addr_offset <= ex_i_ahb_AHB_Slave_PID_haddr[11:0];
end

// Delay AHB signals
reg hsel_d;
reg hwrite_d;
always @ (posedge HCLK ) begin
    hsel_d <= ex_i_ahb_AHB_Slave_PID_hsel;
    hwrite_d <= ex_i_ahb_AHB_Slave_PID_hwrite;
end

// PID_Controller ap interface signals
reg ap_start_top;
always @(posedge HCLK) begin
	ap_start_top <= !HRESETn;
end
wire ap_done_top;
wire ap_idle_top;
wire ap_ready_top;
wire [24:0] dout_0_pid_wire;
wire [24:0] dout_1_pid_wire;
reg ap_ce_top;
always @(posedge HCLK) begin
	ap_ce_top <= 1'b1;
end

//------------------------------------------------------------------------------
// Instantiate PID Accelerator
//------------------------------------------------------------------------------
PID_Controller PID_Controller_inst(
    .ap_clk(HCLK),
    .ap_rst(HRESETn),
    .ap_start(ap_start_top),
    .ap_done(ap_done_top),
    .ap_idle(ap_idle_top),
    .ap_ready(ap_ready_top),
    .InitN(InitN_reg),
    .coeff_0_V(coeff0_reg),
    .coeff_1_V(coeff1_reg),
    .coeff_2_V(coeff2_reg),
    .coeff_3_V(coeff3_reg),
    .coeff_4_V(coeff4_reg),
    .coeff_5_V(coeff5_reg),
    .din_0_V(din0_reg),
    .din_1_V(din1_reg),
    .dout_0_V(dout_0_pid_wire),
    .dout_1_V(dout_1_pid_wire),
    .ap_ce(ap_ce_top)
);

// Access wrapper registers
always @ (posedge HCLK) begin : register_access 
    if (HRESETn == 1'b0) begin
        InitN_reg <= 1'b0;
        coeff0_reg <= 25'b0;
        coeff1_reg <= 25'b0;
        coeff2_reg <= 25'b0;
        coeff3_reg <= 25'b0;
        coeff4_reg <= 25'b0;
        coeff5_reg <= 25'b0;
	    din0_reg <= 25'b0;
	    din1_reg <= 25'b0;
        dout_0_pid <= 8'b0;
	    dout_1_pid <= 8'b0;
    end 
    else begin // Address decode
        if (hsel_d == 1'b1) begin
            if ((hwrite_d == 1'b1)) begin // Write
                if ((addr_offset == INITN_ADDR)) begin
                    InitN_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end 
                else if ((addr_offset == COEFF0_ADDR)) begin
                    coeff0_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end
                else if ((addr_offset == COEFF1_ADDR)) begin
                    coeff1_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end 
                else if ((addr_offset == COEFF2_ADDR)) begin
                    coeff2_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end 
                else if ((addr_offset == COEFF3_ADDR)) begin
                    coeff3_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end 
                else if ((addr_offset == COEFF4_ADDR)) begin
                    coeff4_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end 
                else if ((addr_offset == COEFF5_ADDR)) begin
                    coeff5_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end 
                else if ((addr_offset == DIN0_ADDR)) begin
                    din0_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end 
                else if ((addr_offset == DIN1_ADDR)) begin
                    din1_reg <= ex_i_ahb_AHB_Slave_PID_hwdata;
                end 
            end
        end
        // Drive output
	    dout_0_pid <= dout_0_pid_wire;
	    dout_1_pid <= dout_1_pid_wire;
    end
end

// Assign inputs
always @ (posedge HCLK) begin : assign_inputs 
    InitN_in <= InitN_reg;
    coeff0_in <= coeff0_reg;
    coeff1_in <= coeff1_reg;
    coeff2_in <= coeff2_reg;
    coeff3_in <= coeff3_reg;
    coeff4_in <= coeff4_reg;
    coeff5_in <= coeff5_reg;
    din0_in <= din0_reg;
    din1_in <= din1_reg;
end
endmodule
