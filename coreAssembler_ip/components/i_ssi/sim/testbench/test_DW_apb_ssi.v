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
// Release version :  3.23a
// File Version     :        $Revision: #10 $ 
// Revision: $Id: //dwh/DW_ocb/DW_apb_ssi/amba_dev/sim/testbench/test_DW_apb_ssi.v#10 $ 
//
// Abstract: Top-level verilog testbench for the APB SSI
//           peripheral
*/


`timescale 1ns / 10ps
`include "DW_amba_constants.v"
`include "DW_apb_cc_constants.v"
 `include "DW_apb_ssi_cc_constants.v"

module test_DW_apb_ssi;

   reg hclk;
   reg pclk;

   initial begin
     pclk = 1;
     forever begin
       #((`PERIOD*`APB_CLK_RATIO)/2.0)
       pclk = ~pclk;
     end
   end

   initial begin
     hclk = 1;
     forever begin
       #(`PERIOD/2.0)
       hclk = ~hclk;
     end
   end

   wire                       reset;
   wire                       presetn;
   wire                       d_presetn;
   reg                        pclk_en;
   reg                        ssi_clk;
   reg                        sclk_in;
   reg                        ssi_clk_en;
   wire                       tb_ssi_clk_en;

   reg                        tri_txd;
   wire                       txd;
   wire                       ssi_oe_n;

   // -----------------------------------------------
   // aaraujo: 03/08/2010
   // delay ss_in_n to eliminate timing violations in
   // gatelevel simulations.
   wire                       d_ss_in_n;
   wire                       ss_in_n;

   assign #1 d_ss_in_n = ss_in_n;

   // aaraujo: end
   // -----------------------------------------------

   assign #1 d_presetn = presetn;

   // ----------------------------------------
   // AHB bus signals
   // ----------------------------------------
   wire                       hsel_s1;
   wire                       hready;
   wire                       hwrite;
   wire                       hready_resp;
   wire [`HRESP_WIDTH-1:0]    hresp;
   wire [`HADDR_WIDTH-1:0]    haddr;
   wire [`HTRANS_WIDTH-1:0]   htrans;
   wire [`AHB_DATA_WIDTH-1:0] hrdata;
   wire [`AHB_DATA_WIDTH-1:0] hwdata;
   wire [63:0]                addr64;

   assign addr64[63:32] = 0;
   assign addr64[31:0] = U_ahb.haddr;

   // added for new monitor
   wire [15:0]                hsel;
   wire [15:0]                bus_hbusreq;
   wire [15:0]                bus_hgrant;
   wire [15:0]                bus_hlock;

   assign hsel[15:3]        = {13{1'b0}};
   assign hsel[2]           = U_ahb.hsel_s2;
   assign hsel[1]           = U_ahb.hsel_s1;
   assign hsel[0]           = 1'b0;
   assign bus_hbusreq[15:0] = {{14{1'b0}}, U_ahb.hbusreq_m1, 1'b0};
   assign bus_hgrant [15:0] = {{14{1'b0}}, U_ahb.hgrant_m1, 1'b0};
   assign bus_hlock  [15:0] = {{14{1'b0}}, U_ahb.hlock_m1, 1'b0};

   // ----------------------------------------
   // APB bus signals
   // ----------------------------------------
   wire                       psel;
   wire                       penable;
   wire                       pwrite;
   wire [`PADDR_WIDTH-1:0]    paddr;
   wire [`APB_DATA_WIDTH-1:0] pwdata;
   wire [`APB_DATA_WIDTH-1:0] prdata;

   wire                           tb_rxd;
   wire                           vshell_rxd; // driven by SSiMstBfm and SsiSlvBfm
   reg [`SSI_RX_DLY_SR_DEPTH-1:0] rxd_sr;
   reg [7:0]                      tb_rx_sample_dly;
   reg                            tb_ssi_en;

   // added for new monitor
   wire [15:0]                psel_apb;

   // To connect apb monitor using mon_user_apb4_if.
   // This must be done correctly when supporing APB4
   //   For now using a temporary interface to connect.
   wire  pstrb_apb_mon;
   wire  pprot_apb_mon;

   assign psel_apb = {{14{1'b0}}, U_apb.psel_s1, U_apb.psel_s0};

   always @ (txd or ssi_oe_n) begin
     if(ssi_oe_n == 1'b1)
       tri_txd = 1'bz;
     else
       tri_txd = txd;
   end

   // ---------------------------------------------
   // Add shift register to delay the rxd data
   // input.
   // This logic is used to test the rx_sample_dly
   // register and logic in the master SSI
   // Star Number 9000325288
   // ---------------------------------------------
`ifdef SSI_HAS_RX_SAMPLE_LOGIC
   always @(posedge pclk or negedge presetn) begin : TB_RX_SMAPLE_DELAY_PROC
     if(presetn == 1'b0) begin
       tb_rx_sample_dly <= 8'b0;
     end else begin
       if(psel==1 && penable==1 && pwrite==1 && paddr[`SSI_ADDR_SLICE_LHS-1:0]==240 && tb_ssi_en==0) begin
         tb_rx_sample_dly <= pwdata[7:0];
       end
     end
   end

   always @(posedge pclk or negedge presetn) begin : TB_SSI_ENABLE_PROC
     if(presetn == 1'b0) begin
       tb_ssi_en <= 1'b0;
     end else begin
       if(psel==1 && penable==1 && pwrite==1 && paddr[`SSI_ADDR_SLICE_LHS-1:0]==8) begin
         tb_ssi_en <= pwdata[0];
       end
     end
   end

   always @(posedge ssi_clk or negedge presetn) begin : TB_RX_SHIFTER_PROC
     if(presetn == 1'b0) begin
       rxd_sr <= {`SSI_RX_DLY_SR_DEPTH{1'b0}};
     end else begin
       if(tb_ssi_clk_en == 1'b1) begin
         rxd_sr <= {rxd_sr[`SSI_RX_DLY_SR_DEPTH-2:0], vshell_rxd};
       end
     end
   end
   assign tb_rxd = (tb_rx_sample_dly==0 || tb_rx_sample_dly > `SSI_RX_DLY_SR_DEPTH) ? vshell_rxd : |((1'b1<<(tb_rx_sample_dly-1)) & rxd_sr);
`else
   assign tb_rxd = vshell_rxd;
`endif

   // ----------------------------------------
   // Instantiate the VERA Shell
   // The connections to the VERA Shell are
   // done with dynamic binds.
   // ----------------------------------------
   test_DW_apb_ssi_shell vshell(hclk, hclk, pclk);

   // ----------------------------------------
   // Instantiate the top-level AHB Bus IP
   // ----------------------------------------
   ahb_wrapper U_ahb(
                     .hresetn            (reset)
                     ,.hclk              (hclk)
                     ,.haddr             (haddr)
                     ,.hready            (hready)
                     ,.htrans            (htrans)
                     ,.hwrite            (hwrite)
                     ,.hwdata            (hwdata)
                     ,.hsel_s1           (hsel_s1)
                     ,.hready_resp_s1    (hready_resp)
                     ,.hresp_s1          (hresp)
                     ,.hrdata_s1         (hrdata)
                     );

   // ----------------------------------------
   // Instantiate the top-level APB Bus IP
   // ----------------------------------------
   apb_wrapper U_apb(
                     // AHB bus interface signals
                     .hresetn            (reset)
                     ,.hclk              (pclk)
                     ,.pclk_en           (pclk_en)
                     ,.haddr             (haddr)
                     ,.hready            (hready)
                     ,.htrans            (htrans)
                     ,.hwrite            (hwrite)
                     ,.hwdata            (hwdata)
                     ,.hsel              (hsel_s1)
                     ,.hrdata            (hrdata)
                     ,.hready_resp       (hready_resp)
                     ,.hresp             (hresp)
                     // APB bus interface signals
                     ,.paddr             (paddr)
                     ,.penable           (penable)
                     ,.pwrite            (pwrite)
                     ,.pwdata            (pwdata)
                     ,.psel_s0           (psel)
                     ,.prdata_s0         (prdata)
                       ,.pslverr_s0        (1'b0)
                       ,.pready_s0         (1'b1)
                       ,.pslverr_s1        (1'b0)
                       ,.pready_s1         (1'b1)
                     );


   // ----------------------------------------
   // Instantiate the APB slave peripherial
   // ----------------------------------------
  i_ssi_DW_apb_ssi U_ssi(
                    .pclk              (pclk)
                    ,.presetn          (d_presetn)
                    ,.psel             (psel)
                    ,.paddr            (paddr[`SSI_ADDR_SLICE_LHS-1:0])
                    ,.pwdata           (pwdata)
                    ,.pwrite           (pwrite)
                    ,.penable          (penable)
                    ,.prdata           (prdata)
                    ,.txd              (txd)
                    ,.rxd              (tb_rxd)
                    ,.ssi_oe_n         (ssi_oe_n)
                    ,.ss_in_n          (d_ss_in_n)
                   );


   // ----------------------------------------
   // pclk_en control
   // ----------------------------------------
   initial begin
      if (`APB_CLK_RATIO == 1)
        pclk_en = 1;
      else begin
         pclk_en = 0;
         repeat (`APB_CLK_RATIO) @(posedge hclk);
         pclk_en = 1;
         @(posedge hclk);
         pclk_en = 0;
         forever begin
            repeat (`APB_CLK_RATIO-1) @(posedge hclk);
            #1 pclk_en = 1;
            @(posedge hclk);
            #1 pclk_en = 0;
         end
      end // else: !if(`APB_CLK_RATIO == 1)
   end

// ----------------------------------------
// dump control
// ----------------------------------------

`ifdef DUMP_DEPTH
   initial begin
 `ifdef VCS
      $vcdpluson(`DUMP_DEPTH);
 `else
  `ifdef DUMP_FILE
  `else
   `define DUMP_FILE "test.vcd"
  `endif
      $dumpfile(`DUMP_FILE);
      $dumpvars(`DUMP_DEPTH);
 `endif
   end
`endif

// ----------------------------------------
// sdf simulations
// ----------------------------------------
`ifdef SDF_FILE
   initial
     begin
        $display("About to sdf-annotate the design from %s",`SDF_FILE);
        $sdf_annotate(`SDF_FILE, U_ssi, , , `SDF_LEVEL);
     end
`endif

//`ifdef CODE_COVERAGE
   //initial
     //begin
        //$set_toggle_mode(1);
        //$start_toggle("U_ssi");
     //end
//`endif

   // ----------------------------------------
   // SSI Clock Generator
   // ----------------------------------------
   initial
     begin
        ssi_clk =1;
        forever
          begin
             ssi_clk = #(`SSI_CLK_PERIOD/2) ~ssi_clk;
          end // forever begin
     end

   // ----------------------------------------
   // SCLK IN Clock Generator
   // ----------------------------------------
   initial
     begin
        sclk_in =1;
        forever
          begin
             sclk_in = #((`SSI_CLK_PERIOD * 4)/2) ~sclk_in;
          end // forever begin
     end

   // ----------------------------------------
   // ssi_clk_en control
   // ----------------------------------------
   initial begin
      if (`SSI_CLK_EN_MODE == 0)
        ssi_clk_en = 1;
      else begin
         ssi_clk_en = 0;
          @(posedge ssi_clk);
         repeat ((`SSI_CLK_PERIOD / `PERIOD)-1) @(posedge pclk);
         ssi_clk_en = 1;
         @(posedge pclk);
         ssi_clk_en = 0;
         forever begin
            repeat ((`SSI_CLK_PERIOD / `PERIOD)-1) @(posedge pclk);
            #1 ssi_clk_en = 1;
            @(posedge pclk);
            #1 ssi_clk_en = 0;
         end
      end
   end
   assign tb_ssi_clk_en = (`SSI_CLK_EN_MODE == 0) ? 1'b1 : ssi_clk_en;

   // ----------------------------------------------------------------------------------
   // STAR: CRM_9000451488
   //       SSI Slave does not send dummy '0' bit before data frame in microwire mode
   //
   // Checker added to ensure the slave transmitts zero bit after receiving
   // control frame and before transmission of data frame.
   // ----------------------------------------------------------------------------------
   `ifdef RTL
   initial
   begin : SLV_MWIRE_DUMMY0_CHECK
     if(`SSI_IS_MASTER == 0) begin
       while(1)
       begin
         @(posedge ssi_clk);
         if(U_ssi.frf==2'b10 && U_ssi.mwcr[1]==1 && U_ssi.fsm_busy) begin // if busy for mwire transmit
           @(negedge ssi_oe_n or negedge U_ssi.fsm_busy);
           if(U_ssi.fsm_busy) begin
             @(posedge sclk_in);
             if(txd == 1'b1)
               $display("[%0d] ERROR : Slave did not transmit dummy 0 bit prior to transmission of mwire data frame",$time);
           end
         end
       end
     end
   end
   `endif

endmodule
