// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Sep 11 14:25:29 2019
// Host        : rootie-ThinkPad-X1 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ risc16System_CPU_Programmer_0_0_stub.v
// Design      : risc16System_CPU_Programmer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CPU_Programmer,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, byte_in, rrdy, pgm_data, pgm_addr, pg_wr)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,byte_in[7:0],rrdy,pgm_data[15:0],pgm_addr[15:0],pg_wr" */;
  input clk;
  input rst;
  input [7:0]byte_in;
  input rrdy;
  output [15:0]pgm_data;
  output [15:0]pgm_addr;
  output pg_wr;
endmodule
