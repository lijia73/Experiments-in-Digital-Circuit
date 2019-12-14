//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Sun Apr 14 16:57:45 2019
//Host        : DESKTOP-KPCP68V running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=32,numReposBlks=32,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (B0,
    B1,
    B2,
    B3,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  input B0;
  input B1;
  input B2;
  input B3;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;

  wire A2_1;
  wire A3_1;
  wire A4_1;
  wire B0_1;
  wire four_2_input_and_gate_0_Y1;
  wire four_2_input_and_gate_0_Y2;
  wire four_2_input_and_gate_0_Y3;
  wire four_2_input_and_gate_0_Y4;
  wire four_2_input_and_gate_1_Y1;
  wire four_2_input_and_gate_1_Y2;
  wire four_2_input_and_gate_1_Y3;
  wire four_2_input_and_gate_2_Y1;
  wire four_2_input_and_gate_2_Y2;
  wire four_2_input_and_gate_2_Y3;
  wire four_2_input_and_gate_3_Y1;
  wire four_2_input_and_gate_3_Y2;
  wire four_2_input_and_gate_3_Y3;
  wire four_2_input_and_gate_3_Y4;
  wire four_2_input_and_gate_4_Y1;
  wire four_2_input_and_gate_4_Y2;
  wire four_2_input_and_gate_4_Y3;
  wire four_2_input_and_gate_4_Y4;
  wire four_2_input_and_gate_6_Y1;
  wire four_2_input_and_gate_6_Y2;
  wire four_2_input_and_gate_6_Y3;
  wire four_2_input_and_gate_6_Y4;
  wire six_not_gate_0_Y1;
  wire six_not_gate_0_Y2;
  wire six_not_gate_0_Y3;
  wire six_not_gate_0_Y4;
  wire six_not_gate_1_Y1;
  wire six_not_gate_1_Y2;
  wire six_not_gate_1_Y3;
  wire six_not_gate_1_Y4;
  wire six_not_gate_2_Y2;
  wire six_not_gate_2_Y3;
  wire six_not_gate_2_Y4;
  wire six_not_gate_3_Y1;
  wire six_not_gate_3_Y2;
  wire six_not_gate_3_Y3;
  wire six_not_gate_3_Y4;
  wire six_not_gate_4_Y1;
  wire six_not_gate_4_Y3;
  wire six_not_gate_5_Y1;
  wire six_not_gate_5_Y2;
  wire six_not_gate_5_Y3;
  wire six_not_gate_5_Y4;
  wire six_not_gate_6_Y1;
  wire six_not_gate_6_Y2;
  wire six_not_gate_6_Y3;
  wire six_not_gate_6_Y4;
  wire six_not_gate_7_Y1;
  wire six_not_gate_7_Y2;
  wire six_not_gate_7_Y3;
  wire six_not_gate_7_Y4;
  wire six_not_gate_8_Y1;
  wire six_not_gate_8_Y2;
  wire six_not_gate_8_Y3;
  wire tri_3_input_and_gate_0_Y1;
  wire tri_3_input_and_gate_0_Y2;
  wire tri_3_input_and_gate_0_Y3;
  wire tri_3_input_and_gate_1_Y1;
  wire tri_3_input_and_gate_1_Y2;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_and3_0_y;
  wire xup_and3_1_y;
  wire xup_and3_2_y;
  wire xup_or4_0_y;
  wire xup_or4_1_y;
  wire xup_or4_2_y;
  wire xup_or5_0_y;
  wire xup_or5_1_y;
  wire xup_or5_2_y;
  wire xup_or6_0_y;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;
  wire xup_xor2_2_y;

  assign A2_1 = B1;
  assign A3_1 = B2;
  assign A4_1 = B3;
  assign B0_1 = B0;
  assign a = six_not_gate_8_Y1;
  assign b = six_not_gate_8_Y2;
  assign c = six_not_gate_8_Y3;
  assign d = six_not_gate_7_Y2;
  assign e = six_not_gate_7_Y1;
  assign f = six_not_gate_7_Y3;
  assign g = six_not_gate_7_Y4;
  design_1_four_2_input_and_gate_0_0 four_2_input_and_gate_0
       (.A1(six_not_gate_0_Y1),
        .A2(A4_1),
        .A3(six_not_gate_0_Y4),
        .A4(A2_1),
        .B1(six_not_gate_0_Y3),
        .B2(six_not_gate_0_Y1),
        .B3(A2_1),
        .B4(A3_1),
        .Y1(four_2_input_and_gate_0_Y1),
        .Y2(four_2_input_and_gate_0_Y2),
        .Y3(four_2_input_and_gate_0_Y3),
        .Y4(four_2_input_and_gate_0_Y4));
  design_1_four_2_input_and_gate_0_1 four_2_input_and_gate_1
       (.A1(six_not_gate_1_Y3),
        .A2(six_not_gate_1_Y4),
        .A3(six_not_gate_1_Y4),
        .A4(1'b0),
        .B1(six_not_gate_1_Y1),
        .B2(six_not_gate_1_Y3),
        .B3(xup_xor2_0_y),
        .B4(1'b0),
        .Y1(four_2_input_and_gate_1_Y1),
        .Y2(four_2_input_and_gate_1_Y2),
        .Y3(four_2_input_and_gate_1_Y3));
  design_1_four_2_input_and_gate_1_0 four_2_input_and_gate_2
       (.A1(six_not_gate_2_Y2),
        .A2(six_not_gate_2_Y2),
        .A3(B0_1),
        .A4(1'b0),
        .B1(six_not_gate_2_Y3),
        .B2(B0_1),
        .B3(six_not_gate_2_Y4),
        .B4(1'b0),
        .Y1(four_2_input_and_gate_2_Y1),
        .Y2(four_2_input_and_gate_2_Y2),
        .Y3(four_2_input_and_gate_2_Y3));
  design_1_four_2_input_and_gate_2_0 four_2_input_and_gate_3
       (.A1(six_not_gate_4_Y3),
        .A2(six_not_gate_4_Y1),
        .A3(A4_1),
        .A4(A4_1),
        .B1(six_not_gate_4_Y1),
        .B2(A2_1),
        .B3(A3_1),
        .B4(A2_1),
        .Y1(four_2_input_and_gate_3_Y1),
        .Y2(four_2_input_and_gate_3_Y2),
        .Y3(four_2_input_and_gate_3_Y3),
        .Y4(four_2_input_and_gate_3_Y4));
  design_1_four_2_input_and_gate_3_0 four_2_input_and_gate_4
       (.A1(six_not_gate_5_Y1),
        .A2(six_not_gate_5_Y1),
        .A3(A4_1),
        .A4(A4_1),
        .B1(six_not_gate_5_Y2),
        .B2(A3_1),
        .B3(six_not_gate_5_Y3),
        .B4(A2_1),
        .Y1(four_2_input_and_gate_4_Y1),
        .Y2(four_2_input_and_gate_4_Y2),
        .Y3(four_2_input_and_gate_4_Y3),
        .Y4(four_2_input_and_gate_4_Y4));
  design_1_four_2_input_and_gate_4_1 four_2_input_and_gate_6
       (.A1(six_not_gate_6_Y1),
        .A2(six_not_gate_6_Y3),
        .A3(A4_1),
        .A4(A4_1),
        .B1(A2_1),
        .B2(A2_1),
        .B3(B0_1),
        .B4(six_not_gate_6_Y3),
        .Y1(four_2_input_and_gate_6_Y1),
        .Y2(four_2_input_and_gate_6_Y2),
        .Y3(four_2_input_and_gate_6_Y3),
        .Y4(four_2_input_and_gate_6_Y4));
  design_1_six_not_gate_0_0 six_not_gate_0
       (.A1(B0_1),
        .A2(A2_1),
        .A3(A3_1),
        .A4(A4_1),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_0_Y1),
        .Y2(six_not_gate_0_Y2),
        .Y3(six_not_gate_0_Y3),
        .Y4(six_not_gate_0_Y4));
  design_1_six_not_gate_0_1 six_not_gate_1
       (.A1(B0_1),
        .A2(A2_1),
        .A3(A3_1),
        .A4(A4_1),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_1_Y1),
        .Y2(six_not_gate_1_Y2),
        .Y3(six_not_gate_1_Y3),
        .Y4(six_not_gate_1_Y4));
  design_1_six_not_gate_1_0 six_not_gate_2
       (.A1(B0_1),
        .A2(A2_1),
        .A3(A3_1),
        .A4(A4_1),
        .A5(1'b0),
        .A6(1'b0),
        .Y2(six_not_gate_2_Y2),
        .Y3(six_not_gate_2_Y3),
        .Y4(six_not_gate_2_Y4));
  design_1_six_not_gate_2_0 six_not_gate_3
       (.A1(B0_1),
        .A2(A2_1),
        .A3(A3_1),
        .A4(A4_1),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_3_Y1),
        .Y2(six_not_gate_3_Y2),
        .Y3(six_not_gate_3_Y3),
        .Y4(six_not_gate_3_Y4));
  design_1_six_not_gate_3_0 six_not_gate_4
       (.A1(B0_1),
        .A2(A2_1),
        .A3(A3_1),
        .A4(A4_1),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_4_Y1),
        .Y3(six_not_gate_4_Y3));
  design_1_six_not_gate_4_0 six_not_gate_5
       (.A1(B0_1),
        .A2(A2_1),
        .A3(A3_1),
        .A4(A4_1),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_5_Y1),
        .Y2(six_not_gate_5_Y2),
        .Y3(six_not_gate_5_Y3),
        .Y4(six_not_gate_5_Y4));
  design_1_six_not_gate_5_0 six_not_gate_6
       (.A1(B0_1),
        .A2(A2_1),
        .A3(A3_1),
        .A4(A4_1),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_6_Y1),
        .Y2(six_not_gate_6_Y2),
        .Y3(six_not_gate_6_Y3),
        .Y4(six_not_gate_6_Y4));
  design_1_six_not_gate_7_0 six_not_gate_7
       (.A1(xup_or4_2_y),
        .A2(xup_or5_0_y),
        .A3(xup_or5_1_y),
        .A4(xup_or5_2_y),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_7_Y1),
        .Y2(six_not_gate_7_Y2),
        .Y3(six_not_gate_7_Y3),
        .Y4(six_not_gate_7_Y4));
  design_1_six_not_gate_7_1 six_not_gate_8
       (.A1(xup_or6_0_y),
        .A2(xup_or4_0_y),
        .A3(xup_or4_1_y),
        .A4(1'b0),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_8_Y1),
        .Y2(six_not_gate_8_Y2),
        .Y3(six_not_gate_8_Y3));
  design_1_tri_3_input_and_gate_0_1 tri_3_input_and_gate_0
       (.A1(six_not_gate_3_Y1),
        .A2(six_not_gate_3_Y4),
        .A3(six_not_gate_3_Y3),
        .B1(six_not_gate_3_Y2),
        .B2(six_not_gate_3_Y3),
        .B3(A4_1),
        .C1(six_not_gate_3_Y3),
        .C2(A2_1),
        .C3(B0_1),
        .Y1(tri_3_input_and_gate_0_Y1),
        .Y2(tri_3_input_and_gate_0_Y2),
        .Y3(tri_3_input_and_gate_0_Y3));
  design_1_tri_3_input_and_gate_1_0 tri_3_input_and_gate_1
       (.A1(A3_1),
        .A2(A4_1),
        .A3(1'b0),
        .B1(B0_1),
        .B2(six_not_gate_0_Y3),
        .B3(1'b0),
        .C1(six_not_gate_0_Y4),
        .C2(six_not_gate_0_Y2),
        .C3(1'b0),
        .Y1(tri_3_input_and_gate_1_Y1),
        .Y2(tri_3_input_and_gate_1_Y2));
  design_1_xup_and2_0_1 xup_and2_0
       (.a(xup_xor2_2_y),
        .b(A3_1),
        .y(xup_and2_0_y));
  design_1_xup_and2_0_2 xup_and2_1
       (.a(six_not_gate_3_Y2),
        .b(A4_1),
        .y(xup_and2_1_y));
  design_1_xup_and3_0_0 xup_and3_0
       (.a(six_not_gate_1_Y2),
        .b(B0_1),
        .c(A4_1),
        .y(xup_and3_0_y));
  design_1_xup_and3_1_0 xup_and3_1
       (.a(six_not_gate_5_Y4),
        .b(six_not_gate_5_Y2),
        .c(A3_1),
        .y(xup_and3_1_y));
  design_1_xup_and3_1_1 xup_and3_2
       (.a(six_not_gate_6_Y4),
        .b(six_not_gate_6_Y2),
        .c(A3_1),
        .y(xup_and3_2_y));
  design_1_xup_or4_0_0 xup_or4_0
       (.a(four_2_input_and_gate_1_Y1),
        .b(four_2_input_and_gate_1_Y2),
        .c(four_2_input_and_gate_1_Y3),
        .d(xup_and3_0_y),
        .y(xup_or4_0_y));
  design_1_xup_or4_0_1 xup_or4_1
       (.a(four_2_input_and_gate_2_Y1),
        .b(four_2_input_and_gate_2_Y2),
        .c(four_2_input_and_gate_2_Y3),
        .d(xup_xor2_1_y),
        .y(xup_or4_1_y));
  design_1_xup_or4_2_0 xup_or4_2
       (.a(four_2_input_and_gate_3_Y1),
        .b(four_2_input_and_gate_3_Y2),
        .c(four_2_input_and_gate_3_Y3),
        .d(four_2_input_and_gate_3_Y4),
        .y(xup_or4_2_y));
  design_1_xup_or5_0_1 xup_or5_0
       (.a(tri_3_input_and_gate_0_Y1),
        .b(tri_3_input_and_gate_0_Y2),
        .c(tri_3_input_and_gate_0_Y3),
        .d(xup_and2_1_y),
        .e(xup_and2_0_y),
        .y(xup_or5_0_y));
  design_1_xup_or5_1_0 xup_or5_1
       (.a(four_2_input_and_gate_4_Y1),
        .b(four_2_input_and_gate_4_Y2),
        .c(four_2_input_and_gate_4_Y3),
        .d(four_2_input_and_gate_4_Y4),
        .e(xup_and3_1_y),
        .y(xup_or5_1_y));
  design_1_xup_or5_2_0 xup_or5_2
       (.a(four_2_input_and_gate_6_Y1),
        .b(four_2_input_and_gate_6_Y2),
        .c(four_2_input_and_gate_6_Y3),
        .d(four_2_input_and_gate_6_Y4),
        .e(xup_and3_2_y),
        .y(xup_or5_2_y));
  design_1_xup_or6_0_0 xup_or6_0
       (.a(four_2_input_and_gate_0_Y1),
        .b(four_2_input_and_gate_0_Y2),
        .c(four_2_input_and_gate_0_Y3),
        .d(four_2_input_and_gate_0_Y4),
        .e(tri_3_input_and_gate_1_Y1),
        .f(tri_3_input_and_gate_1_Y2),
        .y(xup_or6_0_y));
  design_1_xup_xor2_0_0 xup_xor2_0
       (.a(B0_1),
        .b(six_not_gate_1_Y2),
        .y(xup_xor2_0_y));
  design_1_xup_xor2_0_1 xup_xor2_1
       (.a(A4_1),
        .b(A3_1),
        .y(xup_xor2_1_y));
  design_1_xup_xor2_1_0 xup_xor2_2
       (.a(A2_1),
        .b(B0_1),
        .y(xup_xor2_2_y));
endmodule
