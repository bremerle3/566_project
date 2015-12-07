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


    localparam ram_log2   = 18;             // Power of two of RAM words
    localparam addr_tty   = 32'h40000000;   // Address of output console
   // Inputs and outputs
   input           HCLK;
   input           HRESETn;
   output  wire [31:0]  ex_i_ahb_AHB_Slave_RAM_hrdata;
   output  wire        ex_i_ahb_AHB_Slave_RAM_hready_resp;
   output  wire [1:0] ex_i_ahb_AHB_Slave_RAM_hresp;
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
   reg [31:0] ram[0:(2**ram_log2)-1];
   reg [31:0] RAM_addr;
   reg RAM_hwrite;
   wire HCLK;
   wire HREADY;
   wire HWRITE;
   wire [2:0] HSIZE;
   wire [1:0] HTRANS;
   wire [31:0] HRDATA;
   wire [31:0] HWDATA;
   wire [31:0] HADDR;

reg [ 1:0] htrans_last;
reg        hwrite_last;
reg [31:0] haddr_last;
reg [ 2:0] hsize_last;

   //Assign wires
assign ex_i_ahb_AHB_Slave_RAM_hresp = 2'b0; 
assign  ex_i_ahb_AHB_Slave_RAM_hrdata = HRDATA;
assign  HTRANS = ex_i_ahb_AHB_Slave_RAM_htrans; 
assign  HSIZE = ex_i_ahb_AHB_Slave_RAM_hsize; 
assign  HWRITE = ex_i_ahb_AHB_Slave_RAM_hwrite; 
assign  HREADY = ex_i_ahb_AHB_Slave_RAM_hready; 
assign  HWDATA = ex_i_ahb_AHB_Slave_RAM_hwdata; 
//assign  ex_i_ahb_AHB_Slave_RAM_hrdata = HRDATA; 
assign  HADDR = ex_i_ahb_AHB_Slave_RAM_haddr; 
assign ex_i_ahb_AHB_Slave_RAM_hready_resp = 1'b1;
   // Behavioral processes
// Initialize memory content from "ram.bin"
integer fd, i;
reg [31:0] data;
initial begin
  $display("%t: ----------------------------------------------", $time);
  $display("%t: ARM(r) Cortex(tm)-M0 DesignStart(tm) Testbench", $time);
  $display("%t: (c) Copyright 2010 ARM Limited", $time);
  $display("%t: All Rights Reserved", $time);
  $display("%t: ----------------------------------------------\n", $time);
  $display("%t: Loading initial memory content...", $time);
  fd = $fopen("ram.bin","rb");
  for (i = 0; (i < (2**ram_log2)) && ($fread(data,fd) != -1); i = i + 1)
    ram[i] = {data[7:0],data[15:8],data[23:16],data[31:24]};
  $display("%t: ...complete\n", $time);
end

// Select RAM only if between address zero and top of RAM
wire hsel_ram = ~|haddr_last[31:ram_log2];

assign HRDATA[31:0] = hsel_ram ? ram[haddr_last[ram_log2+1:2]] : 32'd0;

reg [31:0] ram_tmp;

always @(posedge HCLK)
  if(HREADY & hwrite_last & hsel_ram & htrans_last[1]) begin

    // Extract RAM entry into temporary buffer
    ram_tmp = ram[haddr_last[ram_log2+1:2]];

    // Insert appropriate bytes from AHB-Lite transaction
    case({hsize_last[1:0], haddr_last[1:0]})
      // Byte writes are valid to any address
      4'b00_00 : ram_tmp[ 7: 0] = HWDATA[ 7: 0];
      4'b00_01 : ram_tmp[15: 8] = HWDATA[15: 8];
      4'b00_10 : ram_tmp[23:16] = HWDATA[23:16];
      4'b00_11 : ram_tmp[31:24] = HWDATA[31:24];
      // Halfword writes are only valid to even addresses
      4'b01_00 : ram_tmp[15: 0] = HWDATA[15: 0];
      4'b01_10 : ram_tmp[31:16] = HWDATA[31:16];
      // Word writes are only valid to word aligned addresses
      4'b10_00 : ram_tmp[31: 0] = HWDATA[31: 0];
      default  : begin
        $display("%t: Illegal AHB transaction, stopping simulation\n", $time);
        $finish(2);
      end
    endcase

    // Commit write to RAM model
    ram[haddr_last[ram_log2+1:2]] <= ram_tmp;

  end

//------------------------------------------------------------------------------
// Simulation model of a simple AHB output console
//------------------------------------------------------------------------------

wire hsel_tty = (haddr_last == addr_tty);

always @(posedge HCLK)
  if(HRESETn & HREADY & hwrite_last & hsel_tty & htrans_last[1]) begin
    if(HWDATA[7:0] != 8'hD)
      $write("%c", HWDATA[7:0]);
    else begin
      $display("%t: Simulation stop requested by CPU\n", $time);
      $finish(2);
    end
  end


  always @(posedge HCLK) begin
      if (HRESETn & HREADY & htrans_last[1] & ~(hsel_ram | hsel_tty)) begin
        $display("%t: Warning, address %x selects neither RAM or console",
        $time, haddr_last);
      end
  end
/*
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
				ram[RAM_addr] <= ex_i_ahb_AHB_Slave_RAM_hwdata;
			end
			else begin
				ex_i_ahb_AHB_Slave_RAM_hrdata <= ram[RAM_addr];
			end
		end
		else begin
			RAM_hwrite <= 0;
		end
	end
   end
*/
// Record transaction information from last accepted address phase
always @(posedge HCLK)
  if (HREADY) begin
    htrans_last <= HTRANS;
    hwrite_last <= HWRITE;
    haddr_last  <= HADDR;
    hsize_last  <= HSIZE;
  end
endmodule
