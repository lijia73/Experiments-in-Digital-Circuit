//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Sun May 19 19:00:51 2019
//Host        : DESKTOP-KPCP68V running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (A,
    A_1,
    A_2,
    A_3,
    B,
    B_1,
    B_2,
    B_3,
    Cn,
    Cout,
    M0,
    M1,
    M2,
    Y0,
    Y1,
    Y2,
    Y3);
  input A;
  input A_1;
  input A_2;
  input A_3;
  input B;
  input B_1;
  input B_2;
  input B_3;
  input Cn;
  output Cout;
  input M0;
  input M1;
  input M2;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire \^A_1 ;
  wire A_1_1;
  wire A_2_1;
  wire A_3_1;
  wire \^B_1 ;
  wire B_1_1;
  wire B_2_1;
  wire B_3_1;
  wire Cn_1;
  wire M0_1;
  wire M1_1;
  wire M2_1;
  wire design_1_0_Y1;
  wire design_1_0_Y2;
  wire design_1_1_Y1;
  wire design_1_1_Y2;
  wire design_1_2_Y1;
  wire design_1_2_Y2;
  wire design_1_3_Y1;
  wire design_1_3_Y2;

  assign A_1_1 = A_1;
  assign A_2_1 = A_2;
  assign A_3_1 = A_3;
  assign B_1_1 = B_1;
  assign B_2_1 = B_2;
  assign B_3_1 = B_3;
  assign Cn_1 = Cn;
  assign Cout = design_1_3_Y2;
  assign M0_1 = M0;
  assign M1_1 = M1;
  assign M2_1 = M2;
  assign Y0 = design_1_0_Y1;
  assign Y1 = design_1_2_Y1;
  assign Y2 = design_1_1_Y1;
  assign Y3 = design_1_3_Y1;
  assign \^A_1  = A;
  assign \^B_1  = B;
  design_2_design_1_0_0 design_1_0
       (.A(\^A_1 ),
        .B(\^B_1 ),
        .Cn(Cn_1),
        .M0(M0_1),
        .M1(M1_1),
        .M2(M2_1),
        .Y1(design_1_0_Y1),
        .Y2(design_1_0_Y2));
  design_2_design_1_0_1 design_1_1
       (.A(A_2_1),
        .B(B_2_1),
        .Cn(design_1_2_Y2),
        .M0(M0_1),
        .M1(M1_1),
        .M2(M2_1),
        .Y1(design_1_1_Y1),
        .Y2(design_1_1_Y2));
  design_2_design_1_0_2 design_1_2
       (.A(A_1_1),
        .B(B_1_1),
        .Cn(design_1_0_Y2),
        .M0(M0_1),
        .M1(M1_1),
        .M2(M2_1),
        .Y1(design_1_2_Y1),
        .Y2(design_1_2_Y2));
  design_2_design_1_0_3 design_1_3
       (.A(A_3_1),
        .B(B_3_1),
        .Cn(design_1_1_Y2),
        .M0(M0_1),
        .M1(M1_1),
        .M2(M2_1),
        .Y1(design_1_3_Y1),
        .Y2(design_1_3_Y2));
endmodule
