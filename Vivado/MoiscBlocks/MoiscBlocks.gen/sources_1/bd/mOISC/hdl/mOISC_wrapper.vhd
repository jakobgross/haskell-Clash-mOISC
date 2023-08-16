--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
--Date        : Thu Aug 25 15:08:21 2022
--Host        : JKatana running 64-bit major release  (build 9200)
--Command     : generate_target mOISC_wrapper.bd
--Design      : mOISC_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mOISC_wrapper is
  port (
    RST : in STD_LOGIC;
    outside_io_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    sysclk : in STD_LOGIC
  );
end mOISC_wrapper;

architecture STRUCTURE of mOISC_wrapper is
  component mOISC is
  port (
    outside_io_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    RST : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  end component mOISC;
begin
mOISC_i: component mOISC
     port map (
      RST => RST,
      outside_io_0(7 downto 0) => outside_io_0(7 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
