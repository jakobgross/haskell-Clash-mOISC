-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
-- Date        : Thu Aug 25 12:49:08 2022
-- Host        : JKatana running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/git/clash-moisc/Vivado/MoiscBlocksMonad/MoiscBlocksMonad.gen/sources_1/bd/MonadmOISC/ip/MonadmOISC_clashClockGen_0_0/MonadmOISC_clashClockGen_0_0_sim_netlist.vhdl
-- Design      : MonadmOISC_clashClockGen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MonadmOISC_clashClockGen_0_0 is
  port (
    csr_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cpu_stop_in : in STD_LOGIC;
    clock10khz : in STD_LOGIC;
    clock1mhz : in STD_LOGIC;
    clock50mhz : in STD_LOGIC;
    clock100mhz : in STD_LOGIC;
    clkOut : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MonadmOISC_clashClockGen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MonadmOISC_clashClockGen_0_0 : entity is "MonadmOISC_clashClockGen_0_0,ClockGen,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MonadmOISC_clashClockGen_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of MonadmOISC_clashClockGen_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of MonadmOISC_clashClockGen_0_0 : entity is "ClockGen,Vivado 2021.2.1";
end MonadmOISC_clashClockGen_0_0;

architecture STRUCTURE of MonadmOISC_clashClockGen_0_0 is
  signal clkOut_INST_0_i_1_n_0 : STD_LOGIC;
  signal clkOut_INST_0_i_2_n_0 : STD_LOGIC;
begin
clkOut_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => csr_in(0),
      I1 => clkOut_INST_0_i_1_n_0,
      I2 => clkOut_INST_0_i_2_n_0,
      O => clkOut
    );
clkOut_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => clock100mhz,
      I1 => clock1mhz,
      I2 => csr_in(6),
      I3 => clock50mhz,
      I4 => csr_in(7),
      I5 => clock10khz,
      O => clkOut_INST_0_i_1_n_0
    );
clkOut_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => csr_in(3),
      I1 => csr_in(4),
      I2 => csr_in(1),
      I3 => csr_in(2),
      I4 => cpu_stop_in,
      I5 => csr_in(5),
      O => clkOut_INST_0_i_2_n_0
    );
end STRUCTURE;
