-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Sep 11 14:25:30 2019
-- Host        : rootie-ThinkPad-X1 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rootie/risc16/risc16.srcs/sources_1/bd/risc16System/ip/risc16System_CPU_Programmer_0_0/risc16System_CPU_Programmer_0_0_stub.vhdl
-- Design      : risc16System_CPU_Programmer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity risc16System_CPU_Programmer_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    byte_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rrdy : in STD_LOGIC;
    pgm_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pgm_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pg_wr : out STD_LOGIC
  );

end risc16System_CPU_Programmer_0_0;

architecture stub of risc16System_CPU_Programmer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,byte_in[7:0],rrdy,pgm_data[15:0],pgm_addr[15:0],pg_wr";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CPU_Programmer,Vivado 2018.3";
begin
end;
