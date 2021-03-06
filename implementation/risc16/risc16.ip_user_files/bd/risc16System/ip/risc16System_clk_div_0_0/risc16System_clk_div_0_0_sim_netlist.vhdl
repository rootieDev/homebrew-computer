-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Sep 15 01:29:35 2019
-- Host        : rootie-ThinkPad-X1 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/risc16/risc16.srcs/sources_1/bd/risc16System/ip/risc16System_clk_div_0_0/risc16System_clk_div_0_0_sim_netlist.vhdl
-- Design      : risc16System_clk_div_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity risc16System_clk_div_0_0_clk_div is
  port (
    clk_out : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of risc16System_clk_div_0_0_clk_div : entity is "clk_div";
end risc16System_clk_div_0_0_clk_div;

architecture STRUCTURE of risc16System_clk_div_0_0_clk_div is
  signal \clk_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \^clk_out\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_count[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_count[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_count[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_count[9]_i_1\ : label is "soft_lutpair1";
begin
  clk_out <= \^clk_out\;
\clk_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_count_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\clk_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_count_reg_n_0_[0]\,
      I1 => \clk_count_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\clk_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_count_reg_n_0_[0]\,
      I1 => \clk_count_reg_n_0_[1]\,
      I2 => \clk_count_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\clk_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_count_reg_n_0_[1]\,
      I1 => \clk_count_reg_n_0_[0]\,
      I2 => \clk_count_reg_n_0_[2]\,
      I3 => \clk_count_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\clk_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clk_count_reg_n_0_[2]\,
      I1 => \clk_count_reg_n_0_[0]\,
      I2 => \clk_count_reg_n_0_[1]\,
      I3 => \clk_count_reg_n_0_[3]\,
      I4 => \clk_count_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\clk_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clk_count_reg_n_0_[3]\,
      I1 => \clk_count_reg_n_0_[1]\,
      I2 => \clk_count_reg_n_0_[0]\,
      I3 => \clk_count_reg_n_0_[2]\,
      I4 => \clk_count_reg_n_0_[4]\,
      I5 => \clk_count_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\clk_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_count[9]_i_2_n_0\,
      I1 => \clk_count_reg_n_0_[6]\,
      O => p_0_in(6)
    );
\clk_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_count[9]_i_2_n_0\,
      I1 => \clk_count_reg_n_0_[6]\,
      I2 => \clk_count_reg_n_0_[7]\,
      O => p_0_in(7)
    );
\clk_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_count_reg_n_0_[6]\,
      I1 => \clk_count[9]_i_2_n_0\,
      I2 => \clk_count_reg_n_0_[7]\,
      I3 => \clk_count_reg_n_0_[8]\,
      O => p_0_in(8)
    );
\clk_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clk_count_reg_n_0_[7]\,
      I1 => \clk_count[9]_i_2_n_0\,
      I2 => \clk_count_reg_n_0_[6]\,
      I3 => \clk_count_reg_n_0_[8]\,
      I4 => \^clk_out\,
      O => p_0_in(9)
    );
\clk_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \clk_count_reg_n_0_[5]\,
      I1 => \clk_count_reg_n_0_[3]\,
      I2 => \clk_count_reg_n_0_[1]\,
      I3 => \clk_count_reg_n_0_[0]\,
      I4 => \clk_count_reg_n_0_[2]\,
      I5 => \clk_count_reg_n_0_[4]\,
      O => \clk_count[9]_i_2_n_0\
    );
\clk_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \clk_count_reg_n_0_[0]\,
      R => '0'
    );
\clk_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \clk_count_reg_n_0_[1]\,
      R => '0'
    );
\clk_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \clk_count_reg_n_0_[2]\,
      R => '0'
    );
\clk_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \clk_count_reg_n_0_[3]\,
      R => '0'
    );
\clk_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \clk_count_reg_n_0_[4]\,
      R => '0'
    );
\clk_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => \clk_count_reg_n_0_[5]\,
      R => '0'
    );
\clk_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => \clk_count_reg_n_0_[6]\,
      R => '0'
    );
\clk_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => \clk_count_reg_n_0_[7]\,
      R => '0'
    );
\clk_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => \clk_count_reg_n_0_[8]\,
      R => '0'
    );
\clk_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => \^clk_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity risc16System_clk_div_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of risc16System_clk_div_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of risc16System_clk_div_0_0 : entity is "risc16System_clk_div_0_0,clk_div,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of risc16System_clk_div_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of risc16System_clk_div_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of risc16System_clk_div_0_0 : entity is "clk_div,Vivado 2018.3";
end risc16System_clk_div_0_0;

architecture STRUCTURE of risc16System_clk_div_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.risc16System_clk_div_0_0_clk_div
     port map (
      clk => clk,
      clk_out => clk_out
    );
end STRUCTURE;
