//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Sun Apr 14 16:57:45 2019
//Host        : DESKTOP-KPCP68V running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;

  design_1 design_1_i
       (.B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g));
endmodule
