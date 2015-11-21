/*
------------------------------------------------------------------------
--
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
// File Version     :        $Revision: #21 $ 
// Revision: $Id: //dwh/DW_ocb/DW_apb_ssi/amba_dev/src/DW_apb_ssi_cc_constants.v#21 $ 
--
//
//
-- File :                       DW_apb_ssi_cc_constants.v
-- Abstract     :               parameter file for the SSI.
--
-- =====================================================================
*/


// Name:         APB_DATA_WIDTH
// Default:      32
// Values:       8 16 32
// 
// Width of APB data bus
`define APB_DATA_WIDTH 32

//Internal Define for APB Data Width 8

// `define APB_DATA_WIDTH_8

//Internal Define for APB Data Width 16

// `define APB_DATA_WIDTH_16


//Internal Define for APB Data Width 32

`define APB_DATA_WIDTH_32


// Name:         SSI_IS_MASTER
// Default:      Serial Master
// Values:       Serial Slave (0), Serial Master (1)
// 
// Configure the device as a master or a slave serial peripheral
`define SSI_IS_MASTER 1


// Name:         SSI_MAX_XFER_SIZE
// Default:      16 Bits
// Values:       16 Bits (16), 32 Bits (32)
// 
// Configures the Maximum Transfer Size supported by device. 
// The Receive amd Transmit FIFO widths will be equal to configured value
`define SSI_MAX_XFER_SIZE 16


// Name:         SSI_NUM_SLAVES
// Default:      1
// Values:       1, ..., 16
// Enabled:      SSI_IS_MASTER==1
// 
// Configures the number of slave select lines from the DW_apb_ssi master. 
// This parameter is only valid when configured as a serial master.
`define SSI_NUM_SLAVES 1


// Name:         SSI_HAS_DMA
// Default:      false
// Values:       false (0), true (1)
// 
// Configures the inclusion of DMA handshaking interface signals. 
// Check the box to include the DMA interface signals.
`define SSI_HAS_DMA 0

//Qualifies the operation of the dma_tx_single output.
//When unchecked the 'dma_tx_single' output is held inactive (logic 0).
//The 'dma_tx_req' output will always request a multiple transaction.
//The transaction length is programmed into the DMA controller.
//This mode must be used if the DMA block
//length is NOT a multiple of the DMA transaction length.
//When checked the 'dma_tx_single' output is a status signal indicating
//to the dma controller that it can complete at least a single transaction
//to the DW_apb_ssi transmit fifo.
//This mode should be used if the DMA block length is a multiple of the
//DMA transaction length.

`define SSI_DMA_TX_SGL_STATUS 1

//Qualifies the operation of the dma_rx_single output.
//When unchecked the 'dma_rx_single' output is held inactive (logic 0).
//The 'dma_rx_req' output will always request a multiple transaction.
//The transaction length is programmed into the DMA controller.
//This mode must be used if the DMA block
//length is NOT a multiple of the DMA transaction length.
//When checked the 'dma_rx_single' output is a status signal indicating
//to the dma controller that it can complete at least a single transaction
//to the DW_apb_ssi receive fifo.
//This mode should be used if the DMA block length is a multiple of the
//DMA transaction length.

`define SSI_DMA_RX_SGL_STATUS 1


// Name:         SSI_RX_FIFO_DEPTH
// Default:      0x8
// Values:       0x2, ..., 0x100
// 
// Configures the depth of the receive FIFO buffer.
`define SSI_RX_FIFO_DEPTH 9'h8


// Name:         SSI_TX_FIFO_DEPTH
// Default:      0x8
// Values:       0x2, ..., 0x100
// 
// Configures the depth of the transmit FIFO buffer.
`define SSI_TX_FIFO_DEPTH 9'h8


// Name:         SSI_INTR_POL
// Default:      Active Low
// Values:       Active Low (0), Active High (1)
// 
// Configures the active level of the output interrupt lines.
`define SSI_INTR_POL 0


// Name:         SSI_INTR_IO
// Default:      Individual Interrupts
// Values:       Individual Interrupts (0), Combined Interrupt (1)
// 
// Configures which interrupt related pins appear as outputs of the design. 
// The user has a choice of either a single combined interrupt (the logical 
// OR of all DW_apb_ssi interrupt outputs) or have each individual interrupt 
// appear as a separate output pin on the macrocell. 
// When configurated as a master there are 6 individual interrupts. 
// When configurated as a slave  there are 5 individual interrupts.
`define SSI_INTR_IO 0


// Name:         SSI_CLK_EN_MODE
// Default:      No
// Values:       No (0), Yes (1)
// Enabled:      SSI_SYNC_CLK==1
// 
// This selects whether there is an external clock enable for ssi_clk, 
// Allows pclk and ssi_clk to be synchronous but have a divided factor.
`define SSI_CLK_EN_MODE 0

//Set SSI_INDIVIDUAL

`define SSI_INDIVIDUAL 0

//set SSI_COMBINED

`define SSI_COMBINED 1


// Name:         SSI_SYNC_CLK
// Default:      Yes
// Values:       No (0), Yes (1)
// 
// Defines if the pclk is synchronous to the ssi_clk. 
// If they are synchronous then one does not need to retime signals 
// across the clock domains.
`define SSI_SYNC_CLK 1


// Name:         SSI_HAS_RX_SAMPLE_DELAY
// Default:      No
// Values:       No (0), Yes (1)
// Enabled:      SSI_IS_MASTER==1
// 
// Include logic to allow programmable delay on the sample time of 
// the rxd input. When this logic is include, the default sample 
// time of the rxd input can be delayed by a programmable number 
// of ssi_clk cycles.
`define SSI_HAS_RX_SAMPLE_DELAY 0


// `define SSI_HAS_RX_SAMPLE_LOGIC


// Name:         SSI_RX_DLY_SR_DEPTH
// Default:      4
// Values:       4, ..., 255
// Enabled:      SSI_HAS_RX_SAMPLE_DELAY==1
// 
// Defines the maximum number of ssi_clk cycles that can 
// be used to delay the sampling of the rxd input 
//  - 2 flip-flops added to design logic for each value
`define SSI_RX_DLY_SR_DEPTH 4


// Name:         SSI_ID
// Default:      0xffffffff
// Values:       0x0, ..., 0xffffffff
// 
// Individual peripheral Identification code. 
// Valid value in range 0x00000000 - 0xFFFFFFFF.
`define SSI_ID 32'hffffffff


// Name:         SSI_HC_FRF
// Default:      No
// Values:       No (0), Yes (1)
// 
// The frame format can be fixed so that the user cannot dynamically 
// program it. Restricts the use of DW_apb_ssi to be only a 
// single frame format peripheral.
`define SSI_HC_FRF 1


// Name:         SSI_DFLT_FRF
// Default:      Motorola SPI
// Values:       Motorola SPI (0x0), TI SSP (0x1), NatSemi Microwire (0x2)
// 
// Selects the frame format that will be available directly after reset. 
// Can configure any of the frame formats to be the default frame format. 
// If the frame format is hardcoded, the default frame format is the only 
// frame format possible.
`define SSI_DFLT_FRF 2'h0


// Name:         SSI_DFLT_SCPOL
// Default:      0
// Values:       0 1
// Enabled:      SSI_DFLT_FRF==0
// 
// Controls the default state of the clock polarity. 
// Defines the level of the serial clock when in-active (not toggling). 
// Only used when the frame format is Motorola SPI.
`define SSI_DFLT_SCPOL 1'h0


// Name:         SSI_DFLT_SCPH
// Default:      0
// Values:       0 1
// Enabled:      SSI_DFLT_FRF==0
// 
// Controls the default state of the clock phase. 
// Only used when the frame format is Motorola SPI. 
// The serial clock phase selects the relationship of the serial clock with the 
// serial data. When 0, data is captured on the first edge of the serial clock. 
// When 1, data is captured on the second edge of the serial clock.
`define SSI_DFLT_SCPH 1'h0


//Internal Define for 32 bit mode

// `define SSI_HAS_32_BIT_XFER_SIZE

//Internal Define for Data Frame Size (DFS) width

`define DFS_W 4

//Reset Value of CTRLR0 Registers in 32 bit mode.

`define SSI_CTRLR0_RST_21 21'h70000

//Reset Value of CTRLR0 Registers in 16 bit mode.

`define SSI_CTRLR0_RST_16 16'h7

//CTRLR0 reset value.

`define SSI_CTRLR0_RST 21'h7

//Width of irpdata

`define MAX_APB_DATA_WIDTH 32

//Width of MWCR register

`define MWCR_RS 3

//Width of Interrupt register

`define INT_RS 6

//Receive data width of FIFO

`define RX_ABW 3

//Write data width of FIFO

`define TX_ABW 3

//Address Slice LHS

`define SSI_ADDR_SLICE_LHS 8

//Setting up a clock period for the SSI.

`define SSI_CLK_PERIOD 400

//Default Value of SCLK OUT.

`define SSI_DFLT_SCLK_OUT 1'h0

//Default Value of SSI_DFLT_SS_N

`define SSI_DFLT_SS_N 1'h1

//Each corekit has a version number.
//This is relected in the ascii version number which needs to get translated.
// 0 => 48 -> 30
// 1 => 49 -> 31
// 2 => 50 -> 32
// A => 65 -> 41
// B => 66 -> 42
// C => 67 -> 43
//
//Current Version is 3.18* => 33_31_38_2A
//

`define SSI_VERSION_ID 32'h3332332a

//Random seed used in the testbench

`define SSI_RAND_SEED 32'h0



`define SSI_ENCRYPT


// Name:         SSI_SCPH0_SSTOGGLE
// Default:      Yes
// Values:       No (0), Yes (1)
// Enabled:      (SSI_DFLT_FRF==0) || (SSI_HC_FRF==0)
// 
// When operating in SPI mode with clock phase (SCPH) set to 0, this parameter  
// controls the behavior of the slave select line (ss_*_n) between data frames. 
// If this parameter is set to "Yes" the ss_*_n line will toggle between 
// consecutive data frames, with the serial clock (sclk) being held to its default 
// value while ss_*_n is high; if this parameter is set to 0 the ss_*_n will 
// stay low and sclk will run continuously for the duration of the transfer
`define SSI_SCPH0_SSTOGGLE 1

//Creates a define for enabling low power interface

`define SSI_SCPH0_SSTOGGLE_IS_ONE

//Include SVA assertions

