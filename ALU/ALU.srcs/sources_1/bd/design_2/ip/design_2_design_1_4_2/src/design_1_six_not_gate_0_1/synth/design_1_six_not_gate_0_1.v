// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:XUP:six_not_gate:1.0
// IP Revision: 2

(* X_CORE_INFO = "six_not_gate,Vivado 2015.4" *)
(* CHECK_LICENSE_TYPE = "design_1_six_not_gate_0_1,six_not_gate,{}" *)
(* CORE_GENERATION_INFO = "design_1_six_not_gate_0_1,six_not_gate,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=XUP,x_ipName=six_not_gate,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,Delay=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_six_not_gate_0_1 (
  A1,
  A2,
  A3,
  A4,
  A5,
  A6,
  Y1,
  Y2,
  Y3,
  Y4,
  Y5,
  Y6
);

input wire A1;
input wire A2;
input wire A3;
input wire A4;
input wire A5;
input wire A6;
output wire Y1;
output wire Y2;
output wire Y3;
output wire Y4;
output wire Y5;
output wire Y6;

  six_not_gate #(
    .Delay(0)
  ) inst (
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .A4(A4),
    .A5(A5),
    .A6(A6),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6)
  );
endmodule
