// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Sep 15 00:29:46 2019
// Host        : rootie-ThinkPad-X1 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/risc16/risc16.srcs/sources_1/bd/risc16System/ip/risc16System_risc16_0_0/risc16System_risc16_0_0_stub.v
// Design      : risc16System_risc16_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "risc16,Vivado 2018.3" *)
module risc16System_risc16_0_0(clk_in, rst, pgm, pgm_data, pgm_addr, pg_wr, pclk, 
  pc_out, outRegA)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rst,pgm,pgm_data[15:0],pgm_addr[15:0],pg_wr,pclk,pc_out[15:0],outRegA[15:0]" */;
  input clk_in;
  input rst;
  input pgm;
  input [15:0]pgm_data;
  input [15:0]pgm_addr;
  input pg_wr;
  input pclk;
  output [15:0]pc_out;
  output [15:0]outRegA;
endmodule