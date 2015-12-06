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
	//Inputs and Ouputs
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
output         		i_ssi_ssi_rst_n
);

//------------------------------------------------------------------------------
// Internal Signals/Registers
//------------------------------------------------------------------------------
reg temp = 8'b11001110;
reg orig_temp = 8'b11001110;
reg count1 = 4'b0000;


//------------------------------------------------------------------------------
// Behavior processes
//------------------------------------------------------------------------------
always @(posedge i_ssi_sclk_out) begin
	//send fake temps
	if( i_ssi_ss_0_n && count1 < 4'b1000)begin
		i_ssi_rxd <= temp[0];
		temp[15] <= i_ssi_txd;
	end
	count1 <= count1+4'b0001;
	if (count1 == 4'b1000)begin
		temp <= orig_temp;
		count1 <= 4'b0000;
	end
end 
/*
always @(posedge i_ssi_sclk_out) begin
	//generate fake temperatures
	temp <= 16'b1111111111001110;
end 
*/
endmodule

