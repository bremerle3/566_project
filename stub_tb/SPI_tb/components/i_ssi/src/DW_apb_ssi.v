// -------------------------------------------------------------------
//
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
// File Version     :        $Revision: #11 $ 
// Revision: $Id: //dwh/DW_ocb/DW_apb_ssi/amba_dev/src/DW_apb_ssi.v#11 $ 
//
// File    : DW_apb_ssi.v
// Created : Wed Jun 19 15:57:00 BST 2002
//
//
// Abstract: DW_apb_ssi APB Synchronous Serial Interface Macrocell
//
//         : Top level module
//
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

//Top Level Module for APB Synchronous Serial interface
module i_ssi_DW_apb_ssi
  (

//APB Slave I/O Signals                  
   pclk
   ,presetn
   ,psel
   ,penable
   ,pwrite
   ,paddr
   ,pwdata
   ,rxd
   ,ss_in_n
   ,ssi_clk
   ,ssi_rst_n
   ,prdata
   ,ssi_sleep
   ,txd
   ,sclk_out
   ,ss_0_n
   ,ssi_oe_n
   ,ssi_txe_intr_n
   ,ssi_txo_intr_n
   ,ssi_rxf_intr_n
   ,ssi_rxo_intr_n
   ,ssi_rxu_intr_n
   ,ssi_mst_intr_n
   );
  
  // --------------------------------------
  // -- Input and Output Port Declaration
  // --------------------------------------         
  input                           pclk;           // APB Clock Signal
  input                           presetn;        // APB async Reset Signal
  input                           psel;           // APB Peripheral Select Signal
  input                           penable;        // Strobe Signal
  input                           pwrite;         // Write Signal
  // leda NTL_CON37 off
  // LMD: Net must read from input port
  // LJ:  Bus interface unit doesnt consider the lower two bits because all SSI registers are 32 bit aligned.
  input [`SSI_ADDR_SLICE_LHS-1:0] paddr;          // Address bus
  // leda NTL_CON37 on
  input [`APB_DATA_WIDTH-1:0]     pwdata;         // Write data Bus
  input                           rxd;            // Receive Data Signal
  input                           ss_in_n;        // Slave Select Input
  input                           ssi_clk;        // Peripheral Serial Clock Signal
  input                           ssi_rst_n;      // Preipheral async Reset Signal
  
  output [`APB_DATA_WIDTH-1:0]    prdata;         // Read Data Bus
  output                          ssi_sleep;
  output                          txd;            // Transmit Data Signal
  output                          ssi_oe_n;       // Output enable Signal
  output 			                    ss_0_n;         // Slave Select Output
  output                          sclk_out;       // Serial bir-rate clock
  
  
  output                          ssi_txe_intr_n; // Transmit FIFO Empty Interrupt
  output                          ssi_txo_intr_n; // Transmit FIFO Overflow Interrput
  output                          ssi_rxf_intr_n; // Recieve FIFO Full Interrupt
  output                          ssi_rxo_intr_n; // Recieve FIFO Overflow Interrupt
  output                          ssi_rxu_intr_n; // Recieve FIFO Underflow Interrupt
  output                          ssi_mst_intr_n; // Multi-Master Contention Interrupt
  
  // --------------------------------------
  // -- Wire Declaration
  // --------------------------------------
  
  // APB bus interface
  wire                            wr_en;          // write enable
  wire                            rd_en;          // read enable
  wire [3:0]                      byte_en;        // active byte lane
  wire [`SSI_ADDR_SLICE_LHS-2:0]  reg_addr;       // register offset address
  wire [`MAX_APB_DATA_WIDTH-1:0]  ipwdata;        // internal pwdata bus
  wire [`MAX_APB_DATA_WIDTH-1:0]  iprdata;        // internal prdata bus
  
  // SW-registers
  // leda NTL_CON13A off
  // LMD: Non driving internal net
  // LJ:  This register is partially used according to configuration.
  wire [15:0]                     ctrlr0;         // Control Register 0
 // leda NTL_CON13A on
  wire [ `MWCR_RS-1:0]             mwcr;           // MicroWire control register
  wire [ `SSI_NUM_SLAVES-1:0]      ser;            // Slave Enable Register
  wire [15:0]                     baudr;          // Baud Rate Select
  wire [ `TX_ABW-1:0]              txftlr;         // Tx FIFO Threshold Level
  wire [ `RX_ABW-1:0]              rxftlr;         // Rx FIFO Threshold Level
  wire [ `INT_RS-1:0]              imr;            // Interrupt MAsk Register
  wire [ `INT_RS-1:0]              isr;            // Interrupt Status Register
  wire [ `INT_RS-1:0]              risr;           // Raw Interrupt Status register
  wire [ `SSI_MAX_XFER_SIZE-1:0]   tx_push_data;   // Data to tx fifo buffer
  wire [ `SSI_MAX_XFER_SIZE-1:0]   rx_push_data;   // Data to rx fifo buffer
  wire [ `SSI_MAX_XFER_SIZE-1:0]   tx_pop_data;    // Data from tx fifo buffer
  wire                            i_ssi_clk_en;
  
  // SW-registers write enable and read enable
  wire                            icr_en;         // Clear all interrupts
  wire                            txoicr_en;      // Clear Transmit FIFO OVerflow Interrupt Enable
  wire                            rxoicr_en;      // Clear Receive FIFO OVerflow Interrupt Enable
  wire                            rxuicr_en;      // Clear Receive FIFO Underflow Interrupt Enable
  wire                            msticr_en;      // Clear Multi-MAster FIFO Contention Interrupt Enable
  wire                            set0_imr5;      // writing 0 to irq mask for mst_contention
  wire                            set1_imr5;      // writing 1 to irq mask for mst_contention
 
 
  // FIFO interconnect wires
  wire                            tx_push;
  wire                            rx_push;
  wire                            tx_pop;
  wire                            rx_pop;
  wire                            tx_full;
  wire                            tx_empty;
  wire                            tx_overflow;
  wire                            rx_full;
  wire                            rx_empty;
  wire                            rx_overflow;
  wire                            rx_underflow;
  wire [ `TX_ABW-1:0]              tx_wr_addr;
  wire [ `TX_ABW-1:0]              tx_rd_addr;
  wire                            tx_we_n;
  wire [ `RX_ABW-1:0]              rx_wr_addr;
  wire [ `RX_ABW-1:0]              rx_rd_addr;
  wire                            rx_we_n;
  wire                            tx_almost_empty;
  wire                            rx_almost_full;
  wire                            rx_push_sync;
  wire                            tx_pop_sync;
  wire                            fifo_rst_n;
  wire                            sclk_out;
  wire                            mst_contention;
  
  // Shift logic interconnect wires
  wire                            sclk_re;
  wire                            sclk_fe;
  wire                            tx_shift_en;
  wire                            rx_shift_en;
  wire                            load_rx_buf;
  wire                            load_tx_shift;
  wire                            ssp_load_tx_shift;
  wire                            load_tx_buffer;
  
  // register decode wires
  wire                            ssi_en_int;     // pclk version
  wire                            ssi_en_int_sync;// ssi_clk version
  wire [1:0]                      frf;            // Frame Format
  wire [ `DFS_W-1:0]               dfs;            // Data Frame Size
  wire [3:0]                      cfs;            // Microwire control frame size
  wire [ `DFS_W-1:0]               tx_dfs;
  wire                            scph;           // Serial Clock Phase - SPI
  wire                            srl_test;       // loopback mode
  wire [1:0]                      tmod;           // Transfer Mode
  wire [16:0]                     ndf;            // number of data frames
  
  // FSM interconnect wires
  wire                            fsm_sleep;
  wire                            fsm_busy;
  wire                            fsm_slv_sel;
  wire                            fsm_multi_mst;
  wire                            multi_mst_sync;
  wire                            start_xfer;
  wire                            baud2;
  wire                            sclk_mask;
  wire [ `SSI_NUM_SLAVES-1:0]      ss_n;           // Slave Select Wire
  wire                            sclk_active;
  wire                            ssi_sleep;
  
  // Configuable input port wires
  wire 	 ss_0_n;      // Slave Select Wire


  wire                            ssi_txe_intr;   // Transmit FIFO Empty Interrupt
  wire                            ssi_txo_intr;   // Transmit FIFO Overflow Interrput
  wire                            ssi_rxf_intr;   // Recieve FIFO Full Interrupt
  wire                            ssi_rxo_intr;   // Recieve FIFO Overflow Interrupt
  wire                            ssi_rxu_intr;   // Recieve FIFO Underflow Interrupt
  wire                            ssi_mst_intr;

  wire                            ssi_txe_intr_n; // Transmit FIFO Empty Interrupt
  wire                            ssi_txo_intr_n; // Transmit FIFO Overflow Interrput
  wire                            ssi_rxf_intr_n; // Recieve FIFO Full Interrupt
  wire                            ssi_rxo_intr_n; // Recieve FIFO Overflow Interrupt
  wire                            ssi_rxu_intr_n; // Recieve FIFO Underflow Interrupt
  wire                            ssi_mst_intr_n;

  
  wire [ `SSI_MAX_XFER_SIZE-1:0]   rx_pop_data;
  wire 				                    load_start_bit;
  
  // Register decode assignments
  // leda NTL_CON16 off
  // LMD: Nets or cell pins should not be tied to logic 0 / logic 1
  // LJ:  These signals take the values from register which are updated 
  //      only when SSI is disabled and hence they are semi-static
  assign                          dfs                  = ctrlr0[3:0];
  assign                          frf                  = ctrlr0[5:4];
  assign                          scph                 = ctrlr0[6];
  assign                          tmod                 = ctrlr0[9:8];
  assign                          srl_test             = ctrlr0[11];
  assign                          cfs                  = ctrlr0[15:12];
  // leda NTL_CON16 on

// interrupt polarity
  assign                          ssi_txe_intr_n       = ssi_txe_intr;
  assign                          ssi_txo_intr_n       = ssi_txo_intr;
  assign                          ssi_rxf_intr_n       = ssi_rxf_intr;
  assign                          ssi_rxo_intr_n       = ssi_rxo_intr;
  assign                          ssi_rxu_intr_n       = ssi_rxu_intr;
  assign                          ssi_mst_intr_n       = ssi_mst_intr;



  // leda NTL_CON16 off
  // LMD: signals tied to 0/1
  // LJ : i_ssi_clk_en is tied to one as default if SSI_CLK_EN_MODE is deselcted.
// Configurable input port muxing
  assign                          i_ssi_clk_en         = 1'b1 ;
  
  // leda NTL_CON16 on
  

  assign  ss_0_n  = ss_n[0];

  // Instantiation for APB_Interface
  // leda NTL_CON10 off
  // LMD: output tied to supply
  // LJ: In configuration APB_DATA_WIDTH=32, the byte_en is always set to 4'b1111
  //     In configuration APB_DATA_WIDTH!=32, the upper bits of pwdata are set to 0
  // leda NTL_CON10B off
  // LMD: Output tied to supply in design
  // LJ: reg_addr[6] bit is set to zero always, it is used to support for future expansion
  //     of register space.
  i_ssi_DW_apb_ssi_biu
   U_biu
    (
     .pclk                  (pclk)
     ,.presetn              (presetn)
     ,.psel                 (psel)
     ,.penable              (penable)
     ,.pwrite               (pwrite)
     ,.paddr                (paddr)
     ,.pwdata               (pwdata)
     ,.prdata               (prdata)
     ,.wr_en                (wr_en)
     ,.rd_en                (rd_en)
     ,.byte_en              (byte_en)
     ,.reg_addr             (reg_addr)
     ,.ipwdata              (ipwdata)
     ,.iprdata              (iprdata)
     );
  // leda NTL_CON10B on
  // leda NTL_CON10 on
  
  // Instantiation for SSI register file
  // leda NTL_CON10 off
  // LMD: output tied to supply
  // LJ: In configuration SSI_MAX_XFER_SIZE=32 and SSI_HC_FRF=1, the ctrlr0[2:0] is driven to configurable parameters
  //     In configuration SSI_MAX_XFER_SIZE=16 and SSI_HC_FRF=1, the ctrlr0[6:4] is driven to configurable parameters
  // leda NTL_CON10B off
  // LMD: Output tied to supply in design
  // LJ: In configuration SSI_MAX_XFER_SIZE=32 and SSI_HC_FRF=1, the ctrlr0[2:0] is driven to configurable parameters
  //     In configuration SSI_MAX_XFER_SIZE=16 and SSI_HC_FRF=1, the ctrlr0[6:4] is driven to configurable parameters
  i_ssi_DW_apb_ssi_regfile
   U_regfile
    (
     .pclk(pclk),
     .presetn(presetn),
     .wr_en(wr_en),
     .rd_en(rd_en),
     .byte_en(byte_en),
     .reg_addr(reg_addr),
     .ipwdata(ipwdata),
     .iprdata(iprdata),
     .fsm_sleep(fsm_sleep),
     .fsm_busy(fsm_busy),
     .rx_pop_data(rx_pop_data),
     .tx_push_data(tx_push_data),
     .rx_pop(rx_pop),
     .rx_push_sync(rx_push_sync),
     .tx_push(tx_push),
     .tx_pop_sync(tx_pop_sync),
     .fifo_rst_n(fifo_rst_n),
     .tx_full(tx_full),
     .tx_empty(tx_empty),
     .rx_full(rx_full),
     .rx_empty(rx_empty),
     .isr(isr),
     .risr(risr),
     .icr_en(icr_en),
     .txoicr_en(txoicr_en),
     .rxoicr_en(rxoicr_en),
     .rxuicr_en(rxuicr_en),
     .msticr_en(msticr_en),
     .imr(imr),
     .ssi_sleep(ssi_sleep),
     .ctrlr0(ctrlr0),
     .ssienr(ssi_en_int),
     .mwcr(mwcr),
     .set0_imr5(set0_imr5),
     .set1_imr5(set1_imr5),
     .multi_mst_sync(multi_mst_sync),
     .fsm_multi_mst(fsm_multi_mst),
     .sclk_active(sclk_active),
     .ser(ser),
     .baudr(baudr),
     .baud2(baud2),
     .start_xfer(start_xfer),
     .ndf(ndf),
     .txftlr(txftlr),
     .rxftlr(rxftlr)
     );
  // leda NTL_CON10B on
  // leda NTL_CON10 on
  

    assign ssi_en_int_sync  = ssi_en_int;

  // Instantiation for SSI sclk generator
  i_ssi_DW_apb_ssi_sclkgen
   U_sclkgen
    (
     .ssi_clk(ssi_clk)
     ,.ssi_rst_n(ssi_rst_n)
     ,.ssi_clk_en(i_ssi_clk_en)
     ,.sclk_re(sclk_re)
     ,.sclk_fe(sclk_fe)
     ,.sclk_mask(sclk_mask)
     ,.sclk_active(sclk_active)
     ,.baudr(baudr)
     ,.sclk_out(sclk_out)
     ,.ssi_en_int(ssi_en_int_sync)
     );
  
  
  // Instantiation for SSI FIFO Controller
  i_ssi_DW_apb_ssi_fifo
   U_fifo
    (
     .pclk                  (pclk)
     ,.presetn              (presetn)
     ,.fifo_rst_n           (fifo_rst_n)
     ,.txftlr               (txftlr)
     ,.rxftlr               (rxftlr)
     ,.tx_push              (tx_push)
     ,.tx_pop               (tx_pop)
     ,.rx_push              (rx_push)
     ,.rx_pop               (rx_pop)
     ,.tx_full              (tx_full)
     ,.tx_empty             (tx_empty)
     ,.tx_almost_empty      (tx_almost_empty)
     ,.tx_overflow          (tx_overflow)
     ,.rx_full              (rx_full)
     ,.rx_empty             (rx_empty)
     ,.rx_almost_full       (rx_almost_full)
     ,.rx_overflow          (rx_overflow)
     ,.rx_underflow         (rx_underflow)
     ,.tx_wr_addr           (tx_wr_addr)
     ,.tx_rd_addr           (tx_rd_addr)
     ,.tx_we_n              (tx_we_n)
     ,.rx_wr_addr           (rx_wr_addr)
     ,.rx_rd_addr           (rx_rd_addr)
     ,.rx_we_n              (rx_we_n)
     ,.tx_pop_sync          (tx_pop_sync)
     ,.rx_push_sync         (rx_push_sync)
     );
  

  // Instantiation for SSI Shift Controller
  i_ssi_DW_apb_ssi_shift
   U_shift
    (
     .ssi_clk(ssi_clk),
     .ssi_clk_en(i_ssi_clk_en),
     .ssi_rst_n(ssi_rst_n),
     .tx_shift_en(tx_shift_en),
     .rx_shift_en(rx_shift_en),
     .load_tx_shift(load_tx_shift),
     .load_tx_buffer(load_tx_buffer),
     .load_rx_buf(load_rx_buf),
     .load_start_bit(load_start_bit),
     .tx_pop_data(tx_pop_data),
     .rxd(rxd),
     .dfs(dfs),
     .ssp_load_tx_shift(ssp_load_tx_shift),
     .frf(frf),
     .fsm_slv_sel(fsm_slv_sel),
     .ser(ser),
     .ss_n(ss_n),
     .tx_dfs(tx_dfs),
     .srl_test(srl_test),
     .ssi_en(ssi_en_int_sync),
     .txd(txd),
     .rx_push_data(rx_push_data),
     .rx_push(rx_push),
     .tx_pop(tx_pop)
     );
  
  
  i_ssi_DW_apb_ssi_mstfsm
   U_mstfsm
    (
     .ssi_clk(ssi_clk),
     .ssi_clk_en(i_ssi_clk_en),
     .ssi_rst_n(ssi_rst_n),
     .ssi_en_int(ssi_en_int_sync),
     .start_xfer(start_xfer),
     .sclk_re(sclk_re),
     .sclk_fe(sclk_fe),
     .mwcr(mwcr),
     .frf(frf),
     .scph(scph),
     .tmod(tmod),
     .dfs(dfs),
     .cfs(cfs),
     .ndf(ndf),
     .srl_test(srl_test),
     .baud2(baud2),
     .ss_in_n(ss_in_n),
     .mst_contention(mst_contention),
     .rxd(rxd),
     .fsm_busy(fsm_busy),
     .fsm_slv_sel(fsm_slv_sel),
     .sclk_mask(sclk_mask),
     .ssi_oe_n(ssi_oe_n),
     .fsm_sleep(fsm_sleep),
     .load_tx_shift(load_tx_shift),
     .ssp_load_tx_shift(ssp_load_tx_shift),
     .load_tx_buffer(load_tx_buffer),
     .load_rx_buf(load_rx_buf),
     .tx_shift_en(tx_shift_en),
     .rx_shift_en(rx_shift_en),
     .tx_dfs(tx_dfs),
     .fsm_multi_mst(fsm_multi_mst),
     .load_start_bit(load_start_bit)
     );

  
  



  
  
  // Instantiation for SSI Interrupt Interface
  i_ssi_DW_apb_ssi_intctl
   U_intctl
    (
     .pclk(pclk),
     .presetn(presetn),
     .imr(imr),
     .txoicr_en(txoicr_en),
     .rxoicr_en(rxoicr_en),
     .rxuicr_en(rxuicr_en),
     .msticr_en(msticr_en),
     .icr_en(icr_en),
     .rd_en(rd_en),
     .tx_empty(tx_almost_empty),
     .tx_overflow(tx_overflow),
     .rx_full(rx_almost_full),
     .rx_overflow(rx_overflow),
     .rx_underflow(rx_underflow),
     .ssi_en_int(ssi_en_int),
     .ssi_txe_intr(ssi_txe_intr),
     .ssi_txo_intr(ssi_txo_intr),
     .ssi_rxf_intr(ssi_rxf_intr),
     .ssi_rxo_intr(ssi_rxo_intr),
     .ssi_rxu_intr(ssi_rxu_intr),
     .ssi_mst_intr(ssi_mst_intr),
     .set0_imr5(set0_imr5),
     .set1_imr5(set1_imr5),
     .multi_mst_sync(multi_mst_sync),
     .mst_contention(mst_contention),
     .risr(risr),
     .isr(isr)
     );
  
  
  // Receive  FIFO RAM block                
  i_ssi_DW_apb_ssi_bcm57
   #(
  .DATA_WIDTH    ( `SSI_MAX_XFER_SIZE), 
  .DEPTH         ( `SSI_RX_FIFO_DEPTH), 
  .MEM_MODE      (0), 
  .ADDR_WIDTH    ( `RX_ABW)
  ) U_dff_rx
    (
     .clk                   (pclk)
     ,.init_n               (1'b1)
     ,.rst_n                (presetn)
     ,.wr_addr              (rx_wr_addr)
     ,.rd_addr              (rx_rd_addr)
     ,.data_in              (rx_push_data)
     ,.wr_n                 (rx_we_n)
     ,.data_out             (rx_pop_data)
     );
  
  
  // Transmit FIFO RAM block               
  i_ssi_DW_apb_ssi_bcm57
   #(
  .DATA_WIDTH    ( `SSI_MAX_XFER_SIZE), 
  .DEPTH         ( `SSI_TX_FIFO_DEPTH), 
  .MEM_MODE      (0), 
  .ADDR_WIDTH    ( `TX_ABW)
  ) U_dff_tx
    (
     .clk                   (pclk)
     ,.rst_n                (presetn)
     ,.init_n               (1'b1)
     ,.wr_addr              (tx_wr_addr)
     ,.rd_addr              (tx_rd_addr)
     ,.data_in              (tx_push_data)
     ,.wr_n                 (tx_we_n)
     ,.data_out             (tx_pop_data)
     );

  
  `undef SSI_ENCRYPT


endmodule // DW_apb_ssi
