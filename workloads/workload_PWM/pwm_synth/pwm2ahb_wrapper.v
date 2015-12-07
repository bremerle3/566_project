//------------------------------------------------------------------------------
// WUSTL ESE 566
// Authors: Leo Bremer
// Date: 11/27/1015
//
// Description: Wrapper to translate HLS PWM to AHB Lite interface
//
// Testing: TODO
// 
//------------------------------------------------------------------------------
//`include "../workloads/workload_PWM/pwm_synth/gen_pwm.v"

module pwm2ahb_wrapper (
    // Clock and reset
    HCLK,
    HRESETn,
    // AHB Interface
    ex_i_ahb_AHB_Slave_PWM_hrdata,
    ex_i_ahb_AHB_Slave_PWM_hready_resp,
    ex_i_ahb_AHB_Slave_PWM_hresp,
    ex_i_ahb_AHB_Slave_PWM_haddr,
    ex_i_ahb_AHB_Slave_PWM_hburst,
    ex_i_ahb_AHB_Slave_PWM_hmastlock,
    ex_i_ahb_AHB_Slave_PWM_hprot,
    ex_i_ahb_AHB_Slave_PWM_hready,
    ex_i_ahb_AHB_Slave_PWM_hsel,
    ex_i_ahb_AHB_Slave_PWM_hsize,
    ex_i_ahb_AHB_Slave_PWM_htrans,
    ex_i_ahb_AHB_Slave_PWM_hwdata,
    ex_i_ahb_AHB_Slave_PWM_hwrite,
    // PWM out
    out_pwm
);

// Ports for Interface ex_i_ahb_AHB_Slave_PWM
input           HCLK;
input           HRESETn;
output  wire [31:0]  ex_i_ahb_AHB_Slave_PWM_hrdata;
output wire         ex_i_ahb_AHB_Slave_PWM_hready_resp;
output wire  [1:0]   ex_i_ahb_AHB_Slave_PWM_hresp;
input   [31:0]  ex_i_ahb_AHB_Slave_PWM_haddr;
input   [2:0]   ex_i_ahb_AHB_Slave_PWM_hburst; //Don't use
input           ex_i_ahb_AHB_Slave_PWM_hmastlock; //Don't use
input   [3:0]   ex_i_ahb_AHB_Slave_PWM_hprot; //Don't use
input           ex_i_ahb_AHB_Slave_PWM_hready;
input           ex_i_ahb_AHB_Slave_PWM_hsel;
input   [2:0]   ex_i_ahb_AHB_Slave_PWM_hsize;
input   [1:0]   ex_i_ahb_AHB_Slave_PWM_htrans;
input   [31:0]  ex_i_ahb_AHB_Slave_PWM_hwdata;
input           ex_i_ahb_AHB_Slave_PWM_hwrite;
output reg[7:0] out_pwm;

// Asssign output values
wire [31:0] hrdata_wire;
wire [1:0] hresp_wire;
wire  hready_resp_wire;
assign hrdata_wire = 32'b0;
assign hresp_wire = 2'b0;
assign hready_resp_wire = 1'b1;
assign ex_i_ahb_AHB_Slave_PWM_hrdata = hrdata_wire;
assign ex_i_ahb_AHB_Slave_PWM_hresp = hresp_wire;
assign ex_i_ahb_AHB_Slave_PWM_hready_resp = hready_resp_wire;
// Register map
parameter [11:0] FREQ_ADDR= 12'h000;
parameter [11:0] DUTY_ADDR= 12'h004;

// Wrapper registers
reg [31:0] freq_reg;
reg [31:0] duty_reg;

// PWM inputs
reg [31:0] freq_in;
reg [31:0] duty_in; 

// Pick off register offset
reg [11:0] addr_offset;
always @ (posedge HCLK) begin  
    addr_offset <= ex_i_ahb_AHB_Slave_PWM_haddr[11:0];
end

// Delay AHB signals
reg hsel_d;
reg hwrite_d;
always @ (posedge HCLK ) begin
    hsel_d <= ex_i_ahb_AHB_Slave_PWM_hsel;
    hwrite_d <= ex_i_ahb_AHB_Slave_PWM_hwrite;
end

// gen_pwm ap interface signals
reg ap_start_top;
always @ (posedge HCLK) begin  
    ap_start_top <= !HRESETn;
end
wire ap_done_top;
wire ap_idle_top;
wire ap_ready_top;
wire out_r_ap_vld_top;
wire [7:0] out_r_top;
wire ap_ce_top;
assign ap_ce_top = 1'b1;

//------------------------------------------------------------------------------
// Instantiate PWM Accelerator
//------------------------------------------------------------------------------
gen_pwm gen_pwm_inst(
    .ap_clk(HCLK),
    .ap_rst(HRESETn),
    .ap_start(ap_start_top),
    .ap_done(ap_done_top),
    .ap_idle(ap_idle_top),
    .ap_ready(ap_ready_top),
    .duty(duty_reg),
    .freq(freq_reg),
    .out_r(out_r_top),
    .out_r_ap_vld(out_r_ap_vld_top),
    .ap_ce(ap_ce_top)
);

// Access wrapper registers
always @ (posedge HCLK) begin : register_access 
    if (HRESETn == 1'b0) begin
        freq_reg <= 32'b0;
        duty_reg <= 32'b0;
        out_pwm <= 8'b0;
    end 
    else begin // Address decode
        if (hsel_d == 1'b1) begin 
            if ((hwrite_d == 1'b1)) begin // Write
                if ((addr_offset == FREQ_ADDR)) begin
                    freq_reg <= ex_i_ahb_AHB_Slave_PWM_hwdata;
                end 
                else if ((addr_offset == DUTY_ADDR)) begin
                    duty_reg <= ex_i_ahb_AHB_Slave_PWM_hwdata;
                end 
            end
        end
        // Drive output
        out_pwm <= out_r_top;
    end
end

// Assign inputs
always @ (posedge HCLK) begin : assign_inputs 
    freq_in <= freq_reg;
    duty_in <= duty_reg;
end
endmodule
