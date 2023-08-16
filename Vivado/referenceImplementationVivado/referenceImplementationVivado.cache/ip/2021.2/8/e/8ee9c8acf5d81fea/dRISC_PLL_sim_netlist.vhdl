-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Apr 26 14:46:31 2022
-- Host        : JKatana running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dRISC_PLL_sim_netlist.vhdl
-- Design      : dRISC_PLL
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dRISC_PLL_clk_wiz is
  port (
    c0 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    c2 : out STD_LOGIC;
    c3 : out STD_LOGIC;
    locked : out STD_LOGIC;
    inclk0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dRISC_PLL_clk_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dRISC_PLL_clk_wiz is
  signal c0_dRISC_PLL : STD_LOGIC;
  signal c1_dRISC_PLL : STD_LOGIC;
  signal c2_dRISC_PLL : STD_LOGIC;
  signal c3_dRISC_PLL : STD_LOGIC;
  signal clkfbout_buf_dRISC_PLL : STD_LOGIC;
  signal clkfbout_dRISC_PLL : STD_LOGIC;
  signal inclk0_dRISC_PLL : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout3_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout4_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_dRISC_PLL,
      O => clkfbout_buf_dRISC_PLL
    );
clkin1_bufg: unisim.vcomponents.BUFG
     port map (
      I => inclk0,
      O => inclk0_dRISC_PLL
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => c0_dRISC_PLL,
      O => c0
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => c1_dRISC_PLL,
      O => c1
    );
clkout3_buf: unisim.vcomponents.BUFG
     port map (
      I => c2_dRISC_PLL,
      O => c2
    );
clkout4_buf: unisim.vcomponents.BUFG
     port map (
      I => c3_dRISC_PLL,
      O => c3
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 9,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 9,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 18,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 90,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 128,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_dRISC_PLL,
      CLKFBOUT => clkfbout_dRISC_PLL,
      CLKIN1 => inclk0_dRISC_PLL,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => c0_dRISC_PLL,
      CLKOUT1 => c1_dRISC_PLL,
      CLKOUT2 => c2_dRISC_PLL,
      CLKOUT3 => c3_dRISC_PLL,
      CLKOUT4 => NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    c0 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    c2 : out STD_LOGIC;
    c3 : out STD_LOGIC;
    locked : out STD_LOGIC;
    inclk0 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dRISC_PLL_clk_wiz
     port map (
      c0 => c0,
      c1 => c1,
      c2 => c2,
      c3 => c3,
      inclk0 => inclk0,
      locked => locked
    );
end STRUCTURE;
