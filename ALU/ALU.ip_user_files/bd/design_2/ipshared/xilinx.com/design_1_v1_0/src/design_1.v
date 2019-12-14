//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Sun May 12 23:48:06 2019
//Host        : DESKTOP-KPCP68V running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (A,
    B,
    Cn,
    M0,
    M1,
    M2,
    Y1,
    Y2);
  input A;
  input B;
  input Cn;
  input M0;
  input M1;
  input M2;
  output Y1;
  output Y2;

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A_1;
  wire B_1;
  wire Cn_1;
  wire four_2_input_and_gate_0_Y1;
  wire four_2_input_and_gate_0_Y2;
  wire four_2_input_and_gate_0_Y3;
  wire four_2_input_and_gate_0_Y4;
  wire four_2_input_or_gate_0_Y1;
  wire four_2_input_or_gate_0_Y2;
  wire four_2_input_or_gate_0_Y3;
  wire four_2_input_or_gate_0_Y4;
  wire mux_8_to_1_0_Q;
  wire mux_8_to_1_1_Q;
  wire six_not_gate_0_Y1;
  wire six_not_gate_0_Y2;
  wire six_not_gate_1_Y1;
  wire six_not_gate_1_Y2;
  wire six_not_gate_1_Y3;
  wire six_not_gate_1_Y4;
  wire six_not_gate_1_Y5;
  wire tri_3_input_and_gate_0_Y1;
  wire xup_xnor2_0_y;
  wire xup_xnor2_1_y;

  assign A0_1 = M0;
  assign A1_1 = M1;
  assign A2_1 = M2;
  assign A_1 = A;
  assign B_1 = B;
  assign Cn_1 = Cn;
  assign Y1 = mux_8_to_1_0_Q;
  assign Y2 = mux_8_to_1_1_Q;
  design_1_four_2_input_and_gate_0_0 four_2_input_and_gate_0
       (.A1(A_1),
        .A2(four_2_input_or_gate_0_Y1),
        .A3(B_1),
        .A4(six_not_gate_0_Y1),
        .B1(B_1),
        .B2(Cn_1),
        .B3(Cn_1),
        .B4(four_2_input_or_gate_0_Y3),
        .Y1(four_2_input_and_gate_0_Y1),
        .Y2(four_2_input_and_gate_0_Y2),
        .Y3(four_2_input_and_gate_0_Y3),
        .Y4(four_2_input_and_gate_0_Y4));
  design_1_four_2_input_or_gate_0_0 four_2_input_or_gate_0
       (.A1(A_1),
        .A2(four_2_input_and_gate_0_Y1),
        .A3(B_1),
        .A4(four_2_input_and_gate_0_Y3),
        .B1(B_1),
        .B2(four_2_input_and_gate_0_Y2),
        .B3(Cn_1),
        .B4(four_2_input_and_gate_0_Y4),
        .Y1(four_2_input_or_gate_0_Y1),
        .Y2(four_2_input_or_gate_0_Y2),
        .Y3(four_2_input_or_gate_0_Y3),
        .Y4(four_2_input_or_gate_0_Y4));
  design_1_mux_8_to_1_0_0 mux_8_to_1_0
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .D0(four_2_input_and_gate_0_Y1),
        .D1(four_2_input_or_gate_0_Y1),
        .D2(six_not_gate_0_Y1),
        .D3(six_not_gate_0_Y2),
        .D4(xup_xnor2_0_y),
        .D5(xup_xnor2_1_y),
        .D6(xup_xnor2_1_y),
        .D7(1'b0),
        .Q(mux_8_to_1_0_Q),
        .S_n(1'b0));
  design_1_mux_8_to_1_0_1 mux_8_to_1_1
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .D0(six_not_gate_1_Y5),
        .D1(six_not_gate_1_Y4),
        .D2(six_not_gate_1_Y3),
        .D3(six_not_gate_1_Y2),
        .D4(six_not_gate_1_Y1),
        .D5(four_2_input_or_gate_0_Y2),
        .D6(four_2_input_or_gate_0_Y4),
        .D7(1'b0),
        .Q(mux_8_to_1_1_Q),
        .S_n(tri_3_input_and_gate_0_Y1));
  design_1_six_not_gate_0_0 six_not_gate_0
       (.A1(A_1),
        .A2(B_1),
        .A3(1'b0),
        .A4(1'b0),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_0_Y1),
        .Y2(six_not_gate_0_Y2));
  design_1_six_not_gate_0_1 six_not_gate_1
       (.A1(xup_xnor2_0_y),
        .A2(six_not_gate_0_Y2),
        .A3(six_not_gate_0_Y1),
        .A4(four_2_input_or_gate_0_Y1),
        .A5(four_2_input_and_gate_0_Y1),
        .A6(1'b0),
        .Y1(six_not_gate_1_Y1),
        .Y2(six_not_gate_1_Y2),
        .Y3(six_not_gate_1_Y3),
        .Y4(six_not_gate_1_Y4),
        .Y5(six_not_gate_1_Y5));
  design_1_tri_3_input_and_gate_0_0 tri_3_input_and_gate_0
       (.A1(A0_1),
        .A2(1'b0),
        .A3(1'b0),
        .B1(A2_1),
        .B2(1'b0),
        .B3(1'b0),
        .C1(A1_1),
        .C2(1'b0),
        .C3(1'b0),
        .Y1(tri_3_input_and_gate_0_Y1));
  design_1_xup_xnor2_0_0 xup_xnor2_0
       (.a(A_1),
        .b(B_1),
        .y(xup_xnor2_0_y));
  design_1_xup_xnor2_0_1 xup_xnor2_1
       (.a(xup_xnor2_0_y),
        .b(Cn_1),
        .y(xup_xnor2_1_y));
endmodule
