// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Nov 30 21:27:05 2019
// Host        : rootieW running 64-bit Ubuntu 18.10
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ risc16System_ram_0_0_stub.v
// Design      : risc16System_ram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ram,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, addr, pc, pgm, pgm_data, pgm_addr, pg_wr, ir, rw, 
  data_out, mem_in)
/* synthesis syn_black_box black_box_pad_pin="clk,addr[15:0],pc[15:0],pgm,pgm_data[15:0],pgm_addr[15:0],pg_wr,ir[15:0],rw,data_out[15:0],mem_in[15:0]" */;
  input clk;
  input [15:0]addr;
  input [15:0]pc;
  input pgm;
  input [15:0]pgm_data;
  input [15:0]pgm_addr;
  input pg_wr;
  output [15:0]ir;
  input rw;
  output [15:0]data_out;
  input [15:0]mem_in;
endmodule
