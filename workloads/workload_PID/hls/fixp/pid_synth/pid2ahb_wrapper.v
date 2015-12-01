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
output reg[7:0] dout_0_pid;
output reg[7:0] dout_1_pid;

// Register map
parameter [15:0] INITN_ADDR= 16'h0000;
parameter [15:0] COEFF0_ADDR= 16'h0004;
parameter [15:0] COEFF1_ADDR= 16'h0008;
parameter [15:0] COEFF2_ADDR= 16'h000c;
parameter [15:0] COEFF3_ADDR= 16'h0010;
parameter [15:0] COEFF4_ADDR= 16'h0014;
parameter [15:0] COEFF5_ADDR= 16'h0018;
parameter [15:0] DIN0_ADDR= 16'h001c;
parameter [15:0] DIN1_ADDR= 16'h0020;

// Wrapper registers
reg InitN_reg;
reg coeff0_reg [24:0];
reg coeff1_reg [24:0];
reg coeff2_reg [24:0];
reg coeff3_reg [24:0];
reg coeff4_reg [24:0];
reg coeff5_reg [24:0];
reg din0_reg [24:0];
reg din1_reg [24:0];

// PID inputs
reg InitN_in;
reg coeff0_in [24:0];
reg coeff1_in [24:0];
reg coeff2_in [24:0];
reg coeff3_in [24:0];
reg coeff4_in [24:0];
reg coeff5_in [24:0];
reg din0_in [24:0];
reg din1_in [24:0];

// Pick off register offset
reg addr_offset [15:0];
assign addr_offset = ex_i_ahb_AHB_Slave_PID_haddr[15:0];

// PID_Controller ap interface signals
reg ap_start_top;
assign ap_start_top = !HRESETn;
reg ap_done_top;
reg ap_idle_top;
reg ap_ready_top;
reg ap_ce_top;
assign ap_ce_top = 1'b1;

//------------------------------------------------------------------------------
// Instantiate PID Accelerator
//------------------------------------------------------------------------------
gen_pwm gen_pwm_inst(
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
    .dout_0_V(dout_0_pid),
    .dout_1_V(dout_1_pid),
    .ap_ce(ap_ce_top)
);

// Access wrapper registers
always @ (posedge HCLK) begin : register_access 
    if (HRESETn == 1'b1) begin
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
        if ((ex_i_ahb_AHB_Slave_PID_hwrite == 1'b1)) begin // Write
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
