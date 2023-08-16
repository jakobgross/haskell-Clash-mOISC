--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
--Date        : Thu Aug 25 13:02:05 2022
--Host        : JKatana running 64-bit major release  (build 9200)
--Command     : generate_target MonadmOISC_wrapper.bd
--Design      : MonadmOISC_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MonadmOISC_wrapper is
  port (
    EN_0 : in STD_LOGIC;
    RST_0 : in STD_LOGIC;
    clock100mhz_0 : in STD_LOGIC;
    clock10khz_0 : in STD_LOGIC;
    clock1mhz_0 : in STD_LOGIC;
    clock50mhz_0 : in STD_LOGIC;
    out_status_status_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outside_io_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end MonadmOISC_wrapper;

architecture STRUCTURE of MonadmOISC_wrapper is
  component MonadmOISC is
  port (
    outside_io_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    clock10khz_0 : in STD_LOGIC;
    clock1mhz_0 : in STD_LOGIC;
    clock50mhz_0 : in STD_LOGIC;
    clock100mhz_0 : in STD_LOGIC;
    RST_0 : in STD_LOGIC;
    EN_0 : in STD_LOGIC;
    out_status_status_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component MonadmOISC;
begin
MonadmOISC_i: component MonadmOISC
     port map (
      EN_0 => EN_0,
      RST_0 => RST_0,
      clock100mhz_0 => clock100mhz_0,
      clock10khz_0 => clock10khz_0,
      clock1mhz_0 => clock1mhz_0,
      clock50mhz_0 => clock50mhz_0,
      out_status_status_0(7 downto 0) => out_status_status_0(7 downto 0),
      outside_io_0(7 downto 0) => outside_io_0(7 downto 0)
    );
end STRUCTURE;
