//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Sun May 19 21:24:42 2019
//Host        : DESKTOP-KPCP68V running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
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

  wire A;
  wire A_1;
  wire A_2;
  wire A_3;
  wire B;
  wire B_1;
  wire B_2;
  wire B_3;
  wire Cn;
  wire Cout;
  wire M0;
  wire M1;
  wire M2;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  design_2 design_2_i
       (.A(A),
        .A_1(A_1),
        .A_2(A_2),
        .A_3(A_3),
        .B(B),
        .B_1(B_1),
        .B_2(B_2),
        .B_3(B_3),
        .Cn(Cn),
        .Cout(Cout),
        .M0(M0),
        .M1(M1),
        .M2(M2),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule
