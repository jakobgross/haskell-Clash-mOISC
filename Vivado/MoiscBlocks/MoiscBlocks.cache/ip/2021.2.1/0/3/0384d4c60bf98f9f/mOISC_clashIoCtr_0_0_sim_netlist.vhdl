-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
-- Date        : Thu Aug 25 15:11:42 2022
-- Host        : JKatana running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mOISC_clashIoCtr_0_0_sim_netlist.vhdl
-- Design      : mOISC_clashIoCtr_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IoCtr is
  port (
    out_INTERRUPT : out STD_LOGIC;
    out_ISR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_CPU_STOP : out STD_LOGIC;
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    CLK : in STD_LOGIC;
    INTERRUPT_BLOCK : in STD_LOGIC;
    ICR_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IOR_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IWR_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IoCtr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IoCtr is
  signal \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_6_n_0\ : STD_LOGIC;
  signal \ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_1_n_0\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2_n_0\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_3_n_0\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_4_n_0\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_5_n_0\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_6_n_0\ : STD_LOGIC;
  signal \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_7_n_0\ : STD_LOGIC;
  signal \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_]\ : STD_LOGIC;
  signal \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel1_interrupt_n_0_]\ : STD_LOGIC;
  signal \^out_interrupt\ : STD_LOGIC;
  signal \^out_isr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][0]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:100,iSTATE2:001,iSTATE3:011,iSTATE4:010,iSTATE5:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][1]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:100,iSTATE2:001,iSTATE3:011,iSTATE4:010,iSTATE5:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][2]\ : label is "iSTATE:110,iSTATE0:000,iSTATE1:100,iSTATE2:001,iSTATE3:011,iSTATE4:010,iSTATE5:101";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of out_CPU_STOP_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \out_ISR[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \out_ISR[1]_INST_0\ : label is "soft_lutpair1";
begin
  out_INTERRUPT <= \^out_interrupt\;
  out_ISR(7 downto 0) <= \^out_isr\(7 downto 0);
\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01010F05"
    )
        port map (
      I0 => state(2),
      I1 => INTERRUPT_BLOCK,
      I2 => state(1),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_]\,
      I4 => state(0),
      I5 => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_2_n_0\,
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate]\(0)
    );
\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_3_n_0\,
      I3 => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_4_n_0\,
      I4 => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_5_n_0\,
      I5 => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_6_n_0\,
      O => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_2_n_0\
    );
\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AFFFF6AFF6AFF6A"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(2),
      I1 => IOR_in(2),
      I2 => IWR_in(2),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(5),
      I4 => IOR_in(5),
      I5 => IWR_in(5),
      O => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_3_n_0\
    );
\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AFFFF6AFF6AFF6A"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(0),
      I1 => IOR_in(0),
      I2 => IWR_in(0),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(1),
      I4 => IOR_in(1),
      I5 => IWR_in(1),
      O => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_4_n_0\
    );
\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AFFFF6AFF6AFF6A"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(3),
      I1 => IOR_in(3),
      I2 => IWR_in(3),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(4),
      I4 => IOR_in(4),
      I5 => IWR_in(4),
      O => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_5_n_0\
    );
\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AFFFF6AFF6AFF6A"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(6),
      I1 => IOR_in(6),
      I2 => IWR_in(6),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(7),
      I4 => IOR_in(7),
      I5 => IWR_in(7),
      O => \FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][0]_i_6_n_0\
    );
\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F050CF0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_]\,
      I1 => INTERRUPT_BLOCK,
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate]\(1)
    );
\FSM_sequential_cds_app_arg[tup3_sel0_ioctrstate][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C08"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_]\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate]\(2)
    );
\FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate]\(0),
      Q => state(0),
      R => RST
    );
\FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate]\(1),
      Q => state(1),
      R => RST
    );
\FSM_sequential_cds_app_arg_reg[tup3_sel0_ioctrstate][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel0_ioctrstate]\(2),
      Q => state(2),
      R => RST
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0280"
    )
        port map (
      I0 => state(1),
      I1 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(0),
      I2 => ICR_in(0),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(0),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(0)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1800"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(1),
      I1 => ICR_in(1),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(1),
      I3 => state(1),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(1)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1800"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(2),
      I1 => ICR_in(2),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(2),
      I3 => state(1),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(2)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1800"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(3),
      I1 => ICR_in(3),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(3),
      I3 => state(1),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(3)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1800"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(4),
      I1 => ICR_in(4),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(4),
      I3 => state(1),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(4)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0280"
    )
        port map (
      I0 => state(1),
      I1 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(5),
      I2 => ICR_in(5),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(5),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(5)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1800"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(6),
      I1 => ICR_in(6),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(6),
      I3 => state(1),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(6)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0090"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => EN,
      I3 => state(2),
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0280"
    )
        port map (
      I0 => state(1),
      I1 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(7),
      I2 => ICR_in(7),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(7),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(7)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => IWR_in(0),
      I2 => IOR_in(0),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(0)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => IWR_in(1),
      I2 => IOR_in(1),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(1)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => IWR_in(2),
      I2 => IOR_in(2),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(2)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => IWR_in(3),
      I2 => IOR_in(3),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(3)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => IWR_in(4),
      I2 => IOR_in(4),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(4)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => IWR_in(5),
      I2 => IOR_in(5),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(5)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => IWR_in(6),
      I2 => IOR_in(6),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(6)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => EN,
      I2 => state(1),
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => IWR_in(7),
      I2 => IOR_in(7),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(7)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => IOR_in(0),
      I1 => IWR_in(0),
      I2 => state(0),
      I3 => state(2),
      I4 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(0),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(0)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => IOR_in(1),
      I1 => IWR_in(1),
      I2 => state(0),
      I3 => state(2),
      I4 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(1),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(1)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => IOR_in(2),
      I1 => IWR_in(2),
      I2 => state(0),
      I3 => state(2),
      I4 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(2),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(2)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => IOR_in(3),
      I1 => IWR_in(3),
      I2 => state(0),
      I3 => state(2),
      I4 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(3),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(3)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => IOR_in(4),
      I1 => IWR_in(4),
      I2 => state(0),
      I3 => state(2),
      I4 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(4),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(4)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => IOR_in(5),
      I1 => IWR_in(5),
      I2 => state(0),
      I3 => state(2),
      I4 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(5),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(5)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => IOR_in(6),
      I1 => IWR_in(6),
      I2 => state(0),
      I3 => state(2),
      I4 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(6),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(6)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1030"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => EN,
      I3 => state(2),
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => IOR_in(7),
      I1 => IWR_in(7),
      I2 => state(0),
      I3 => state(2),
      I4 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(7),
      O => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(7)
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAA2A"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_]\,
      I1 => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2_n_0\,
      I2 => EN,
      I3 => state(2),
      I4 => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_3_n_0\,
      I5 => RST,
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_1_n_0\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_2_n_0\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => state(0),
      I1 => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_4_n_0\,
      I2 => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_5_n_0\,
      I3 => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_6_n_0\,
      I4 => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_7_n_0\,
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_3_n_0\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"181818FFFF181818"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(6),
      I1 => ICR_in(6),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(6),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(7),
      I4 => ICR_in(7),
      I5 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(7),
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_4_n_0\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"181818FFFF181818"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(0),
      I1 => ICR_in(0),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(0),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(5),
      I4 => ICR_in(5),
      I5 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(5),
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_5_n_0\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"181818FFFF181818"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(2),
      I1 => ICR_in(2),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(2),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(1),
      I4 => ICR_in(1),
      I5 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(1),
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_6_n_0\
    );
\cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"181818FFFF181818"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(4),
      I1 => ICR_in(4),
      I2 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(4),
      I3 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(3),
      I4 => ICR_in(3),
      I5 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(3),
      O => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_7_n_0\
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(0),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(0),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(1),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(1),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(2),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(2),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(3),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(3),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(4),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(4),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(5),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(5),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(6),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(6),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(7),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(7),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(0),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(0),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(1),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(1),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(2),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(2),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(3),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(3),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(4),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(4),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(5),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(5),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(6),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(6),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(7),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel1_detect]\(7),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(0),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(0),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(1),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(1),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(2),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(2),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(3),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(3),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(4),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(4),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(5),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(5),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(6),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(6),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\,
      D => \ccase_alt[tup2_sel0_tup3][tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(7),
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel2_detect_prev]\(7),
      R => RST
    );
\cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cds_app_arg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge]_i_1_n_0\,
      Q => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel3_edge_n_0_]\,
      R => '0'
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_isr\(0),
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(0),
      R => RST
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_isr\(1),
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(1),
      R => RST
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_isr\(2),
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(2),
      R => RST
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_isr\(3),
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(3),
      R => RST
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_isr\(4),
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(4),
      R => RST
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_isr\(5),
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(5),
      R => RST
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_isr\(6),
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(6),
      R => RST
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_isr\(7),
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(7),
      R => RST
    );
\cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel1_interrupt]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN,
      D => \^out_interrupt\,
      Q => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel1_interrupt_n_0_]\,
      R => RST
    );
out_CPU_STOP_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AD"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => out_CPU_STOP
    );
out_INTERRUPT_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC8"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel1_interrupt_n_0_]\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => \^out_interrupt\
    );
\out_ISR[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACCCC0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(0),
      I1 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(0),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \^out_isr\(0)
    );
\out_ISR[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACCCC0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(1),
      I1 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(1),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \^out_isr\(1)
    );
\out_ISR[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACCCC0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(2),
      I1 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(2),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \^out_isr\(2)
    );
\out_ISR[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACCCC0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(3),
      I1 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(3),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \^out_isr\(3)
    );
\out_ISR[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACCCC0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(4),
      I1 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(4),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \^out_isr\(4)
    );
\out_ISR[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACCCC0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(5),
      I1 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(5),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \^out_isr\(5)
    );
\out_ISR[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACCCC0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(6),
      I1 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(6),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \^out_isr\(6)
    );
\out_ISR[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACCCC0"
    )
        port map (
      I0 => \cds_app_arg_reg[tup3_sel1_ioctrlregisters][ioctrlregisters_sel0_isr_t]\(7),
      I1 => \cds_app_arg_reg[tup3_sel2_ioctr2fsm][ioctr2fsm_sel0_isr]\(7),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \^out_isr\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    INTERRUPT_BLOCK : in STD_LOGIC;
    IOR_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IWR_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ICR_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_ISR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_INTERRUPT : out STD_LOGIC;
    out_CPU_STOP : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mOISC_clashIoCtr_0_0,IoCtr,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "IoCtr,Vivado 2021.2.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute x_interface_parameter of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of out_INTERRUPT : signal is "xilinx.com:signal:interrupt:1.0 out_INTERRUPT INTERRUPT";
  attribute x_interface_parameter of out_INTERRUPT : signal is "XIL_INTERFACENAME out_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IoCtr
     port map (
      CLK => CLK,
      EN => EN,
      ICR_in(7 downto 0) => ICR_in(7 downto 0),
      INTERRUPT_BLOCK => INTERRUPT_BLOCK,
      IOR_in(7 downto 0) => IOR_in(7 downto 0),
      IWR_in(7 downto 0) => IWR_in(7 downto 0),
      RST => RST,
      out_CPU_STOP => out_CPU_STOP,
      out_INTERRUPT => out_INTERRUPT,
      out_ISR(7 downto 0) => out_ISR(7 downto 0)
    );
end STRUCTURE;
