//------------------------------------------------------------------------------
// WUSTL ESE 566
// Authors: Luke Kirchner
// Date: 11/21/1015
//
// Description: Dummy CPU that transfers the temperature to the SPI Master according to the SPI interface
//		This interface cycles the values on the slave and the master 1 bit at a time until their values have been switched.
//
// Status: 
//
// Testing: TODO
// 
//------------------------------------------------------------------------------

module CPU_stub (
	//SSI Interface
input			i_ssi_sclk_out,
input                	i_ssi_ss_0_n,
input                   i_ssi_ssi_mst_intr_n,
input                   i_ssi_ssi_oe_n,
input                   i_ssi_ssi_rxf_intr_n,
input                   i_ssi_ssi_rxo_intr_n,
input                   i_ssi_ssi_rxu_intr_n,
input                   i_ssi_ssi_sleep,
input                   i_ssi_ssi_txe_intr_n,
input                   i_ssi_ssi_txo_intr_n,
input                   i_ssi_txd,

output    reg      	i_ssi_rxd,
output          	i_ssi_ss_in_n,
output          	i_ssi_ssi_clk,
output         		i_ssi_ssi_rst_n,

	//System top interface
input		HCLK,
input		HRESETn
);

//------------------------------------------------------------------------------
// Internal Signals/Registers
//------------------------------------------------------------------------------
reg [7:0] temp;
reg [7:0] orig_temp = 8'b11001110;
reg [3:0] count1;

//Assign wires
assign         i_ssi_ssi_clk = HCLK;
assign    	i_ssi_ssi_rst_n = HRESETn;
//------------------------------------------------------------------------------
// Behavior processes
//------------------------------------------------------------------------------
always @(posedge i_ssi_sclk_out) begin
	//send fake temps
	if (HRESETn == 1'b0)begin
		temp <= orig_temp;
		count1 <= 4'b0000;
	end
	else if (i_ssi_ss_0_n)begin 
		if(count1 < 4'b1000)begin
			i_ssi_rxd <= temp[0];
			temp[7] <= i_ssi_txd;
			count1 <= count1+4'b0001;
		end

		else if (count1 == 4'b1000)begin
			temp <= orig_temp;
			count1 <= 4'b0000;
		end

	end
end 
/*
always @(posedge i_ssi_sclk_out) begin
	//generate fake temperatures
	temp <= 16'b1111111111001110;
end 
*/
endmodule

