//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Create Date : 11/21/2015
// Created by  : Luke Kirchner
// University  : Washington University in St Louis
// Description : AHB-Lite Master Test Bench
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module CPU_stub_tb;

	wire HWRITE;
	wire [31:0]HADDR,HWDATA,RDATA;

	reg HREADY,HRESETn,HCLK,WRITE;
	reg [31:0]HRDATA,ADDR,WDATA;

	My_Master DUT (HREADY,HRESETn,HCLK,HRDATA,WRITE,ADDR,WDATA,HADDR,HWRITE,HWDATA,RDATA);
	
	initial begin

		$dumpfile("My_Master.vcd"); 
		$dumpvars(0,My_Master_tb); 
		
		HCLK=0;

		HRESETn=0; // reset
		#4
		
		HRESETn=1; // write 1
		HREADY=1;
		WRITE=1;
		WDATA=32'h11111111;
		ADDR=32'h11111111;
		#4
		
		HRESETn=1; // write 2
		WRITE=1;
		WDATA=32'h22222222;
		ADDR=32'h22222222;
		#4
		
		HRESETn=1; // read 1
		WRITE=0;
		ADDR=32'h33333333;
		#4

		HRESETn=1; //read 2
		WRITE=0;
		ADDR=32'h44444444;
		#4

		HRESETn=1; //write 3
		WRITE=1;
		WDATA=32'h55555555;
		ADDR=32'h55555555;
		#4

		HRESETn=1; //read 3
		WRITE=0;
		ADDR=32'h66666666;
		#4

		HRESETn=1; // read with wait states1
		WRITE=0;
		ADDR=32'h77777777;
		#4
		
		HRESETn=1; // read with wait states2
		WRITE=0;
		ADDR=32'h88888888;
		#4

		HRESETn=1; // read with wait states3
		WRITE=0;
		ADDR=32'h99999999;
		#4

		HRESETn=1; // read with wait states4
		WRITE=0;
		ADDR=32'hAAAAAAAA;
		#4

		HRESETn=1; // write with wait states1
		WRITE=1;
		WDATA=32'hBBBBBBBB;
		ADDR=32'hBBBBBBBB;
		#4
		
		HRESETn=1; // write with wait states2
		WRITE=1;
		WDATA=32'hCCCCCCCC;
		ADDR=32'hCCCCCCCC;
		#4

		HRESETn=1; // write with wait states3
		WRITE=1;
		WDATA=32'hDDDDDDDD;
		ADDR=32'hDDDDDDDD;
		#4

		HRESETn=1; // write with wait states4
		WRITE=1;
		WDATA=32'hEEEEEEEE;
		ADDR=32'hEEEEEEEE;
		#4

		#12
		$finish;
	end
	initial begin
		#19
		HRDATA = 32'h33333333;

		#4
		HRDATA = 32'h44444444;

		#8
		HRDATA = 32'h66666666;

		#4
		HRDATA = 32'h77777777;

		#4
		HRDATA = 32'h88888888;
		
		#4
		HRDATA = 32'h99999999;
		
		#4
		HRDATA = 32'hAAAAAAAA;
	end
	initial begin
		#35
		HREADY = 0;

		#8
		HREADY = 1;

		#8
		HREADY = 0;

		#8
		HREADY = 1;
	end
	
	always
		#2 HCLK= !HCLK;
	
endmodule
