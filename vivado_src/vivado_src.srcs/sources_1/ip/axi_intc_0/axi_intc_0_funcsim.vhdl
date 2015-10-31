-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
-- Date        : Sat Oct 31 15:35:48 2015
-- Host        : linuxlab006.seas.wustl.edu running 64-bit CentOS Linux release 7.1.1503 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/warehouse/l.kirchner/566_project/vivado_src/vivado_src.srcs/sources_1/ip/axi_intc_0/axi_intc_0_funcsim.vhdl
-- Design      : axi_intc_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_intc_0_address_decoder is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p_14_in : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O18 : out STD_LOGIC;
    O19 : out STD_LOGIC;
    O20 : out STD_LOGIC;
    p_0_in2_out : out STD_LOGIC;
    O21 : out STD_LOGIC;
    O22 : out STD_LOGIC;
    O23 : out STD_LOGIC;
    O24 : out STD_LOGIC;
    O25 : out STD_LOGIC;
    O26 : out STD_LOGIC;
    O27 : out STD_LOGIC;
    O28 : out STD_LOGIC;
    p_0_in20_out : out STD_LOGIC;
    start2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I17 : in STD_LOGIC;
    I18 : in STD_LOGIC;
    I19 : in STD_LOGIC;
    I20 : in STD_LOGIC;
    I21 : in STD_LOGIC;
    I22 : in STD_LOGIC;
    I23 : in STD_LOGIC;
    I24 : in STD_LOGIC;
    I25 : in STD_LOGIC;
    I26 : in STD_LOGIC;
    I27 : in STD_LOGIC;
    I28 : in STD_LOGIC;
    I29 : in STD_LOGIC;
    I30 : in STD_LOGIC;
    I31 : in STD_LOGIC;
    I32 : in STD_LOGIC;
    I33 : in STD_LOGIC;
    I34 : in STD_LOGIC;
    I35 : in STD_LOGIC;
    I36 : in STD_LOGIC;
    I37 : in STD_LOGIC;
    I38 : in STD_LOGIC;
    I39 : in STD_LOGIC;
    I40 : in STD_LOGIC;
    I41 : in STD_LOGIC;
    I42 : in STD_LOGIC;
    I43 : in STD_LOGIC;
    I44 : in STD_LOGIC;
    I45 : in STD_LOGIC;
    I46 : in STD_LOGIC;
    I47 : in STD_LOGIC;
    I48 : in STD_LOGIC;
    I49 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_0_in : in STD_LOGIC;
    I50 : in STD_LOGIC;
    p_0_in114_in : in STD_LOGIC;
    p_0_in104_in : in STD_LOGIC;
    p_0_in94_in : in STD_LOGIC;
    p_0_in84_in : in STD_LOGIC;
    p_0_in74_in : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    I51 : in STD_LOGIC;
    p_0_in77_in : in STD_LOGIC;
    p_0_in75_in : in STD_LOGIC;
    p_0_in73_in : in STD_LOGIC;
    p_0_in71_in : in STD_LOGIC;
    p_0_in69_in : in STD_LOGIC;
    p_0_in67_in : in STD_LOGIC;
    p_0_in65_in : in STD_LOGIC;
    mer : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    p_0_in51_in : in STD_LOGIC;
    p_0_in53_in : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    p_0_in57_in : in STD_LOGIC;
    p_0_in59_in : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    I52 : in STD_LOGIC;
    I53 : in STD_LOGIC;
    I54 : in STD_LOGIC;
    I55 : in STD_LOGIC;
    I56 : in STD_LOGIC;
    I57 : in STD_LOGIC;
    I58 : in STD_LOGIC;
    I59 : in STD_LOGIC;
    I60 : in STD_LOGIC;
    I61 : in STD_LOGIC;
    I62 : in STD_LOGIC;
    I63 : in STD_LOGIC;
    data3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I64 : in STD_LOGIC;
    I65 : in STD_LOGIC;
    I66 : in STD_LOGIC;
    I67 : in STD_LOGIC;
    I68 : in STD_LOGIC;
    I69 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_intc_0_address_decoder : entity is "address_decoder";
end axi_intc_0_address_decoder;

architecture STRUCTURE of axi_intc_0_address_decoder is
  signal \INTC_CORE_I/read\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal n_0_Bus_RNW_reg_i_1 : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : STD_LOGIC;
  signal n_0_ip2bus_wrack_i_2 : STD_LOGIC;
  signal n_0_ip2bus_wrack_int_d1_i_2 : STD_LOGIC;
  signal n_0_ip2bus_wrack_int_d1_i_3 : STD_LOGIC;
  signal n_0_ip2bus_wrack_int_d1_i_4 : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[31]_i_6\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in_0 : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \REG_GEN[0].ier[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ip2bus_rdack_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ip2bus_rdack_int_d1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ip2bus_wrack_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_1\ : label is "soft_lutpair12";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I69,
      I1 => start2,
      I2 => \^o2\,
      O => n_0_Bus_RNW_reg_i_1
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Bus_RNW_reg_i_1,
      Q => \^o2\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_12_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_aresetn,
      I4 => I51,
      O => O12
    );
\CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_12_in,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => p_0_in77_in,
      O => O13
    );
\CIE_GEN.CIE_BIT_GEN[2].cie[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_12_in,
      I2 => s_axi_wdata(2),
      I3 => s_axi_aresetn,
      I4 => p_0_in75_in,
      O => O14
    );
\CIE_GEN.CIE_BIT_GEN[3].cie[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_12_in,
      I2 => s_axi_wdata(3),
      I3 => s_axi_aresetn,
      I4 => p_0_in73_in,
      O => O15
    );
\CIE_GEN.CIE_BIT_GEN[4].cie[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_12_in,
      I2 => s_axi_wdata(4),
      I3 => s_axi_aresetn,
      I4 => p_0_in71_in,
      O => O16
    );
\CIE_GEN.CIE_BIT_GEN[5].cie[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_12_in,
      I2 => s_axi_wdata(5),
      I3 => s_axi_aresetn,
      I4 => p_0_in69_in,
      O => O17
    );
\CIE_GEN.CIE_BIT_GEN[6].cie[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_12_in,
      I2 => s_axi_wdata(6),
      I3 => s_axi_aresetn,
      I4 => p_0_in67_in,
      O => O18
    );
\CIE_GEN.CIE_BIT_GEN[7].cie[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_12_in,
      I2 => s_axi_wdata(7),
      I3 => s_axi_aresetn,
      I4 => p_0_in65_in,
      O => O19
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => I3(0),
      I1 => I3(2),
      I2 => I3(1),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\,
      O => p_1_out
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_1_out,
      Q => \^o1\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => I3(0),
      I1 => I3(1),
      I2 => I3(2),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => I3(0),
      I1 => I3(1),
      I2 => I3(2),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => I3(2),
      I1 => I3(0),
      I2 => I3(1),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => I3(2),
      I1 => I3(0),
      I2 => I3(1),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => I3(0),
      I1 => I3(2),
      I2 => I3(1),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I3(2),
      I1 => I3(1),
      I2 => I3(0),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
    port map (
      I0 => I3(5),
      I1 => I3(6),
      I2 => start2,
      I3 => I3(4),
      I4 => I3(3),
      O => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => ip2bus_wrack,
      I2 => Q(0),
      I3 => ip2bus_rdack,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => I3(5),
      I1 => I3(6),
      I2 => start2,
      O => p_0_out
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => p_0_out,
      Q => \n_0_GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => I3(2),
      I1 => I3(1),
      I2 => I3(0),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => I3(0),
      I1 => I3(1),
      I2 => I3(2),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => I3(0),
      I1 => I3(1),
      I2 => I3(2),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\,
      Q => p_14_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => I3(2),
      I1 => I3(0),
      I2 => I3(1),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => I3(2),
      I1 => I3(0),
      I2 => I3(1),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => I3(0),
      I1 => I3(2),
      I2 => I3(1),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I3(2),
      I1 => I3(1),
      I2 => I3(0),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => I3(5),
      I1 => I3(6),
      I2 => start2,
      I3 => I3(4),
      I4 => I3(3),
      O => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => I3(0),
      I1 => I3(2),
      I2 => I3(1),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => I3(2),
      I1 => I3(1),
      I2 => I3(0),
      I3 => \n_0_GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start2,
      D => \n_0_GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\,
      Q => p_8_in,
      R => cs_ce_clr
    );
\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => s_axi_wdata(0),
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      I4 => I52,
      O => O28
    );
\REG_GEN[0].ier[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_15_in,
      I1 => \^o2\,
      O => p_14_in
    );
\REG_GEN[1].IAR_NORMAL_MODE_GEN.iar[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => s_axi_wdata(1),
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      I4 => p_0_in61_in,
      O => O27
    );
\REG_GEN[2].IAR_NORMAL_MODE_GEN.iar[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => s_axi_wdata(2),
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      I4 => p_0_in59_in,
      O => O26
    );
\REG_GEN[3].IAR_NORMAL_MODE_GEN.iar[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => s_axi_wdata(3),
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      I4 => p_0_in57_in,
      O => O25
    );
\REG_GEN[4].IAR_NORMAL_MODE_GEN.iar[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => s_axi_wdata(4),
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      I4 => p_0_in55_in,
      O => O24
    );
\REG_GEN[5].IAR_NORMAL_MODE_GEN.iar[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => s_axi_wdata(5),
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      I4 => p_0_in53_in,
      O => O23
    );
\REG_GEN[6].IAR_NORMAL_MODE_GEN.iar[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => s_axi_wdata(6),
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      I4 => p_0_in51_in,
      O => O22
    );
\REG_GEN[7].IAR_NORMAL_MODE_GEN.iar[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => s_axi_wdata(7),
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      I4 => p_0_in49_in,
      O => O21
    );
\SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_13_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_aresetn,
      I4 => I50,
      O => O4
    );
\SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_13_in,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => p_0_in114_in,
      O => O5
    );
\SIE_GEN.SIE_BIT_GEN[2].sie[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_13_in,
      I2 => s_axi_wdata(2),
      I3 => s_axi_aresetn,
      I4 => p_0_in104_in,
      O => O6
    );
\SIE_GEN.SIE_BIT_GEN[3].sie[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_13_in,
      I2 => s_axi_wdata(3),
      I3 => s_axi_aresetn,
      I4 => p_0_in94_in,
      O => O7
    );
\SIE_GEN.SIE_BIT_GEN[4].sie[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_13_in,
      I2 => s_axi_wdata(4),
      I3 => s_axi_aresetn,
      I4 => p_0_in84_in,
      O => O8
    );
\SIE_GEN.SIE_BIT_GEN[5].sie[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_13_in,
      I2 => s_axi_wdata(5),
      I3 => s_axi_aresetn,
      I4 => p_0_in74_in,
      O => O9
    );
\SIE_GEN.SIE_BIT_GEN[6].sie[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_13_in,
      I2 => s_axi_wdata(6),
      I3 => s_axi_aresetn,
      I4 => p_0_in64_in,
      O => O10
    );
\SIE_GEN.SIE_BIT_GEN[7].sie[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => \^o2\,
      I1 => p_13_in,
      I2 => s_axi_wdata(7),
      I3 => s_axi_aresetn,
      I4 => p_0_in54_in,
      O => O11
    );
ip2bus_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCC8"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[1]_i_3\,
      I1 => \^o2\,
      I2 => p_14_in_0,
      I3 => n_0_ip2bus_wrack_int_d1_i_2,
      I4 => ip2bus_rdack_int_d1,
      O => ip2bus_rdack_prev2
    );
ip2bus_rdack_int_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
    port map (
      I0 => n_0_ip2bus_wrack_int_d1_i_2,
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => \n_0_s_axi_rdata_i[1]_i_3\,
      O => p_0_in20_out
    );
ip2bus_wrack_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
    port map (
      I0 => n_0_ip2bus_wrack_i_2,
      I1 => n_0_ip2bus_wrack_int_d1_i_2,
      I2 => \^o2\,
      I3 => ip2bus_wrack_int_d1,
      O => ip2bus_wrack_prev2
    );
ip2bus_wrack_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAFAFAE"
    )
    port map (
      I0 => n_0_ip2bus_wrack_int_d1_i_3,
      I1 => p_14_in_0,
      I2 => \^o2\,
      I3 => p_15_in,
      I4 => p_10_in,
      O => n_0_ip2bus_wrack_i_2
    );
ip2bus_wrack_int_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FF00FE"
    )
    port map (
      I0 => n_0_ip2bus_wrack_int_d1_i_2,
      I1 => p_10_in,
      I2 => p_15_in,
      I3 => \^o2\,
      I4 => p_14_in_0,
      I5 => n_0_ip2bus_wrack_int_d1_i_3,
      O => p_0_in2_out
    );
ip2bus_wrack_int_d1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => p_6_in,
      I1 => p_5_in,
      I2 => p_7_in,
      I3 => n_0_ip2bus_wrack_int_d1_i_4,
      O => n_0_ip2bus_wrack_int_d1_i_2
    );
ip2bus_wrack_int_d1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
    port map (
      I0 => p_11_in,
      I1 => p_9_in,
      I2 => \^o1\,
      I3 => p_8_in,
      I4 => p_16_in,
      I5 => \^o2\,
      O => n_0_ip2bus_wrack_int_d1_i_3
    );
ip2bus_wrack_int_d1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => p_3_in,
      I1 => p_4_in,
      I2 => p_12_in,
      I3 => p_13_in,
      I4 => \n_0_GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I5 => p_2_in,
      O => n_0_ip2bus_wrack_int_d1_i_4
    );
\mer_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_wdata(0),
      I1 => p_10_in,
      I2 => \^o2\,
      I3 => mer,
      O => O20
    );
\mer_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => s_axi_wdata(1),
      I1 => \^o2\,
      I2 => p_10_in,
      I3 => p_0_in,
      O => O3
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040000000"
    )
    port map (
      I0 => I53,
      I1 => \n_0_s_axi_rdata_i[1]_i_3\,
      I2 => \^o2\,
      I3 => I54,
      I4 => I3(3),
      I5 => I55,
      O => D(0)
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I6,
      I1 => \INTC_CORE_I/read\,
      I2 => I7,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(10)
    );
\s_axi_rdata_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I8,
      I1 => \INTC_CORE_I/read\,
      I2 => I9,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(11)
    );
\s_axi_rdata_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I10,
      I1 => \INTC_CORE_I/read\,
      I2 => I11,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(12)
    );
\s_axi_rdata_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I12,
      I1 => \INTC_CORE_I/read\,
      I2 => I13,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(13)
    );
\s_axi_rdata_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I14,
      I1 => \INTC_CORE_I/read\,
      I2 => I15,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(14)
    );
\s_axi_rdata_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I16,
      I1 => \INTC_CORE_I/read\,
      I2 => I17,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(15)
    );
\s_axi_rdata_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I18,
      I1 => \INTC_CORE_I/read\,
      I2 => I19,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(16)
    );
\s_axi_rdata_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I20,
      I1 => \INTC_CORE_I/read\,
      I2 => I21,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(17)
    );
\s_axi_rdata_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I22,
      I1 => \INTC_CORE_I/read\,
      I2 => I23,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(18)
    );
\s_axi_rdata_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I24,
      I1 => \INTC_CORE_I/read\,
      I2 => I25,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(19)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040000000"
    )
    port map (
      I0 => I56,
      I1 => \n_0_s_axi_rdata_i[1]_i_3\,
      I2 => \^o2\,
      I3 => I57,
      I4 => I3(3),
      I5 => I58,
      O => D(1)
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => p_15_in,
      I1 => p_10_in,
      I2 => p_16_in,
      I3 => \n_0_s_axi_rdata_i[1]_i_6\,
      I4 => p_8_in,
      I5 => \^o1\,
      O => \n_0_s_axi_rdata_i[1]_i_3\
    );
\s_axi_rdata_i[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => p_11_in,
      I1 => p_9_in,
      O => \n_0_s_axi_rdata_i[1]_i_6\
    );
\s_axi_rdata_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I26,
      I1 => \INTC_CORE_I/read\,
      I2 => I27,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(20)
    );
\s_axi_rdata_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I28,
      I1 => \INTC_CORE_I/read\,
      I2 => I29,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(21)
    );
\s_axi_rdata_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I30,
      I1 => \INTC_CORE_I/read\,
      I2 => I31,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(22)
    );
\s_axi_rdata_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I32,
      I1 => \INTC_CORE_I/read\,
      I2 => I33,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(23)
    );
\s_axi_rdata_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I34,
      I1 => \INTC_CORE_I/read\,
      I2 => I35,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(24)
    );
\s_axi_rdata_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I36,
      I1 => \INTC_CORE_I/read\,
      I2 => I37,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(25)
    );
\s_axi_rdata_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I38,
      I1 => \INTC_CORE_I/read\,
      I2 => I39,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(26)
    );
\s_axi_rdata_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I40,
      I1 => \INTC_CORE_I/read\,
      I2 => I41,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(27)
    );
\s_axi_rdata_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I42,
      I1 => \INTC_CORE_I/read\,
      I2 => I43,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(28)
    );
\s_axi_rdata_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I44,
      I1 => \INTC_CORE_I/read\,
      I2 => I45,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(29)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => I59,
      I1 => \INTC_CORE_I/read\,
      I2 => I60,
      O => D(2)
    );
\s_axi_rdata_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I46,
      I1 => \INTC_CORE_I/read\,
      I2 => I47,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(30)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I48,
      I1 => \INTC_CORE_I/read\,
      I2 => I49,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(31)
    );
\s_axi_rdata_i[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[31]_i_6\,
      I1 => p_16_in,
      I2 => p_10_in,
      I3 => p_15_in,
      I4 => \^o2\,
      O => \INTC_CORE_I/read\
    );
\s_axi_rdata_i[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \^o1\,
      I1 => p_8_in,
      I2 => p_9_in,
      I3 => p_11_in,
      O => \n_0_s_axi_rdata_i[31]_i_6\
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => I61,
      I1 => \INTC_CORE_I/read\,
      I2 => I62,
      O => D(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888880080"
    )
    port map (
      I0 => I63,
      I1 => \INTC_CORE_I/read\,
      I2 => data3(0),
      I3 => I64,
      I4 => I65,
      I5 => I3(3),
      O => D(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888880080"
    )
    port map (
      I0 => I66,
      I1 => \INTC_CORE_I/read\,
      I2 => data3(0),
      I3 => I64,
      I4 => I65,
      I5 => I3(3),
      O => D(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888880080"
    )
    port map (
      I0 => I67,
      I1 => \INTC_CORE_I/read\,
      I2 => data3(0),
      I3 => I64,
      I4 => I65,
      I5 => I3(3),
      O => D(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888880080"
    )
    port map (
      I0 => I68,
      I1 => \INTC_CORE_I/read\,
      I2 => data3(0),
      I3 => I64,
      I4 => I65,
      I5 => I3(3),
      O => D(7)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I1,
      I1 => \INTC_CORE_I/read\,
      I2 => I2,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(8)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => I4,
      I1 => \INTC_CORE_I/read\,
      I2 => I5,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_intc_0_intc_core is
  port (
    O1 : out STD_LOGIC;
    p_0_in22_in : out STD_LOGIC;
    p_0_in20_in : out STD_LOGIC;
    p_0_in18_in : out STD_LOGIC;
    p_0_in16_in : out STD_LOGIC;
    p_0_in14_in : out STD_LOGIC;
    p_0_in13_in : out STD_LOGIC;
    O2 : out STD_LOGIC;
    p_0_in61_in : out STD_LOGIC;
    p_0_in59_in : out STD_LOGIC;
    p_0_in57_in : out STD_LOGIC;
    p_0_in55_in : out STD_LOGIC;
    p_0_in53_in : out STD_LOGIC;
    p_0_in51_in : out STD_LOGIC;
    p_0_in49_in : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    p_1_in23_in : out STD_LOGIC;
    p_1_in21_in : out STD_LOGIC;
    p_1_in19_in : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in15_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    O3 : out STD_LOGIC;
    p_0_in114_in : out STD_LOGIC;
    p_0_in104_in : out STD_LOGIC;
    p_0_in94_in : out STD_LOGIC;
    p_0_in84_in : out STD_LOGIC;
    p_0_in74_in : out STD_LOGIC;
    p_0_in64_in : out STD_LOGIC;
    p_0_in54_in : out STD_LOGIC;
    O4 : out STD_LOGIC;
    p_0_in77_in : out STD_LOGIC;
    p_0_in75_in : out STD_LOGIC;
    p_0_in73_in : out STD_LOGIC;
    p_0_in71_in : out STD_LOGIC;
    p_0_in69_in : out STD_LOGIC;
    p_0_in67_in : out STD_LOGIC;
    p_0_in65_in : out STD_LOGIC;
    mer : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    data3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    irq : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I17 : in STD_LOGIC;
    I18 : in STD_LOGIC;
    I19 : in STD_LOGIC;
    I20 : in STD_LOGIC;
    I21 : in STD_LOGIC;
    I22 : in STD_LOGIC;
    I23 : in STD_LOGIC;
    I24 : in STD_LOGIC;
    I25 : in STD_LOGIC;
    I26 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_14_in : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Bus_RNW_reg : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_intc_0_intc_core : entity is "intc_core";
end axi_intc_0_intc_core;

architecture STRUCTURE of axi_intc_0_intc_core is
  signal \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o7\ : STD_LOGIC;
  signal \^o8\ : STD_LOGIC;
  signal intr_d1 : STD_LOGIC;
  signal ipr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^irq\ : STD_LOGIC;
  signal irq_gen : STD_LOGIC;
  signal irq_gen3 : STD_LOGIC;
  signal irq_gen4 : STD_LOGIC;
  signal irq_gen6 : STD_LOGIC;
  signal irq_gen7 : STD_LOGIC;
  signal irq_gen728_out : STD_LOGIC;
  signal irq_gen_i : STD_LOGIC;
  signal \^mer\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1\ : STD_LOGIC;
  signal \n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg\ : STD_LOGIC;
  signal \n_0_IPR_GEN.ipr[0]_i_1\ : STD_LOGIC;
  signal \n_0_IPR_GEN.ipr[1]_i_1\ : STD_LOGIC;
  signal \n_0_IPR_GEN.ipr[2]_i_1\ : STD_LOGIC;
  signal \n_0_IPR_GEN.ipr[3]_i_1\ : STD_LOGIC;
  signal \n_0_IPR_GEN.ipr[4]_i_1\ : STD_LOGIC;
  signal \n_0_IPR_GEN.ipr[5]_i_1\ : STD_LOGIC;
  signal \n_0_IPR_GEN.ipr[6]_i_1\ : STD_LOGIC;
  signal \n_0_IPR_GEN.ipr[7]_i_1\ : STD_LOGIC;
  signal \n_0_IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1\ : STD_LOGIC;
  signal \n_0_IVR_GEN.ivr[0]_i_1\ : STD_LOGIC;
  signal \n_0_IVR_GEN.ivr[0]_i_2\ : STD_LOGIC;
  signal \n_0_IVR_GEN.ivr[1]_i_1\ : STD_LOGIC;
  signal \n_0_IVR_GEN.ivr[2]_i_1\ : STD_LOGIC;
  signal \n_0_IVR_GEN.ivr[2]_i_2\ : STD_LOGIC;
  signal \n_0_IVR_GEN.ivr[3]_i_1\ : STD_LOGIC;
  signal \n_0_IVR_GEN.ivr_reg[0]\ : STD_LOGIC;
  signal \n_0_IVR_GEN.ivr_reg[1]\ : STD_LOGIC;
  signal \n_0_REG_GEN[0].ier_reg[0]\ : STD_LOGIC;
  signal \n_0_REG_GEN[0].isr[0]_i_2\ : STD_LOGIC;
  signal \n_0_REG_GEN[0].isr_reg[0]\ : STD_LOGIC;
  signal \n_0_REG_GEN[1].isr[1]_i_2\ : STD_LOGIC;
  signal \n_0_REG_GEN[2].isr[2]_i_2\ : STD_LOGIC;
  signal \n_0_REG_GEN[3].isr[3]_i_2\ : STD_LOGIC;
  signal \n_0_REG_GEN[4].isr[4]_i_2\ : STD_LOGIC;
  signal \n_0_REG_GEN[5].isr[5]_i_2\ : STD_LOGIC;
  signal \n_0_REG_GEN[6].isr[6]_i_2\ : STD_LOGIC;
  signal \n_0_REG_GEN[7].isr[7]_i_2\ : STD_LOGIC;
  signal n_0_irq_gen_i_2 : STD_LOGIC;
  signal n_0_irq_gen_i_3 : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_7\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal \^p_0_in104_in\ : STD_LOGIC;
  signal \^p_0_in114_in\ : STD_LOGIC;
  signal \^p_0_in13_in\ : STD_LOGIC;
  signal \^p_0_in14_in\ : STD_LOGIC;
  signal \^p_0_in16_in\ : STD_LOGIC;
  signal \^p_0_in18_in\ : STD_LOGIC;
  signal \^p_0_in20_in\ : STD_LOGIC;
  signal \^p_0_in22_in\ : STD_LOGIC;
  signal p_0_in24_in : STD_LOGIC;
  signal \^p_0_in49_in\ : STD_LOGIC;
  signal \^p_0_in51_in\ : STD_LOGIC;
  signal \^p_0_in53_in\ : STD_LOGIC;
  signal \^p_0_in54_in\ : STD_LOGIC;
  signal \^p_0_in55_in\ : STD_LOGIC;
  signal \^p_0_in57_in\ : STD_LOGIC;
  signal \^p_0_in59_in\ : STD_LOGIC;
  signal \^p_0_in61_in\ : STD_LOGIC;
  signal \^p_0_in64_in\ : STD_LOGIC;
  signal \^p_0_in65_in\ : STD_LOGIC;
  signal \^p_0_in67_in\ : STD_LOGIC;
  signal \^p_0_in69_in\ : STD_LOGIC;
  signal \^p_0_in71_in\ : STD_LOGIC;
  signal \^p_0_in73_in\ : STD_LOGIC;
  signal \^p_0_in74_in\ : STD_LOGIC;
  signal \^p_0_in75_in\ : STD_LOGIC;
  signal \^p_0_in77_in\ : STD_LOGIC;
  signal \^p_0_in84_in\ : STD_LOGIC;
  signal \^p_0_in94_in\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \^p_1_in15_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in19_in\ : STD_LOGIC;
  signal \^p_1_in21_in\ : STD_LOGIC;
  signal \^p_1_in23_in\ : STD_LOGIC;
  signal p_1_in25_in : STD_LOGIC;
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC;
  signal p_28_out : STD_LOGIC;
  signal p_32_out : STD_LOGIC;
  signal p_36_out : STD_LOGIC;
  signal p_40_out : STD_LOGIC;
  signal p_44_out : STD_LOGIC;
  signal p_48_out : STD_LOGIC;
  signal p_50_out : STD_LOGIC;
  signal p_52_out : STD_LOGIC;
  signal p_54_out : STD_LOGIC;
  signal p_56_out : STD_LOGIC;
  signal p_58_out : STD_LOGIC;
  signal p_60_out : STD_LOGIC;
  signal p_62_out : STD_LOGIC;
  signal p_64_out : STD_LOGIC;
  signal synced_intr : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[4]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[7]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[0]_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of irq_gen_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of irq_gen_i_3 : label is "soft_lutpair44";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  O7 <= \^o7\;
  O8 <= \^o8\;
  irq <= \^irq\;
  mer <= \^mer\;
  p_0_in <= \^p_0_in\;
  p_0_in104_in <= \^p_0_in104_in\;
  p_0_in114_in <= \^p_0_in114_in\;
  p_0_in13_in <= \^p_0_in13_in\;
  p_0_in14_in <= \^p_0_in14_in\;
  p_0_in16_in <= \^p_0_in16_in\;
  p_0_in18_in <= \^p_0_in18_in\;
  p_0_in20_in <= \^p_0_in20_in\;
  p_0_in22_in <= \^p_0_in22_in\;
  p_0_in49_in <= \^p_0_in49_in\;
  p_0_in51_in <= \^p_0_in51_in\;
  p_0_in53_in <= \^p_0_in53_in\;
  p_0_in54_in <= \^p_0_in54_in\;
  p_0_in55_in <= \^p_0_in55_in\;
  p_0_in57_in <= \^p_0_in57_in\;
  p_0_in59_in <= \^p_0_in59_in\;
  p_0_in61_in <= \^p_0_in61_in\;
  p_0_in64_in <= \^p_0_in64_in\;
  p_0_in65_in <= \^p_0_in65_in\;
  p_0_in67_in <= \^p_0_in67_in\;
  p_0_in69_in <= \^p_0_in69_in\;
  p_0_in71_in <= \^p_0_in71_in\;
  p_0_in73_in <= \^p_0_in73_in\;
  p_0_in74_in <= \^p_0_in74_in\;
  p_0_in75_in <= \^p_0_in75_in\;
  p_0_in77_in <= \^p_0_in77_in\;
  p_0_in84_in <= \^p_0_in84_in\;
  p_0_in94_in <= \^p_0_in94_in\;
  p_1_in <= \^p_1_in\;
  p_1_in15_in <= \^p_1_in15_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in19_in <= \^p_1_in19_in\;
  p_1_in21_in <= \^p_1_in21_in\;
  p_1_in23_in <= \^p_1_in23_in\;
\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I18,
      Q => \^o4\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I19,
      Q => \^p_0_in77_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I20,
      Q => \^p_0_in75_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I21,
      Q => \^p_0_in73_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I22,
      Q => \^p_0_in71_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I23,
      Q => \^p_0_in69_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I24,
      Q => \^p_0_in67_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I25,
      Q => \^p_0_in65_in\,
      R => '0'
    );
\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(0),
      Q => \n_0_INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\,
      R => '0'
    );
\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\,
      Q => synced_intr,
      R => '0'
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => intr_d1,
      I2 => synced_intr,
      I3 => s_axi_aresetn,
      I4 => \^o2\,
      O => \n_0_INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1\
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1\,
      Q => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => synced_intr,
      Q => intr_d1,
      R => \^o1\
    );
\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(1),
      Q => \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0]\,
      R => '0'
    );
\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0]\,
      Q => \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg\,
      I2 => \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => \^p_0_in61_in\,
      O => \n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1\
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1\,
      Q => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\,
      Q => \n_0_INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg\,
      R => \^o1\
    );
\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(2),
      Q => \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0]\,
      R => '0'
    );
\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0]\,
      Q => \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg\,
      I2 => \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => \^p_0_in59_in\,
      O => \n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1\
    );
\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1\,
      Q => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\,
      Q => \n_0_INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg\,
      R => \^o1\
    );
\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(3),
      Q => \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\,
      R => '0'
    );
\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\,
      Q => \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg\,
      I2 => \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => \^p_0_in57_in\,
      O => \n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1\
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1\,
      Q => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\,
      Q => \n_0_INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg\,
      R => \^o1\
    );
\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(4),
      Q => \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0]\,
      R => '0'
    );
\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0]\,
      Q => \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg\,
      I2 => \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => \^p_0_in55_in\,
      O => \n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1\
    );
\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1\,
      Q => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\,
      Q => \n_0_INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg\,
      R => \^o1\
    );
\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(5),
      Q => \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\,
      R => '0'
    );
\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\,
      Q => \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg\,
      I2 => \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => \^p_0_in53_in\,
      O => \n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1\
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1\,
      Q => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\,
      Q => \n_0_INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg\,
      R => \^o1\
    );
\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(6),
      Q => \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\,
      R => '0'
    );
\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\,
      Q => \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg\,
      I2 => \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => \^p_0_in51_in\,
      O => \n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1\
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1\,
      Q => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\,
      Q => \n_0_INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg\,
      R => \^o1\
    );
\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(7),
      Q => \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0]\,
      R => '0'
    );
\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0]\,
      Q => \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg\,
      I2 => \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => \^p_0_in49_in\,
      O => \n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1\
    );
\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1\,
      Q => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\,
      Q => \n_0_INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg\,
      R => \^o1\
    );
\IPR_GEN.ipr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_REG_GEN[0].isr_reg[0]\,
      I1 => \n_0_REG_GEN[0].ier_reg[0]\,
      O => \n_0_IPR_GEN.ipr[0]_i_1\
    );
\IPR_GEN.ipr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => p_1_in25_in,
      I1 => p_0_in24_in,
      O => \n_0_IPR_GEN.ipr[1]_i_1\
    );
\IPR_GEN.ipr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in23_in\,
      I1 => \^p_0_in22_in\,
      O => \n_0_IPR_GEN.ipr[2]_i_1\
    );
\IPR_GEN.ipr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in21_in\,
      I1 => \^p_0_in20_in\,
      O => \n_0_IPR_GEN.ipr[3]_i_1\
    );
\IPR_GEN.ipr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in19_in\,
      I1 => \^p_0_in18_in\,
      O => \n_0_IPR_GEN.ipr[4]_i_1\
    );
\IPR_GEN.ipr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in17_in\,
      I1 => \^p_0_in16_in\,
      O => \n_0_IPR_GEN.ipr[5]_i_1\
    );
\IPR_GEN.ipr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in15_in\,
      I1 => \^p_0_in14_in\,
      O => \n_0_IPR_GEN.ipr[6]_i_1\
    );
\IPR_GEN.ipr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in\,
      I1 => \^p_0_in13_in\,
      O => \n_0_IPR_GEN.ipr[7]_i_1\
    );
\IPR_GEN.ipr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IPR_GEN.ipr[0]_i_1\,
      Q => ipr(0),
      R => \^o1\
    );
\IPR_GEN.ipr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IPR_GEN.ipr[1]_i_1\,
      Q => ipr(1),
      R => \^o1\
    );
\IPR_GEN.ipr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IPR_GEN.ipr[2]_i_1\,
      Q => O9(0),
      R => \^o1\
    );
\IPR_GEN.ipr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IPR_GEN.ipr[3]_i_1\,
      Q => O9(1),
      R => \^o1\
    );
\IPR_GEN.ipr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IPR_GEN.ipr[4]_i_1\,
      Q => O9(2),
      R => \^o1\
    );
\IPR_GEN.ipr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IPR_GEN.ipr[5]_i_1\,
      Q => O9(3),
      R => \^o1\
    );
\IPR_GEN.ipr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IPR_GEN.ipr[6]_i_1\,
      Q => O9(4),
      R => \^o1\
    );
\IPR_GEN.ipr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IPR_GEN.ipr[7]_i_1\,
      Q => O9(5),
      R => \^o1\
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => \^irq\,
      I1 => \^mer\,
      I2 => irq_gen,
      I3 => s_axi_aresetn,
      O => \n_0_IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1\
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1\,
      Q => \^irq\,
      R => '0'
    );
\IVR_GEN.ivr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
    port map (
      I0 => \n_0_IVR_GEN.ivr[0]_i_2\,
      I1 => irq_gen6,
      I2 => \^p_1_in21_in\,
      I3 => \^p_0_in20_in\,
      I4 => irq_gen7,
      I5 => irq_gen728_out,
      O => \n_0_IVR_GEN.ivr[0]_i_1\
    );
\IVR_GEN.ivr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515151500151515"
    )
    port map (
      I0 => irq_gen4,
      I1 => \^p_1_in23_in\,
      I2 => \^p_0_in22_in\,
      I3 => \^p_1_in15_in\,
      I4 => \^p_0_in14_in\,
      I5 => irq_gen3,
      O => \n_0_IVR_GEN.ivr[0]_i_2\
    );
\IVR_GEN.ivr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in23_in\,
      I1 => \^p_0_in22_in\,
      O => irq_gen6
    );
\IVR_GEN.ivr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_REG_GEN[0].isr_reg[0]\,
      I1 => \n_0_REG_GEN[0].ier_reg[0]\,
      O => irq_gen728_out
    );
\IVR_GEN.ivr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000222322232223"
    )
    port map (
      I0 => \n_0_IVR_GEN.ivr[2]_i_2\,
      I1 => irq_gen7,
      I2 => irq_gen4,
      I3 => irq_gen3,
      I4 => \n_0_REG_GEN[0].ier_reg[0]\,
      I5 => \n_0_REG_GEN[0].isr_reg[0]\,
      O => \n_0_IVR_GEN.ivr[1]_i_1\
    );
\IVR_GEN.ivr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => p_1_in25_in,
      I1 => p_0_in24_in,
      O => irq_gen7
    );
\IVR_GEN.ivr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in19_in\,
      I1 => \^p_0_in18_in\,
      O => irq_gen4
    );
\IVR_GEN.ivr[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_in17_in\,
      I1 => \^p_0_in16_in\,
      O => irq_gen3
    );
\IVR_GEN.ivr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00151515"
    )
    port map (
      I0 => \n_0_IVR_GEN.ivr[2]_i_2\,
      I1 => \n_0_REG_GEN[0].ier_reg[0]\,
      I2 => \n_0_REG_GEN[0].isr_reg[0]\,
      I3 => p_0_in24_in,
      I4 => p_1_in25_in,
      O => \n_0_IVR_GEN.ivr[2]_i_1\
    );
\IVR_GEN.ivr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => \^p_0_in22_in\,
      I1 => \^p_1_in23_in\,
      I2 => \^p_0_in20_in\,
      I3 => \^p_1_in21_in\,
      O => \n_0_IVR_GEN.ivr[2]_i_2\
    );
\IVR_GEN.ivr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000070707"
    )
    port map (
      I0 => \^p_1_in19_in\,
      I1 => \^p_0_in18_in\,
      I2 => n_0_irq_gen_i_2,
      I3 => \^p_0_in16_in\,
      I4 => \^p_1_in17_in\,
      I5 => n_0_irq_gen_i_3,
      O => \n_0_IVR_GEN.ivr[3]_i_1\
    );
\IVR_GEN.ivr_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IVR_GEN.ivr[0]_i_1\,
      Q => \n_0_IVR_GEN.ivr_reg[0]\,
      S => \^o1\
    );
\IVR_GEN.ivr_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IVR_GEN.ivr[1]_i_1\,
      Q => \n_0_IVR_GEN.ivr_reg[1]\,
      S => \^o1\
    );
\IVR_GEN.ivr_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IVR_GEN.ivr[2]_i_1\,
      Q => \^o7\,
      S => \^o1\
    );
\IVR_GEN.ivr_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_IVR_GEN.ivr[3]_i_1\,
      Q => \^o8\,
      S => \^o1\
    );
\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => \^o2\,
      R => '0'
    );
\REG_GEN[0].ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C080C0C0008"
    )
    port map (
      I0 => \n_0_REG_GEN[0].ier_reg[0]\,
      I1 => s_axi_aresetn,
      I2 => \^o4\,
      I3 => p_14_in,
      I4 => \^o3\,
      I5 => s_axi_wdata(0),
      O => p_48_out
    );
\REG_GEN[0].ier_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_48_out,
      Q => \n_0_REG_GEN[0].ier_reg[0]\,
      R => '0'
    );
\REG_GEN[0].isr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^o2\,
      I1 => s_axi_aresetn,
      O => p_64_out
    );
\REG_GEN[0].isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(0),
      I2 => Bus_RNW_reg,
      I3 => p_17_in,
      I4 => \^p_0_in\,
      I5 => \n_0_REG_GEN[0].isr_reg[0]\,
      O => \n_0_REG_GEN[0].isr[0]_i_2\
    );
\REG_GEN[0].isr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_REG_GEN[0].isr[0]_i_2\,
      Q => \n_0_REG_GEN[0].isr_reg[0]\,
      R => p_64_out
    );
\REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^p_0_in61_in\,
      R => '0'
    );
\REG_GEN[1].ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C080C0C0008"
    )
    port map (
      I0 => p_0_in24_in,
      I1 => s_axi_aresetn,
      I2 => \^p_0_in77_in\,
      I3 => p_14_in,
      I4 => \^p_0_in114_in\,
      I5 => s_axi_wdata(1),
      O => p_44_out
    );
\REG_GEN[1].ier_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_44_out,
      Q => p_0_in24_in,
      R => '0'
    );
\REG_GEN[1].isr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^p_0_in61_in\,
      I1 => s_axi_aresetn,
      O => p_62_out
    );
\REG_GEN[1].isr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(1),
      I2 => Bus_RNW_reg,
      I3 => p_17_in,
      I4 => \^p_0_in\,
      I5 => p_1_in25_in,
      O => \n_0_REG_GEN[1].isr[1]_i_2\
    );
\REG_GEN[1].isr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_REG_GEN[1].isr[1]_i_2\,
      Q => p_1_in25_in,
      R => p_62_out
    );
\REG_GEN[2].IAR_NORMAL_MODE_GEN.iar_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I3,
      Q => \^p_0_in59_in\,
      R => '0'
    );
\REG_GEN[2].ier[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C080C0C0008"
    )
    port map (
      I0 => \^p_0_in22_in\,
      I1 => s_axi_aresetn,
      I2 => \^p_0_in75_in\,
      I3 => p_14_in,
      I4 => \^p_0_in104_in\,
      I5 => s_axi_wdata(2),
      O => p_40_out
    );
\REG_GEN[2].ier_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_40_out,
      Q => \^p_0_in22_in\,
      R => '0'
    );
\REG_GEN[2].isr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^p_0_in59_in\,
      I1 => s_axi_aresetn,
      O => p_60_out
    );
\REG_GEN[2].isr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(2),
      I2 => Bus_RNW_reg,
      I3 => p_17_in,
      I4 => \^p_0_in\,
      I5 => \^p_1_in23_in\,
      O => \n_0_REG_GEN[2].isr[2]_i_2\
    );
\REG_GEN[2].isr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_REG_GEN[2].isr[2]_i_2\,
      Q => \^p_1_in23_in\,
      R => p_60_out
    );
\REG_GEN[3].IAR_NORMAL_MODE_GEN.iar_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I4,
      Q => \^p_0_in57_in\,
      R => '0'
    );
\REG_GEN[3].ier[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C080C0C0008"
    )
    port map (
      I0 => \^p_0_in20_in\,
      I1 => s_axi_aresetn,
      I2 => \^p_0_in73_in\,
      I3 => p_14_in,
      I4 => \^p_0_in94_in\,
      I5 => s_axi_wdata(3),
      O => p_36_out
    );
\REG_GEN[3].ier_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_36_out,
      Q => \^p_0_in20_in\,
      R => '0'
    );
\REG_GEN[3].isr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^p_0_in57_in\,
      I1 => s_axi_aresetn,
      O => p_58_out
    );
\REG_GEN[3].isr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(3),
      I2 => Bus_RNW_reg,
      I3 => p_17_in,
      I4 => \^p_0_in\,
      I5 => \^p_1_in21_in\,
      O => \n_0_REG_GEN[3].isr[3]_i_2\
    );
\REG_GEN[3].isr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_REG_GEN[3].isr[3]_i_2\,
      Q => \^p_1_in21_in\,
      R => p_58_out
    );
\REG_GEN[4].IAR_NORMAL_MODE_GEN.iar_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I5,
      Q => \^p_0_in55_in\,
      R => '0'
    );
\REG_GEN[4].ier[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C080C0C0008"
    )
    port map (
      I0 => \^p_0_in18_in\,
      I1 => s_axi_aresetn,
      I2 => \^p_0_in71_in\,
      I3 => p_14_in,
      I4 => \^p_0_in84_in\,
      I5 => s_axi_wdata(4),
      O => p_32_out
    );
\REG_GEN[4].ier_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_32_out,
      Q => \^p_0_in18_in\,
      R => '0'
    );
\REG_GEN[4].isr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^p_0_in55_in\,
      I1 => s_axi_aresetn,
      O => p_56_out
    );
\REG_GEN[4].isr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(4),
      I2 => Bus_RNW_reg,
      I3 => p_17_in,
      I4 => \^p_0_in\,
      I5 => \^p_1_in19_in\,
      O => \n_0_REG_GEN[4].isr[4]_i_2\
    );
\REG_GEN[4].isr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_REG_GEN[4].isr[4]_i_2\,
      Q => \^p_1_in19_in\,
      R => p_56_out
    );
\REG_GEN[5].IAR_NORMAL_MODE_GEN.iar_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I6,
      Q => \^p_0_in53_in\,
      R => '0'
    );
\REG_GEN[5].ier[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C080C0C0008"
    )
    port map (
      I0 => \^p_0_in16_in\,
      I1 => s_axi_aresetn,
      I2 => \^p_0_in69_in\,
      I3 => p_14_in,
      I4 => \^p_0_in74_in\,
      I5 => s_axi_wdata(5),
      O => p_28_out
    );
\REG_GEN[5].ier_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_28_out,
      Q => \^p_0_in16_in\,
      R => '0'
    );
\REG_GEN[5].isr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^p_0_in53_in\,
      I1 => s_axi_aresetn,
      O => p_54_out
    );
\REG_GEN[5].isr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(5),
      I2 => Bus_RNW_reg,
      I3 => p_17_in,
      I4 => \^p_0_in\,
      I5 => \^p_1_in17_in\,
      O => \n_0_REG_GEN[5].isr[5]_i_2\
    );
\REG_GEN[5].isr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_REG_GEN[5].isr[5]_i_2\,
      Q => \^p_1_in17_in\,
      R => p_54_out
    );
\REG_GEN[6].IAR_NORMAL_MODE_GEN.iar_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I7,
      Q => \^p_0_in51_in\,
      R => '0'
    );
\REG_GEN[6].ier[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C080C0C0008"
    )
    port map (
      I0 => \^p_0_in14_in\,
      I1 => s_axi_aresetn,
      I2 => \^p_0_in67_in\,
      I3 => p_14_in,
      I4 => \^p_0_in64_in\,
      I5 => s_axi_wdata(6),
      O => p_24_out
    );
\REG_GEN[6].ier_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_24_out,
      Q => \^p_0_in14_in\,
      R => '0'
    );
\REG_GEN[6].isr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^p_0_in51_in\,
      I1 => s_axi_aresetn,
      O => p_52_out
    );
\REG_GEN[6].isr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(6),
      I2 => Bus_RNW_reg,
      I3 => p_17_in,
      I4 => \^p_0_in\,
      I5 => \^p_1_in15_in\,
      O => \n_0_REG_GEN[6].isr[6]_i_2\
    );
\REG_GEN[6].isr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_REG_GEN[6].isr[6]_i_2\,
      Q => \^p_1_in15_in\,
      R => p_52_out
    );
\REG_GEN[7].IAR_NORMAL_MODE_GEN.iar_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I8,
      Q => \^p_0_in49_in\,
      R => '0'
    );
\REG_GEN[7].ier[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C080C0C0008"
    )
    port map (
      I0 => \^p_0_in13_in\,
      I1 => s_axi_aresetn,
      I2 => \^p_0_in65_in\,
      I3 => p_14_in,
      I4 => \^p_0_in54_in\,
      I5 => s_axi_wdata(7),
      O => p_20_out
    );
\REG_GEN[7].ier_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_20_out,
      Q => \^p_0_in13_in\,
      R => '0'
    );
\REG_GEN[7].isr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^p_0_in49_in\,
      I1 => s_axi_aresetn,
      O => p_50_out
    );
\REG_GEN[7].isr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(7),
      I2 => Bus_RNW_reg,
      I3 => p_17_in,
      I4 => \^p_0_in\,
      I5 => \^p_1_in\,
      O => \n_0_REG_GEN[7].isr[7]_i_2\
    );
\REG_GEN[7].isr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_REG_GEN[7].isr[7]_i_2\,
      Q => \^p_1_in\,
      R => p_50_out
    );
\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I10,
      Q => \^o3\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I11,
      Q => \^p_0_in114_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I12,
      Q => \^p_0_in104_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I13,
      Q => \^p_0_in94_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I14,
      Q => \^p_0_in84_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I15,
      Q => \^p_0_in74_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I16,
      Q => \^p_0_in64_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I17,
      Q => \^p_0_in54_in\,
      R => '0'
    );
irq_gen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
    port map (
      I0 => n_0_irq_gen_i_2,
      I1 => \^p_1_in17_in\,
      I2 => \^p_0_in16_in\,
      I3 => n_0_irq_gen_i_3,
      I4 => \^p_1_in19_in\,
      I5 => \^p_0_in18_in\,
      O => irq_gen_i
    );
irq_gen_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => \^p_1_in\,
      I1 => \^p_0_in13_in\,
      I2 => \^p_0_in14_in\,
      I3 => \^p_1_in15_in\,
      O => n_0_irq_gen_i_2
    );
irq_gen_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => p_1_in25_in,
      I1 => p_0_in24_in,
      I2 => \n_0_REG_GEN[0].isr_reg[0]\,
      I3 => \n_0_REG_GEN[0].ier_reg[0]\,
      I4 => \n_0_IVR_GEN.ivr[2]_i_2\,
      O => n_0_irq_gen_i_3
    );
irq_gen_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_gen_i,
      Q => irq_gen,
      R => \^o1\
    );
\mer_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I26,
      Q => \^mer\,
      R => \^o1\
    );
\mer_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I9,
      Q => \^p_0_in\,
      R => \^o1\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_axi_aresetn,
      O => \^o1\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0002000"
    )
    port map (
      I0 => \n_0_IVR_GEN.ivr_reg[0]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^mer\,
      I5 => \n_0_s_axi_rdata_i[0]_i_5\,
      O => O5
    );
\s_axi_rdata_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CC00F000AA"
    )
    port map (
      I0 => \n_0_REG_GEN[0].isr_reg[0]\,
      I1 => ipr(0),
      I2 => \n_0_REG_GEN[0].ier_reg[0]\,
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \n_0_s_axi_rdata_i[0]_i_5\
    );
\s_axi_rdata_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0002000"
    )
    port map (
      I0 => \n_0_IVR_GEN.ivr_reg[1]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^p_0_in\,
      I5 => \n_0_s_axi_rdata_i[1]_i_7\,
      O => O6
    );
\s_axi_rdata_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CC00F000AA"
    )
    port map (
      I0 => p_1_in25_in,
      I1 => ipr(1),
      I2 => p_0_in24_in,
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \n_0_s_axi_rdata_i[1]_i_7\
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \n_0_IVR_GEN.ivr_reg[1]\,
      I1 => \n_0_IVR_GEN.ivr_reg[0]\,
      I2 => \^o7\,
      I3 => \^o8\,
      O => data3(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_intc_0_slave_attachment is
  port (
    O1 : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_wrack_prev2 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_14_in : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O18 : out STD_LOGIC;
    O19 : out STD_LOGIC;
    O20 : out STD_LOGIC;
    p_0_in2_out : out STD_LOGIC;
    O21 : out STD_LOGIC;
    O22 : out STD_LOGIC;
    O23 : out STD_LOGIC;
    O24 : out STD_LOGIC;
    O25 : out STD_LOGIC;
    O26 : out STD_LOGIC;
    O27 : out STD_LOGIC;
    O28 : out STD_LOGIC;
    p_0_in20_out : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_0_in : in STD_LOGIC;
    I2 : in STD_LOGIC;
    p_0_in114_in : in STD_LOGIC;
    p_0_in104_in : in STD_LOGIC;
    p_0_in94_in : in STD_LOGIC;
    p_0_in84_in : in STD_LOGIC;
    p_0_in74_in : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    I3 : in STD_LOGIC;
    p_0_in77_in : in STD_LOGIC;
    p_0_in75_in : in STD_LOGIC;
    p_0_in73_in : in STD_LOGIC;
    p_0_in71_in : in STD_LOGIC;
    p_0_in69_in : in STD_LOGIC;
    p_0_in67_in : in STD_LOGIC;
    p_0_in65_in : in STD_LOGIC;
    mer : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    p_0_in51_in : in STD_LOGIC;
    p_0_in53_in : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    p_0_in57_in : in STD_LOGIC;
    p_0_in59_in : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    I7 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    p_0_in22_in : in STD_LOGIC;
    p_1_in21_in : in STD_LOGIC;
    p_0_in20_in : in STD_LOGIC;
    data3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in19_in : in STD_LOGIC;
    p_0_in18_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    p_0_in16_in : in STD_LOGIC;
    p_1_in15_in : in STD_LOGIC;
    p_0_in14_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_intc_0_slave_attachment : entity is "slave_attachment";
end axi_intc_0_slave_attachment;

architecture STRUCTURE of axi_intc_0_slave_attachment is
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal clear : STD_LOGIC;
  signal ip2bus_error : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\ : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[2]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[3]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[4]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[5]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[6]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[7]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[8]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[8]_i_2\ : STD_LOGIC;
  signal n_0_bus2ip_rnw_i_i_1 : STD_LOGIC;
  signal n_0_bus2ip_rnw_i_i_2 : STD_LOGIC;
  signal n_0_bus2ip_rnw_i_reg : STD_LOGIC;
  signal \n_0_s_axi_bresp_i[1]_i_1\ : STD_LOGIC;
  signal n_0_s_axi_bvalid_i_i_1 : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[10]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[10]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[11]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[11]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[12]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[12]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[13]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[13]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[14]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[14]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[15]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[15]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[16]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[16]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[17]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[17]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[18]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[18]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[19]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[19]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[20]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[20]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[21]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[21]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[22]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[22]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[23]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[23]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[24]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[24]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[25]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[25]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[26]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[26]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[27]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[27]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[28]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[28]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[29]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[29]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[30]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[30]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[31]_i_1\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[31]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[31]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[8]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[8]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_3\ : STD_LOGIC;
  signal n_0_s_axi_rvalid_i_i_1 : STD_LOGIC;
  signal n_0_start2_i_1 : STD_LOGIC;
  signal \n_0_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_state[1]_i_2\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal register_addr : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal rst : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state1 : STD_LOGIC;
  signal timeout : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[10]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[10]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[11]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[11]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[12]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[12]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[13]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[13]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[14]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[14]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[15]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[15]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[16]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[16]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[17]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[17]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[18]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[18]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[19]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[19]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[20]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[20]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[21]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[21]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[22]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[22]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[23]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[23]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[24]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[24]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[25]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[25]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[26]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[26]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[27]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[27]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[28]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[28]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[29]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[29]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[30]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[30]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[8]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[8]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[9]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[9]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair43";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      I2 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I2 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      I3 => timeout,
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => timeout,
      R => clear
    );
I_DECODER: entity work.axi_intc_0_address_decoder
    port map (
      D(31 downto 0) => IP2Bus_Data(31 downto 0),
      I1 => \n_0_s_axi_rdata_i[8]_i_2\,
      I10 => \n_0_s_axi_rdata_i[12]_i_2\,
      I11 => \n_0_s_axi_rdata_i[12]_i_3\,
      I12 => \n_0_s_axi_rdata_i[13]_i_2\,
      I13 => \n_0_s_axi_rdata_i[13]_i_3\,
      I14 => \n_0_s_axi_rdata_i[14]_i_2\,
      I15 => \n_0_s_axi_rdata_i[14]_i_3\,
      I16 => \n_0_s_axi_rdata_i[15]_i_2\,
      I17 => \n_0_s_axi_rdata_i[15]_i_3\,
      I18 => \n_0_s_axi_rdata_i[16]_i_2\,
      I19 => \n_0_s_axi_rdata_i[16]_i_3\,
      I2 => \n_0_s_axi_rdata_i[8]_i_3\,
      I20 => \n_0_s_axi_rdata_i[17]_i_2\,
      I21 => \n_0_s_axi_rdata_i[17]_i_3\,
      I22 => \n_0_s_axi_rdata_i[18]_i_2\,
      I23 => \n_0_s_axi_rdata_i[18]_i_3\,
      I24 => \n_0_s_axi_rdata_i[19]_i_2\,
      I25 => \n_0_s_axi_rdata_i[19]_i_3\,
      I26 => \n_0_s_axi_rdata_i[20]_i_2\,
      I27 => \n_0_s_axi_rdata_i[20]_i_3\,
      I28 => \n_0_s_axi_rdata_i[21]_i_2\,
      I29 => \n_0_s_axi_rdata_i[21]_i_3\,
      I3(6 downto 3) => register_addr(6 downto 3),
      I3(2 downto 0) => \^q\(2 downto 0),
      I30 => \n_0_s_axi_rdata_i[22]_i_2\,
      I31 => \n_0_s_axi_rdata_i[22]_i_3\,
      I32 => \n_0_s_axi_rdata_i[23]_i_2\,
      I33 => \n_0_s_axi_rdata_i[23]_i_3\,
      I34 => \n_0_s_axi_rdata_i[24]_i_2\,
      I35 => \n_0_s_axi_rdata_i[24]_i_3\,
      I36 => \n_0_s_axi_rdata_i[25]_i_2\,
      I37 => \n_0_s_axi_rdata_i[25]_i_3\,
      I38 => \n_0_s_axi_rdata_i[26]_i_2\,
      I39 => \n_0_s_axi_rdata_i[26]_i_3\,
      I4 => \n_0_s_axi_rdata_i[9]_i_2\,
      I40 => \n_0_s_axi_rdata_i[27]_i_2\,
      I41 => \n_0_s_axi_rdata_i[27]_i_3\,
      I42 => \n_0_s_axi_rdata_i[28]_i_2\,
      I43 => \n_0_s_axi_rdata_i[28]_i_3\,
      I44 => \n_0_s_axi_rdata_i[29]_i_2\,
      I45 => \n_0_s_axi_rdata_i[29]_i_3\,
      I46 => \n_0_s_axi_rdata_i[30]_i_2\,
      I47 => \n_0_s_axi_rdata_i[30]_i_3\,
      I48 => \n_0_s_axi_rdata_i[31]_i_3\,
      I49 => \n_0_s_axi_rdata_i[31]_i_5\,
      I5 => \n_0_s_axi_rdata_i[9]_i_3\,
      I50 => I2,
      I51 => I3,
      I52 => I4,
      I53 => \n_0_s_axi_rdata_i[0]_i_2\,
      I54 => \n_0_s_axi_rdata_i[0]_i_3\,
      I55 => I5,
      I56 => \n_0_s_axi_rdata_i[1]_i_2\,
      I57 => \n_0_s_axi_rdata_i[1]_i_4\,
      I58 => I6,
      I59 => \n_0_s_axi_rdata_i[2]_i_2\,
      I6 => \n_0_s_axi_rdata_i[10]_i_2\,
      I60 => \n_0_s_axi_rdata_i[2]_i_3\,
      I61 => \n_0_s_axi_rdata_i[3]_i_2\,
      I62 => \n_0_s_axi_rdata_i[3]_i_3\,
      I63 => \n_0_s_axi_rdata_i[4]_i_2\,
      I64 => \n_0_s_axi_rdata_i[7]_i_4\,
      I65 => \n_0_s_axi_rdata_i[7]_i_5\,
      I66 => \n_0_s_axi_rdata_i[5]_i_2\,
      I67 => \n_0_s_axi_rdata_i[6]_i_2\,
      I68 => \n_0_s_axi_rdata_i[7]_i_2\,
      I69 => n_0_bus2ip_rnw_i_reg,
      I7 => \n_0_s_axi_rdata_i[10]_i_3\,
      I8 => \n_0_s_axi_rdata_i[11]_i_2\,
      I9 => \n_0_s_axi_rdata_i[11]_i_3\,
      O1 => O1,
      O10 => O10,
      O11 => O11,
      O12 => O12,
      O13 => O13,
      O14 => O14,
      O15 => O15,
      O16 => O16,
      O17 => O17,
      O18 => O18,
      O19 => O19,
      O2 => O2,
      O20 => O20,
      O21 => O21,
      O22 => O22,
      O23 => O23,
      O24 => O24,
      O25 => O25,
      O26 => O26,
      O27 => O27,
      O28 => O28,
      O3 => O3,
      O4 => O4,
      O5 => O5,
      O6 => O6,
      O7 => O7,
      O8 => O8,
      O9 => O9,
      Q(0) => timeout,
      data3(0) => data3(0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      mer => mer,
      p_0_in => p_0_in,
      p_0_in104_in => p_0_in104_in,
      p_0_in114_in => p_0_in114_in,
      p_0_in20_out => p_0_in20_out,
      p_0_in2_out => p_0_in2_out,
      p_0_in49_in => p_0_in49_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in53_in => p_0_in53_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in57_in => p_0_in57_in,
      p_0_in59_in => p_0_in59_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in65_in => p_0_in65_in,
      p_0_in67_in => p_0_in67_in,
      p_0_in69_in => p_0_in69_in,
      p_0_in71_in => p_0_in71_in,
      p_0_in73_in => p_0_in73_in,
      p_0_in74_in => p_0_in74_in,
      p_0_in75_in => p_0_in75_in,
      p_0_in77_in => p_0_in77_in,
      p_0_in84_in => p_0_in84_in,
      p_0_in94_in => p_0_in94_in,
      p_14_in => p_14_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      start2 => start2
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(0),
      O => \n_0_bus2ip_addr_i[2]_i_1\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
    port map (
      I0 => s_axi_araddr(1),
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(1),
      O => \n_0_bus2ip_addr_i[3]_i_1\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
    port map (
      I0 => s_axi_araddr(2),
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(2),
      O => \n_0_bus2ip_addr_i[4]_i_1\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
    port map (
      I0 => s_axi_araddr(3),
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(3),
      O => \n_0_bus2ip_addr_i[5]_i_1\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
    port map (
      I0 => s_axi_araddr(4),
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(4),
      O => \n_0_bus2ip_addr_i[6]_i_1\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
    port map (
      I0 => s_axi_araddr(5),
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(5),
      O => \n_0_bus2ip_addr_i[7]_i_1\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020202"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_awvalid,
      I4 => s_axi_wvalid,
      O => \n_0_bus2ip_addr_i[8]_i_1\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
    port map (
      I0 => s_axi_araddr(6),
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(6),
      O => \n_0_bus2ip_addr_i[8]_i_2\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[2]_i_1\,
      Q => \^q\(0),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[3]_i_1\,
      Q => \^q\(1),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[4]_i_1\,
      Q => \^q\(2),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[5]_i_1\,
      Q => register_addr(3),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[6]_i_1\,
      Q => register_addr(4),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[7]_i_1\,
      Q => register_addr(5),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[8]_i_2\,
      Q => register_addr(6),
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555555000000"
    )
    port map (
      I0 => rst,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      I4 => n_0_bus2ip_rnw_i_i_2,
      I5 => n_0_bus2ip_rnw_i_reg,
      O => n_0_bus2ip_rnw_i_i_1
    );
bus2ip_rnw_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state(1),
      I1 => state(0),
      O => n_0_bus2ip_rnw_i_i_2
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_bus2ip_rnw_i_i_1,
      Q => n_0_bus2ip_rnw_i_reg,
      R => '0'
    );
rst_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => rst,
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ip2bus_rdack,
      I1 => timeout,
      O => \^s_axi_arready\
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => ip2bus_error,
      I1 => state(1),
      I2 => state(0),
      I3 => \^s_axi_bresp\(0),
      O => \n_0_s_axi_bresp_i[1]_i_1\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_s_axi_bresp_i[1]_i_1\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111511100005000"
    )
    port map (
      I0 => rst,
      I1 => s_axi_bready,
      I2 => \^s_axi_awready\,
      I3 => state(1),
      I4 => state(0),
      I5 => \^s_axi_bvalid\,
      O => n_0_s_axi_bvalid_i_i_1
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_s_axi_bvalid_i_i_1,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => register_addr(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \n_0_s_axi_rdata_i[0]_i_2\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001F"
    )
    port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => register_addr(3),
      I3 => register_addr(5),
      I4 => register_addr(6),
      I5 => register_addr(4),
      O => \n_0_s_axi_rdata_i[0]_i_3\
    );
\s_axi_rdata_i[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[10]_i_2\
    );
\s_axi_rdata_i[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[10]_i_3\
    );
\s_axi_rdata_i[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[11]_i_2\
    );
\s_axi_rdata_i[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[11]_i_3\
    );
\s_axi_rdata_i[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[12]_i_2\
    );
\s_axi_rdata_i[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[12]_i_3\
    );
\s_axi_rdata_i[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[13]_i_2\
    );
\s_axi_rdata_i[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[13]_i_3\
    );
\s_axi_rdata_i[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[14]_i_2\
    );
\s_axi_rdata_i[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[14]_i_3\
    );
\s_axi_rdata_i[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[15]_i_2\
    );
\s_axi_rdata_i[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[15]_i_3\
    );
\s_axi_rdata_i[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[16]_i_2\
    );
\s_axi_rdata_i[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[16]_i_3\
    );
\s_axi_rdata_i[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[17]_i_2\
    );
\s_axi_rdata_i[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[17]_i_3\
    );
\s_axi_rdata_i[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[18]_i_2\
    );
\s_axi_rdata_i[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[18]_i_3\
    );
\s_axi_rdata_i[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[19]_i_2\
    );
\s_axi_rdata_i[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[19]_i_3\
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => register_addr(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \n_0_s_axi_rdata_i[1]_i_2\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001F"
    )
    port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => register_addr(3),
      I3 => register_addr(5),
      I4 => register_addr(6),
      I5 => register_addr(4),
      O => \n_0_s_axi_rdata_i[1]_i_4\
    );
\s_axi_rdata_i[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[20]_i_2\
    );
\s_axi_rdata_i[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[20]_i_3\
    );
\s_axi_rdata_i[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[21]_i_2\
    );
\s_axi_rdata_i[21]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[21]_i_3\
    );
\s_axi_rdata_i[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[22]_i_2\
    );
\s_axi_rdata_i[22]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[22]_i_3\
    );
\s_axi_rdata_i[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[23]_i_2\
    );
\s_axi_rdata_i[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[23]_i_3\
    );
\s_axi_rdata_i[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[24]_i_2\
    );
\s_axi_rdata_i[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[24]_i_3\
    );
\s_axi_rdata_i[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[25]_i_2\
    );
\s_axi_rdata_i[25]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[25]_i_3\
    );
\s_axi_rdata_i[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[26]_i_2\
    );
\s_axi_rdata_i[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[26]_i_3\
    );
\s_axi_rdata_i[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[27]_i_2\
    );
\s_axi_rdata_i[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[27]_i_3\
    );
\s_axi_rdata_i[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[28]_i_2\
    );
\s_axi_rdata_i[28]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[28]_i_3\
    );
\s_axi_rdata_i[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[29]_i_2\
    );
\s_axi_rdata_i[29]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[29]_i_3\
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500004005050545"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_6\,
      I1 => \^q\(0),
      I2 => register_addr(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \n_0_s_axi_rdata_i[2]_i_4\,
      O => \n_0_s_axi_rdata_i[2]_i_2\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B000"
    )
    port map (
      I0 => \^q\(0),
      I1 => I8,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[2]_i_3\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
    port map (
      I0 => \^q\(2),
      I1 => p_1_in23_in,
      I2 => \^q\(0),
      I3 => I7(0),
      I4 => \^q\(1),
      I5 => p_0_in22_in,
      O => \n_0_s_axi_rdata_i[2]_i_4\
    );
\s_axi_rdata_i[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[30]_i_2\
    );
\s_axi_rdata_i[30]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[30]_i_3\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state(0),
      I1 => state(1),
      O => \n_0_s_axi_rdata_i[31]_i_1\
    );
\s_axi_rdata_i[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[31]_i_3\
    );
\s_axi_rdata_i[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[31]_i_5\
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500004005050545"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_6\,
      I1 => \^q\(0),
      I2 => register_addr(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \n_0_s_axi_rdata_i[3]_i_4\,
      O => \n_0_s_axi_rdata_i[3]_i_2\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B000"
    )
    port map (
      I0 => \^q\(0),
      I1 => I9,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[3]_i_3\
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
    port map (
      I0 => \^q\(2),
      I1 => p_1_in21_in,
      I2 => \^q\(0),
      I3 => I7(1),
      I4 => \^q\(1),
      I5 => p_0_in20_in,
      O => \n_0_s_axi_rdata_i[3]_i_4\
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500004005050545"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_6\,
      I1 => \^q\(0),
      I2 => register_addr(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \n_0_s_axi_rdata_i[4]_i_3\,
      O => \n_0_s_axi_rdata_i[4]_i_2\
    );
\s_axi_rdata_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
    port map (
      I0 => \^q\(2),
      I1 => p_1_in19_in,
      I2 => \^q\(0),
      I3 => I7(2),
      I4 => \^q\(1),
      I5 => p_0_in18_in,
      O => \n_0_s_axi_rdata_i[4]_i_3\
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500004005050545"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_6\,
      I1 => \^q\(0),
      I2 => register_addr(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \n_0_s_axi_rdata_i[5]_i_3\,
      O => \n_0_s_axi_rdata_i[5]_i_2\
    );
\s_axi_rdata_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
    port map (
      I0 => \^q\(2),
      I1 => p_1_in17_in,
      I2 => \^q\(0),
      I3 => I7(3),
      I4 => \^q\(1),
      I5 => p_0_in16_in,
      O => \n_0_s_axi_rdata_i[5]_i_3\
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500004005050545"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_6\,
      I1 => \^q\(0),
      I2 => register_addr(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \n_0_s_axi_rdata_i[6]_i_3\,
      O => \n_0_s_axi_rdata_i[6]_i_2\
    );
\s_axi_rdata_i[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
    port map (
      I0 => \^q\(2),
      I1 => p_1_in15_in,
      I2 => \^q\(0),
      I3 => I7(4),
      I4 => \^q\(1),
      I5 => p_0_in14_in,
      O => \n_0_s_axi_rdata_i[6]_i_3\
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500004005050545"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_6\,
      I1 => \^q\(0),
      I2 => register_addr(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \n_0_s_axi_rdata_i[7]_i_7\,
      O => \n_0_s_axi_rdata_i[7]_i_2\
    );
\s_axi_rdata_i[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \n_0_s_axi_rdata_i[7]_i_4\
    );
\s_axi_rdata_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \n_0_s_axi_rdata_i[7]_i_5\
    );
\s_axi_rdata_i[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_addr(4),
      I1 => register_addr(6),
      I2 => register_addr(5),
      O => \n_0_s_axi_rdata_i[7]_i_6\
    );
\s_axi_rdata_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
    port map (
      I0 => \^q\(2),
      I1 => p_1_in,
      I2 => \^q\(0),
      I3 => I7(5),
      I4 => \^q\(1),
      I5 => p_0_in13_in,
      O => \n_0_s_axi_rdata_i[7]_i_7\
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[8]_i_2\
    );
\s_axi_rdata_i[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[8]_i_3\
    );
\s_axi_rdata_i[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => data3(0),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => register_addr(3),
      O => \n_0_s_axi_rdata_i[9]_i_2\
    );
\s_axi_rdata_i[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD3F"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => register_addr(3),
      O => \n_0_s_axi_rdata_i[9]_i_3\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(10),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(16),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(17),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(18),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(19),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(20),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(21),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(22),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(23),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(24),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(25),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(26),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(27),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(28),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(29),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(30),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(31),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(8),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => IP2Bus_Data(9),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070F0F0F"
    )
    port map (
      I0 => s_axi_wstrb(1),
      I1 => s_axi_wstrb(2),
      I2 => n_0_bus2ip_rnw_i_reg,
      I3 => s_axi_wstrb(0),
      I4 => s_axi_wstrb(3),
      O => ip2bus_error
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => ip2bus_error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5551111155500000"
    )
    port map (
      I0 => rst,
      I1 => s_axi_rready,
      I2 => ip2bus_rdack,
      I3 => timeout,
      I4 => \n_0_s_axi_rdata_i[31]_i_1\,
      I5 => \^s_axi_rvalid\,
      O => n_0_s_axi_rvalid_i_i_1
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_s_axi_rvalid_i_i_1,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ip2bus_wrack,
      I1 => timeout,
      O => \^s_axi_awready\
    );
start2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011101010"
    )
    port map (
      I0 => state(0),
      I1 => state(1),
      I2 => s_axi_arvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => rst,
      O => n_0_start2_i_1
    );
start2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_start2_i_1,
      Q => start2,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007722FAFA"
    )
    port map (
      I0 => state(0),
      I1 => state1,
      I2 => s_axi_arvalid,
      I3 => \^s_axi_awready\,
      I4 => state(1),
      I5 => rst,
      O => \n_0_state[0]_i_1\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBBBFAAA"
    )
    port map (
      I0 => \n_0_state[1]_i_2\,
      I1 => state1,
      I2 => \^s_axi_arready\,
      I3 => state(0),
      I4 => state(1),
      I5 => rst,
      O => \n_0_state[1]_i_1\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0008"
    )
    port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => state(1),
      O => \n_0_state[1]_i_2\
    );
\state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      O => state1
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_state[0]_i_1\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_state[1]_i_1\,
      Q => state(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_intc_0_axi_lite_ipif is
  port (
    p_17_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_wrack_prev2 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_14_in : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O18 : out STD_LOGIC;
    p_0_in2_out : out STD_LOGIC;
    O19 : out STD_LOGIC;
    O20 : out STD_LOGIC;
    O21 : out STD_LOGIC;
    O22 : out STD_LOGIC;
    O23 : out STD_LOGIC;
    O24 : out STD_LOGIC;
    O25 : out STD_LOGIC;
    O26 : out STD_LOGIC;
    p_0_in20_out : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_0_in : in STD_LOGIC;
    I2 : in STD_LOGIC;
    p_0_in114_in : in STD_LOGIC;
    p_0_in104_in : in STD_LOGIC;
    p_0_in94_in : in STD_LOGIC;
    p_0_in84_in : in STD_LOGIC;
    p_0_in74_in : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    I3 : in STD_LOGIC;
    p_0_in77_in : in STD_LOGIC;
    p_0_in75_in : in STD_LOGIC;
    p_0_in73_in : in STD_LOGIC;
    p_0_in71_in : in STD_LOGIC;
    p_0_in69_in : in STD_LOGIC;
    p_0_in67_in : in STD_LOGIC;
    p_0_in65_in : in STD_LOGIC;
    mer : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    p_0_in51_in : in STD_LOGIC;
    p_0_in53_in : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    p_0_in57_in : in STD_LOGIC;
    p_0_in59_in : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    I7 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    p_0_in22_in : in STD_LOGIC;
    p_1_in21_in : in STD_LOGIC;
    p_0_in20_in : in STD_LOGIC;
    data3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in19_in : in STD_LOGIC;
    p_0_in18_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    p_0_in16_in : in STD_LOGIC;
    p_1_in15_in : in STD_LOGIC;
    p_0_in14_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_intc_0_axi_lite_ipif : entity is "axi_lite_ipif";
end axi_intc_0_axi_lite_ipif;

architecture STRUCTURE of axi_intc_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.axi_intc_0_slave_attachment
    port map (
      I1 => I1,
      I2 => I2,
      I3 => I3,
      I4 => I4,
      I5 => I5,
      I6 => I6,
      I7(5 downto 0) => I7(5 downto 0),
      I8 => I8,
      I9 => I9,
      O1 => p_17_in,
      O10 => O8,
      O11 => O9,
      O12 => O10,
      O13 => O11,
      O14 => O12,
      O15 => O13,
      O16 => O14,
      O17 => O15,
      O18 => O16,
      O19 => O17,
      O2 => Bus_RNW_reg,
      O20 => O18,
      O21 => O19,
      O22 => O20,
      O23 => O21,
      O24 => O22,
      O25 => O23,
      O26 => O24,
      O27 => O25,
      O28 => O26,
      O3 => O1,
      O4 => O2,
      O5 => O3,
      O6 => O4,
      O7 => O5,
      O8 => O6,
      O9 => O7,
      Q(2 downto 0) => Q(2 downto 0),
      data3(0) => data3(0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      mer => mer,
      p_0_in => p_0_in,
      p_0_in104_in => p_0_in104_in,
      p_0_in114_in => p_0_in114_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in16_in => p_0_in16_in,
      p_0_in18_in => p_0_in18_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in20_out => p_0_in20_out,
      p_0_in22_in => p_0_in22_in,
      p_0_in2_out => p_0_in2_out,
      p_0_in49_in => p_0_in49_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in53_in => p_0_in53_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in57_in => p_0_in57_in,
      p_0_in59_in => p_0_in59_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in65_in => p_0_in65_in,
      p_0_in67_in => p_0_in67_in,
      p_0_in69_in => p_0_in69_in,
      p_0_in71_in => p_0_in71_in,
      p_0_in73_in => p_0_in73_in,
      p_0_in74_in => p_0_in74_in,
      p_0_in75_in => p_0_in75_in,
      p_0_in77_in => p_0_in77_in,
      p_0_in84_in => p_0_in84_in,
      p_0_in94_in => p_0_in94_in,
      p_14_in => p_14_in,
      p_1_in => p_1_in,
      p_1_in15_in => p_1_in15_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in21_in => p_1_in21_in,
      p_1_in23_in => p_1_in23_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_intc_0_axi_intc__parameterized0\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt_address_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    processor_ack_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_intc_0_axi_intc__parameterized0\ : entity is "axi_intc";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \axi_intc_0_axi_intc__parameterized0\ : entity is "kintex7";
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of \axi_intc_0_axi_intc__parameterized0\ : entity is "axi_intc_inst";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of \axi_intc_0_axi_intc__parameterized0\ : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of \axi_intc_0_axi_intc__parameterized0\ : entity is 32;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of \axi_intc_0_axi_intc__parameterized0\ : entity is 8;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of \axi_intc_0_axi_intc__parameterized0\ : entity is 0;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of \axi_intc_0_axi_intc__parameterized0\ : entity is -1;
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of \axi_intc_0_axi_intc__parameterized0\ : entity is -1;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of \axi_intc_0_axi_intc__parameterized0\ : entity is -1;
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of \axi_intc_0_axi_intc__parameterized0\ : entity is -1;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of \axi_intc_0_axi_intc__parameterized0\ : entity is 2;
  attribute C_IVAR_RESET_VALUE : integer;
  attribute C_IVAR_RESET_VALUE of \axi_intc_0_axi_intc__parameterized0\ : entity is 16;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of \axi_intc_0_axi_intc__parameterized0\ : entity is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of \axi_intc_0_axi_intc__parameterized0\ : entity is 1;
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of \axi_intc_0_axi_intc__parameterized0\ : entity is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of \axi_intc_0_axi_intc__parameterized0\ : entity is 1;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of \axi_intc_0_axi_intc__parameterized0\ : entity is 0;
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of \axi_intc_0_axi_intc__parameterized0\ : entity is 1;
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of \axi_intc_0_axi_intc__parameterized0\ : entity is "1'b1";
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of \axi_intc_0_axi_intc__parameterized0\ : entity is 1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of \axi_intc_0_axi_intc__parameterized0\ : entity is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of \axi_intc_0_axi_intc__parameterized0\ : entity is 0;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of \axi_intc_0_axi_intc__parameterized0\ : entity is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of \axi_intc_0_axi_intc__parameterized0\ : entity is 0;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of \axi_intc_0_axi_intc__parameterized0\ : entity is 0;
  attribute ip_group : string;
  attribute ip_group of \axi_intc_0_axi_intc__parameterized0\ : entity is "LOGICORE";
  attribute iptype : string;
  attribute iptype of \axi_intc_0_axi_intc__parameterized0\ : entity is "PERIPHERAL";
  attribute hdl : string;
  attribute hdl of \axi_intc_0_axi_intc__parameterized0\ : entity is "VHDL";
  attribute style : string;
  attribute style of \axi_intc_0_axi_intc__parameterized0\ : entity is "HDL";
  attribute imp_netlist : string;
  attribute imp_netlist of \axi_intc_0_axi_intc__parameterized0\ : entity is "true";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of \axi_intc_0_axi_intc__parameterized0\ : entity is "true";
end \axi_intc_0_axi_intc__parameterized0\;

architecture STRUCTURE of \axi_intc_0_axi_intc__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\ : STD_LOGIC;
  signal data3 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal ip2bus_rdack : STD_LOGIC;
  signal ip2bus_rdack_int_d1 : STD_LOGIC;
  signal ip2bus_rdack_prev2 : STD_LOGIC;
  signal ip2bus_wrack : STD_LOGIC;
  signal ip2bus_wrack_int_d1 : STD_LOGIC;
  signal ip2bus_wrack_prev2 : STD_LOGIC;
  signal ipr : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal mer : STD_LOGIC;
  signal n_0_INTC_CORE_I : STD_LOGIC;
  signal n_14_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_15_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_16_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_17_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_18_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_19_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_20_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_21_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_22_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_22_INTC_CORE_I : STD_LOGIC;
  signal n_23_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_24_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_25_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_26_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_27_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_28_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_29_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_30_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_30_INTC_CORE_I : STD_LOGIC;
  signal n_31_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_33_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_34_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_35_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_36_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_37_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_38_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_39_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_39_INTC_CORE_I : STD_LOGIC;
  signal n_40_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_40_INTC_CORE_I : STD_LOGIC;
  signal n_42_INTC_CORE_I : STD_LOGIC;
  signal n_43_INTC_CORE_I : STD_LOGIC;
  signal n_7_INTC_CORE_I : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in104_in : STD_LOGIC;
  signal p_0_in114_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in18_in : STD_LOGIC;
  signal p_0_in20_in : STD_LOGIC;
  signal p_0_in20_out : STD_LOGIC;
  signal p_0_in22_in : STD_LOGIC;
  signal p_0_in2_out : STD_LOGIC;
  signal p_0_in49_in : STD_LOGIC;
  signal p_0_in51_in : STD_LOGIC;
  signal p_0_in53_in : STD_LOGIC;
  signal p_0_in54_in : STD_LOGIC;
  signal p_0_in55_in : STD_LOGIC;
  signal p_0_in57_in : STD_LOGIC;
  signal p_0_in59_in : STD_LOGIC;
  signal p_0_in61_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in65_in : STD_LOGIC;
  signal p_0_in67_in : STD_LOGIC;
  signal p_0_in69_in : STD_LOGIC;
  signal p_0_in71_in : STD_LOGIC;
  signal p_0_in73_in : STD_LOGIC;
  signal p_0_in74_in : STD_LOGIC;
  signal p_0_in75_in : STD_LOGIC;
  signal p_0_in77_in : STD_LOGIC;
  signal p_0_in84_in : STD_LOGIC;
  signal p_0_in94_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in15_in : STD_LOGIC;
  signal p_1_in17_in : STD_LOGIC;
  signal p_1_in19_in : STD_LOGIC;
  signal p_1_in21_in : STD_LOGIC;
  signal p_1_in23_in : STD_LOGIC;
  signal register_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  interrupt_address(31) <= \<const0>\;
  interrupt_address(30) <= \<const0>\;
  interrupt_address(29) <= \<const0>\;
  interrupt_address(28) <= \<const0>\;
  interrupt_address(27) <= \<const0>\;
  interrupt_address(26) <= \<const0>\;
  interrupt_address(25) <= \<const0>\;
  interrupt_address(24) <= \<const0>\;
  interrupt_address(23) <= \<const0>\;
  interrupt_address(22) <= \<const0>\;
  interrupt_address(21) <= \<const0>\;
  interrupt_address(20) <= \<const0>\;
  interrupt_address(19) <= \<const0>\;
  interrupt_address(18) <= \<const0>\;
  interrupt_address(17) <= \<const0>\;
  interrupt_address(16) <= \<const0>\;
  interrupt_address(15) <= \<const0>\;
  interrupt_address(14) <= \<const0>\;
  interrupt_address(13) <= \<const0>\;
  interrupt_address(12) <= \<const0>\;
  interrupt_address(11) <= \<const0>\;
  interrupt_address(10) <= \<const0>\;
  interrupt_address(9) <= \<const0>\;
  interrupt_address(8) <= \<const0>\;
  interrupt_address(7) <= \<const0>\;
  interrupt_address(6) <= \<const0>\;
  interrupt_address(5) <= \<const0>\;
  interrupt_address(4) <= \<const0>\;
  interrupt_address(3) <= \<const0>\;
  interrupt_address(2) <= \<const0>\;
  interrupt_address(1) <= \<const0>\;
  interrupt_address(0) <= \<const0>\;
  processor_ack_out(1) <= \<const0>\;
  processor_ack_out(0) <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
AXI_LITE_IPIF_I: entity work.axi_intc_0_axi_lite_ipif
    port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      I1 => n_0_INTC_CORE_I,
      I2 => n_22_INTC_CORE_I,
      I3 => n_30_INTC_CORE_I,
      I4 => n_7_INTC_CORE_I,
      I5 => n_39_INTC_CORE_I,
      I6 => n_40_INTC_CORE_I,
      I7(5 downto 0) => ipr(7 downto 2),
      I8 => n_42_INTC_CORE_I,
      I9 => n_43_INTC_CORE_I,
      O1 => n_14_AXI_LITE_IPIF_I,
      O10 => n_23_AXI_LITE_IPIF_I,
      O11 => n_24_AXI_LITE_IPIF_I,
      O12 => n_25_AXI_LITE_IPIF_I,
      O13 => n_26_AXI_LITE_IPIF_I,
      O14 => n_27_AXI_LITE_IPIF_I,
      O15 => n_28_AXI_LITE_IPIF_I,
      O16 => n_29_AXI_LITE_IPIF_I,
      O17 => n_30_AXI_LITE_IPIF_I,
      O18 => n_31_AXI_LITE_IPIF_I,
      O19 => n_33_AXI_LITE_IPIF_I,
      O2 => n_15_AXI_LITE_IPIF_I,
      O20 => n_34_AXI_LITE_IPIF_I,
      O21 => n_35_AXI_LITE_IPIF_I,
      O22 => n_36_AXI_LITE_IPIF_I,
      O23 => n_37_AXI_LITE_IPIF_I,
      O24 => n_38_AXI_LITE_IPIF_I,
      O25 => n_39_AXI_LITE_IPIF_I,
      O26 => n_40_AXI_LITE_IPIF_I,
      O3 => n_16_AXI_LITE_IPIF_I,
      O4 => n_17_AXI_LITE_IPIF_I,
      O5 => n_18_AXI_LITE_IPIF_I,
      O6 => n_19_AXI_LITE_IPIF_I,
      O7 => n_20_AXI_LITE_IPIF_I,
      O8 => n_21_AXI_LITE_IPIF_I,
      O9 => n_22_AXI_LITE_IPIF_I,
      Q(2 downto 0) => register_addr(2 downto 0),
      data3(0) => data3(31),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      mer => mer,
      p_0_in => p_0_in,
      p_0_in104_in => p_0_in104_in,
      p_0_in114_in => p_0_in114_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in16_in => p_0_in16_in,
      p_0_in18_in => p_0_in18_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in20_out => p_0_in20_out,
      p_0_in22_in => p_0_in22_in,
      p_0_in2_out => p_0_in2_out,
      p_0_in49_in => p_0_in49_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in53_in => p_0_in53_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in57_in => p_0_in57_in,
      p_0_in59_in => p_0_in59_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in65_in => p_0_in65_in,
      p_0_in67_in => p_0_in67_in,
      p_0_in69_in => p_0_in69_in,
      p_0_in71_in => p_0_in71_in,
      p_0_in73_in => p_0_in73_in,
      p_0_in74_in => p_0_in74_in,
      p_0_in75_in => p_0_in75_in,
      p_0_in77_in => p_0_in77_in,
      p_0_in84_in => p_0_in84_in,
      p_0_in94_in => p_0_in94_in,
      p_14_in => p_14_in,
      p_17_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_1_in => p_1_in,
      p_1_in15_in => p_1_in15_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in21_in => p_1_in21_in,
      p_1_in23_in => p_1_in23_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
INTC_CORE_I: entity work.axi_intc_0_intc_core
    port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      I1 => n_40_AXI_LITE_IPIF_I,
      I10 => n_15_AXI_LITE_IPIF_I,
      I11 => n_16_AXI_LITE_IPIF_I,
      I12 => n_17_AXI_LITE_IPIF_I,
      I13 => n_18_AXI_LITE_IPIF_I,
      I14 => n_19_AXI_LITE_IPIF_I,
      I15 => n_20_AXI_LITE_IPIF_I,
      I16 => n_21_AXI_LITE_IPIF_I,
      I17 => n_22_AXI_LITE_IPIF_I,
      I18 => n_23_AXI_LITE_IPIF_I,
      I19 => n_24_AXI_LITE_IPIF_I,
      I2 => n_39_AXI_LITE_IPIF_I,
      I20 => n_25_AXI_LITE_IPIF_I,
      I21 => n_26_AXI_LITE_IPIF_I,
      I22 => n_27_AXI_LITE_IPIF_I,
      I23 => n_28_AXI_LITE_IPIF_I,
      I24 => n_29_AXI_LITE_IPIF_I,
      I25 => n_30_AXI_LITE_IPIF_I,
      I26 => n_31_AXI_LITE_IPIF_I,
      I3 => n_38_AXI_LITE_IPIF_I,
      I4 => n_37_AXI_LITE_IPIF_I,
      I5 => n_36_AXI_LITE_IPIF_I,
      I6 => n_35_AXI_LITE_IPIF_I,
      I7 => n_34_AXI_LITE_IPIF_I,
      I8 => n_33_AXI_LITE_IPIF_I,
      I9 => n_14_AXI_LITE_IPIF_I,
      O1 => n_0_INTC_CORE_I,
      O2 => n_7_INTC_CORE_I,
      O3 => n_22_INTC_CORE_I,
      O4 => n_30_INTC_CORE_I,
      O5 => n_39_INTC_CORE_I,
      O6 => n_40_INTC_CORE_I,
      O7 => n_42_INTC_CORE_I,
      O8 => n_43_INTC_CORE_I,
      O9(5 downto 0) => ipr(7 downto 2),
      Q(2 downto 0) => register_addr(2 downto 0),
      data3(0) => data3(31),
      intr(7 downto 0) => intr(7 downto 0),
      irq => irq,
      mer => mer,
      p_0_in => p_0_in,
      p_0_in104_in => p_0_in104_in,
      p_0_in114_in => p_0_in114_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in16_in => p_0_in16_in,
      p_0_in18_in => p_0_in18_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in22_in => p_0_in22_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in53_in => p_0_in53_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in57_in => p_0_in57_in,
      p_0_in59_in => p_0_in59_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in65_in => p_0_in65_in,
      p_0_in67_in => p_0_in67_in,
      p_0_in69_in => p_0_in69_in,
      p_0_in71_in => p_0_in71_in,
      p_0_in73_in => p_0_in73_in,
      p_0_in74_in => p_0_in74_in,
      p_0_in75_in => p_0_in75_in,
      p_0_in77_in => p_0_in77_in,
      p_0_in84_in => p_0_in84_in,
      p_0_in94_in => p_0_in94_in,
      p_14_in => p_14_in,
      p_17_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_1_in => p_1_in,
      p_1_in15_in => p_1_in15_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in21_in => p_1_in21_in,
      p_1_in23_in => p_1_in23_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
ip2bus_rdack_int_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in20_out,
      Q => ip2bus_rdack_int_d1,
      R => n_0_INTC_CORE_I
    );
ip2bus_rdack_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_prev2,
      Q => ip2bus_rdack,
      R => n_0_INTC_CORE_I
    );
ip2bus_wrack_int_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in2_out,
      Q => ip2bus_wrack_int_d1,
      R => n_0_INTC_CORE_I
    );
ip2bus_wrack_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_prev2,
      Q => ip2bus_wrack,
      R => n_0_INTC_CORE_I
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_intc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    irq : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_intc_0 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_intc_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_intc_0 : entity is "axi_intc,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_intc_0 : entity is "axi_intc_0,axi_intc,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of axi_intc_0 : entity is "axi_intc_0,axi_intc,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_intc,x_ipVersion=4.1,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=kintex7,C_INSTANCE=axi_intc_inst,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_NUM_INTR_INPUTS=8,C_NUM_SW_INTR=0,C_KIND_OF_INTR=0xffffffff,C_KIND_OF_EDGE=0xffffffff,C_KIND_OF_LVL=0xffffffff,C_ASYNC_INTR=0xFFFFFFFF,C_NUM_SYNC_FF=2,C_IVAR_RESET_VALUE=0x00000010,C_ENABLE_ASYNC=0,C_HAS_IPR=1,C_HAS_SIE=1,C_HAS_CIE=1,C_HAS_IVR=1,C_HAS_ILR=0,C_IRQ_IS_LEVEL=1,C_IRQ_ACTIVE=0x1,C_DISABLE_SYNCHRONIZERS=1,C_MB_CLK_NOT_CONNECTED=1,C_HAS_FAST=0,C_EN_CASCADE_MODE=0,C_CASCADE_MASTER=0}";
end axi_intc_0;

architecture STRUCTURE of axi_intc_0 is
  signal NLW_U0_interrupt_address_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_processor_ack_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of U0 : label is -1;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of U0 : label is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of U0 : label is 1;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of U0 : label is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintex7";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of U0 : label is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of U0 : label is 0;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of U0 : label is 0;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of U0 : label is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of U0 : label is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of U0 : label is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "axi_intc_inst";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of U0 : label is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of U0 : label is 1;
  attribute C_IVAR_RESET_VALUE : integer;
  attribute C_IVAR_RESET_VALUE of U0 : label is 16;
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of U0 : label is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of U0 : label is -1;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of U0 : label is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of U0 : label is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of U0 : label is 8;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of U0 : label is 0;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of U0 : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute hdl : string;
  attribute hdl of U0 : label is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of U0 : label is "true";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute iptype : string;
  attribute iptype of U0 : label is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of U0 : label is "true";
  attribute style : string;
  attribute style of U0 : label is "HDL";
begin
U0: entity work.\axi_intc_0_axi_intc__parameterized0\
    port map (
      interrupt_address(31 downto 0) => NLW_U0_interrupt_address_UNCONNECTED(31 downto 0),
      interrupt_address_in(31) => '0',
      interrupt_address_in(30) => '0',
      interrupt_address_in(29) => '0',
      interrupt_address_in(28) => '0',
      interrupt_address_in(27) => '0',
      interrupt_address_in(26) => '0',
      interrupt_address_in(25) => '0',
      interrupt_address_in(24) => '0',
      interrupt_address_in(23) => '0',
      interrupt_address_in(22) => '0',
      interrupt_address_in(21) => '0',
      interrupt_address_in(20) => '0',
      interrupt_address_in(19) => '0',
      interrupt_address_in(18) => '0',
      interrupt_address_in(17) => '0',
      interrupt_address_in(16) => '0',
      interrupt_address_in(15) => '0',
      interrupt_address_in(14) => '0',
      interrupt_address_in(13) => '0',
      interrupt_address_in(12) => '0',
      interrupt_address_in(11) => '0',
      interrupt_address_in(10) => '0',
      interrupt_address_in(9) => '0',
      interrupt_address_in(8) => '0',
      interrupt_address_in(7) => '0',
      interrupt_address_in(6) => '0',
      interrupt_address_in(5) => '0',
      interrupt_address_in(4) => '0',
      interrupt_address_in(3) => '0',
      interrupt_address_in(2) => '0',
      interrupt_address_in(1) => '0',
      interrupt_address_in(0) => '0',
      intr(7 downto 0) => intr(7 downto 0),
      irq => irq,
      processor_ack(1) => '0',
      processor_ack(0) => '0',
      processor_ack_out(1 downto 0) => NLW_U0_processor_ack_out_UNCONNECTED(1 downto 0),
      processor_clk => '0',
      processor_rst => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
