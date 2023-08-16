-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
-- Date        : Thu Aug 25 12:49:15 2022
-- Host        : JKatana running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MonadmOISC_clashAlu_0_0_sim_netlist.vhdl
-- Design      : MonadmOISC_clashAlu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU is
  port (
    in_mcr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_pc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_mem_a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_mem_b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_mem_mem_b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_overflow : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_cmp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_data : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU is
  signal ccmpleq_case_alt_selection_res : STD_LOGIC;
  signal cmpleq_selection_res : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \out_cmp[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_cmp[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal out_data_INST_0_i_10_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_11_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_12_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_12_n_1 : STD_LOGIC;
  signal out_data_INST_0_i_12_n_2 : STD_LOGIC;
  signal out_data_INST_0_i_12_n_3 : STD_LOGIC;
  signal out_data_INST_0_i_13_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_14_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_15_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_16_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_17_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_18_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_19_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_1_n_1 : STD_LOGIC;
  signal out_data_INST_0_i_1_n_2 : STD_LOGIC;
  signal out_data_INST_0_i_1_n_3 : STD_LOGIC;
  signal out_data_INST_0_i_20_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_21_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_22_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_23_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_24_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_25_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_26_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_27_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_28_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_29_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_2_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_2_n_1 : STD_LOGIC;
  signal out_data_INST_0_i_2_n_2 : STD_LOGIC;
  signal out_data_INST_0_i_2_n_3 : STD_LOGIC;
  signal out_data_INST_0_i_30_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_31_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_32_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_33_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_34_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_35_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_36_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_3_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_3_n_1 : STD_LOGIC;
  signal out_data_INST_0_i_3_n_2 : STD_LOGIC;
  signal out_data_INST_0_i_3_n_3 : STD_LOGIC;
  signal out_data_INST_0_i_4_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_5_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_6_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_7_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_8_n_0 : STD_LOGIC;
  signal out_data_INST_0_i_9_n_0 : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_9_n_1\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_9_n_2\ : STD_LOGIC;
  signal \out_overflow[11]_INST_0_i_9_n_3\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_10_n_1\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_10_n_2\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_10_n_3\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_10_n_1\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_10_n_2\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_10_n_3\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_9_n_1\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_9_n_2\ : STD_LOGIC;
  signal \out_overflow[7]_INST_0_i_9_n_3\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_overflow[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \NLW_out_cmp[1]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_out_cmp[1]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_cmp[1]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_cmp[1]_INST_0_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_cmp[1]_INST_0_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_out_data_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_out_data_INST_0_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_out_data_INST_0_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_out_data_INST_0_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_overflow[15]_INST_0_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_out_overflow[15]_INST_0_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \out_cmp[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \out_cmp[1]_INST_0\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \out_cmp[1]_INST_0_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \out_cmp[1]_INST_0_i_6\ : label is 11;
  attribute COMPARATOR_THRESHOLD of out_data_INST_0_i_1 : label is 11;
  attribute COMPARATOR_THRESHOLD of out_data_INST_0_i_12 : label is 11;
  attribute COMPARATOR_THRESHOLD of out_data_INST_0_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of out_data_INST_0_i_3 : label is 11;
  attribute SOFT_HLUTNM of \out_overflow[0]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \out_overflow[0]_INST_0_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \out_overflow[0]_INST_0_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_overflow[10]_INST_0_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_overflow[11]_INST_0_i_10\ : label is "soft_lutpair14";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \out_overflow[11]_INST_0_i_11\ : label is 35;
  attribute SOFT_HLUTNM of \out_overflow[11]_INST_0_i_8\ : label is "soft_lutpair16";
  attribute ADDER_THRESHOLD of \out_overflow[11]_INST_0_i_9\ : label is 35;
  attribute SOFT_HLUTNM of \out_overflow[12]_INST_0_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \out_overflow[12]_INST_0_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out_overflow[13]_INST_0_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \out_overflow[13]_INST_0_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \out_overflow[14]_INST_0_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_overflow[14]_INST_0_i_9\ : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD of \out_overflow[15]_INST_0_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \out_overflow[15]_INST_0_i_6\ : label is 35;
  attribute SOFT_HLUTNM of \out_overflow[15]_INST_0_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \out_overflow[15]_INST_0_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \out_overflow[1]_INST_0_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_overflow[1]_INST_0_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_overflow[2]_INST_0_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_overflow[2]_INST_0_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_overflow[2]_INST_0_i_9\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of \out_overflow[3]_INST_0_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \out_overflow[3]_INST_0_i_11\ : label is 35;
  attribute SOFT_HLUTNM of \out_overflow[3]_INST_0_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_overflow[3]_INST_0_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_overflow[3]_INST_0_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_overflow[4]_INST_0_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_overflow[4]_INST_0_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_overflow[4]_INST_0_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \out_overflow[5]_INST_0_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \out_overflow[5]_INST_0_i_6\ : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD of \out_overflow[7]_INST_0_i_11\ : label is 35;
  attribute SOFT_HLUTNM of \out_overflow[7]_INST_0_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \out_overflow[7]_INST_0_i_17\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD of \out_overflow[7]_INST_0_i_9\ : label is 35;
  attribute SOFT_HLUTNM of \out_overflow[8]_INST_0_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_overflow[8]_INST_0_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_overflow[9]_INST_0_i_10\ : label is "soft_lutpair5";
begin
\out_cmp[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmpleq_selection_res,
      I1 => in_mcr(3),
      I2 => in_mcr(0),
      I3 => in_mcr(2),
      O => out_cmp(0)
    );
\out_cmp[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
        port map (
      I0 => ccmpleq_case_alt_selection_res,
      I1 => cmpleq_selection_res,
      I2 => in_mcr(3),
      I3 => in_mcr(0),
      I4 => in_mcr(2),
      O => out_cmp(1)
    );
\out_cmp[1]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_cmp[1]_INST_0_i_3_n_0\,
      CO(3 downto 2) => \NLW_out_cmp[1]_INST_0_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => ccmpleq_case_alt_selection_res,
      CO(0) => \out_cmp[1]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_out_cmp[1]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \out_cmp[1]_INST_0_i_4_n_0\,
      S(0) => \out_cmp[1]_INST_0_i_5_n_0\
    );
\out_cmp[1]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_a(8),
      I1 => in_mem_b(8),
      I2 => in_mem_b(9),
      I3 => in_mem_a(9),
      O => \out_cmp[1]_INST_0_i_10_n_0\
    );
\out_cmp[1]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(14),
      I1 => in_mem_a(14),
      I2 => in_mem_b(15),
      I3 => in_mem_a(15),
      O => \out_cmp[1]_INST_0_i_11_n_0\
    );
\out_cmp[1]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(12),
      I1 => in_mem_a(12),
      I2 => in_mem_b(13),
      I3 => in_mem_a(13),
      O => \out_cmp[1]_INST_0_i_12_n_0\
    );
\out_cmp[1]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(10),
      I1 => in_mem_a(10),
      I2 => in_mem_b(11),
      I3 => in_mem_a(11),
      O => \out_cmp[1]_INST_0_i_13_n_0\
    );
\out_cmp[1]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(8),
      I1 => in_mem_a(8),
      I2 => in_mem_b(9),
      I3 => in_mem_a(9),
      O => \out_cmp[1]_INST_0_i_14_n_0\
    );
\out_cmp[1]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in_mem_b(9),
      I1 => in_mem_a(9),
      I2 => in_mem_a(11),
      I3 => in_mem_b(11),
      I4 => in_mem_a(10),
      I5 => in_mem_b(10),
      O => \out_cmp[1]_INST_0_i_15_n_0\
    );
\out_cmp[1]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in_mem_b(6),
      I1 => in_mem_a(6),
      I2 => in_mem_a(8),
      I3 => in_mem_b(8),
      I4 => in_mem_a(7),
      I5 => in_mem_b(7),
      O => \out_cmp[1]_INST_0_i_16_n_0\
    );
\out_cmp[1]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in_mem_b(3),
      I1 => in_mem_a(3),
      I2 => in_mem_a(5),
      I3 => in_mem_b(5),
      I4 => in_mem_a(4),
      I5 => in_mem_b(4),
      O => \out_cmp[1]_INST_0_i_17_n_0\
    );
\out_cmp[1]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => in_mem_a(0),
      I2 => in_mem_a(2),
      I3 => in_mem_b(2),
      I4 => in_mem_a(1),
      I5 => in_mem_b(1),
      O => \out_cmp[1]_INST_0_i_18_n_0\
    );
\out_cmp[1]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_a(6),
      I1 => in_mem_b(6),
      I2 => in_mem_b(7),
      I3 => in_mem_a(7),
      O => \out_cmp[1]_INST_0_i_19_n_0\
    );
\out_cmp[1]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_cmp[1]_INST_0_i_6_n_0\,
      CO(3) => cmpleq_selection_res,
      CO(2) => \out_cmp[1]_INST_0_i_2_n_1\,
      CO(1) => \out_cmp[1]_INST_0_i_2_n_2\,
      CO(0) => \out_cmp[1]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \out_cmp[1]_INST_0_i_7_n_0\,
      DI(2) => \out_cmp[1]_INST_0_i_8_n_0\,
      DI(1) => \out_cmp[1]_INST_0_i_9_n_0\,
      DI(0) => \out_cmp[1]_INST_0_i_10_n_0\,
      O(3 downto 0) => \NLW_out_cmp[1]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \out_cmp[1]_INST_0_i_11_n_0\,
      S(2) => \out_cmp[1]_INST_0_i_12_n_0\,
      S(1) => \out_cmp[1]_INST_0_i_13_n_0\,
      S(0) => \out_cmp[1]_INST_0_i_14_n_0\
    );
\out_cmp[1]_INST_0_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_a(4),
      I1 => in_mem_b(4),
      I2 => in_mem_b(5),
      I3 => in_mem_a(5),
      O => \out_cmp[1]_INST_0_i_20_n_0\
    );
\out_cmp[1]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mem_b(2),
      I2 => in_mem_b(3),
      I3 => in_mem_a(3),
      O => \out_cmp[1]_INST_0_i_21_n_0\
    );
\out_cmp[1]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_a(0),
      I1 => in_mem_b(0),
      I2 => in_mem_b(1),
      I3 => in_mem_a(1),
      O => \out_cmp[1]_INST_0_i_22_n_0\
    );
\out_cmp[1]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(6),
      I1 => in_mem_a(6),
      I2 => in_mem_b(7),
      I3 => in_mem_a(7),
      O => \out_cmp[1]_INST_0_i_23_n_0\
    );
\out_cmp[1]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(4),
      I1 => in_mem_a(4),
      I2 => in_mem_b(5),
      I3 => in_mem_a(5),
      O => \out_cmp[1]_INST_0_i_24_n_0\
    );
\out_cmp[1]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(2),
      I1 => in_mem_a(2),
      I2 => in_mem_b(3),
      I3 => in_mem_a(3),
      O => \out_cmp[1]_INST_0_i_25_n_0\
    );
\out_cmp[1]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => in_mem_a(0),
      I2 => in_mem_b(1),
      I3 => in_mem_a(1),
      O => \out_cmp[1]_INST_0_i_26_n_0\
    );
\out_cmp[1]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_cmp[1]_INST_0_i_3_n_0\,
      CO(2) => \out_cmp[1]_INST_0_i_3_n_1\,
      CO(1) => \out_cmp[1]_INST_0_i_3_n_2\,
      CO(0) => \out_cmp[1]_INST_0_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_out_cmp[1]_INST_0_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \out_cmp[1]_INST_0_i_15_n_0\,
      S(2) => \out_cmp[1]_INST_0_i_16_n_0\,
      S(1) => \out_cmp[1]_INST_0_i_17_n_0\,
      S(0) => \out_cmp[1]_INST_0_i_18_n_0\
    );
\out_cmp[1]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(15),
      I1 => in_mem_b(15),
      O => \out_cmp[1]_INST_0_i_4_n_0\
    );
\out_cmp[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in_mem_b(12),
      I1 => in_mem_a(12),
      I2 => in_mem_a(14),
      I3 => in_mem_b(14),
      I4 => in_mem_a(13),
      I5 => in_mem_b(13),
      O => \out_cmp[1]_INST_0_i_5_n_0\
    );
\out_cmp[1]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_cmp[1]_INST_0_i_6_n_0\,
      CO(2) => \out_cmp[1]_INST_0_i_6_n_1\,
      CO(1) => \out_cmp[1]_INST_0_i_6_n_2\,
      CO(0) => \out_cmp[1]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \out_cmp[1]_INST_0_i_19_n_0\,
      DI(2) => \out_cmp[1]_INST_0_i_20_n_0\,
      DI(1) => \out_cmp[1]_INST_0_i_21_n_0\,
      DI(0) => \out_cmp[1]_INST_0_i_22_n_0\,
      O(3 downto 0) => \NLW_out_cmp[1]_INST_0_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \out_cmp[1]_INST_0_i_23_n_0\,
      S(2) => \out_cmp[1]_INST_0_i_24_n_0\,
      S(1) => \out_cmp[1]_INST_0_i_25_n_0\,
      S(0) => \out_cmp[1]_INST_0_i_26_n_0\
    );
\out_cmp[1]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_a(14),
      I1 => in_mem_b(14),
      I2 => in_mem_a(15),
      I3 => in_mem_b(15),
      O => \out_cmp[1]_INST_0_i_7_n_0\
    );
\out_cmp[1]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_a(12),
      I1 => in_mem_b(12),
      I2 => in_mem_b(13),
      I3 => in_mem_a(13),
      O => \out_cmp[1]_INST_0_i_8_n_0\
    );
\out_cmp[1]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_a(10),
      I1 => in_mem_b(10),
      I2 => in_mem_b(11),
      I3 => in_mem_a(11),
      O => \out_cmp[1]_INST_0_i_9_n_0\
    );
out_data_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => in_mcr(3),
      I1 => in_mcr(0),
      I2 => in_mcr(2),
      I3 => out_data_INST_0_i_1_n_0,
      I4 => in_mcr(1),
      I5 => out_data_INST_0_i_2_n_0,
      O => out_data
    );
out_data_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => out_data_INST_0_i_3_n_0,
      CO(3) => out_data_INST_0_i_1_n_0,
      CO(2) => out_data_INST_0_i_1_n_1,
      CO(1) => out_data_INST_0_i_1_n_2,
      CO(0) => out_data_INST_0_i_1_n_3,
      CYINIT => '0',
      DI(3) => out_data_INST_0_i_4_n_0,
      DI(2) => out_data_INST_0_i_5_n_0,
      DI(1) => out_data_INST_0_i_6_n_0,
      DI(0) => out_data_INST_0_i_7_n_0,
      O(3 downto 0) => NLW_out_data_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => out_data_INST_0_i_8_n_0,
      S(2) => out_data_INST_0_i_9_n_0,
      S(1) => out_data_INST_0_i_10_n_0,
      S(0) => out_data_INST_0_i_11_n_0
    );
out_data_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(10),
      I1 => in_mem_b(10),
      I2 => data0(11),
      I3 => in_mem_b(11),
      O => out_data_INST_0_i_10_n_0
    );
out_data_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(8),
      I1 => in_mem_b(8),
      I2 => data0(9),
      I3 => in_mem_b(9),
      O => out_data_INST_0_i_11_n_0
    );
out_data_INST_0_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_data_INST_0_i_12_n_0,
      CO(2) => out_data_INST_0_i_12_n_1,
      CO(1) => out_data_INST_0_i_12_n_2,
      CO(0) => out_data_INST_0_i_12_n_3,
      CYINIT => '0',
      DI(3) => out_data_INST_0_i_29_n_0,
      DI(2) => out_data_INST_0_i_30_n_0,
      DI(1) => out_data_INST_0_i_31_n_0,
      DI(0) => out_data_INST_0_i_32_n_0,
      O(3 downto 0) => NLW_out_data_INST_0_i_12_O_UNCONNECTED(3 downto 0),
      S(3) => out_data_INST_0_i_33_n_0,
      S(2) => out_data_INST_0_i_34_n_0,
      S(1) => out_data_INST_0_i_35_n_0,
      S(0) => out_data_INST_0_i_36_n_0
    );
out_data_INST_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_b(14),
      I1 => data2(14),
      I2 => in_mem_b(15),
      I3 => data2(15),
      O => out_data_INST_0_i_13_n_0
    );
out_data_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_b(12),
      I1 => data2(12),
      I2 => data2(13),
      I3 => in_mem_b(13),
      O => out_data_INST_0_i_14_n_0
    );
out_data_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_b(10),
      I1 => data2(10),
      I2 => data2(11),
      I3 => in_mem_b(11),
      O => out_data_INST_0_i_15_n_0
    );
out_data_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_b(8),
      I1 => data2(8),
      I2 => data2(9),
      I3 => in_mem_b(9),
      O => out_data_INST_0_i_16_n_0
    );
out_data_INST_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(14),
      I1 => data2(14),
      I2 => data2(15),
      I3 => in_mem_b(15),
      O => out_data_INST_0_i_17_n_0
    );
out_data_INST_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(12),
      I1 => data2(12),
      I2 => in_mem_b(13),
      I3 => data2(13),
      O => out_data_INST_0_i_18_n_0
    );
out_data_INST_0_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(10),
      I1 => data2(10),
      I2 => in_mem_b(11),
      I3 => data2(11),
      O => out_data_INST_0_i_19_n_0
    );
out_data_INST_0_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => out_data_INST_0_i_12_n_0,
      CO(3) => out_data_INST_0_i_2_n_0,
      CO(2) => out_data_INST_0_i_2_n_1,
      CO(1) => out_data_INST_0_i_2_n_2,
      CO(0) => out_data_INST_0_i_2_n_3,
      CYINIT => '0',
      DI(3) => out_data_INST_0_i_13_n_0,
      DI(2) => out_data_INST_0_i_14_n_0,
      DI(1) => out_data_INST_0_i_15_n_0,
      DI(0) => out_data_INST_0_i_16_n_0,
      O(3 downto 0) => NLW_out_data_INST_0_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => out_data_INST_0_i_17_n_0,
      S(2) => out_data_INST_0_i_18_n_0,
      S(1) => out_data_INST_0_i_19_n_0,
      S(0) => out_data_INST_0_i_20_n_0
    );
out_data_INST_0_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(8),
      I1 => data2(8),
      I2 => in_mem_b(9),
      I3 => data2(9),
      O => out_data_INST_0_i_20_n_0
    );
out_data_INST_0_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data0(6),
      I1 => in_mem_b(6),
      I2 => in_mem_b(7),
      I3 => data0(7),
      O => out_data_INST_0_i_21_n_0
    );
out_data_INST_0_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data0(4),
      I1 => in_mem_b(4),
      I2 => in_mem_b(5),
      I3 => data0(5),
      O => out_data_INST_0_i_22_n_0
    );
out_data_INST_0_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data0(2),
      I1 => in_mem_b(2),
      I2 => in_mem_b(3),
      I3 => data0(3),
      O => out_data_INST_0_i_23_n_0
    );
out_data_INST_0_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data0(0),
      I1 => in_mem_b(0),
      I2 => in_mem_b(1),
      I3 => data0(1),
      O => out_data_INST_0_i_24_n_0
    );
out_data_INST_0_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(6),
      I1 => in_mem_b(6),
      I2 => data0(7),
      I3 => in_mem_b(7),
      O => out_data_INST_0_i_25_n_0
    );
out_data_INST_0_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(4),
      I1 => in_mem_b(4),
      I2 => data0(5),
      I3 => in_mem_b(5),
      O => out_data_INST_0_i_26_n_0
    );
out_data_INST_0_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(2),
      I1 => in_mem_b(2),
      I2 => data0(3),
      I3 => in_mem_b(3),
      O => out_data_INST_0_i_27_n_0
    );
out_data_INST_0_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(0),
      I1 => in_mem_b(0),
      I2 => data0(1),
      I3 => in_mem_b(1),
      O => out_data_INST_0_i_28_n_0
    );
out_data_INST_0_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_b(6),
      I1 => data2(6),
      I2 => data2(7),
      I3 => in_mem_b(7),
      O => out_data_INST_0_i_29_n_0
    );
out_data_INST_0_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_data_INST_0_i_3_n_0,
      CO(2) => out_data_INST_0_i_3_n_1,
      CO(1) => out_data_INST_0_i_3_n_2,
      CO(0) => out_data_INST_0_i_3_n_3,
      CYINIT => '0',
      DI(3) => out_data_INST_0_i_21_n_0,
      DI(2) => out_data_INST_0_i_22_n_0,
      DI(1) => out_data_INST_0_i_23_n_0,
      DI(0) => out_data_INST_0_i_24_n_0,
      O(3 downto 0) => NLW_out_data_INST_0_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => out_data_INST_0_i_25_n_0,
      S(2) => out_data_INST_0_i_26_n_0,
      S(1) => out_data_INST_0_i_27_n_0,
      S(0) => out_data_INST_0_i_28_n_0
    );
out_data_INST_0_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_b(4),
      I1 => data2(4),
      I2 => data2(5),
      I3 => in_mem_b(5),
      O => out_data_INST_0_i_30_n_0
    );
out_data_INST_0_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_b(2),
      I1 => data2(2),
      I2 => data2(3),
      I3 => in_mem_b(3),
      O => out_data_INST_0_i_31_n_0
    );
out_data_INST_0_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => data2(0),
      I2 => data2(1),
      I3 => in_mem_b(1),
      O => out_data_INST_0_i_32_n_0
    );
out_data_INST_0_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(6),
      I1 => data2(6),
      I2 => in_mem_b(7),
      I3 => data2(7),
      O => out_data_INST_0_i_33_n_0
    );
out_data_INST_0_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(4),
      I1 => data2(4),
      I2 => in_mem_b(5),
      I3 => data2(5),
      O => out_data_INST_0_i_34_n_0
    );
out_data_INST_0_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(2),
      I1 => data2(2),
      I2 => in_mem_b(3),
      I3 => data2(3),
      O => out_data_INST_0_i_35_n_0
    );
out_data_INST_0_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => data2(0),
      I2 => in_mem_b(1),
      I3 => data2(1),
      O => out_data_INST_0_i_36_n_0
    );
out_data_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data0(14),
      I1 => in_mem_b(14),
      I2 => data0(15),
      I3 => in_mem_b(15),
      O => out_data_INST_0_i_4_n_0
    );
out_data_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data0(12),
      I1 => in_mem_b(12),
      I2 => in_mem_b(13),
      I3 => data0(13),
      O => out_data_INST_0_i_5_n_0
    );
out_data_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data0(10),
      I1 => in_mem_b(10),
      I2 => in_mem_b(11),
      I3 => data0(11),
      O => out_data_INST_0_i_6_n_0
    );
out_data_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data0(8),
      I1 => in_mem_b(8),
      I2 => in_mem_b(9),
      I3 => data0(9),
      O => out_data_INST_0_i_7_n_0
    );
out_data_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(14),
      I1 => in_mem_b(14),
      I2 => in_mem_b(15),
      I3 => data0(15),
      O => out_data_INST_0_i_8_n_0
    );
out_data_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data0(12),
      I1 => in_mem_b(12),
      I2 => data0(13),
      I3 => in_mem_b(13),
      O => out_data_INST_0_i_9_n_0
    );
\out_overflow[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[0]_INST_0_i_1_n_0\,
      I1 => \out_overflow[0]_INST_0_i_2_n_0\,
      O => out_overflow(0),
      S => in_mcr(3)
    );
\out_overflow[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[0]_INST_0_i_3_n_0\,
      I1 => \out_overflow[0]_INST_0_i_4_n_0\,
      I2 => in_mcr(2),
      I3 => \out_overflow[0]_INST_0_i_5_n_0\,
      I4 => in_mcr(1),
      I5 => \out_overflow[0]_INST_0_i_6_n_0\,
      O => \out_overflow[0]_INST_0_i_1_n_0\
    );
\out_overflow[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(12),
      I1 => in_mem_b(4),
      I2 => in_mem_a(2),
      I3 => in_mem_b(8),
      I4 => in_mem_a(3),
      I5 => in_mem_b(0),
      O => \out_overflow[0]_INST_0_i_10_n_0\
    );
\out_overflow[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => in_mcr(2),
      I2 => \out_overflow[0]_INST_0_i_7_n_0\,
      O => \out_overflow[0]_INST_0_i_2_n_0\
    );
\out_overflow[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(0),
      I2 => in_mem_b(0),
      O => \out_overflow[0]_INST_0_i_3_n_0\
    );
\out_overflow[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(0),
      I1 => in_mem_b(0),
      I2 => in_mcr(0),
      I3 => \out_overflow[0]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[0]_INST_0_i_4_n_0\
    );
\out_overflow[0]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => in_mem_a(0),
      I2 => \out_overflow[0]_INST_0_i_9_n_0\,
      I3 => in_mcr(0),
      I4 => data2(0),
      O => \out_overflow[0]_INST_0_i_5_n_0\
    );
\out_overflow[0]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(0),
      I1 => in_mcr(0),
      I2 => data0(0),
      O => \out_overflow[0]_INST_0_i_6_n_0\
    );
\out_overflow[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(0),
      I1 => in_mcr(1),
      I2 => in_pc(0),
      I3 => in_mcr(0),
      I4 => in_mem_b(0),
      I5 => in_mem_a(0),
      O => \out_overflow[0]_INST_0_i_7_n_0\
    );
\out_overflow[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[3]_INST_0_i_12_n_0\,
      I1 => \out_overflow[1]_INST_0_i_10_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[2]_INST_0_i_10_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[0]_INST_0_i_10_n_0\,
      O => \out_overflow[0]_INST_0_i_8_n_0\
    );
\out_overflow[0]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mem_b(0),
      I2 => in_mem_a(3),
      I3 => in_mem_a(1),
      O => \out_overflow[0]_INST_0_i_9_n_0\
    );
\out_overflow[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(10),
      I1 => \out_overflow[10]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[10]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[10]_INST_0_i_3_n_0\,
      O => out_overflow(10)
    );
\out_overflow[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(10),
      I1 => in_mcr(1),
      I2 => in_pc(10),
      I3 => in_mcr(0),
      I4 => in_mem_b(10),
      I5 => in_mem_a(10),
      O => \out_overflow[10]_INST_0_i_1_n_0\
    );
\out_overflow[10]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mem_b(15),
      I2 => in_mem_a(3),
      I3 => in_mem_b(12),
      O => \out_overflow[10]_INST_0_i_10_n_0\
    );
\out_overflow[10]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => in_mem_b(14),
      I1 => in_mem_a(2),
      I2 => in_mem_b(15),
      I3 => in_mem_a(3),
      I4 => in_mem_b(10),
      O => \out_overflow[10]_INST_0_i_11_n_0\
    );
\out_overflow[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[10]_INST_0_i_4_n_0\,
      I1 => \out_overflow[10]_INST_0_i_5_n_0\,
      O => \out_overflow[10]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[10]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[10]_INST_0_i_6_n_0\,
      I1 => \out_overflow[10]_INST_0_i_7_n_0\,
      O => \out_overflow[10]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(10),
      I1 => in_mem_b(10),
      I2 => in_mcr(0),
      I3 => \out_overflow[10]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[10]_INST_0_i_4_n_0\
    );
\out_overflow[10]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(10),
      I2 => in_mem_b(10),
      O => \out_overflow[10]_INST_0_i_5_n_0\
    );
\out_overflow[10]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(10),
      I1 => in_mcr(0),
      I2 => data0(10),
      O => \out_overflow[10]_INST_0_i_6_n_0\
    );
\out_overflow[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[11]_INST_0_i_10_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[10]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(10),
      O => \out_overflow[10]_INST_0_i_7_n_0\
    );
\out_overflow[10]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \out_overflow[11]_INST_0_i_12_n_0\,
      I1 => in_mem_a(0),
      I2 => \out_overflow[10]_INST_0_i_10_n_0\,
      I3 => in_mem_a(1),
      I4 => \out_overflow[10]_INST_0_i_11_n_0\,
      O => \out_overflow[10]_INST_0_i_8_n_0\
    );
\out_overflow[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => in_mem_b(3),
      I1 => in_mem_a(2),
      I2 => in_mem_b(7),
      I3 => in_mem_a(3),
      I4 => in_mem_a(1),
      I5 => \out_overflow[12]_INST_0_i_11_n_0\,
      O => \out_overflow[10]_INST_0_i_9_n_0\
    );
\out_overflow[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(11),
      I1 => \out_overflow[11]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[11]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[11]_INST_0_i_3_n_0\,
      O => out_overflow(11)
    );
\out_overflow[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(11),
      I1 => in_mcr(1),
      I2 => in_pc(11),
      I3 => in_mcr(0),
      I4 => in_mem_b(11),
      I5 => in_mem_a(11),
      O => \out_overflow[11]_INST_0_i_1_n_0\
    );
\out_overflow[11]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[11]_INST_0_i_17_n_0\,
      I1 => in_mem_a(1),
      I2 => \out_overflow[13]_INST_0_i_12_n_0\,
      O => \out_overflow[11]_INST_0_i_10_n_0\
    );
\out_overflow[11]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_overflow[7]_INST_0_i_11_n_0\,
      CO(3) => \out_overflow[11]_INST_0_i_11_n_0\,
      CO(2) => \out_overflow[11]_INST_0_i_11_n_1\,
      CO(1) => \out_overflow[11]_INST_0_i_11_n_2\,
      CO(0) => \out_overflow[11]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in_mem_a(11 downto 8),
      O(3 downto 0) => data2(11 downto 8),
      S(3) => \out_overflow[11]_INST_0_i_18_n_0\,
      S(2) => \out_overflow[11]_INST_0_i_19_n_0\,
      S(1) => \out_overflow[11]_INST_0_i_20_n_0\,
      S(0) => \out_overflow[11]_INST_0_i_21_n_0\
    );
\out_overflow[11]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => in_mem_b(13),
      I1 => in_mem_a(1),
      I2 => in_mem_a(2),
      I3 => in_mem_b(15),
      I4 => in_mem_a(3),
      I5 => in_mem_b(11),
      O => \out_overflow[11]_INST_0_i_12_n_0\
    );
\out_overflow[11]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(11),
      I1 => in_mem_b(11),
      O => \out_overflow[11]_INST_0_i_13_n_0\
    );
\out_overflow[11]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(10),
      I1 => in_mem_b(10),
      O => \out_overflow[11]_INST_0_i_14_n_0\
    );
\out_overflow[11]_INST_0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(9),
      I1 => in_mem_b(9),
      O => \out_overflow[11]_INST_0_i_15_n_0\
    );
\out_overflow[11]_INST_0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(8),
      I1 => in_mem_b(8),
      O => \out_overflow[11]_INST_0_i_16_n_0\
    );
\out_overflow[11]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => in_mem_b(4),
      I1 => in_mem_a(2),
      I2 => in_mem_b(0),
      I3 => in_mem_a(3),
      I4 => in_mem_b(8),
      O => \out_overflow[11]_INST_0_i_17_n_0\
    );
\out_overflow[11]_INST_0_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(11),
      I1 => in_mem_b(11),
      O => \out_overflow[11]_INST_0_i_18_n_0\
    );
\out_overflow[11]_INST_0_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(10),
      I1 => in_mem_b(10),
      O => \out_overflow[11]_INST_0_i_19_n_0\
    );
\out_overflow[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[11]_INST_0_i_4_n_0\,
      I1 => \out_overflow[11]_INST_0_i_5_n_0\,
      O => \out_overflow[11]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[11]_INST_0_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(9),
      I1 => in_mem_b(9),
      O => \out_overflow[11]_INST_0_i_20_n_0\
    );
\out_overflow[11]_INST_0_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(8),
      I1 => in_mem_b(8),
      O => \out_overflow[11]_INST_0_i_21_n_0\
    );
\out_overflow[11]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[11]_INST_0_i_6_n_0\,
      I1 => \out_overflow[11]_INST_0_i_7_n_0\,
      O => \out_overflow[11]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(11),
      I1 => in_mem_b(11),
      I2 => in_mcr(0),
      I3 => \out_overflow[11]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[11]_INST_0_i_4_n_0\
    );
\out_overflow[11]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(11),
      I2 => in_mem_b(11),
      O => \out_overflow[11]_INST_0_i_5_n_0\
    );
\out_overflow[11]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(11),
      I1 => in_mcr(0),
      I2 => data0(11),
      O => \out_overflow[11]_INST_0_i_6_n_0\
    );
\out_overflow[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[12]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[11]_INST_0_i_10_n_0\,
      I4 => in_mcr(0),
      I5 => data2(11),
      O => \out_overflow[11]_INST_0_i_7_n_0\
    );
\out_overflow[11]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[12]_INST_0_i_10_n_0\,
      I1 => in_mem_a(0),
      I2 => \out_overflow[11]_INST_0_i_12_n_0\,
      O => \out_overflow[11]_INST_0_i_8_n_0\
    );
\out_overflow[11]_INST_0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_overflow[7]_INST_0_i_9_n_0\,
      CO(3) => \out_overflow[11]_INST_0_i_9_n_0\,
      CO(2) => \out_overflow[11]_INST_0_i_9_n_1\,
      CO(1) => \out_overflow[11]_INST_0_i_9_n_2\,
      CO(0) => \out_overflow[11]_INST_0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in_mem_b(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \out_overflow[11]_INST_0_i_13_n_0\,
      S(2) => \out_overflow[11]_INST_0_i_14_n_0\,
      S(1) => \out_overflow[11]_INST_0_i_15_n_0\,
      S(0) => \out_overflow[11]_INST_0_i_16_n_0\
    );
\out_overflow[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(12),
      I1 => \out_overflow[12]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[12]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[12]_INST_0_i_3_n_0\,
      O => out_overflow(12)
    );
\out_overflow[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(12),
      I1 => in_mcr(1),
      I2 => in_pc(12),
      I3 => in_mcr(0),
      I4 => in_mem_b(12),
      I5 => in_mem_a(12),
      O => \out_overflow[12]_INST_0_i_1_n_0\
    );
\out_overflow[12]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => in_mem_b(14),
      I1 => in_mem_a(1),
      I2 => in_mem_a(2),
      I3 => in_mem_b(15),
      I4 => in_mem_a(3),
      I5 => in_mem_b(12),
      O => \out_overflow[12]_INST_0_i_10_n_0\
    );
\out_overflow[12]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => in_mem_b(5),
      I1 => in_mem_a(2),
      I2 => in_mem_b(1),
      I3 => in_mem_a(3),
      I4 => in_mem_b(9),
      O => \out_overflow[12]_INST_0_i_11_n_0\
    );
\out_overflow[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[12]_INST_0_i_4_n_0\,
      I1 => \out_overflow[12]_INST_0_i_5_n_0\,
      O => \out_overflow[12]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[12]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[12]_INST_0_i_6_n_0\,
      I1 => \out_overflow[12]_INST_0_i_7_n_0\,
      O => \out_overflow[12]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(12),
      I1 => in_mem_b(12),
      I2 => in_mcr(0),
      I3 => \out_overflow[12]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[12]_INST_0_i_4_n_0\
    );
\out_overflow[12]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(12),
      I2 => in_mem_b(12),
      O => \out_overflow[12]_INST_0_i_5_n_0\
    );
\out_overflow[12]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(12),
      I1 => in_mcr(0),
      I2 => data0(12),
      O => \out_overflow[12]_INST_0_i_6_n_0\
    );
\out_overflow[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[13]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[12]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(12),
      O => \out_overflow[12]_INST_0_i_7_n_0\
    );
\out_overflow[12]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[13]_INST_0_i_11_n_0\,
      I1 => in_mem_a(0),
      I2 => \out_overflow[12]_INST_0_i_10_n_0\,
      O => \out_overflow[12]_INST_0_i_8_n_0\
    );
\out_overflow[12]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[12]_INST_0_i_11_n_0\,
      I1 => in_mem_a(1),
      I2 => \out_overflow[14]_INST_0_i_10_n_0\,
      O => \out_overflow[12]_INST_0_i_9_n_0\
    );
\out_overflow[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(13),
      I1 => \out_overflow[13]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[13]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[13]_INST_0_i_3_n_0\,
      O => out_overflow(13)
    );
\out_overflow[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(13),
      I1 => in_mcr(1),
      I2 => in_pc(13),
      I3 => in_mcr(0),
      I4 => in_mem_b(13),
      I5 => in_mem_a(13),
      O => \out_overflow[13]_INST_0_i_1_n_0\
    );
\out_overflow[13]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => in_mem_a(1),
      I1 => in_mem_a(2),
      I2 => in_mem_b(15),
      I3 => in_mem_a(3),
      I4 => in_mem_b(14),
      O => \out_overflow[13]_INST_0_i_10_n_0\
    );
\out_overflow[13]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => in_mem_a(1),
      I1 => in_mem_a(2),
      I2 => in_mem_b(15),
      I3 => in_mem_a(3),
      I4 => in_mem_b(13),
      O => \out_overflow[13]_INST_0_i_11_n_0\
    );
\out_overflow[13]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => in_mem_b(6),
      I1 => in_mem_a(2),
      I2 => in_mem_b(2),
      I3 => in_mem_a(3),
      I4 => in_mem_b(10),
      O => \out_overflow[13]_INST_0_i_12_n_0\
    );
\out_overflow[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[13]_INST_0_i_4_n_0\,
      I1 => \out_overflow[13]_INST_0_i_5_n_0\,
      O => \out_overflow[13]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[13]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[13]_INST_0_i_6_n_0\,
      I1 => \out_overflow[13]_INST_0_i_7_n_0\,
      O => \out_overflow[13]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(13),
      I1 => in_mem_b(13),
      I2 => in_mcr(0),
      I3 => \out_overflow[13]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[13]_INST_0_i_4_n_0\
    );
\out_overflow[13]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(13),
      I2 => in_mem_b(13),
      O => \out_overflow[13]_INST_0_i_5_n_0\
    );
\out_overflow[13]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(13),
      I1 => in_mcr(0),
      I2 => data0(13),
      O => \out_overflow[13]_INST_0_i_6_n_0\
    );
\out_overflow[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[14]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[13]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(13),
      O => \out_overflow[13]_INST_0_i_7_n_0\
    );
\out_overflow[13]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[13]_INST_0_i_10_n_0\,
      I1 => in_mem_a(0),
      I2 => \out_overflow[13]_INST_0_i_11_n_0\,
      O => \out_overflow[13]_INST_0_i_8_n_0\
    );
\out_overflow[13]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[13]_INST_0_i_12_n_0\,
      I1 => in_mem_a(1),
      I2 => \out_overflow[15]_INST_0_i_19_n_0\,
      O => \out_overflow[13]_INST_0_i_9_n_0\
    );
\out_overflow[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(14),
      I1 => \out_overflow[14]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[14]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[14]_INST_0_i_3_n_0\,
      O => out_overflow(14)
    );
\out_overflow[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(14),
      I1 => in_mcr(1),
      I2 => in_pc(14),
      I3 => in_mcr(0),
      I4 => in_mem_b(14),
      I5 => in_mem_a(14),
      O => \out_overflow[14]_INST_0_i_1_n_0\
    );
\out_overflow[14]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => in_mem_b(7),
      I1 => in_mem_a(2),
      I2 => in_mem_b(3),
      I3 => in_mem_a(3),
      I4 => in_mem_b(11),
      O => \out_overflow[14]_INST_0_i_10_n_0\
    );
\out_overflow[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[14]_INST_0_i_4_n_0\,
      I1 => \out_overflow[14]_INST_0_i_5_n_0\,
      O => \out_overflow[14]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[14]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[14]_INST_0_i_6_n_0\,
      I1 => \out_overflow[14]_INST_0_i_7_n_0\,
      O => \out_overflow[14]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(14),
      I1 => in_mem_b(14),
      I2 => in_mcr(0),
      I3 => \out_overflow[14]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[14]_INST_0_i_4_n_0\
    );
\out_overflow[14]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(14),
      I2 => in_mem_b(14),
      O => \out_overflow[14]_INST_0_i_5_n_0\
    );
\out_overflow[14]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(14),
      I1 => in_mcr(0),
      I2 => data0(14),
      O => \out_overflow[14]_INST_0_i_6_n_0\
    );
\out_overflow[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[15]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[14]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(14),
      O => \out_overflow[14]_INST_0_i_7_n_0\
    );
\out_overflow[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => in_mem_a(0),
      I1 => in_mem_a(1),
      I2 => in_mem_a(2),
      I3 => in_mem_b(15),
      I4 => in_mem_a(3),
      I5 => in_mem_b(14),
      O => \out_overflow[14]_INST_0_i_8_n_0\
    );
\out_overflow[14]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[14]_INST_0_i_10_n_0\,
      I1 => in_mem_a(1),
      I2 => \out_overflow[15]_INST_0_i_17_n_0\,
      O => \out_overflow[14]_INST_0_i_9_n_0\
    );
\out_overflow[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(15),
      I1 => \out_overflow[15]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[15]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[15]_INST_0_i_3_n_0\,
      O => out_overflow(15)
    );
\out_overflow[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(15),
      I1 => in_mcr(1),
      I2 => in_pc(15),
      I3 => in_mcr(0),
      I4 => in_mem_b(15),
      I5 => in_mem_a(15),
      O => \out_overflow[15]_INST_0_i_1_n_0\
    );
\out_overflow[15]_INST_0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_overflow[11]_INST_0_i_11_n_0\,
      CO(3) => \NLW_out_overflow[15]_INST_0_i_10_CO_UNCONNECTED\(3),
      CO(2) => \out_overflow[15]_INST_0_i_10_n_1\,
      CO(1) => \out_overflow[15]_INST_0_i_10_n_2\,
      CO(0) => \out_overflow[15]_INST_0_i_10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => in_mem_a(14 downto 12),
      O(3 downto 0) => data2(15 downto 12),
      S(3) => \out_overflow[15]_INST_0_i_21_n_0\,
      S(2) => \out_overflow[15]_INST_0_i_22_n_0\,
      S(1) => \out_overflow[15]_INST_0_i_23_n_0\,
      S(0) => \out_overflow[15]_INST_0_i_24_n_0\
    );
\out_overflow[15]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(15),
      I1 => in_mem_b(15),
      O => \out_overflow[15]_INST_0_i_11_n_0\
    );
\out_overflow[15]_INST_0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(14),
      I1 => in_mem_b(14),
      O => \out_overflow[15]_INST_0_i_12_n_0\
    );
\out_overflow[15]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(13),
      I1 => in_mem_b(13),
      O => \out_overflow[15]_INST_0_i_13_n_0\
    );
\out_overflow[15]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(12),
      I1 => in_mem_b(12),
      O => \out_overflow[15]_INST_0_i_14_n_0\
    );
\out_overflow[15]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => in_mem_a(6),
      I1 => in_mem_a(7),
      I2 => in_mem_a(4),
      I3 => in_mem_a(5),
      O => \out_overflow[15]_INST_0_i_15_n_0\
    );
\out_overflow[15]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => in_mem_a(10),
      I1 => in_mem_a(11),
      I2 => in_mem_a(8),
      I3 => in_mem_a(9),
      O => \out_overflow[15]_INST_0_i_16_n_0\
    );
\out_overflow[15]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(1),
      I1 => in_mem_b(9),
      I2 => in_mem_a(2),
      I3 => in_mem_b(5),
      I4 => in_mem_a(3),
      I5 => in_mem_b(13),
      O => \out_overflow[15]_INST_0_i_17_n_0\
    );
\out_overflow[15]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(3),
      I1 => in_mem_b(11),
      I2 => in_mem_a(2),
      I3 => in_mem_b(7),
      I4 => in_mem_a(3),
      I5 => in_mem_b(15),
      O => \out_overflow[15]_INST_0_i_18_n_0\
    );
\out_overflow[15]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => in_mem_b(8),
      I2 => in_mem_a(2),
      I3 => in_mem_b(4),
      I4 => in_mem_a(3),
      I5 => in_mem_b(12),
      O => \out_overflow[15]_INST_0_i_19_n_0\
    );
\out_overflow[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7DC0"
    )
        port map (
      I0 => in_mcr(1),
      I1 => in_mem_a(15),
      I2 => in_mcr(0),
      I3 => in_mem_b(15),
      O => \out_overflow[15]_INST_0_i_2_n_0\
    );
\out_overflow[15]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(2),
      I1 => in_mem_b(10),
      I2 => in_mem_a(2),
      I3 => in_mem_b(6),
      I4 => in_mem_a(3),
      I5 => in_mem_b(14),
      O => \out_overflow[15]_INST_0_i_20_n_0\
    );
\out_overflow[15]_INST_0_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(15),
      I1 => in_mem_b(15),
      O => \out_overflow[15]_INST_0_i_21_n_0\
    );
\out_overflow[15]_INST_0_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(14),
      I1 => in_mem_b(14),
      O => \out_overflow[15]_INST_0_i_22_n_0\
    );
\out_overflow[15]_INST_0_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(13),
      I1 => in_mem_b(13),
      O => \out_overflow[15]_INST_0_i_23_n_0\
    );
\out_overflow[15]_INST_0_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(12),
      I1 => in_mem_b(12),
      O => \out_overflow[15]_INST_0_i_24_n_0\
    );
\out_overflow[15]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[15]_INST_0_i_4_n_0\,
      I1 => \out_overflow[15]_INST_0_i_5_n_0\,
      O => \out_overflow[15]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[15]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(15),
      I1 => in_mcr(0),
      I2 => data0(15),
      O => \out_overflow[15]_INST_0_i_4_n_0\
    );
\out_overflow[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[15]_INST_0_i_8_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[15]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(15),
      O => \out_overflow[15]_INST_0_i_5_n_0\
    );
\out_overflow[15]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_overflow[11]_INST_0_i_9_n_0\,
      CO(3) => \NLW_out_overflow[15]_INST_0_i_6_CO_UNCONNECTED\(3),
      CO(2) => \out_overflow[15]_INST_0_i_6_n_1\,
      CO(1) => \out_overflow[15]_INST_0_i_6_n_2\,
      CO(0) => \out_overflow[15]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => in_mem_b(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \out_overflow[15]_INST_0_i_11_n_0\,
      S(2) => \out_overflow[15]_INST_0_i_12_n_0\,
      S(1) => \out_overflow[15]_INST_0_i_13_n_0\,
      S(0) => \out_overflow[15]_INST_0_i_14_n_0\
    );
\out_overflow[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => in_mem_a(13),
      I1 => in_mem_a(12),
      I2 => in_mem_a(15),
      I3 => in_mem_a(14),
      I4 => \out_overflow[15]_INST_0_i_15_n_0\,
      I5 => \out_overflow[15]_INST_0_i_16_n_0\,
      O => \out_overflow[15]_INST_0_i_7_n_0\
    );
\out_overflow[15]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_17_n_0\,
      I1 => in_mem_a(1),
      I2 => \out_overflow[15]_INST_0_i_18_n_0\,
      O => \out_overflow[15]_INST_0_i_8_n_0\
    );
\out_overflow[15]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_19_n_0\,
      I1 => in_mem_a(1),
      I2 => \out_overflow[15]_INST_0_i_20_n_0\,
      O => \out_overflow[15]_INST_0_i_9_n_0\
    );
\out_overflow[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[1]_INST_0_i_1_n_0\,
      I1 => \out_overflow[1]_INST_0_i_2_n_0\,
      O => out_overflow(1),
      S => in_mcr(3)
    );
\out_overflow[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[1]_INST_0_i_3_n_0\,
      I1 => \out_overflow[1]_INST_0_i_4_n_0\,
      I2 => in_mcr(2),
      I3 => \out_overflow[1]_INST_0_i_5_n_0\,
      I4 => in_mcr(1),
      I5 => \out_overflow[1]_INST_0_i_6_n_0\,
      O => \out_overflow[1]_INST_0_i_1_n_0\
    );
\out_overflow[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(13),
      I1 => in_mem_b(5),
      I2 => in_mem_a(2),
      I3 => in_mem_b(9),
      I4 => in_mem_a(3),
      I5 => in_mem_b(1),
      O => \out_overflow[1]_INST_0_i_10_n_0\
    );
\out_overflow[1]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_b(1),
      I1 => in_mcr(2),
      I2 => \out_overflow[1]_INST_0_i_7_n_0\,
      O => \out_overflow[1]_INST_0_i_2_n_0\
    );
\out_overflow[1]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(1),
      I2 => in_mem_b(1),
      O => \out_overflow[1]_INST_0_i_3_n_0\
    );
\out_overflow[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(1),
      I1 => in_mem_b(1),
      I2 => in_mcr(0),
      I3 => \out_overflow[1]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[1]_INST_0_i_4_n_0\
    );
\out_overflow[1]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[1]_INST_0_i_9_n_0\,
      I2 => in_mcr(0),
      I3 => data2(1),
      O => \out_overflow[1]_INST_0_i_5_n_0\
    );
\out_overflow[1]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(1),
      I1 => in_mcr(0),
      I2 => data0(1),
      O => \out_overflow[1]_INST_0_i_6_n_0\
    );
\out_overflow[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(1),
      I1 => in_mcr(1),
      I2 => in_pc(1),
      I3 => in_mcr(0),
      I4 => in_mem_b(1),
      I5 => in_mem_a(1),
      O => \out_overflow[1]_INST_0_i_7_n_0\
    );
\out_overflow[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[4]_INST_0_i_10_n_0\,
      I1 => \out_overflow[2]_INST_0_i_10_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[3]_INST_0_i_12_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[1]_INST_0_i_10_n_0\,
      O => \out_overflow[1]_INST_0_i_8_n_0\
    );
\out_overflow[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => in_mem_a(0),
      I2 => in_mem_a(2),
      I3 => in_mem_b(1),
      I4 => in_mem_a(3),
      I5 => in_mem_a(1),
      O => \out_overflow[1]_INST_0_i_9_n_0\
    );
\out_overflow[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[2]_INST_0_i_1_n_0\,
      I1 => \out_overflow[2]_INST_0_i_2_n_0\,
      O => out_overflow(2),
      S => in_mcr(3)
    );
\out_overflow[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[2]_INST_0_i_3_n_0\,
      I1 => \out_overflow[2]_INST_0_i_4_n_0\,
      I2 => in_mcr(2),
      I3 => \out_overflow[2]_INST_0_i_5_n_0\,
      I4 => in_mcr(1),
      I5 => \out_overflow[2]_INST_0_i_6_n_0\,
      O => \out_overflow[2]_INST_0_i_1_n_0\
    );
\out_overflow[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(14),
      I1 => in_mem_b(6),
      I2 => in_mem_a(2),
      I3 => in_mem_b(10),
      I4 => in_mem_a(3),
      I5 => in_mem_b(2),
      O => \out_overflow[2]_INST_0_i_10_n_0\
    );
\out_overflow[2]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_b(2),
      I1 => in_mcr(2),
      I2 => \out_overflow[2]_INST_0_i_7_n_0\,
      O => \out_overflow[2]_INST_0_i_2_n_0\
    );
\out_overflow[2]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(2),
      I2 => in_mem_b(2),
      O => \out_overflow[2]_INST_0_i_3_n_0\
    );
\out_overflow[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mem_b(2),
      I2 => in_mcr(0),
      I3 => \out_overflow[2]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[2]_INST_0_i_4_n_0\
    );
\out_overflow[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[3]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[2]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(2),
      O => \out_overflow[2]_INST_0_i_5_n_0\
    );
\out_overflow[2]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mcr(0),
      I2 => data0(2),
      O => \out_overflow[2]_INST_0_i_6_n_0\
    );
\out_overflow[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(2),
      I1 => in_mcr(1),
      I2 => in_pc(2),
      I3 => in_mcr(0),
      I4 => in_mem_b(2),
      I5 => in_mem_a(2),
      O => \out_overflow[2]_INST_0_i_7_n_0\
    );
\out_overflow[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[5]_INST_0_i_10_n_0\,
      I1 => \out_overflow[3]_INST_0_i_12_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[4]_INST_0_i_10_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[2]_INST_0_i_10_n_0\,
      O => \out_overflow[2]_INST_0_i_8_n_0\
    );
\out_overflow[2]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mem_b(1),
      I2 => in_mem_a(3),
      I3 => in_mem_a(1),
      O => \out_overflow[2]_INST_0_i_9_n_0\
    );
\out_overflow[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[3]_INST_0_i_1_n_0\,
      I1 => \out_overflow[3]_INST_0_i_2_n_0\,
      O => out_overflow(3),
      S => in_mcr(3)
    );
\out_overflow[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[3]_INST_0_i_3_n_0\,
      I1 => \out_overflow[3]_INST_0_i_4_n_0\,
      I2 => in_mcr(2),
      I3 => \out_overflow[3]_INST_0_i_5_n_0\,
      I4 => in_mcr(1),
      I5 => \out_overflow[3]_INST_0_i_6_n_0\,
      O => \out_overflow[3]_INST_0_i_1_n_0\
    );
\out_overflow[3]_INST_0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_overflow[3]_INST_0_i_10_n_0\,
      CO(2) => \out_overflow[3]_INST_0_i_10_n_1\,
      CO(1) => \out_overflow[3]_INST_0_i_10_n_2\,
      CO(0) => \out_overflow[3]_INST_0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in_mem_a(3 downto 0),
      O(3 downto 0) => data2(3 downto 0),
      S(3) => \out_overflow[3]_INST_0_i_13_n_0\,
      S(2) => \out_overflow[3]_INST_0_i_14_n_0\,
      S(1) => \out_overflow[3]_INST_0_i_15_n_0\,
      S(0) => \out_overflow[3]_INST_0_i_16_n_0\
    );
\out_overflow[3]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_overflow[3]_INST_0_i_11_n_0\,
      CO(2) => \out_overflow[3]_INST_0_i_11_n_1\,
      CO(1) => \out_overflow[3]_INST_0_i_11_n_2\,
      CO(0) => \out_overflow[3]_INST_0_i_11_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => in_mem_b(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \out_overflow[3]_INST_0_i_17_n_0\,
      S(2) => \out_overflow[3]_INST_0_i_18_n_0\,
      S(1) => \out_overflow[3]_INST_0_i_19_n_0\,
      S(0) => \out_overflow[3]_INST_0_i_20_n_0\
    );
\out_overflow[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(15),
      I1 => in_mem_b(7),
      I2 => in_mem_a(2),
      I3 => in_mem_b(11),
      I4 => in_mem_a(3),
      I5 => in_mem_b(3),
      O => \out_overflow[3]_INST_0_i_12_n_0\
    );
\out_overflow[3]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(3),
      I1 => in_mem_b(3),
      O => \out_overflow[3]_INST_0_i_13_n_0\
    );
\out_overflow[3]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mem_b(2),
      O => \out_overflow[3]_INST_0_i_14_n_0\
    );
\out_overflow[3]_INST_0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(1),
      I1 => in_mem_b(1),
      O => \out_overflow[3]_INST_0_i_15_n_0\
    );
\out_overflow[3]_INST_0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(0),
      I1 => in_mem_b(0),
      O => \out_overflow[3]_INST_0_i_16_n_0\
    );
\out_overflow[3]_INST_0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(3),
      I1 => in_mem_b(3),
      O => \out_overflow[3]_INST_0_i_17_n_0\
    );
\out_overflow[3]_INST_0_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mem_b(2),
      O => \out_overflow[3]_INST_0_i_18_n_0\
    );
\out_overflow[3]_INST_0_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(1),
      I1 => in_mem_b(1),
      O => \out_overflow[3]_INST_0_i_19_n_0\
    );
\out_overflow[3]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_b(3),
      I1 => in_mcr(2),
      I2 => \out_overflow[3]_INST_0_i_7_n_0\,
      O => \out_overflow[3]_INST_0_i_2_n_0\
    );
\out_overflow[3]_INST_0_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(0),
      I1 => in_mem_b(0),
      O => \out_overflow[3]_INST_0_i_20_n_0\
    );
\out_overflow[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(3),
      I2 => in_mem_b(3),
      O => \out_overflow[3]_INST_0_i_3_n_0\
    );
\out_overflow[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(3),
      I1 => in_mem_b(3),
      I2 => in_mcr(0),
      I3 => \out_overflow[3]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[3]_INST_0_i_4_n_0\
    );
\out_overflow[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[4]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[3]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(3),
      O => \out_overflow[3]_INST_0_i_5_n_0\
    );
\out_overflow[3]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(3),
      I1 => in_mcr(0),
      I2 => data0(3),
      O => \out_overflow[3]_INST_0_i_6_n_0\
    );
\out_overflow[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(3),
      I1 => in_mcr(1),
      I2 => in_pc(3),
      I3 => in_mcr(0),
      I4 => in_mem_b(3),
      I5 => in_mem_a(3),
      O => \out_overflow[3]_INST_0_i_7_n_0\
    );
\out_overflow[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[6]_INST_0_i_10_n_0\,
      I1 => \out_overflow[4]_INST_0_i_10_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[5]_INST_0_i_10_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[3]_INST_0_i_12_n_0\,
      O => \out_overflow[3]_INST_0_i_8_n_0\
    );
\out_overflow[3]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => in_mem_a(1),
      I2 => in_mem_a(3),
      I3 => in_mem_b(2),
      I4 => in_mem_a(2),
      O => \out_overflow[3]_INST_0_i_9_n_0\
    );
\out_overflow[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[4]_INST_0_i_1_n_0\,
      I1 => \out_overflow[4]_INST_0_i_2_n_0\,
      O => out_overflow(4),
      S => in_mcr(3)
    );
\out_overflow[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[4]_INST_0_i_3_n_0\,
      I1 => \out_overflow[4]_INST_0_i_4_n_0\,
      I2 => in_mcr(2),
      I3 => \out_overflow[4]_INST_0_i_5_n_0\,
      I4 => in_mcr(1),
      I5 => \out_overflow[4]_INST_0_i_6_n_0\,
      O => \out_overflow[4]_INST_0_i_1_n_0\
    );
\out_overflow[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(15),
      I1 => in_mem_b(8),
      I2 => in_mem_a(2),
      I3 => in_mem_b(12),
      I4 => in_mem_a(3),
      I5 => in_mem_b(4),
      O => \out_overflow[4]_INST_0_i_10_n_0\
    );
\out_overflow[4]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_b(4),
      I1 => in_mcr(2),
      I2 => \out_overflow[4]_INST_0_i_7_n_0\,
      O => \out_overflow[4]_INST_0_i_2_n_0\
    );
\out_overflow[4]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(4),
      I2 => in_mem_b(4),
      O => \out_overflow[4]_INST_0_i_3_n_0\
    );
\out_overflow[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(4),
      I1 => in_mem_b(4),
      I2 => in_mcr(0),
      I3 => \out_overflow[4]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[4]_INST_0_i_4_n_0\
    );
\out_overflow[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[5]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[4]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(4),
      O => \out_overflow[4]_INST_0_i_5_n_0\
    );
\out_overflow[4]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(4),
      I1 => in_mcr(0),
      I2 => data0(4),
      O => \out_overflow[4]_INST_0_i_6_n_0\
    );
\out_overflow[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(4),
      I1 => in_mcr(1),
      I2 => in_pc(4),
      I3 => in_mcr(0),
      I4 => in_mem_b(4),
      I5 => in_mem_a(4),
      O => \out_overflow[4]_INST_0_i_7_n_0\
    );
\out_overflow[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[7]_INST_0_i_12_n_0\,
      I1 => \out_overflow[5]_INST_0_i_10_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[6]_INST_0_i_10_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[4]_INST_0_i_10_n_0\,
      O => \out_overflow[4]_INST_0_i_8_n_0\
    );
\out_overflow[4]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => in_mem_b(1),
      I1 => in_mem_a(1),
      I2 => in_mem_a(3),
      I3 => in_mem_b(3),
      I4 => in_mem_a(2),
      O => \out_overflow[4]_INST_0_i_9_n_0\
    );
\out_overflow[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[5]_INST_0_i_1_n_0\,
      I1 => \out_overflow[5]_INST_0_i_2_n_0\,
      O => out_overflow(5),
      S => in_mcr(3)
    );
\out_overflow[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[5]_INST_0_i_3_n_0\,
      I1 => \out_overflow[5]_INST_0_i_4_n_0\,
      I2 => in_mcr(2),
      I3 => \out_overflow[5]_INST_0_i_5_n_0\,
      I4 => in_mcr(1),
      I5 => \out_overflow[5]_INST_0_i_6_n_0\,
      O => \out_overflow[5]_INST_0_i_1_n_0\
    );
\out_overflow[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(15),
      I1 => in_mem_b(9),
      I2 => in_mem_a(2),
      I3 => in_mem_b(13),
      I4 => in_mem_a(3),
      I5 => in_mem_b(5),
      O => \out_overflow[5]_INST_0_i_10_n_0\
    );
\out_overflow[5]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_b(5),
      I1 => in_mcr(2),
      I2 => \out_overflow[5]_INST_0_i_7_n_0\,
      O => \out_overflow[5]_INST_0_i_2_n_0\
    );
\out_overflow[5]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(5),
      I2 => in_mem_b(5),
      O => \out_overflow[5]_INST_0_i_3_n_0\
    );
\out_overflow[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(5),
      I1 => in_mem_b(5),
      I2 => in_mcr(0),
      I3 => \out_overflow[5]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[5]_INST_0_i_4_n_0\
    );
\out_overflow[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[6]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[5]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(5),
      O => \out_overflow[5]_INST_0_i_5_n_0\
    );
\out_overflow[5]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(5),
      I1 => in_mcr(0),
      I2 => data0(5),
      O => \out_overflow[5]_INST_0_i_6_n_0\
    );
\out_overflow[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(5),
      I1 => in_mcr(1),
      I2 => in_pc(5),
      I3 => in_mcr(0),
      I4 => in_mem_b(5),
      I5 => in_mem_a(5),
      O => \out_overflow[5]_INST_0_i_7_n_0\
    );
\out_overflow[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[8]_INST_0_i_10_n_0\,
      I1 => \out_overflow[6]_INST_0_i_10_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[7]_INST_0_i_12_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[5]_INST_0_i_10_n_0\,
      O => \out_overflow[5]_INST_0_i_8_n_0\
    );
\out_overflow[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => in_mem_b(2),
      I1 => in_mem_a(1),
      I2 => in_mem_b(0),
      I3 => in_mem_a(2),
      I4 => in_mem_b(4),
      I5 => in_mem_a(3),
      O => \out_overflow[5]_INST_0_i_9_n_0\
    );
\out_overflow[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(6),
      I1 => \out_overflow[6]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[6]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[6]_INST_0_i_3_n_0\,
      O => out_overflow(6)
    );
\out_overflow[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(6),
      I1 => in_mcr(1),
      I2 => in_pc(6),
      I3 => in_mcr(0),
      I4 => in_mem_b(6),
      I5 => in_mem_a(6),
      O => \out_overflow[6]_INST_0_i_1_n_0\
    );
\out_overflow[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(15),
      I1 => in_mem_b(10),
      I2 => in_mem_a(2),
      I3 => in_mem_b(14),
      I4 => in_mem_a(3),
      I5 => in_mem_b(6),
      O => \out_overflow[6]_INST_0_i_10_n_0\
    );
\out_overflow[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[6]_INST_0_i_4_n_0\,
      I1 => \out_overflow[6]_INST_0_i_5_n_0\,
      O => \out_overflow[6]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[6]_INST_0_i_6_n_0\,
      I1 => \out_overflow[6]_INST_0_i_7_n_0\,
      O => \out_overflow[6]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(6),
      I1 => in_mem_b(6),
      I2 => in_mcr(0),
      I3 => \out_overflow[6]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[6]_INST_0_i_4_n_0\
    );
\out_overflow[6]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(6),
      I2 => in_mem_b(6),
      O => \out_overflow[6]_INST_0_i_5_n_0\
    );
\out_overflow[6]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(6),
      I1 => in_mcr(0),
      I2 => data0(6),
      O => \out_overflow[6]_INST_0_i_6_n_0\
    );
\out_overflow[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[7]_INST_0_i_10_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[6]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(6),
      O => \out_overflow[6]_INST_0_i_7_n_0\
    );
\out_overflow[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[9]_INST_0_i_11_n_0\,
      I1 => \out_overflow[7]_INST_0_i_12_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[8]_INST_0_i_10_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[6]_INST_0_i_10_n_0\,
      O => \out_overflow[6]_INST_0_i_8_n_0\
    );
\out_overflow[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => in_mem_b(3),
      I1 => in_mem_a(1),
      I2 => in_mem_b(1),
      I3 => in_mem_a(2),
      I4 => in_mem_b(5),
      I5 => in_mem_a(3),
      O => \out_overflow[6]_INST_0_i_9_n_0\
    );
\out_overflow[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(7),
      I1 => \out_overflow[7]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[7]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[7]_INST_0_i_3_n_0\,
      O => out_overflow(7)
    );
\out_overflow[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(7),
      I1 => in_mcr(1),
      I2 => in_pc(7),
      I3 => in_mcr(0),
      I4 => in_mem_b(7),
      I5 => in_mem_a(7),
      O => \out_overflow[7]_INST_0_i_1_n_0\
    );
\out_overflow[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => in_mem_b(0),
      I1 => in_mem_a(2),
      I2 => in_mem_b(4),
      I3 => in_mem_a(3),
      I4 => in_mem_a(1),
      I5 => \out_overflow[7]_INST_0_i_17_n_0\,
      O => \out_overflow[7]_INST_0_i_10_n_0\
    );
\out_overflow[7]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_overflow[3]_INST_0_i_10_n_0\,
      CO(3) => \out_overflow[7]_INST_0_i_11_n_0\,
      CO(2) => \out_overflow[7]_INST_0_i_11_n_1\,
      CO(1) => \out_overflow[7]_INST_0_i_11_n_2\,
      CO(0) => \out_overflow[7]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in_mem_a(7 downto 4),
      O(3 downto 0) => data2(7 downto 4),
      S(3) => \out_overflow[7]_INST_0_i_18_n_0\,
      S(2) => \out_overflow[7]_INST_0_i_19_n_0\,
      S(1) => \out_overflow[7]_INST_0_i_20_n_0\,
      S(0) => \out_overflow[7]_INST_0_i_21_n_0\
    );
\out_overflow[7]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => in_mem_b(11),
      I1 => in_mem_a(2),
      I2 => in_mem_b(15),
      I3 => in_mem_a(3),
      I4 => in_mem_b(7),
      O => \out_overflow[7]_INST_0_i_12_n_0\
    );
\out_overflow[7]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(7),
      I1 => in_mem_b(7),
      O => \out_overflow[7]_INST_0_i_13_n_0\
    );
\out_overflow[7]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(6),
      I1 => in_mem_b(6),
      O => \out_overflow[7]_INST_0_i_14_n_0\
    );
\out_overflow[7]_INST_0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(5),
      I1 => in_mem_b(5),
      O => \out_overflow[7]_INST_0_i_15_n_0\
    );
\out_overflow[7]_INST_0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_mem_a(4),
      I1 => in_mem_b(4),
      O => \out_overflow[7]_INST_0_i_16_n_0\
    );
\out_overflow[7]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => in_mem_b(2),
      I1 => in_mem_a(2),
      I2 => in_mem_b(6),
      I3 => in_mem_a(3),
      O => \out_overflow[7]_INST_0_i_17_n_0\
    );
\out_overflow[7]_INST_0_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(7),
      I1 => in_mem_b(7),
      O => \out_overflow[7]_INST_0_i_18_n_0\
    );
\out_overflow[7]_INST_0_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(6),
      I1 => in_mem_b(6),
      O => \out_overflow[7]_INST_0_i_19_n_0\
    );
\out_overflow[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[7]_INST_0_i_4_n_0\,
      I1 => \out_overflow[7]_INST_0_i_5_n_0\,
      O => \out_overflow[7]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[7]_INST_0_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(5),
      I1 => in_mem_b(5),
      O => \out_overflow[7]_INST_0_i_20_n_0\
    );
\out_overflow[7]_INST_0_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_mem_a(4),
      I1 => in_mem_b(4),
      O => \out_overflow[7]_INST_0_i_21_n_0\
    );
\out_overflow[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[7]_INST_0_i_6_n_0\,
      I1 => \out_overflow[7]_INST_0_i_7_n_0\,
      O => \out_overflow[7]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(7),
      I1 => in_mem_b(7),
      I2 => in_mcr(0),
      I3 => \out_overflow[7]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[7]_INST_0_i_4_n_0\
    );
\out_overflow[7]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(7),
      I2 => in_mem_b(7),
      O => \out_overflow[7]_INST_0_i_5_n_0\
    );
\out_overflow[7]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(7),
      I1 => in_mcr(0),
      I2 => data0(7),
      O => \out_overflow[7]_INST_0_i_6_n_0\
    );
\out_overflow[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[8]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[7]_INST_0_i_10_n_0\,
      I4 => in_mcr(0),
      I5 => data2(7),
      O => \out_overflow[7]_INST_0_i_7_n_0\
    );
\out_overflow[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[10]_INST_0_i_11_n_0\,
      I1 => \out_overflow[8]_INST_0_i_10_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[9]_INST_0_i_11_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[7]_INST_0_i_12_n_0\,
      O => \out_overflow[7]_INST_0_i_8_n_0\
    );
\out_overflow[7]_INST_0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_overflow[3]_INST_0_i_11_n_0\,
      CO(3) => \out_overflow[7]_INST_0_i_9_n_0\,
      CO(2) => \out_overflow[7]_INST_0_i_9_n_1\,
      CO(1) => \out_overflow[7]_INST_0_i_9_n_2\,
      CO(0) => \out_overflow[7]_INST_0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in_mem_b(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \out_overflow[7]_INST_0_i_13_n_0\,
      S(2) => \out_overflow[7]_INST_0_i_14_n_0\,
      S(1) => \out_overflow[7]_INST_0_i_15_n_0\,
      S(0) => \out_overflow[7]_INST_0_i_16_n_0\
    );
\out_overflow[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(8),
      I1 => \out_overflow[8]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[8]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[8]_INST_0_i_3_n_0\,
      O => out_overflow(8)
    );
\out_overflow[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(8),
      I1 => in_mcr(1),
      I2 => in_pc(8),
      I3 => in_mcr(0),
      I4 => in_mem_b(8),
      I5 => in_mem_a(8),
      O => \out_overflow[8]_INST_0_i_1_n_0\
    );
\out_overflow[8]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => in_mem_b(12),
      I1 => in_mem_a(2),
      I2 => in_mem_b(15),
      I3 => in_mem_a(3),
      I4 => in_mem_b(8),
      O => \out_overflow[8]_INST_0_i_10_n_0\
    );
\out_overflow[8]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => in_mem_b(3),
      I1 => in_mem_a(2),
      I2 => in_mem_b(7),
      I3 => in_mem_a(3),
      O => \out_overflow[8]_INST_0_i_11_n_0\
    );
\out_overflow[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[8]_INST_0_i_4_n_0\,
      I1 => \out_overflow[8]_INST_0_i_5_n_0\,
      O => \out_overflow[8]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[8]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[8]_INST_0_i_6_n_0\,
      I1 => \out_overflow[8]_INST_0_i_7_n_0\,
      O => \out_overflow[8]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(8),
      I1 => in_mem_b(8),
      I2 => in_mcr(0),
      I3 => \out_overflow[8]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[8]_INST_0_i_4_n_0\
    );
\out_overflow[8]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(8),
      I2 => in_mem_b(8),
      O => \out_overflow[8]_INST_0_i_5_n_0\
    );
\out_overflow[8]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(8),
      I1 => in_mcr(0),
      I2 => data0(8),
      O => \out_overflow[8]_INST_0_i_6_n_0\
    );
\out_overflow[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[9]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[8]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(8),
      O => \out_overflow[8]_INST_0_i_7_n_0\
    );
\out_overflow[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[9]_INST_0_i_10_n_0\,
      I1 => \out_overflow[9]_INST_0_i_11_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[10]_INST_0_i_11_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[8]_INST_0_i_10_n_0\,
      O => \out_overflow[8]_INST_0_i_8_n_0\
    );
\out_overflow[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => in_mem_b(1),
      I1 => in_mem_a(2),
      I2 => in_mem_b(5),
      I3 => in_mem_a(3),
      I4 => in_mem_a(1),
      I5 => \out_overflow[8]_INST_0_i_11_n_0\,
      O => \out_overflow[8]_INST_0_i_9_n_0\
    );
\out_overflow[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => in_mem_b(9),
      I1 => \out_overflow[9]_INST_0_i_1_n_0\,
      I2 => in_mcr(3),
      I3 => \out_overflow[9]_INST_0_i_2_n_0\,
      I4 => in_mcr(2),
      I5 => \out_overflow[9]_INST_0_i_3_n_0\,
      O => out_overflow(9)
    );
\out_overflow[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B833"
    )
        port map (
      I0 => in_mem_mem_b(9),
      I1 => in_mcr(1),
      I2 => in_pc(9),
      I3 => in_mcr(0),
      I4 => in_mem_b(9),
      I5 => in_mem_a(9),
      O => \out_overflow[9]_INST_0_i_1_n_0\
    );
\out_overflow[9]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => in_mem_a(2),
      I1 => in_mem_b(15),
      I2 => in_mem_a(3),
      I3 => in_mem_b(11),
      O => \out_overflow[9]_INST_0_i_10_n_0\
    );
\out_overflow[9]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => in_mem_b(13),
      I1 => in_mem_a(2),
      I2 => in_mem_b(15),
      I3 => in_mem_a(3),
      I4 => in_mem_b(9),
      O => \out_overflow[9]_INST_0_i_11_n_0\
    );
\out_overflow[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[9]_INST_0_i_4_n_0\,
      I1 => \out_overflow[9]_INST_0_i_5_n_0\,
      O => \out_overflow[9]_INST_0_i_2_n_0\,
      S => in_mcr(1)
    );
\out_overflow[9]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \out_overflow[9]_INST_0_i_6_n_0\,
      I1 => \out_overflow[9]_INST_0_i_7_n_0\,
      O => \out_overflow[9]_INST_0_i_3_n_0\,
      S => in_mcr(1)
    );
\out_overflow[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => in_mem_a(9),
      I1 => in_mem_b(9),
      I2 => in_mcr(0),
      I3 => \out_overflow[9]_INST_0_i_8_n_0\,
      I4 => \out_overflow[15]_INST_0_i_7_n_0\,
      I5 => in_mem_b(15),
      O => \out_overflow[9]_INST_0_i_4_n_0\
    );
\out_overflow[9]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => in_mcr(0),
      I1 => in_mem_a(9),
      I2 => in_mem_b(9),
      O => \out_overflow[9]_INST_0_i_5_n_0\
    );
\out_overflow[9]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_mem_a(9),
      I1 => in_mcr(0),
      I2 => data0(9),
      O => \out_overflow[9]_INST_0_i_6_n_0\
    );
\out_overflow[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \out_overflow[15]_INST_0_i_7_n_0\,
      I1 => \out_overflow[10]_INST_0_i_9_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[9]_INST_0_i_9_n_0\,
      I4 => in_mcr(0),
      I5 => data2(9),
      O => \out_overflow[9]_INST_0_i_7_n_0\
    );
\out_overflow[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out_overflow[10]_INST_0_i_10_n_0\,
      I1 => \out_overflow[10]_INST_0_i_11_n_0\,
      I2 => in_mem_a(0),
      I3 => \out_overflow[9]_INST_0_i_10_n_0\,
      I4 => in_mem_a(1),
      I5 => \out_overflow[9]_INST_0_i_11_n_0\,
      O => \out_overflow[9]_INST_0_i_8_n_0\
    );
\out_overflow[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => in_mem_b(2),
      I1 => in_mem_a(2),
      I2 => in_mem_b(6),
      I3 => in_mem_a(3),
      I4 => in_mem_a(1),
      I5 => \out_overflow[11]_INST_0_i_17_n_0\,
      O => \out_overflow[9]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    in_mcr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_pc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_mem_a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_mem_b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_mem_mem_b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_overflow : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_cmp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_data : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MonadmOISC_clashAlu_0_0,ALU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ALU,Vivado 2021.2.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU
     port map (
      in_mcr(3 downto 0) => in_mcr(3 downto 0),
      in_mem_a(15 downto 0) => in_mem_a(15 downto 0),
      in_mem_b(15 downto 0) => in_mem_b(15 downto 0),
      in_mem_mem_b(15 downto 0) => in_mem_mem_b(15 downto 0),
      in_pc(15 downto 0) => in_pc(15 downto 0),
      out_cmp(1 downto 0) => out_cmp(1 downto 0),
      out_data => out_data,
      out_overflow(15 downto 0) => out_overflow(15 downto 0)
    );
end STRUCTURE;
