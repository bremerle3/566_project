`define GTECH_default_delay 0


module i_ahb_DW_ahb_bcm02_64_4_32_0 ( a, sel, mux );
  input [63:0] a;
  input [3:0] sel;
  output [31:0] mux;
  wire   n1, n2, n3;

  GTECH_AO22 U2 ( .A(a[9]), .B(n1), .C(a[41]), .D(n2), .Z(mux[9]) );
  GTECH_AO22 U3 ( .A(a[8]), .B(n1), .C(a[40]), .D(n2), .Z(mux[8]) );
  GTECH_AO22 U4 ( .A(a[7]), .B(n1), .C(a[39]), .D(n2), .Z(mux[7]) );
  GTECH_AO22 U5 ( .A(a[6]), .B(n1), .C(a[38]), .D(n2), .Z(mux[6]) );
  GTECH_AO22 U6 ( .A(a[5]), .B(n1), .C(a[37]), .D(n2), .Z(mux[5]) );
  GTECH_AO22 U7 ( .A(a[4]), .B(n1), .C(a[36]), .D(n2), .Z(mux[4]) );
  GTECH_AO22 U8 ( .A(a[3]), .B(n1), .C(a[35]), .D(n2), .Z(mux[3]) );
  GTECH_AO22 U9 ( .A(a[31]), .B(n1), .C(a[63]), .D(n2), .Z(mux[31]) );
  GTECH_AO22 U10 ( .A(a[30]), .B(n1), .C(a[62]), .D(n2), .Z(mux[30]) );
  GTECH_AO22 U11 ( .A(a[2]), .B(n1), .C(a[34]), .D(n2), .Z(mux[2]) );
  GTECH_AO22 U12 ( .A(a[29]), .B(n1), .C(a[61]), .D(n2), .Z(mux[29]) );
  GTECH_AO22 U13 ( .A(a[28]), .B(n1), .C(a[60]), .D(n2), .Z(mux[28]) );
  GTECH_AO22 U14 ( .A(a[27]), .B(n1), .C(a[59]), .D(n2), .Z(mux[27]) );
  GTECH_AO22 U15 ( .A(a[26]), .B(n1), .C(a[58]), .D(n2), .Z(mux[26]) );
  GTECH_AO22 U16 ( .A(a[25]), .B(n1), .C(a[57]), .D(n2), .Z(mux[25]) );
  GTECH_AO22 U17 ( .A(a[24]), .B(n1), .C(a[56]), .D(n2), .Z(mux[24]) );
  GTECH_AO22 U18 ( .A(a[23]), .B(n1), .C(a[55]), .D(n2), .Z(mux[23]) );
  GTECH_AO22 U19 ( .A(a[22]), .B(n1), .C(a[54]), .D(n2), .Z(mux[22]) );
  GTECH_AO22 U20 ( .A(a[21]), .B(n1), .C(a[53]), .D(n2), .Z(mux[21]) );
  GTECH_AO22 U21 ( .A(a[20]), .B(n1), .C(a[52]), .D(n2), .Z(mux[20]) );
  GTECH_AO22 U22 ( .A(a[1]), .B(n1), .C(a[33]), .D(n2), .Z(mux[1]) );
  GTECH_AO22 U23 ( .A(a[19]), .B(n1), .C(a[51]), .D(n2), .Z(mux[19]) );
  GTECH_AO22 U24 ( .A(a[18]), .B(n1), .C(a[50]), .D(n2), .Z(mux[18]) );
  GTECH_AO22 U25 ( .A(a[17]), .B(n1), .C(a[49]), .D(n2), .Z(mux[17]) );
  GTECH_AO22 U26 ( .A(a[16]), .B(n1), .C(a[48]), .D(n2), .Z(mux[16]) );
  GTECH_AO22 U27 ( .A(a[15]), .B(n1), .C(a[47]), .D(n2), .Z(mux[15]) );
  GTECH_AO22 U28 ( .A(a[14]), .B(n1), .C(a[46]), .D(n2), .Z(mux[14]) );
  GTECH_AO22 U29 ( .A(a[13]), .B(n1), .C(a[45]), .D(n2), .Z(mux[13]) );
  GTECH_AO22 U30 ( .A(a[12]), .B(n1), .C(a[44]), .D(n2), .Z(mux[12]) );
  GTECH_AO22 U31 ( .A(a[11]), .B(n1), .C(a[43]), .D(n2), .Z(mux[11]) );
  GTECH_AO22 U32 ( .A(a[10]), .B(n1), .C(a[42]), .D(n2), .Z(mux[10]) );
  GTECH_AO22 U33 ( .A(a[0]), .B(n1), .C(a[32]), .D(n2), .Z(mux[0]) );
  GTECH_AND_NOT U34 ( .A(n3), .B(n2), .Z(n1) );
  GTECH_AND2 U35 ( .A(n3), .B(sel[0]), .Z(n2) );
  GTECH_NOR3 U36 ( .A(sel[3]), .B(sel[2]), .C(sel[1]), .Z(n3) );
endmodule


module i_ahb_DW_ahb_bcm02_4_4_2 ( a, sel, mux );
  input [3:0] a;
  input [3:0] sel;
  output [1:0] mux;
  wire   n1, n2, n3, n4;

  GTECH_MUX2 U2 ( .A(a[3]), .B(n1), .S(n2), .Z(mux[1]) );
  GTECH_AND2 U3 ( .A(a[1]), .B(n3), .Z(n1) );
  GTECH_MUX2 U4 ( .A(a[2]), .B(n4), .S(n2), .Z(mux[0]) );
  GTECH_NAND2 U5 ( .A(sel[0]), .B(n3), .Z(n2) );
  GTECH_AND2 U6 ( .A(a[0]), .B(n3), .Z(n4) );
  GTECH_NOR3 U7 ( .A(sel[3]), .B(sel[2]), .C(sel[1]), .Z(n3) );
endmodule


module i_ahb_DW_ahb_bcm02_6_4_3_0 ( a, sel, mux );
  input [5:0] a;
  input [3:0] sel;
  output [2:0] mux;
  wire   n1, n2, n3;

  GTECH_AO22 U2 ( .A(a[2]), .B(n1), .C(a[5]), .D(n2), .Z(mux[2]) );
  GTECH_AO22 U3 ( .A(a[1]), .B(n1), .C(a[4]), .D(n2), .Z(mux[1]) );
  GTECH_AO22 U4 ( .A(a[0]), .B(n1), .C(a[3]), .D(n2), .Z(mux[0]) );
  GTECH_AND_NOT U5 ( .A(n3), .B(n2), .Z(n1) );
  GTECH_AND2 U6 ( .A(n3), .B(sel[0]), .Z(n2) );
  GTECH_NOR3 U7 ( .A(sel[3]), .B(sel[2]), .C(sel[1]), .Z(n3) );
endmodule


module i_ahb_DW_ahb_bcm02_6_4_3_1 ( a, sel, mux );
  input [5:0] a;
  input [3:0] sel;
  output [2:0] mux;
  wire   n1, n2, n3;

  GTECH_AO22 U2 ( .A(a[2]), .B(n1), .C(a[5]), .D(n2), .Z(mux[2]) );
  GTECH_AO22 U3 ( .A(a[1]), .B(n1), .C(a[4]), .D(n2), .Z(mux[1]) );
  GTECH_AO22 U4 ( .A(a[0]), .B(n1), .C(a[3]), .D(n2), .Z(mux[0]) );
  GTECH_AND_NOT U5 ( .A(n3), .B(n2), .Z(n1) );
  GTECH_AND2 U6 ( .A(n3), .B(sel[0]), .Z(n2) );
  GTECH_NOR3 U7 ( .A(sel[3]), .B(sel[2]), .C(sel[1]), .Z(n3) );
endmodule


module i_ahb_DW_ahb_bcm02_8_4_4 ( a, sel, mux );
  input [7:0] a;
  input [3:0] sel;
  output [3:0] mux;
  wire   n1, n2, n3;

  GTECH_AO22 U2 ( .A(a[3]), .B(n1), .C(a[7]), .D(n2), .Z(mux[3]) );
  GTECH_AO22 U3 ( .A(a[2]), .B(n1), .C(a[6]), .D(n2), .Z(mux[2]) );
  GTECH_AO22 U4 ( .A(a[1]), .B(n1), .C(a[5]), .D(n2), .Z(mux[1]) );
  GTECH_AO22 U5 ( .A(a[0]), .B(n1), .C(a[4]), .D(n2), .Z(mux[0]) );
  GTECH_AND_NOT U6 ( .A(n3), .B(n2), .Z(n1) );
  GTECH_AND2 U7 ( .A(n3), .B(sel[0]), .Z(n2) );
  GTECH_NOR3 U8 ( .A(sel[3]), .B(sel[2]), .C(sel[1]), .Z(n3) );
endmodule


module i_ahb_DW_ahb_bcm02_2_4_1 ( a, sel, mux );
  input [1:0] a;
  input [3:0] sel;
  output [0:0] mux;
  wire   n1, n2, n3, n4, n5;

  GTECH_MUX2 U2 ( .A(n1), .B(a[1]), .S(n2), .Z(mux[0]) );
  GTECH_AND4 U3 ( .A(sel[0]), .B(n3), .C(n4), .D(n5), .Z(n2) );
  GTECH_AND4 U4 ( .A(a[0]), .B(n3), .C(n4), .D(n5), .Z(n1) );
  GTECH_NOT U5 ( .A(sel[3]), .Z(n5) );
  GTECH_NOT U6 ( .A(sel[2]), .Z(n4) );
  GTECH_NOT U7 ( .A(sel[1]), .Z(n3) );
endmodule


module i_ahb_DW_ahb_bcm02_64_4_32_1 ( a, sel, mux );
  input [63:0] a;
  input [3:0] sel;
  output [31:0] mux;
  wire   n1, n2, n3;

  GTECH_AO22 U2 ( .A(a[9]), .B(n1), .C(a[41]), .D(n2), .Z(mux[9]) );
  GTECH_AO22 U3 ( .A(a[8]), .B(n1), .C(a[40]), .D(n2), .Z(mux[8]) );
  GTECH_AO22 U4 ( .A(a[7]), .B(n1), .C(a[39]), .D(n2), .Z(mux[7]) );
  GTECH_AO22 U5 ( .A(a[6]), .B(n1), .C(a[38]), .D(n2), .Z(mux[6]) );
  GTECH_AO22 U6 ( .A(a[5]), .B(n1), .C(a[37]), .D(n2), .Z(mux[5]) );
  GTECH_AO22 U7 ( .A(a[4]), .B(n1), .C(a[36]), .D(n2), .Z(mux[4]) );
  GTECH_AO22 U8 ( .A(a[3]), .B(n1), .C(a[35]), .D(n2), .Z(mux[3]) );
  GTECH_AO22 U9 ( .A(a[31]), .B(n1), .C(a[63]), .D(n2), .Z(mux[31]) );
  GTECH_AO22 U10 ( .A(a[30]), .B(n1), .C(a[62]), .D(n2), .Z(mux[30]) );
  GTECH_AO22 U11 ( .A(a[2]), .B(n1), .C(a[34]), .D(n2), .Z(mux[2]) );
  GTECH_AO22 U12 ( .A(a[29]), .B(n1), .C(a[61]), .D(n2), .Z(mux[29]) );
  GTECH_AO22 U13 ( .A(a[28]), .B(n1), .C(a[60]), .D(n2), .Z(mux[28]) );
  GTECH_AO22 U14 ( .A(a[27]), .B(n1), .C(a[59]), .D(n2), .Z(mux[27]) );
  GTECH_AO22 U15 ( .A(a[26]), .B(n1), .C(a[58]), .D(n2), .Z(mux[26]) );
  GTECH_AO22 U16 ( .A(a[25]), .B(n1), .C(a[57]), .D(n2), .Z(mux[25]) );
  GTECH_AO22 U17 ( .A(a[24]), .B(n1), .C(a[56]), .D(n2), .Z(mux[24]) );
  GTECH_AO22 U18 ( .A(a[23]), .B(n1), .C(a[55]), .D(n2), .Z(mux[23]) );
  GTECH_AO22 U19 ( .A(a[22]), .B(n1), .C(a[54]), .D(n2), .Z(mux[22]) );
  GTECH_AO22 U20 ( .A(a[21]), .B(n1), .C(a[53]), .D(n2), .Z(mux[21]) );
  GTECH_AO22 U21 ( .A(a[20]), .B(n1), .C(a[52]), .D(n2), .Z(mux[20]) );
  GTECH_AO22 U22 ( .A(a[1]), .B(n1), .C(a[33]), .D(n2), .Z(mux[1]) );
  GTECH_AO22 U23 ( .A(a[19]), .B(n1), .C(a[51]), .D(n2), .Z(mux[19]) );
  GTECH_AO22 U24 ( .A(a[18]), .B(n1), .C(a[50]), .D(n2), .Z(mux[18]) );
  GTECH_AO22 U25 ( .A(a[17]), .B(n1), .C(a[49]), .D(n2), .Z(mux[17]) );
  GTECH_AO22 U26 ( .A(a[16]), .B(n1), .C(a[48]), .D(n2), .Z(mux[16]) );
  GTECH_AO22 U27 ( .A(a[15]), .B(n1), .C(a[47]), .D(n2), .Z(mux[15]) );
  GTECH_AO22 U28 ( .A(a[14]), .B(n1), .C(a[46]), .D(n2), .Z(mux[14]) );
  GTECH_AO22 U29 ( .A(a[13]), .B(n1), .C(a[45]), .D(n2), .Z(mux[13]) );
  GTECH_AO22 U30 ( .A(a[12]), .B(n1), .C(a[44]), .D(n2), .Z(mux[12]) );
  GTECH_AO22 U31 ( .A(a[11]), .B(n1), .C(a[43]), .D(n2), .Z(mux[11]) );
  GTECH_AO22 U32 ( .A(a[10]), .B(n1), .C(a[42]), .D(n2), .Z(mux[10]) );
  GTECH_AO22 U33 ( .A(a[0]), .B(n1), .C(a[32]), .D(n2), .Z(mux[0]) );
  GTECH_AND_NOT U34 ( .A(n3), .B(n2), .Z(n1) );
  GTECH_AND2 U35 ( .A(n3), .B(sel[0]), .Z(n2) );
  GTECH_NOR3 U36 ( .A(sel[3]), .B(sel[2]), .C(sel[1]), .Z(n3) );
endmodule


module i_ahb_DW_ahb_mux ( hclk, hresetn, bus_haddr, bus_hburst, bus_hprot, 
        bus_hsize, bus_htrans, bus_hwdata, bus_hwrite, hrdata_none, 
        hready_resp_none, hresp_none, bus_hready, bus_hresp, bus_hrdata, hsel, 
        hmaster_data, haddr, hburst, hprot, hsize, htrans, hwdata, hwrite, 
        hrdata, hready, hresp );
  input [63:0] bus_haddr;
  input [5:0] bus_hburst;
  input [7:0] bus_hprot;
  input [5:0] bus_hsize;
  input [3:0] bus_htrans;
  input [63:0] bus_hwdata;
  input [1:0] bus_hwrite;
  input [31:0] hrdata_none;
  input [1:0] hresp_none;
  input [4:0] bus_hready;
  input [9:0] bus_hresp;
  input [159:0] bus_hrdata;
  input [4:0] hsel;
  output [3:0] hmaster_data;
  output [31:0] haddr;
  output [2:0] hburst;
  output [3:0] hprot;
  output [2:0] hsize;
  output [1:0] htrans;
  output [31:0] hwdata;
  output [31:0] hrdata;
  output [1:0] hresp;
  input hclk, hresetn, hready_resp_none;
  output hwrite, hready;
  wire   n85, n86, n87, n88, n89, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84;
  assign hmaster_data[1] = hmaster_data[3];
  assign hmaster_data[2] = hmaster_data[3];

  GTECH_FD2 hsel_prev_reg_0_ ( .D(n89), .CP(hclk), .CD(hresetn), .Q(n84) );
  GTECH_FD2 hsel_prev_reg_1_ ( .D(n88), .CP(hclk), .CD(hresetn), .Q(n80) );
  GTECH_FD2 hsel_prev_reg_2_ ( .D(n87), .CP(hclk), .CD(hresetn), .Q(n83) );
  GTECH_FD2 hsel_prev_reg_3_ ( .D(n86), .CP(hclk), .CD(hresetn), .Q(n81) );
  GTECH_FD2 hsel_prev_reg_4_ ( .D(n85), .CP(hclk), .CD(hresetn), .Q(n82) );
  i_ahb_DW_ahb_bcm02_64_4_32_0 U_a ( .a(bus_haddr), .sel({hmaster_data[3], 
        hmaster_data[3], hmaster_data[3], hmaster_data[0]}), .mux(haddr) );
  i_ahb_DW_ahb_bcm02_4_4_2 U_t ( .a(bus_htrans), .sel({hmaster_data[3], 
        hmaster_data[3], hmaster_data[3], hmaster_data[0]}), .mux(htrans) );
  i_ahb_DW_ahb_bcm02_6_4_3_0 U_b ( .a(bus_hburst), .sel({hmaster_data[3], 
        hmaster_data[3], hmaster_data[3], hmaster_data[0]}), .mux(hburst) );
  i_ahb_DW_ahb_bcm02_6_4_3_1 U_s ( .a(bus_hsize), .sel({hmaster_data[3], 
        hmaster_data[3], hmaster_data[3], hmaster_data[0]}), .mux(hsize) );
  i_ahb_DW_ahb_bcm02_8_4_4 U_p ( .a(bus_hprot), .sel({hmaster_data[3], 
        hmaster_data[3], hmaster_data[3], hmaster_data[0]}), .mux(hprot) );
  i_ahb_DW_ahb_bcm02_2_4_1 U_hw ( .a(bus_hwrite), .sel({hmaster_data[3], 
        hmaster_data[3], hmaster_data[3], hmaster_data[0]}), .mux(hwrite) );
  i_ahb_DW_ahb_bcm02_64_4_32_1 U_dm ( .a(bus_hwdata), .sel({hmaster_data[3], 
        hmaster_data[3], hmaster_data[3], hmaster_data[0]}), .mux(hwdata) );
  GTECH_ZERO U3 ( .Z(hmaster_data[3]) );
  GTECH_ONE U4 ( .Z(hmaster_data[0]) );
  GTECH_MUX2 U5 ( .A(n84), .B(hsel[0]), .S(hready), .Z(n89) );
  GTECH_MUX2 U6 ( .A(n80), .B(hsel[1]), .S(hready), .Z(n88) );
  GTECH_MUX2 U7 ( .A(n83), .B(hsel[2]), .S(hready), .Z(n87) );
  GTECH_MUX2 U8 ( .A(n81), .B(hsel[3]), .S(hready), .Z(n86) );
  GTECH_MUX2 U9 ( .A(n82), .B(hsel[4]), .S(hready), .Z(n85) );
  GTECH_NAND2 U10 ( .A(n1), .B(n2), .Z(hresp[1]) );
  GTECH_AOI222 U11 ( .A(bus_hresp[3]), .B(n3), .C(hresp_none[1]), .D(n4), .E(
        bus_hresp[1]), .F(n5), .Z(n2) );
  GTECH_AOI222 U12 ( .A(bus_hresp[9]), .B(n82), .C(bus_hresp[7]), .D(n6), .E(
        bus_hresp[5]), .F(n7), .Z(n1) );
  GTECH_NAND2 U13 ( .A(n8), .B(n9), .Z(hresp[0]) );
  GTECH_AOI222 U14 ( .A(bus_hresp[2]), .B(n3), .C(hresp_none[0]), .D(n4), .E(
        bus_hresp[0]), .F(n5), .Z(n9) );
  GTECH_AOI222 U15 ( .A(bus_hresp[8]), .B(n82), .C(bus_hresp[6]), .D(n6), .E(
        bus_hresp[4]), .F(n7), .Z(n8) );
  GTECH_NAND2 U16 ( .A(n10), .B(n11), .Z(hready) );
  GTECH_AOI222 U17 ( .A(bus_hready[1]), .B(n3), .C(hready_resp_none), .D(n4), 
        .E(bus_hready[0]), .F(n5), .Z(n11) );
  GTECH_AOI222 U18 ( .A(n82), .B(bus_hready[4]), .C(bus_hready[3]), .D(n6), 
        .E(bus_hready[2]), .F(n7), .Z(n10) );
  GTECH_NAND2 U19 ( .A(n12), .B(n13), .Z(hrdata[9]) );
  GTECH_AOI222 U20 ( .A(bus_hrdata[41]), .B(n3), .C(hrdata_none[9]), .D(n4), 
        .E(bus_hrdata[9]), .F(n5), .Z(n13) );
  GTECH_AOI222 U21 ( .A(bus_hrdata[137]), .B(n82), .C(bus_hrdata[105]), .D(n6), 
        .E(bus_hrdata[73]), .F(n7), .Z(n12) );
  GTECH_NAND2 U22 ( .A(n14), .B(n15), .Z(hrdata[8]) );
  GTECH_AOI222 U23 ( .A(bus_hrdata[40]), .B(n3), .C(hrdata_none[8]), .D(n4), 
        .E(bus_hrdata[8]), .F(n5), .Z(n15) );
  GTECH_AOI222 U24 ( .A(bus_hrdata[136]), .B(n82), .C(bus_hrdata[104]), .D(n6), 
        .E(bus_hrdata[72]), .F(n7), .Z(n14) );
  GTECH_NAND2 U25 ( .A(n16), .B(n17), .Z(hrdata[7]) );
  GTECH_AOI222 U26 ( .A(bus_hrdata[39]), .B(n3), .C(hrdata_none[7]), .D(n4), 
        .E(bus_hrdata[7]), .F(n5), .Z(n17) );
  GTECH_AOI222 U27 ( .A(bus_hrdata[135]), .B(n82), .C(bus_hrdata[103]), .D(n6), 
        .E(bus_hrdata[71]), .F(n7), .Z(n16) );
  GTECH_NAND2 U28 ( .A(n18), .B(n19), .Z(hrdata[6]) );
  GTECH_AOI222 U29 ( .A(bus_hrdata[38]), .B(n3), .C(hrdata_none[6]), .D(n4), 
        .E(bus_hrdata[6]), .F(n5), .Z(n19) );
  GTECH_AOI222 U30 ( .A(bus_hrdata[134]), .B(n82), .C(bus_hrdata[102]), .D(n6), 
        .E(bus_hrdata[70]), .F(n7), .Z(n18) );
  GTECH_NAND2 U31 ( .A(n20), .B(n21), .Z(hrdata[5]) );
  GTECH_AOI222 U32 ( .A(bus_hrdata[37]), .B(n3), .C(hrdata_none[5]), .D(n4), 
        .E(bus_hrdata[5]), .F(n5), .Z(n21) );
  GTECH_AOI222 U33 ( .A(bus_hrdata[133]), .B(n82), .C(bus_hrdata[101]), .D(n6), 
        .E(bus_hrdata[69]), .F(n7), .Z(n20) );
  GTECH_NAND2 U34 ( .A(n22), .B(n23), .Z(hrdata[4]) );
  GTECH_AOI222 U35 ( .A(bus_hrdata[36]), .B(n3), .C(hrdata_none[4]), .D(n4), 
        .E(bus_hrdata[4]), .F(n5), .Z(n23) );
  GTECH_AOI222 U36 ( .A(bus_hrdata[132]), .B(n82), .C(bus_hrdata[100]), .D(n6), 
        .E(bus_hrdata[68]), .F(n7), .Z(n22) );
  GTECH_NAND2 U37 ( .A(n24), .B(n25), .Z(hrdata[3]) );
  GTECH_AOI222 U38 ( .A(bus_hrdata[35]), .B(n3), .C(hrdata_none[3]), .D(n4), 
        .E(bus_hrdata[3]), .F(n5), .Z(n25) );
  GTECH_AOI222 U39 ( .A(bus_hrdata[131]), .B(n82), .C(bus_hrdata[99]), .D(n6), 
        .E(bus_hrdata[67]), .F(n7), .Z(n24) );
  GTECH_NAND2 U40 ( .A(n26), .B(n27), .Z(hrdata[31]) );
  GTECH_AOI222 U41 ( .A(bus_hrdata[63]), .B(n3), .C(hrdata_none[31]), .D(n4), 
        .E(bus_hrdata[31]), .F(n5), .Z(n27) );
  GTECH_AOI222 U42 ( .A(bus_hrdata[159]), .B(n82), .C(bus_hrdata[127]), .D(n6), 
        .E(bus_hrdata[95]), .F(n7), .Z(n26) );
  GTECH_NAND2 U43 ( .A(n28), .B(n29), .Z(hrdata[30]) );
  GTECH_AOI222 U44 ( .A(bus_hrdata[62]), .B(n3), .C(hrdata_none[30]), .D(n4), 
        .E(bus_hrdata[30]), .F(n5), .Z(n29) );
  GTECH_AOI222 U45 ( .A(bus_hrdata[158]), .B(n82), .C(bus_hrdata[126]), .D(n6), 
        .E(bus_hrdata[94]), .F(n7), .Z(n28) );
  GTECH_NAND2 U46 ( .A(n30), .B(n31), .Z(hrdata[2]) );
  GTECH_AOI222 U47 ( .A(bus_hrdata[34]), .B(n3), .C(hrdata_none[2]), .D(n4), 
        .E(bus_hrdata[2]), .F(n5), .Z(n31) );
  GTECH_AOI222 U48 ( .A(bus_hrdata[130]), .B(n82), .C(bus_hrdata[98]), .D(n6), 
        .E(bus_hrdata[66]), .F(n7), .Z(n30) );
  GTECH_NAND2 U49 ( .A(n32), .B(n33), .Z(hrdata[29]) );
  GTECH_AOI222 U50 ( .A(bus_hrdata[61]), .B(n3), .C(hrdata_none[29]), .D(n4), 
        .E(bus_hrdata[29]), .F(n5), .Z(n33) );
  GTECH_AOI222 U51 ( .A(bus_hrdata[157]), .B(n82), .C(bus_hrdata[125]), .D(n6), 
        .E(bus_hrdata[93]), .F(n7), .Z(n32) );
  GTECH_NAND2 U52 ( .A(n34), .B(n35), .Z(hrdata[28]) );
  GTECH_AOI222 U53 ( .A(bus_hrdata[60]), .B(n3), .C(hrdata_none[28]), .D(n4), 
        .E(bus_hrdata[28]), .F(n5), .Z(n35) );
  GTECH_AOI222 U54 ( .A(bus_hrdata[156]), .B(n82), .C(bus_hrdata[124]), .D(n6), 
        .E(bus_hrdata[92]), .F(n7), .Z(n34) );
  GTECH_NAND2 U55 ( .A(n36), .B(n37), .Z(hrdata[27]) );
  GTECH_AOI222 U56 ( .A(bus_hrdata[59]), .B(n3), .C(hrdata_none[27]), .D(n4), 
        .E(bus_hrdata[27]), .F(n5), .Z(n37) );
  GTECH_AOI222 U57 ( .A(bus_hrdata[155]), .B(n82), .C(bus_hrdata[123]), .D(n6), 
        .E(bus_hrdata[91]), .F(n7), .Z(n36) );
  GTECH_NAND2 U58 ( .A(n38), .B(n39), .Z(hrdata[26]) );
  GTECH_AOI222 U59 ( .A(bus_hrdata[58]), .B(n3), .C(hrdata_none[26]), .D(n4), 
        .E(bus_hrdata[26]), .F(n5), .Z(n39) );
  GTECH_AOI222 U60 ( .A(bus_hrdata[154]), .B(n82), .C(bus_hrdata[122]), .D(n6), 
        .E(bus_hrdata[90]), .F(n7), .Z(n38) );
  GTECH_NAND2 U61 ( .A(n40), .B(n41), .Z(hrdata[25]) );
  GTECH_AOI222 U62 ( .A(bus_hrdata[57]), .B(n3), .C(hrdata_none[25]), .D(n4), 
        .E(bus_hrdata[25]), .F(n5), .Z(n41) );
  GTECH_AOI222 U63 ( .A(bus_hrdata[153]), .B(n82), .C(bus_hrdata[121]), .D(n6), 
        .E(bus_hrdata[89]), .F(n7), .Z(n40) );
  GTECH_NAND2 U64 ( .A(n42), .B(n43), .Z(hrdata[24]) );
  GTECH_AOI222 U65 ( .A(bus_hrdata[56]), .B(n3), .C(hrdata_none[24]), .D(n4), 
        .E(bus_hrdata[24]), .F(n5), .Z(n43) );
  GTECH_AOI222 U66 ( .A(bus_hrdata[152]), .B(n82), .C(bus_hrdata[120]), .D(n6), 
        .E(bus_hrdata[88]), .F(n7), .Z(n42) );
  GTECH_NAND2 U67 ( .A(n44), .B(n45), .Z(hrdata[23]) );
  GTECH_AOI222 U68 ( .A(bus_hrdata[55]), .B(n3), .C(hrdata_none[23]), .D(n4), 
        .E(bus_hrdata[23]), .F(n5), .Z(n45) );
  GTECH_AOI222 U69 ( .A(bus_hrdata[151]), .B(n82), .C(bus_hrdata[119]), .D(n6), 
        .E(bus_hrdata[87]), .F(n7), .Z(n44) );
  GTECH_NAND2 U70 ( .A(n46), .B(n47), .Z(hrdata[22]) );
  GTECH_AOI222 U71 ( .A(bus_hrdata[54]), .B(n3), .C(hrdata_none[22]), .D(n4), 
        .E(bus_hrdata[22]), .F(n5), .Z(n47) );
  GTECH_AOI222 U72 ( .A(bus_hrdata[150]), .B(n82), .C(bus_hrdata[118]), .D(n6), 
        .E(bus_hrdata[86]), .F(n7), .Z(n46) );
  GTECH_NAND2 U73 ( .A(n48), .B(n49), .Z(hrdata[21]) );
  GTECH_AOI222 U74 ( .A(bus_hrdata[53]), .B(n3), .C(hrdata_none[21]), .D(n4), 
        .E(bus_hrdata[21]), .F(n5), .Z(n49) );
  GTECH_AOI222 U75 ( .A(bus_hrdata[149]), .B(n82), .C(bus_hrdata[117]), .D(n6), 
        .E(bus_hrdata[85]), .F(n7), .Z(n48) );
  GTECH_NAND2 U76 ( .A(n50), .B(n51), .Z(hrdata[20]) );
  GTECH_AOI222 U77 ( .A(bus_hrdata[52]), .B(n3), .C(hrdata_none[20]), .D(n4), 
        .E(bus_hrdata[20]), .F(n5), .Z(n51) );
  GTECH_AOI222 U78 ( .A(bus_hrdata[148]), .B(n82), .C(bus_hrdata[116]), .D(n6), 
        .E(bus_hrdata[84]), .F(n7), .Z(n50) );
  GTECH_NAND2 U79 ( .A(n52), .B(n53), .Z(hrdata[1]) );
  GTECH_AOI222 U80 ( .A(bus_hrdata[33]), .B(n3), .C(hrdata_none[1]), .D(n4), 
        .E(bus_hrdata[1]), .F(n5), .Z(n53) );
  GTECH_AOI222 U81 ( .A(bus_hrdata[129]), .B(n82), .C(bus_hrdata[97]), .D(n6), 
        .E(bus_hrdata[65]), .F(n7), .Z(n52) );
  GTECH_NAND2 U82 ( .A(n54), .B(n55), .Z(hrdata[19]) );
  GTECH_AOI222 U83 ( .A(bus_hrdata[51]), .B(n3), .C(hrdata_none[19]), .D(n4), 
        .E(bus_hrdata[19]), .F(n5), .Z(n55) );
  GTECH_AOI222 U84 ( .A(bus_hrdata[147]), .B(n82), .C(bus_hrdata[115]), .D(n6), 
        .E(bus_hrdata[83]), .F(n7), .Z(n54) );
  GTECH_NAND2 U85 ( .A(n56), .B(n57), .Z(hrdata[18]) );
  GTECH_AOI222 U86 ( .A(bus_hrdata[50]), .B(n3), .C(hrdata_none[18]), .D(n4), 
        .E(bus_hrdata[18]), .F(n5), .Z(n57) );
  GTECH_AOI222 U87 ( .A(bus_hrdata[146]), .B(n82), .C(bus_hrdata[114]), .D(n6), 
        .E(bus_hrdata[82]), .F(n7), .Z(n56) );
  GTECH_NAND2 U88 ( .A(n58), .B(n59), .Z(hrdata[17]) );
  GTECH_AOI222 U89 ( .A(bus_hrdata[49]), .B(n3), .C(hrdata_none[17]), .D(n4), 
        .E(bus_hrdata[17]), .F(n5), .Z(n59) );
  GTECH_AOI222 U90 ( .A(bus_hrdata[145]), .B(n82), .C(bus_hrdata[113]), .D(n6), 
        .E(bus_hrdata[81]), .F(n7), .Z(n58) );
  GTECH_NAND2 U91 ( .A(n60), .B(n61), .Z(hrdata[16]) );
  GTECH_AOI222 U92 ( .A(bus_hrdata[48]), .B(n3), .C(hrdata_none[16]), .D(n4), 
        .E(bus_hrdata[16]), .F(n5), .Z(n61) );
  GTECH_AOI222 U93 ( .A(bus_hrdata[144]), .B(n82), .C(bus_hrdata[112]), .D(n6), 
        .E(bus_hrdata[80]), .F(n7), .Z(n60) );
  GTECH_NAND2 U94 ( .A(n62), .B(n63), .Z(hrdata[15]) );
  GTECH_AOI222 U95 ( .A(bus_hrdata[47]), .B(n3), .C(hrdata_none[15]), .D(n4), 
        .E(bus_hrdata[15]), .F(n5), .Z(n63) );
  GTECH_AOI222 U96 ( .A(bus_hrdata[143]), .B(n82), .C(bus_hrdata[111]), .D(n6), 
        .E(bus_hrdata[79]), .F(n7), .Z(n62) );
  GTECH_NAND2 U97 ( .A(n64), .B(n65), .Z(hrdata[14]) );
  GTECH_AOI222 U98 ( .A(bus_hrdata[46]), .B(n3), .C(hrdata_none[14]), .D(n4), 
        .E(bus_hrdata[14]), .F(n5), .Z(n65) );
  GTECH_AOI222 U99 ( .A(bus_hrdata[142]), .B(n82), .C(bus_hrdata[110]), .D(n6), 
        .E(bus_hrdata[78]), .F(n7), .Z(n64) );
  GTECH_NAND2 U100 ( .A(n66), .B(n67), .Z(hrdata[13]) );
  GTECH_AOI222 U101 ( .A(bus_hrdata[45]), .B(n3), .C(hrdata_none[13]), .D(n4), 
        .E(bus_hrdata[13]), .F(n5), .Z(n67) );
  GTECH_AOI222 U102 ( .A(bus_hrdata[141]), .B(n82), .C(bus_hrdata[109]), .D(n6), .E(bus_hrdata[77]), .F(n7), .Z(n66) );
  GTECH_NAND2 U103 ( .A(n68), .B(n69), .Z(hrdata[12]) );
  GTECH_AOI222 U104 ( .A(bus_hrdata[44]), .B(n3), .C(hrdata_none[12]), .D(n4), 
        .E(bus_hrdata[12]), .F(n5), .Z(n69) );
  GTECH_AOI222 U105 ( .A(bus_hrdata[140]), .B(n82), .C(bus_hrdata[108]), .D(n6), .E(bus_hrdata[76]), .F(n7), .Z(n68) );
  GTECH_NAND2 U106 ( .A(n70), .B(n71), .Z(hrdata[11]) );
  GTECH_AOI222 U107 ( .A(bus_hrdata[43]), .B(n3), .C(hrdata_none[11]), .D(n4), 
        .E(bus_hrdata[11]), .F(n5), .Z(n71) );
  GTECH_AOI222 U108 ( .A(bus_hrdata[139]), .B(n82), .C(bus_hrdata[107]), .D(n6), .E(bus_hrdata[75]), .F(n7), .Z(n70) );
  GTECH_NAND2 U109 ( .A(n72), .B(n73), .Z(hrdata[10]) );
  GTECH_AOI222 U110 ( .A(bus_hrdata[42]), .B(n3), .C(hrdata_none[10]), .D(n4), 
        .E(bus_hrdata[10]), .F(n5), .Z(n73) );
  GTECH_AOI222 U111 ( .A(bus_hrdata[138]), .B(n82), .C(bus_hrdata[106]), .D(n6), .E(bus_hrdata[74]), .F(n7), .Z(n72) );
  GTECH_NAND2 U112 ( .A(n74), .B(n75), .Z(hrdata[0]) );
  GTECH_AOI222 U113 ( .A(bus_hrdata[32]), .B(n3), .C(hrdata_none[0]), .D(n4), 
        .E(bus_hrdata[0]), .F(n5), .Z(n75) );
  GTECH_AND3 U114 ( .A(n76), .B(n77), .C(n84), .Z(n5) );
  GTECH_NOT U115 ( .A(n80), .Z(n77) );
  GTECH_NOR3 U116 ( .A(n84), .B(n80), .C(n78), .Z(n4) );
  GTECH_AND_NOT U117 ( .A(n80), .B(n78), .Z(n3) );
  GTECH_NOT U118 ( .A(n76), .Z(n78) );
  GTECH_NOR3 U119 ( .A(n82), .B(n81), .C(n83), .Z(n76) );
  GTECH_AOI222 U120 ( .A(bus_hrdata[128]), .B(n82), .C(bus_hrdata[96]), .D(n6), 
        .E(bus_hrdata[64]), .F(n7), .Z(n74) );
  GTECH_NOR3 U121 ( .A(n82), .B(n81), .C(n79), .Z(n7) );
  GTECH_NOT U122 ( .A(n83), .Z(n79) );
  GTECH_AND_NOT U123 ( .A(n81), .B(n82), .Z(n6) );
endmodule


module i_ahb_DW_ahb_dcdr_32_00000000_0000ffff_00010000_00011fff ( haddr, hsel
 );
  input [31:0] haddr;
  output [5:0] hsel;
  wire   n1, n2, n3, n4, n5, n6;

  GTECH_ZERO U3 ( .Z(hsel[0]) );
  GTECH_AND_NOT U4 ( .A(n1), .B(hsel[4]), .Z(hsel[5]) );
  GTECH_AND_NOT U5 ( .A(n1), .B(n2), .Z(hsel[4]) );
  GTECH_AND_NOT U6 ( .A(n3), .B(n1), .Z(hsel[3]) );
  GTECH_OA21 U7 ( .A(haddr[12]), .B(n2), .C(n3), .Z(n1) );
  GTECH_AND_NOT U8 ( .A(n4), .B(n3), .Z(hsel[2]) );
  GTECH_OA21 U9 ( .A(haddr[13]), .B(n2), .C(n4), .Z(n3) );
  GTECH_OR3 U10 ( .A(haddr[15]), .B(haddr[14]), .C(n5), .Z(n2) );
  GTECH_NOT U11 ( .A(hsel[1]), .Z(n4) );
  GTECH_NOR2 U12 ( .A(haddr[16]), .B(n5), .Z(hsel[1]) );
  GTECH_OR8 U13 ( .A(haddr[21]), .B(haddr[20]), .C(haddr[23]), .D(haddr[22]), 
        .E(haddr[19]), .F(haddr[18]), .G(haddr[17]), .H(n6), .Z(n5) );
  GTECH_OR8 U14 ( .A(haddr[25]), .B(haddr[24]), .C(haddr[27]), .D(haddr[26]), 
        .E(haddr[29]), .F(haddr[28]), .G(haddr[31]), .H(haddr[30]), .Z(n6) );
endmodule


module i_ahb_DW_ahb_arblite ( hclk, hresetn, hready, hlock_m1, hmaster, 
        hmastlock );
  output [3:0] hmaster;
  input hclk, hresetn, hready, hlock_m1;
  output hmastlock;
  wire   n2;
  assign hmaster[1] = hmaster[3];
  assign hmaster[2] = hmaster[3];

  GTECH_FD2 hmastlock_reg ( .D(n2), .CP(hclk), .CD(hresetn), .Q(hmastlock) );
  GTECH_ZERO U3 ( .Z(hmaster[3]) );
  GTECH_ONE U4 ( .Z(hmaster[0]) );
  GTECH_MUX2 U5 ( .A(hmastlock), .B(hlock_m1), .S(hready), .Z(n2) );
endmodule


module i_ahb_DW_ahb_dfltslv ( hclk, hresetn, hready, htrans, hsel_none, 
        hready_resp_none, hresp_none, hrdata_none );
  input [1:0] htrans;
  output [1:0] hresp_none;
  output [31:0] hrdata_none;
  input hclk, hresetn, hready, hsel_none;
  output hready_resp_none;
  wire   N4, n2, n1, n3, n4;
  assign hresp_none[1] = hrdata_none[31];
  assign hrdata_none[0] = hrdata_none[31];
  assign hrdata_none[1] = hrdata_none[31];
  assign hrdata_none[2] = hrdata_none[31];
  assign hrdata_none[3] = hrdata_none[31];
  assign hrdata_none[4] = hrdata_none[31];
  assign hrdata_none[5] = hrdata_none[31];
  assign hrdata_none[6] = hrdata_none[31];
  assign hrdata_none[7] = hrdata_none[31];
  assign hrdata_none[8] = hrdata_none[31];
  assign hrdata_none[9] = hrdata_none[31];
  assign hrdata_none[10] = hrdata_none[31];
  assign hrdata_none[11] = hrdata_none[31];
  assign hrdata_none[12] = hrdata_none[31];
  assign hrdata_none[13] = hrdata_none[31];
  assign hrdata_none[14] = hrdata_none[31];
  assign hrdata_none[15] = hrdata_none[31];
  assign hrdata_none[16] = hrdata_none[31];
  assign hrdata_none[17] = hrdata_none[31];
  assign hrdata_none[18] = hrdata_none[31];
  assign hrdata_none[19] = hrdata_none[31];
  assign hrdata_none[20] = hrdata_none[31];
  assign hrdata_none[21] = hrdata_none[31];
  assign hrdata_none[22] = hrdata_none[31];
  assign hrdata_none[23] = hrdata_none[31];
  assign hrdata_none[24] = hrdata_none[31];
  assign hrdata_none[25] = hrdata_none[31];
  assign hrdata_none[26] = hrdata_none[31];
  assign hrdata_none[27] = hrdata_none[31];
  assign hrdata_none[28] = hrdata_none[31];
  assign hrdata_none[29] = hrdata_none[31];
  assign hrdata_none[30] = hrdata_none[31];

  GTECH_FD2 current_state_reg ( .D(n4), .CP(hclk), .CD(hresetn), .Q(n3) );
  GTECH_FD4 hready_resp_none_reg ( .D(n2), .CP(hclk), .SD(hresetn), .Q(
        hready_resp_none) );
  GTECH_FD2 hresp_none_reg_0_ ( .D(N4), .CP(hclk), .CD(hresetn), .Q(
        hresp_none[0]) );
  GTECH_ZERO U3 ( .Z(hrdata_none[31]) );
  GTECH_NOT U4 ( .A(n2), .Z(n4) );
  GTECH_OR_NOT U5 ( .A(n3), .B(n1), .Z(n2) );
  GTECH_OR2 U6 ( .A(n3), .B(n1), .Z(N4) );
  GTECH_AND3 U7 ( .A(hsel_none), .B(hready), .C(htrans[1]), .Z(n1) );
endmodule


module i_ahb_DW_ahb ( hclk, hresetn, haddr_m1, hburst_m1, hlock_m1, hprot_m1, 
        hsize_m1, htrans_m1, hwdata_m1, hwrite_m1, hsel_s1, hready_resp_s1, 
        hresp_s1, hrdata_s1, hsel_s2, hready_resp_s2, hresp_s2, hrdata_s2, 
        hsel_s3, hready_resp_s3, hresp_s3, hrdata_s3, hsel_s4, hready_resp_s4, 
        hresp_s4, hrdata_s4, haddr, hburst, hprot, hsize, htrans, hwdata, 
        hwrite, hready, hresp, hrdata, hmaster, hmaster_data, hmastlock );
  input [31:0] haddr_m1;
  input [2:0] hburst_m1;
  input [3:0] hprot_m1;
  input [2:0] hsize_m1;
  input [1:0] htrans_m1;
  input [31:0] hwdata_m1;
  input [1:0] hresp_s1;
  input [31:0] hrdata_s1;
  input [1:0] hresp_s2;
  input [31:0] hrdata_s2;
  input [1:0] hresp_s3;
  input [31:0] hrdata_s3;
  input [1:0] hresp_s4;
  input [31:0] hrdata_s4;
  output [31:0] haddr;
  output [2:0] hburst;
  output [3:0] hprot;
  output [2:0] hsize;
  output [1:0] htrans;
  output [31:0] hwdata;
  output [1:0] hresp;
  output [31:0] hrdata;
  output [3:0] hmaster;
  output [3:0] hmaster_data;
  input hclk, hresetn, hlock_m1, hwrite_m1, hready_resp_s1, hready_resp_s2,
         hready_resp_s3, hready_resp_s4;
  output hsel_s1, hsel_s2, hsel_s3, hsel_s4, hwrite, hready, hmastlock;
  wire   hsel_5_, hready_resp_none, hresp_none_0_, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37,
         SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39,
         SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41,
         SYNOPSYS_UNCONNECTED_42;
  assign hmaster_data[0] = hmaster[0];
  assign hmaster_data[1] = hmaster[3];
  assign hmaster_data[2] = hmaster[3];
  assign hmaster_data[3] = hmaster[3];
  assign hmaster[1] = hmaster[3];
  assign hmaster[2] = hmaster[3];

  i_ahb_DW_ahb_mux U_mux ( .hclk(hclk), .hresetn(hresetn), .bus_haddr({
        haddr_m1, hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3]}), .bus_hburst({hburst_m1, 
        hmaster[3], hmaster[3], hmaster[3]}), .bus_hprot({hprot_m1, hmaster[3], 
        hmaster[3], hmaster[0], hmaster[0]}), .bus_hsize({hsize_m1, hmaster[3], 
        hmaster[3], hmaster[3]}), .bus_htrans({htrans_m1, hmaster[3], 
        hmaster[3]}), .bus_hwdata({hwdata_m1, hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3]}), .bus_hwrite({hwrite_m1, hmaster[3]}), .hrdata_none({hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3]}), .hready_resp_none(hready_resp_none), .hresp_none({hmaster[3], hresp_none_0_}), .bus_hready({hready_resp_s4, hready_resp_s3, hready_resp_s2, hready_resp_s1, 
        hmaster[0]}), .bus_hresp({hresp_s4, hresp_s3, hresp_s2, hresp_s1, 
        hmaster[3], hmaster[3]}), .bus_hrdata({hrdata_s4, hrdata_s3, hrdata_s2, 
        hrdata_s1, hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], hmaster[3], 
        hmaster[3], hmaster[3], hmaster[3]}), .hsel({hsel_s4, hsel_s3, hsel_s2, 
        hsel_s1, hmaster[3]}), .hmaster_data({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}), .haddr(haddr), .hburst(hburst), .hprot(hprot), .hsize(hsize), .htrans(
        htrans), .hwdata(hwdata), .hwrite(hwrite), .hrdata(hrdata), .hready(
        hready), .hresp(hresp) );
  i_ahb_DW_ahb_dcdr_32_00000000_0000ffff_00010000_00011fff U_dcdr ( .haddr(
        haddr), .hsel({hsel_5_, hsel_s4, hsel_s3, hsel_s2, hsel_s1, 
        SYNOPSYS_UNCONNECTED_5}) );
  i_ahb_DW_ahb_arblite U_arblite ( .hclk(hclk), .hresetn(hresetn), .hready(
        hready), .hlock_m1(hlock_m1), .hmaster({SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9}), .hmastlock(hmastlock) );
  i_ahb_DW_ahb_dfltslv U_dfltslv ( .hclk(hclk), .hresetn(hresetn), .hready(
        hready), .htrans(htrans), .hsel_none(hsel_5_), .hready_resp_none(
        hready_resp_none), .hresp_none({SYNOPSYS_UNCONNECTED_10, hresp_none_0_}), .hrdata_none({SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, 
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, 
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42}) );
  GTECH_ONE U3 ( .Z(hmaster[0]) );
  GTECH_ZERO U4 ( .Z(hmaster[3]) );
endmodule

