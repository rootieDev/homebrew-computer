-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Sep  6 23:04:43 2019
-- Host        : rootie-ThinkPad-X1 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ risc16System_spi_slave_0_0_stub.vhdl
-- Design      : risc16System_spi_slave_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    mosi : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC;
    clk : in STD_LOGIC;
    tx_load : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_latch : in STD_LOGIC;
    miso : out STD_LOGIC;
    rx_recv : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rrdy : out STD_LOGIC;
    trdy : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mosi,sclk,ss,clk,tx_load[7:0],tx_latch,miso,rx_recv[7:0],rrdy,trdy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spi_slave,Vivado 2018.3";
begin
end;
