//------------------------------------------------------------------------------
// WUSTL ESE 566
// Authors: Luke Kirchner
// Date: 11/21/1015
//
// Description: 
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
input                   i_ssi_txd
);

//------------------------------------------------------------------------------
// Internal Signals/Registers
//------------------------------------------------------------------------------
register temp [0:15];

//------------------------------------------------------------------------------
// Behavior processes
//------------------------------------------------------------------------------
always @(posedge i_ssi_sclk_out) begin
	//send fake temps
	if( RECIEVE_SPI_SIG)
		SPI_OUT <= temp;
	end
end 

always @(posedge i_ssi_sclk_out) begin
	//generate fake temperatures
	temp <= temp + rand();
end 


