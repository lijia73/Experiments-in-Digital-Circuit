//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Sun May 19 21:03:01 2019
//Host        : DESKTOP-KPCP68V running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire A;
  wire B;
  wire Cn;
  wire M0;
  wire M1;
  wire M2;
  wire Y1;
  wire Y2;

  design_1 design_1_i
       (.A(A),
        .B(B),
        .Cn(Cn),
        .M0(M0),
        .M1(M1),
        .M2(M2),
        .Y1(Y1),
        .Y2(Y2));
endmodule
