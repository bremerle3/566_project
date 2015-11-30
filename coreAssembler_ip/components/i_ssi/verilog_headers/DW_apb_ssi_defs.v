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
// File Version     :        $Revision: #4 $ 
// Revision: $Id: //dwh/DW_ocb/DW_apb_ssi/amba_dev/sim/verilog_header_file/DW_apb_ssi_defs.v#4 $ 
//
// Abstract: Memory map header file for the DW_apb_ssi peripheral
*/



`define i_ssi_DW_APB_SSI_BASE 32'h00032000

`define i_ssi_Ssi_Ctrlr0_Offset      8'h00
`define i_ssi_Ssi_Ctrlr1_Offset      8'h04
`define i_ssi_Ssi_Ssienr_Offset      8'h08
`define i_ssi_Ssi_Mwcr_Offset        8'h0C
`define i_ssi_Ssi_Ser_Offset         8'h10
`define i_ssi_Ssi_Baudr_Offset       8'h14
`define i_ssi_Ssi_Txftlr_Offset      8'h18
`define i_ssi_Ssi_Rxftlr_Offset      8'h1C
`define i_ssi_Ssi_Txflr_Offset       8'h20
`define i_ssi_Ssi_Rxflr_Offset       8'h24
`define i_ssi_Ssi_Sr_Offset          8'h28
`define i_ssi_Ssi_Imr_Offset         8'h2C
`define i_ssi_Ssi_Isr_Offset         8'h30
`define i_ssi_Ssi_Risr_Offset        8'h34
`define i_ssi_Ssi_Txoicr_Offset      8'h38
`define i_ssi_Ssi_Rxoicr_Offset      8'h3C
`define i_ssi_Ssi_Rxuicr_Offset      8'h40
`define i_ssi_Ssi_Msticr_Offset      8'h44
`define i_ssi_Ssi_Icr_Offset         8'h48
`define i_ssi_Ssi_Dmacr_Offset       8'h4C
`define i_ssi_Ssi_Dmatdlr_Offset     8'h50
`define i_ssi_Ssi_Dmardlr_Offset     8'h54
`define i_ssi_Ssi_Idr_Offset         8'h58
`define i_ssi_Ssi_Version_Id_Offset  8'h5C
`define i_ssi_Ssi_Dr_Low_Offset      8'h60
`define i_ssi_Ssi_Dr_High_Offset     8'h9C

`define i_ssi_Ssi_Ctrlr0     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Ctrlr0_Offset    )
`define i_ssi_Ssi_Ctrlr1     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Ctrlr1_Offset    )
`define i_ssi_Ssi_Ssienr     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Ssienr_Offset    )
`define i_ssi_Ssi_Mwcr       (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Mwcr_Offset      )
`define i_ssi_Ssi_Ser        (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Ser_Offset       )
`define i_ssi_Ssi_Baudr      (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Baudr_Offset     )
`define i_ssi_Ssi_Txftlr     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Txftlr_Offset    )
`define i_ssi_Ssi_Rxftlr     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Rxftlr_Offset    )
`define i_ssi_Ssi_Txflr      (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Txflr_Offset     )
`define i_ssi_Ssi_Rxflr      (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Rxflr_Offset     )
`define i_ssi_Ssi_Sr         (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Sr_Offset        )
`define i_ssi_Ssi_Imr        (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Imr_Offset       )
`define i_ssi_Ssi_Isr        (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Isr_Offset       )
`define i_ssi_Ssi_Risr       (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Risr_Offset      )
`define i_ssi_Ssi_Txoicr     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Txoicr_Offset    )
`define i_ssi_Ssi_Rxoicr     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Rxoicr_Offset    )
`define i_ssi_Ssi_Rxuicr     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Rxuicr_Offset    )
`define i_ssi_Ssi_Msticr     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Msticr_Offset    )
`define i_ssi_Ssi_Icr        (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Icr_Offset       )
`define i_ssi_Ssi_Dmacr      (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Dmacr_Offset     )
`define i_ssi_Ssi_Dmatdlr    (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Dmatdlr_Offset   )
`define i_ssi_Ssi_Dmardlr    (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Dmardlr_Offset   )
`define i_ssi_Ssi_Idr        (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Idr_Offset       )
`define i_ssi_Ssi_Version_Id (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Version_Id_Offset)
`define i_ssi_Ssi_Dr_Low     (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Dr_Low_Offset    )
`define i_ssi_Ssi_Dr_High    (`i_ssi_DW_APB_SSI_BASE + `i_ssi_Ssi_Dr_High_Offset   )

`define SSIi_ssi_PING_1BIT_WR (`i_ssi_Ssi_Ctrlr0                                            )


