/*
------------------------------------------------------------------------
--
//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2002 - 2014 SYNOPSYS, INC.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to Synopsys, Inc.  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and Synopsys, Inc.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------

// 
// Release version :  2.11a
// File Version     :        $Revision: #5 $ 
// Revision: $Id: //dwh/DW_ocb/DW_ahb/amba_dev/src/DW_ahb.v#5 $ 
--
-- File :                       DW_ahb.v
-- Date :                       $Date: 2014/05/23 $
-- Abstract     :               Top-level DW_ahb BusIP
--
//
// Please refer to the databook for full details on the signals.
//
// These are found in the "Signal Description" section of the "Signals" chapter.
// There are details on the following
//   % Input Delays
//   % Output Delays
//   Any False Paths
//   Any Multicycle Paths
//   Any Asynchronous Signals
//
------------------------------------------------------------------------
*/

//leda NTL_CON10 off
//LMD: output tied to supply.
//LJ : Some of the bits of hmaster and hmaster_data may be tied to logic 0 depending on
//     number of masters.When number of masters is less than 8,upper bit is tied to logic0.
//     When number of masters is less than 4, upper two bits are tied to logic 0.When number
//     of masters is less than 2, upper three bits are tied to logic 0.
//leda NTL_CON10A off
//LMD: Output tied to supply in top level module.
//LJ : Some of the bits of hmaster and hmaster_data may be tied to logic 0 depending on
//     number of masters.When number of masters is less than 8,upper bit is tied to logic0.
//     When number of masters is less than 4, upper two bits are tied to logic 0.When number
//     of masters is less than 2, upper three bits are tied to logic 0.
module i_ahb_DW_ahb (
//leda NTL_CON10A on
//leda NTL_CON10 on
  hclk,
               hresetn,
               haddr_m1,
               hburst_m1,
               hlock_m1,
               hprot_m1,
               hsize_m1,
               htrans_m1,
               hwdata_m1,
               hwrite_m1,
               hsel_s1,
               hready_resp_s1,
               hresp_s1,
               hrdata_s1,
               hsel_s2,
               hready_resp_s2,
               hresp_s2,
               hrdata_s2,
               hsel_s3,
               hready_resp_s3,
               hresp_s3,
               hrdata_s3,
               hsel_s4,
               hready_resp_s4,
               hresp_s4,
               hrdata_s4,
               haddr,
               hburst,
               hprot,
               hsize,
               htrans,
               hwdata,
               hwrite,
               hready,
               hresp,
               hrdata,
               hmaster,
               hmaster_data,
               hmastlock
               );

  // ----------------------------------------
  // Parameters inherited from the cc_constant 
  // file, make them not visible from the GUI
  // ----------------------------------------

  // physical parameters

  // memory map parameters
  parameter INT_R1_N_SA_1 = 32'h0;
  parameter INT_R1_N_EA_1 = 32'h1ffff;
  parameter INT_R1_N_SA_2 = 32'h20000;
  parameter INT_R1_N_EA_2 = 32'h21fff;

  // derived parameters
  parameter ADDRBUS_WIDTH = 64;
  parameter DATABUS_WIDTH = 64;
  parameter HRDATABUS_WIDTH = 160;

  input                          hclk;
  input                          hresetn;

// Master #1 AHB signals
  input [  `HADDR_WIDTH-1:0]        haddr_m1;
  input [  `HBURST_WIDTH-1:0]      hburst_m1;
  input                          hlock_m1;
  input [  `HPROT_WIDTH-1:0]       hprot_m1;
  input [  `HSIZE_WIDTH-1:0]       hsize_m1;
  input [  `HTRANS_WIDTH-1:0]      htrans_m1;
  input [  `AHB_DATA_WIDTH-1:0]     hwdata_m1;
  input                          hwrite_m1;

// Slave #1 AHB signals
  input                          hready_resp_s1;
  input [  `HRESP_WIDTH-1:0]       hresp_s1;
  input [  `AHB_DATA_WIDTH-1:0]     hrdata_s1;
  output                         hsel_s1;

// Slave #2 AHB signals
  input                          hready_resp_s2;
  input [  `HRESP_WIDTH-1:0]       hresp_s2;
  input [  `AHB_DATA_WIDTH-1:0]     hrdata_s2;
  output                         hsel_s2;

// Slave #3 AHB signals
  input                          hready_resp_s3;
  input [  `HRESP_WIDTH-1:0]       hresp_s3;
  input [  `AHB_DATA_WIDTH-1:0]     hrdata_s3;
  output                         hsel_s3;

// Slave #4 AHB signals
  input                          hready_resp_s4;
  input [  `HRESP_WIDTH-1:0]       hresp_s4;
  input [  `AHB_DATA_WIDTH-1:0]     hrdata_s4;
  output                         hsel_s4;

  //leda NTL_CON13C off
  //LMD: Non driving port.
  //LJ : ahb_big_endian is used only when DW_ahb is configured to have programmable arbiter interface.When
  //     arbiter interface is non programmable endianness is hardcoded and hence the input port ahb_big_endian
  //     will be non driving.
  //leda NTL_CON37 off
  //LMD: Signal/Net must read from the input port in module
  //LJ : ahb_big_endian is used only when DW_ahb is configured to have programmable arbiter interface.When
  //     arbiter interface is non programmable endianness is hardcoded and hence the input port ahb_big_endian
  //     will not be read.
  //leda NTL_CON13C on
  //leda NTL_CON37 on
  output [  `HADDR_WIDTH-1:0]      haddr;
  output [  `HBURST_WIDTH-1:0]     hburst;
  output [  `HPROT_WIDTH-1:0]      hprot;
  output [  `HSIZE_WIDTH-1:0]      hsize;
  output [  `HTRANS_WIDTH-1:0]     htrans;
  output [  `AHB_DATA_WIDTH-1:0]   hwdata;
  output                         hwrite;
  output [  `HMASTER_WIDTH-1:0]    hmaster;
  output [  `HMASTER_WIDTH-1:0]    hmaster_data;
  output                         hmastlock;
  output                         hready;
  output [  `HRESP_WIDTH-1:0]      hresp;
  output [  `AHB_DATA_WIDTH-1:0]    hrdata;


// Dummy wire declarations for inputs which may have been removed
// by reuse pragmas.


// Internal concatenated bus of all top-level haddr buses from masters
  wire   [ADDRBUS_WIDTH-1:0]     bus_haddr;
  wire   [  `HTRANSBUS_WIDTH-1:0]  bus_htrans;
  wire   [  `INTERNAL_HSEL-1:0]    hsel;
  wire   [  `HRESPBUS_WIDTH-1:0]   bus_hresp;
  wire   [  `HREADY_WIDTH-1:0]     bus_hready;
  wire   [HRDATABUS_WIDTH-1:0]   bus_hrdata;
  wire   [  `HBURSTBUS_WIDTH-1:0]  bus_hburst;
  wire   [  `HSIZEBUS_WIDTH-1:0]   bus_hsize;
  wire   [  `HPROTBUS_WIDTH-1:0]   bus_hprot;
  wire   [  `HWRITEBUS_WIDTH-1:0]  bus_hwrite;
  wire   [DATABUS_WIDTH-1:0]     bus_hwdata;

  wire   [  `HMASTER_WIDTH-1:0]    hmaster_data;
  wire                           hsel_none;
  wire   [  `HRESP_WIDTH-1:0]      hresp_none;
  wire                           hready_resp_none;
  wire   [  `AHB_DATA_WIDTH-1:0]    hrdata_none;


// These are the signals driven by Master 0, the Internal Dummy
// Master
// The Dummy Master is granted the bus when no other master
// can access the bus.
// The function of the Dummy Master is to drive Default
// Values onto the Address, Data and Control buses when
// no other master can gain access to the bus.

//
// The dummy master
//
  //leda NTL_CON16 off
  //LMD: Nets or cell pins should not be tied to logic 0 / logic 1.
  //LJ : These are signals driven by Master 0, the internal dummy master.
  //     Dummy master is granted the bus when bo other master can access it.
  //     Hence dummy master will drive default values into buses.
  assign bus_haddr[  `HADDR_WIDTH-1:0]     = {  `HADDR_WIDTH{1'b0}};
  assign bus_htrans[  `HTRANS_WIDTH-1:0]   =   `IDLE;
  assign bus_hwdata[  `AHB_DATA_WIDTH-1:0] = {  `AHB_DATA_WIDTH{1'b0}};
  assign bus_hsize[  `HSIZE_WIDTH-1:0]     =   `BYTE;
  assign bus_hburst[  `HBURST_WIDTH-1:0]   =   `SINGLE;
  assign bus_hprot[  `HPROT_WIDTH-1:0]     =   `NC_NB_P_D;
  assign bus_hwrite[0]                   =   `READ;
  //leda NTL_CON16 on

//
// Build internal busses from master and slave signals, The following 
// assign statements are generated by a tcl plugin script.
//
   
  assign bus_haddr[(  `HADDR_WIDTH*2)-1:(  `HADDR_WIDTH*1)] = haddr_m1;
  assign bus_htrans[3:2] = htrans_m1;
  assign bus_hburst[5:3] = hburst_m1;
  assign bus_hsize[5:3] = hsize_m1;
  assign bus_hprot[7:4] = hprot_m1;
  assign bus_hwrite[1] = hwrite_m1;
  assign bus_hwdata[(  `AHB_DATA_WIDTH*2)-1:(  `AHB_DATA_WIDTH*1)] = hwdata_m1;


  //leda NTL_CON16 off 
  //LMD: Nets or cell pins should not be tied to logic 0 / logic 1. 
  //LJ : When AHB LITE is selected, slave will be always ready and will always give OK response.
  //     Hence bus_hready is tied to logic 1 and bus_hresp is tied to logic 0's. 
  assign bus_hready[0] = 1'b1;
  assign bus_hresp[1:0] = 2'h0;
  //leda NTL_CON16 on
  //leda NTL_CON16 off 
  //LMD: Nets or cell pins should not be tied to logic 0 / logic 1. 
  //LJ : When AHB LITE is selected bus_hrdata is always tied to logic 0's.
  assign bus_hrdata[  `AHB_DATA_WIDTH-1:0] = {  `AHB_DATA_WIDTH{1'b0}};
  //leda NTL_CON16 on 

  assign bus_hready[1] = hready_resp_s1;
  assign bus_hresp[3:2] = hresp_s1;
  assign bus_hrdata[(  `AHB_DATA_WIDTH*2)-1:  `AHB_DATA_WIDTH*1] = hrdata_s1;

  assign bus_hready[2] = hready_resp_s2;
  assign bus_hresp[5:4] = hresp_s2;
  assign bus_hrdata[(  `AHB_DATA_WIDTH*3)-1:  `AHB_DATA_WIDTH*2] = hrdata_s2;

  assign bus_hready[3] = hready_resp_s3;
  assign bus_hresp[7:6] = hresp_s3;
  assign bus_hrdata[(  `AHB_DATA_WIDTH*4)-1:  `AHB_DATA_WIDTH*3] = hrdata_s3;

  assign bus_hready[4] = hready_resp_s4;
  assign bus_hresp[9:8] = hresp_s4;
  assign bus_hrdata[(  `AHB_DATA_WIDTH*5)-1:  `AHB_DATA_WIDTH*4] = hrdata_s4;

  assign hsel_none = hsel[  `NUM_IAHB_SLAVES+1];
  assign hsel_s1 = hsel[1];
  assign hsel_s2 = hsel[2];
  assign hsel_s3 = hsel[3];
  assign hsel_s4 = hsel[4];



// end of generated "assign" statements
   
  //leda NTL_CON10 off
  //LMD: output tied to supply.
  //LJ : Some of the bits of hmaster_data may be tied to logic 0 depending on number of
  //     masters.When number of masters is less than 8,upper bit is tied to logic0. When
  //     number of masters is less than 4, upper two bits are tied to logic 0.When number
  //     of masters is less than 2, upper three bits are tied to logic 0.
  //leda NTL_CON10B off
  //LMD: Output tied to supply in design.
  //LJ : Some of the bits of hmaster_data may be tied to logic 0 depending on number of
  //     masters.When number of masters is less than 8,upper bit is tied to logic0. When
  //     number of masters is less than 4, upper two bits are tied to logic 0.When number
  //     of masters is less than 2, upper three bits are tied to logic 0.
  i_ahb_DW_ahb_mux
  
   U_mux (
  //leda NTL_CON10B on 
  //leda NTL_CON10 on
    .hclk(hclk),
          .hresetn(hresetn),
          .bus_haddr(bus_haddr),
          .bus_hburst(bus_hburst),
          .bus_hprot(bus_hprot),
          .bus_hsize(bus_hsize),
          .bus_htrans(bus_htrans),
          .bus_hwdata(bus_hwdata),
          .bus_hwrite(bus_hwrite),
          .hrdata_none(hrdata_none),
          .hready_resp_none(hready_resp_none),
          .hresp_none(hresp_none),
          .bus_hready(bus_hready),
          .bus_hresp(bus_hresp),
          .bus_hrdata(bus_hrdata),
          .hsel(hsel[  `NUM_IAHB_SLAVES:0]),
          .hmaster_data(hmaster_data),
          .haddr(haddr),
          .hburst(hburst),
          .hprot(hprot),
          .hsize(hsize),
          .htrans(htrans),
          .hwdata(hwdata),
          .hwrite(hwrite),
          .hrdata(hrdata),
          .hready(hready),
          .hresp(hresp)
          );

  i_ahb_DW_ahb_dcdr
   #(  `HADDR_WIDTH, INT_R1_N_SA_1, INT_R1_N_EA_1, INT_R1_N_SA_2, INT_R1_N_EA_2) U_dcdr (
    .haddr(haddr),
                                                                                                  .hsel(hsel)
                                                                                                  );



  //leda NTL_CON10 off
  //LMD: output tied to supply.
  //LJ : Some of the bits of hmaster may be tied to logic 0 depending on number of
  //     masters.When number of masters is less than 8,upper bit is tied to logic0. When
  //     number of masters is less than 4, upper two bits are tied to logic 0.When number
  //     of masters is less than 2, upper three bits are tied to logic 0.
  //leda NTL_CON10B off
  //LMD: Output tied to supply in design.
  //LJ : Some of the bits of hmaster may be tied to logic 0 depending on number of
  //     masters.When number of masters is less than 8,upper bit is tied to logic0. When
  //     number of masters is less than 4, upper two bits are tied to logic 0.When number
  //     of masters is less than 2, upper three bits are tied to logic 0.

  //leda NTL_CON10 off
  //LMD: output tied to supply.
  //LJ : When AHB_LITE mode is selected, there will be only one master in the 
  //     system and hence master number (hmaster) is tied to logic1.
  //leda NTL_CON10B off
  //LMD: Output tied to supply in design.
  //LJ : When AHB_LITE mode is selected, there will be only one master in the 
  //     system and hence master number (hmaster) is tied to logic1.

  i_ahb_DW_ahb_arblite
   U_arblite (
  //leda NTL_CON10B on
  //leda NTL_CON10 on
    .hclk             (hclk),
    .hresetn          (hresetn),
    .hlock_m1         (hlock_m1),
    .hready           (hready),
    .hmaster          (hmaster),
    .hmastlock        (hmastlock)
  );


  //leda NTL_CON10 off
  //LMD: output tied to supply.
  //LJ : Whenever the default slave is selected the return data is always zero.
  //     Hence hrdata_none is always tied to logic 0s.
  //leda NTL_CON10B off
  //LMD: Output tied to supply in design.
  //LJ : Whenever the default slave is selected the return data is always zero.
  //     Hence hrdata_none is always tied to logic 0s.
  i_ahb_DW_ahb_dfltslv
   
   U_dfltslv (
  //leda NTL_CON10B on
  //leda NTL_CON10 on
    .hclk             (hclk),
    .hresetn          (hresetn),
    .hready           (hready),
    .htrans           (htrans),
    .hsel_none        (hsel_none),
    .hready_resp_none (hready_resp_none),
    .hresp_none       (hresp_none),
    .hrdata_none      (hrdata_none)
  );


    `undef AHB_ENCRYPT 

endmodule
