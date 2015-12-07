//------------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2010 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : 2010-08-03 21:05:56 +0100 (Tue, 03 Aug 2010)
//
//      Revision            : 144987
//
//      Release Information : AT510-MN-80001-r0p0-00rel0
//------------------------------------------------------------------------------

//`include "./system_top.v"
//------------------------------------------------------------------------------
// Cortex-M0 DesignStart testbench example
//------------------------------------------------------------------------------

//`timescale 1 ns / 1 ps 

//`include "system_top.v"

module system_top_tb ();

//------------------------------------------------------------------------------
// Define parameters for clock period and power-on reset delay
//------------------------------------------------------------------------------

localparam clk_period = 100;            // Simulation cycles per clock period
localparam por_delay  = 1001;           // Simulation cycles of power-on-reset

//------------------------------------------------------------------------------
// Define registers for clock, reset and memory
//------------------------------------------------------------------------------
reg sim_clock;                          // System clock
reg power_on_reset_n;                   // Power-on reset signal

wire        SYSRESETREQ;        // CPU request for system to be reset
wire        LOCKUP;        
wire        TXEV;        
//------------------------------------------------------------------------------
// Generate system clock, power-on reset and synchronized AHB reset signals
//------------------------------------------------------------------------------

// Generate a clock of the appropriate period
initial
  #0 sim_clock = 1'b0;

always @(sim_clock)
  #(clk_period/2) sim_clock <= ~sim_clock;

// Release the active-low power-on reset signal after the given delay
initial begin
  #0 power_on_reset_n = 1'b0;
  #(por_delay) power_on_reset_n = 1'b1;
end

// Synchronize AHB reset, and factor in reset request from the CPU
reg [1:0] rst_sync;
always @(posedge sim_clock or negedge power_on_reset_n)
  if(!power_on_reset_n)
    rst_sync <= 2'b00;
  else
    rst_sync <= {rst_sync[0],~SYSRESETREQ};

//------------------------------------------------------------------------------
// Connect clock and reset to AHB signals and assign static signals
//------------------------------------------------------------------------------

assign HCLK    = sim_clock;    // Assign AHB clock from simulation clock
assign HRESETn = rst_sync[1];  // Assign AHB clock from synchronizer

//------------------------------------------------------------------------------
// Instantiate system_top
//------------------------------------------------------------------------------

system_top system_top_inst (
	.HCLK_top(sim_clock),//system top interface
	.HRESETn_top(power_on_reset_n),
	.SYSRESETREQ_top_out(SYSRESETREQ),
	.LOCKUP_top_out(LOCKUP),
	.TXEV_top_out(TXEV)
);

initial begin
    $dumpfile("system_top_tb.vcd");
    $dumpvars(0,system_top_tb);
end

initial #3000 $finish;

//------------------------------------------------------------------------------
// Simulation commentary
//------------------------------------------------------------------------------

always @(posedge HRESETn)
  $display("%t: Simulation leaving reset", $time);

always @(posedge HCLK)
  if (HRESETn & LOCKUP) begin
    $display("%t: CPU LOCKUP asserted, stopping simulation\n", $time);
    #(clk_period * 32)
    $finish(2);
  end

always @(posedge HCLK)
  if (HRESETn & TXEV) begin
    $display("%t: CPU executed SEV instruction and asserted TXEV\n", $time);
  end

endmodule //system_top_tb 
