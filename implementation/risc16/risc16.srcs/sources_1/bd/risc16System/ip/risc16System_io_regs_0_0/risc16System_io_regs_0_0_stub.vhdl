-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Nov 30 17:25:28 2019
-- Host        : rootieW running 64-bit Ubuntu 18.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rootie/devel/homebrew-computer/implementation/risc16/risc16.srcs/sources_1/bd/risc16System/ip/risc16System_io_regs_0_0/risc16System_io_regs_0_0_stub.vhdl
-- Design      : risc16System_io_regs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity risc16System_io_regs_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rw : in STD_LOGIC;
    input_a : in STD_LOGIC;
    input_b : in STD_LOGIC;
    input_c : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end risc16System_io_regs_0_0;

architecture stub of risc16System_io_regs_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,addr[15:0],data[15:0],rw,input_a,input_b,input_c,data_out[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "io_regs,Vivado 2018.3";
begin
end;
