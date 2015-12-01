/////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Create Date: 11/29/2015
//Created by: Tingting Huang
//University: Washington University in St. Louis
//Description: AHB bus slave RAM module
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

module cortexM0RAM (
    // Clock and reset
    HCLK,
    HRESETn,
   //input and output
   ex_i_ahb_AHB_Slave_RAM_hrdata,
   ex_i_ahb_AHB_Slave_RAM_hready_resp,
   ex_i_ahb_AHB_Slave_RAM_hresp,
   ex_i_ahb_AHB_Slave_RAM_haddr,
   ex_i_ahb_AHB_Slave_RAM_hburst,
   ex_i_ahb_AHB_Slave_RAM_hmastlock,
   ex_i_ahb_AHB_Slave_RAM_hprot,
   ex_i_ahb_AHB_Slave_RAM_hready,
   ex_i_ahb_AHB_Slave_RAM_hsel,
   ex_i_ahb_AHB_Slave_RAM_hsize,
   ex_i_ahb_AHB_Slave_RAM_htrans,
   ex_i_ahb_AHB_Slave_RAM_hwdata,
   ex_i_ahb_AHB_Slave_RAM_hwrite
);
   // Inputs and outputs
   input           HCLK;
   input           HRESETn;
   output  reg [31:0]  ex_i_ahb_AHB_Slave_RAM_hrdata;
   output  wire        ex_i_ahb_AHB_Slave_RAM_hready_resp;
   output  wire [1:0]  ex_i_ahb_AHB_Slave_RAM_hresp;
   input wire [31:0]  ex_i_ahb_AHB_Slave_RAM_haddr;
   input wire [2:0]   ex_i_ahb_AHB_Slave_RAM_hburst;
   input wire         ex_i_ahb_AHB_Slave_RAM_hmastlock;
   input wire [3:0]   ex_i_ahb_AHB_Slave_RAM_hprot;
   input wire         ex_i_ahb_AHB_Slave_RAM_hready;
   input wire         ex_i_ahb_AHB_Slave_RAM_hsel;
   input wire [2:0]   ex_i_ahb_AHB_Slave_RAM_hsize;
   input wire [1:0]   ex_i_ahb_AHB_Slave_RAM_htrans;
   input wire [31:0]  ex_i_ahb_AHB_Slave_RAM_hwdata;
   input wire         ex_i_ahb_AHB_Slave_RAM_hwrite;

   // Internal signals
   reg [31:0] RAM[0:32'hFFFFFFFF];
   reg [31:0] RAM_addr;
   reg RAM_hwrite;
   always @ (negedge HCLK) begin
	if (ex_i_ahb_AHB_Slave_RAM_hready) begin
		RAM_hwrite <= 0;
		RAM_addr <= 0;
	end
	else begin
		if (ex_i_ahb_AHB_Slave_RAM_hsel == 1'b1) begin
			RAM_addr <= ex_i_ahb_AHB_Slave_RAM_haddr;
			RAM_hwrite <= ex_i_ahb_AHB_Slave_RAM_hwrite;
			if (RAM_hwrite) begin
				RAM[RAM_addr] <= ex_i_ahb_AHB_Slave_RAM_hwdata;
			end
			else begin
				ex_i_ahb_AHB_Slave_RAM_hrdata <= RAM[RAM_addr];
			end
		end
		else begin
			RAM_hwrite <= 0;
		end
	end
   end
endmodule
