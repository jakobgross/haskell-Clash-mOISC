-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
-- Date        : Sat Apr 30 20:31:55 2022
-- Host        : JKatana running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/git/clash-moisc/Vivado/referenceImplementationVivado/referenceImplementationVivado.sim/sim_1/synth/func/xsim/dRISC_func_synth.vhd
-- Design      : dRISC
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dRISC_ALU is
  port (
    data0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data8 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \E_reg[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DATAuu_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DATAuu_reg[10]_0\ : out STD_LOGIC;
    \DATAuu_reg[15]_1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \DATAuu_reg[0]_0\ : out STD_LOGIC;
    \DATAuu_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DATAuu_reg[15]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \NETWORK0.F_MODE_OFFSET_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \CMPuu_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DATAuu[4]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DATAuu[8]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DATAuu[12]_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \DATAuu[0]_i_7\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DATAuu[4]_i_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DATAuu[8]_i_7\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DATAuu[12]_i_9\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CMPLEQ1_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CMPuu_reg[2]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CMPuu_reg[2]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CMPLEQ1_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CMPLEQ1_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CMPuu_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CMPuu_reg[0]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \NETWORK0.PCi_new_reg[16]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \F_MODE_OFFSET__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CPU_STOPio : in STD_LOGIC;
    \DATAuu_reg[15]_3\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLKuu0_BUFG : in STD_LOGIC;
    \DATAuu_reg[0]_1\ : in STD_LOGIC;
    \CMPuu_reg[2]_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end dRISC_ALU;

architecture STRUCTURE of dRISC_ALU is
  signal \ARG_carry__0_n_0\ : STD_LOGIC;
  signal \ARG_carry__0_n_1\ : STD_LOGIC;
  signal \ARG_carry__0_n_2\ : STD_LOGIC;
  signal \ARG_carry__0_n_3\ : STD_LOGIC;
  signal \ARG_carry__1_n_0\ : STD_LOGIC;
  signal \ARG_carry__1_n_1\ : STD_LOGIC;
  signal \ARG_carry__1_n_2\ : STD_LOGIC;
  signal \ARG_carry__1_n_3\ : STD_LOGIC;
  signal \ARG_carry__2_n_1\ : STD_LOGIC;
  signal \ARG_carry__2_n_2\ : STD_LOGIC;
  signal \ARG_carry__2_n_3\ : STD_LOGIC;
  signal ARG_carry_n_0 : STD_LOGIC;
  signal ARG_carry_n_1 : STD_LOGIC;
  signal ARG_carry_n_2 : STD_LOGIC;
  signal ARG_carry_n_3 : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \CMPLEQ1_carry__0_n_1\ : STD_LOGIC;
  signal \CMPLEQ1_carry__0_n_2\ : STD_LOGIC;
  signal \CMPLEQ1_carry__0_n_3\ : STD_LOGIC;
  signal CMPLEQ1_carry_n_0 : STD_LOGIC;
  signal CMPLEQ1_carry_n_1 : STD_LOGIC;
  signal CMPLEQ1_carry_n_2 : STD_LOGIC;
  signal CMPLEQ1_carry_n_3 : STD_LOGIC;
  signal \CMPLEQ1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \CMPLEQ1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \CMPLEQ1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \CMPLEQ1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \CMPLEQ1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \CMPLEQ1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \CMPLEQ1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^datauu_reg[15]_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NETWORK0.PCi_new[16]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[16]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[16]_i_7_n_0\ : STD_LOGIC;
  signal \NLW_ARG_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ARG_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_CMPLEQ1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CMPLEQ1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CMPLEQ1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CMPLEQ1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NETWORK0.PCi_new_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_NETWORK0.PCi_new_reg[16]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ARG_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ARG_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \ARG_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \ARG_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \ARG_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \ARG_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \ARG_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \ARG_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \ARG_inferred__0/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \ARG_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \ARG_inferred__0/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \ARG_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \ARG_inferred__0/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \ARG_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \ARG_inferred__0/i__carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \ARG_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of CMPLEQ1_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of CMPLEQ1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \CMPLEQ1_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \CMPLEQ1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \CMPLEQ1_inferred__0/i__carry\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \CMPLEQ1_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \CMPLEQ1_inferred__0/i__carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \CMPLEQ1_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \DATAuu_reg[15]_1\(15 downto 0) <= \^datauu_reg[15]_1\(15 downto 0);
ARG_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ARG_carry_n_0,
      CO(2) => ARG_carry_n_1,
      CO(1) => ARG_carry_n_2,
      CO(0) => ARG_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\ARG_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ARG_carry_n_0,
      CO(3) => \ARG_carry__0_n_0\,
      CO(2) => \ARG_carry__0_n_1\,
      CO(1) => \ARG_carry__0_n_2\,
      CO(0) => \ARG_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3 downto 0) => \DATAuu[4]_i_3\(3 downto 0)
    );
\ARG_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_carry__0_n_0\,
      CO(3) => \ARG_carry__1_n_0\,
      CO(2) => \ARG_carry__1_n_1\,
      CO(1) => \ARG_carry__1_n_2\,
      CO(0) => \ARG_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3 downto 0) => \DATAuu[8]_i_3\(3 downto 0)
    );
\ARG_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_carry__1_n_0\,
      CO(3) => \NLW_ARG_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \ARG_carry__2_n_1\,
      CO(1) => \ARG_carry__2_n_2\,
      CO(0) => \ARG_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3 downto 0) => \DATAuu[12]_i_4\(3 downto 0)
    );
\ARG_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG_inferred__0/i__carry_n_0\,
      CO(2) => \ARG_inferred__0/i__carry_n_1\,
      CO(1) => \ARG_inferred__0/i__carry_n_2\,
      CO(0) => \ARG_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => D(3 downto 0),
      O(3 downto 0) => data8(3 downto 0),
      S(3 downto 0) => \DATAuu[0]_i_7\(3 downto 0)
    );
\ARG_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_inferred__0/i__carry_n_0\,
      CO(3) => \ARG_inferred__0/i__carry__0_n_0\,
      CO(2) => \ARG_inferred__0/i__carry__0_n_1\,
      CO(1) => \ARG_inferred__0/i__carry__0_n_2\,
      CO(0) => \ARG_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(7 downto 4),
      O(3 downto 0) => data8(7 downto 4),
      S(3 downto 0) => \DATAuu[4]_i_8\(3 downto 0)
    );
\ARG_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_inferred__0/i__carry__0_n_0\,
      CO(3) => \ARG_inferred__0/i__carry__1_n_0\,
      CO(2) => \ARG_inferred__0/i__carry__1_n_1\,
      CO(1) => \ARG_inferred__0/i__carry__1_n_2\,
      CO(0) => \ARG_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(11 downto 8),
      O(3 downto 0) => data8(11 downto 8),
      S(3 downto 0) => \DATAuu[8]_i_7\(3 downto 0)
    );
\ARG_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW_ARG_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \ARG_inferred__0/i__carry__2_n_1\,
      CO(1) => \ARG_inferred__0/i__carry__2_n_2\,
      CO(0) => \ARG_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => D(14 downto 12),
      O(3 downto 0) => data8(15 downto 12),
      S(3 downto 0) => \DATAuu[12]_i_9\(3 downto 0)
    );
CMPLEQ1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CMPLEQ1_carry_n_0,
      CO(2) => CMPLEQ1_carry_n_1,
      CO(1) => CMPLEQ1_carry_n_2,
      CO(0) => CMPLEQ1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_CMPLEQ1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \CMPLEQ1_carry__0_0\(3 downto 0)
    );
\CMPLEQ1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => CMPLEQ1_carry_n_0,
      CO(3) => CO(0),
      CO(2) => \CMPLEQ1_carry__0_n_1\,
      CO(1) => \CMPLEQ1_carry__0_n_2\,
      CO(0) => \CMPLEQ1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \CMPuu_reg[2]_1\(3 downto 0),
      O(3 downto 0) => \NLW_CMPLEQ1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \CMPuu_reg[2]_2\(3 downto 0)
    );
\CMPLEQ1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CMPLEQ1_inferred__0/i__carry_n_0\,
      CO(2) => \CMPLEQ1_inferred__0/i__carry_n_1\,
      CO(1) => \CMPLEQ1_inferred__0/i__carry_n_2\,
      CO(0) => \CMPLEQ1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \CMPLEQ1_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_CMPLEQ1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \CMPLEQ1_inferred__0/i__carry__0_1\(3 downto 0)
    );
\CMPLEQ1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \CMPLEQ1_inferred__0/i__carry_n_0\,
      CO(3) => \E_reg[14]\(0),
      CO(2) => \CMPLEQ1_inferred__0/i__carry__0_n_1\,
      CO(1) => \CMPLEQ1_inferred__0/i__carry__0_n_2\,
      CO(0) => \CMPLEQ1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \CMPuu_reg[0]_0\(3 downto 0),
      O(3 downto 0) => \NLW_CMPLEQ1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \CMPuu_reg[0]_1\(3 downto 0)
    );
\CMPuu_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \CMPuu_reg[2]_3\(0),
      Q => \CMPuu_reg[2]_0\(0)
    );
\CMPuu_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \CMPuu_reg[2]_3\(1),
      Q => \CMPuu_reg[2]_0\(1)
    );
\CMPuu_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \CMPuu_reg[2]_3\(2),
      Q => \CMPuu_reg[2]_0\(2)
    );
\DATAuu_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(0),
      Q => \^datauu_reg[15]_1\(0)
    );
\DATAuu_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(10),
      Q => \^datauu_reg[15]_1\(10)
    );
\DATAuu_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(11),
      Q => \^datauu_reg[15]_1\(11)
    );
\DATAuu_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(12),
      Q => \^datauu_reg[15]_1\(12)
    );
\DATAuu_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(13),
      Q => \^datauu_reg[15]_1\(13)
    );
\DATAuu_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(14),
      Q => \^datauu_reg[15]_1\(14)
    );
\DATAuu_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(15),
      Q => \^datauu_reg[15]_1\(15)
    );
\DATAuu_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(1),
      Q => \^datauu_reg[15]_1\(1)
    );
\DATAuu_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(2),
      Q => \^datauu_reg[15]_1\(2)
    );
\DATAuu_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(3),
      Q => \^datauu_reg[15]_1\(3)
    );
\DATAuu_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(4),
      Q => \^datauu_reg[15]_1\(4)
    );
\DATAuu_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(5),
      Q => \^datauu_reg[15]_1\(5)
    );
\DATAuu_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(6),
      Q => \^datauu_reg[15]_1\(6)
    );
\DATAuu_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(7),
      Q => \^datauu_reg[15]_1\(7)
    );
\DATAuu_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(8),
      Q => \^datauu_reg[15]_1\(8)
    );
\DATAuu_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \DATAuu_reg[0]_1\,
      D => \DATAuu_reg[15]_3\(9),
      Q => \^datauu_reg[15]_1\(9)
    );
\NETWORK0.PCi_new[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \NETWORK0.PCi_new[16]_i_5_n_0\,
      I1 => \^datauu_reg[15]_1\(10),
      I2 => \^datauu_reg[15]_1\(11),
      I3 => \^datauu_reg[15]_1\(14),
      I4 => \^datauu_reg[15]_1\(15),
      I5 => \NETWORK0.PCi_new[16]_i_6_n_0\,
      O => \DATAuu_reg[10]_0\
    );
\NETWORK0.PCi_new[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(1),
      I1 => \^datauu_reg[15]_1\(0),
      I2 => \^datauu_reg[15]_1\(4),
      I3 => \^datauu_reg[15]_1\(5),
      O => \NETWORK0.PCi_new[16]_i_5_n_0\
    );
\NETWORK0.PCi_new[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(7),
      I1 => \^datauu_reg[15]_1\(6),
      I2 => \^datauu_reg[15]_1\(3),
      I3 => \^datauu_reg[15]_1\(2),
      I4 => \NETWORK0.PCi_new[16]_i_7_n_0\,
      O => \NETWORK0.PCi_new[16]_i_6_n_0\
    );
\NETWORK0.PCi_new[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(8),
      I1 => \^datauu_reg[15]_1\(9),
      I2 => \^datauu_reg[15]_1\(12),
      I3 => \^datauu_reg[15]_1\(13),
      O => \NETWORK0.PCi_new[16]_i_7_n_0\
    );
\NETWORK0.PCi_new_reg[16]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \NETWORK0.PCi_new_reg[16]\(0),
      CO(3 downto 1) => \NLW_NETWORK0.PCi_new_reg[16]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \DATAuu_reg[15]_0\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NETWORK0.PCi_new_reg[16]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\PCi_new1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(15),
      I1 => \^datauu_reg[15]_1\(14),
      O => \DATAuu_reg[15]_2\(2)
    );
\PCi_new1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(13),
      I1 => \^datauu_reg[15]_1\(12),
      O => \DATAuu_reg[15]_2\(1)
    );
\PCi_new1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(11),
      I1 => \^datauu_reg[15]_1\(10),
      O => \DATAuu_reg[15]_2\(0)
    );
PCi_new1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(0),
      I1 => \^datauu_reg[15]_1\(1),
      O => \DATAuu_reg[0]_0\
    );
PCi_new1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(9),
      I1 => \^datauu_reg[15]_1\(8),
      O => \DATAuu_reg[9]_0\(3)
    );
PCi_new1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(7),
      I1 => \^datauu_reg[15]_1\(6),
      O => \DATAuu_reg[9]_0\(2)
    );
PCi_new1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(5),
      I1 => \^datauu_reg[15]_1\(4),
      O => \DATAuu_reg[9]_0\(1)
    );
PCi_new1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(3),
      I1 => \^datauu_reg[15]_1\(2),
      O => \DATAuu_reg[9]_0\(0)
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \F_MODE_OFFSET__0\(0),
      I1 => \^datauu_reg[15]_1\(0),
      I2 => \^datauu_reg[15]_1\(1),
      O => \NETWORK0.F_MODE_OFFSET_reg[0]\(1)
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^datauu_reg[15]_1\(0),
      I1 => \F_MODE_OFFSET__0\(0),
      O => \NETWORK0.F_MODE_OFFSET_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dRISC_FSM is
  port (
    \DATAuu_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \F_MODE_OFFSET__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    INTERRUPT_BLOCK : out STD_LOGIC;
    CPU_STOP : out STD_LOGIC;
    wea : out STD_LOGIC_VECTOR ( 0 to 0 );
    \NETWORK0.Di_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \NETWORK0.Di_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \NETWORK0.Di_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \E_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \E_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \NETWORK0.Di_reg[14]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \E_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \IDR_reg[7]_0\ : out STD_LOGIC;
    \IDR_reg[6]_0\ : out STD_LOGIC;
    \IDR_reg[5]_0\ : out STD_LOGIC;
    \IDR_reg[4]_0\ : out STD_LOGIC;
    \IDR_reg[3]_0\ : out STD_LOGIC;
    \IDR_reg[2]_0\ : out STD_LOGIC;
    \IDR_reg[1]_0\ : out STD_LOGIC;
    T : out STD_LOGIC;
    \NETWORK0.IORi_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \E_reg[15]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \MCRu_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \DETECT_PREVu_reg[7]\ : out STD_LOGIC;
    \IWR_reg[7]_0\ : out STD_LOGIC;
    \IWR_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \IWR_reg[3]_0\ : out STD_LOGIC;
    \IWR_reg[0]_0\ : out STD_LOGIC;
    \IWR_reg[1]_0\ : out STD_LOGIC;
    \IWR_reg[2]_0\ : out STD_LOGIC;
    \IWR_reg[4]_0\ : out STD_LOGIC;
    \IWR_reg[5]_0\ : out STD_LOGIC;
    \IWR_reg[6]_0\ : out STD_LOGIC;
    \NETWORK0.Di_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \E_reg[15]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \E_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \E_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \NETWORK0.Di_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \NETWORK0.Di_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \NETWORK0.Di_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \NETWORK0.Di_reg[15]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ICR_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \CSR_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \MEM_address_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLKuu0_BUFG : in STD_LOGIC;
    \PCi_new1_carry__0_0\ : in STD_LOGIC;
    \PCi_new1_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \MEM_data_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \NETWORK0.PCi_new[16]_i_4_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \NETWORK0.PCi_new_reg[16]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \NETWORK0.PCi_new_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    INTERRUPT_BLOCK_reg_0 : in STD_LOGIC;
    CPU_STOPio : in STD_LOGIC;
    \FSM_onehot_NEXT_STATE_reg[1]_0\ : in STD_LOGIC;
    \NETWORK0.PCi_new_reg[0]_0\ : in STD_LOGIC;
    dataout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \MEM_data_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \CMPuu_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    INTERRUPTi : in STD_LOGIC;
    \FSM_sequential_NEXT_STATE_reg[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ISR : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end dRISC_FSM;

architecture STRUCTURE of dRISC_FSM is
  signal ALU_DATAi0 : STD_LOGIC;
  signal Ai0 : STD_LOGIC;
  signal Bi0 : STD_LOGIC;
  signal CHRi0 : STD_LOGIC;
  signal \CMPuu[2]_i_2_n_0\ : STD_LOGIC;
  signal \CMPuu[2]_i_3_n_0\ : STD_LOGIC;
  signal \CMPuu[2]_i_4_n_0\ : STD_LOGIC;
  signal \CMPuu[2]_i_5_n_0\ : STD_LOGIC;
  signal \CMPuu[2]_i_6_n_0\ : STD_LOGIC;
  signal \^cpu_stop\ : STD_LOGIC;
  signal CPU_STOP_i_1_n_0 : STD_LOGIC;
  signal CSR0 : STD_LOGIC;
  signal \CSRi__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Ci0 : STD_LOGIC;
  signal D : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \DATAuu[0]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[0]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[0]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[0]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[0]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[0]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[0]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[10]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[10]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[10]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[10]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[10]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[10]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[10]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[11]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[11]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[11]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[11]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[11]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[11]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[11]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[11]_i_9_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_10_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_11_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[12]_i_9_n_0\ : STD_LOGIC;
  signal \DATAuu[13]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[13]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[13]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[13]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[13]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[13]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[14]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[14]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[14]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[14]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[14]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[14]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_10_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_11_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_12_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_13_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_14_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_15_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_16_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_17_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_18_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_19_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_20_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_21_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_22_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[15]_i_9_n_0\ : STD_LOGIC;
  signal \DATAuu[1]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[1]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[1]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[1]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[1]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[1]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[1]_i_9_n_0\ : STD_LOGIC;
  signal \DATAuu[2]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[2]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[2]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[2]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[2]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[2]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[3]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[3]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[3]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[3]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[3]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[3]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[3]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_10_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_11_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_12_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[4]_i_9_n_0\ : STD_LOGIC;
  signal \DATAuu[5]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[5]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[5]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[5]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[5]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[5]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[6]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[6]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[6]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[6]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[6]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[6]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[6]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[7]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[7]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[7]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[7]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[7]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[7]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[7]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[7]_i_9_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_10_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[8]_i_9_n_0\ : STD_LOGIC;
  signal \DATAuu[9]_i_2_n_0\ : STD_LOGIC;
  signal \DATAuu[9]_i_3_n_0\ : STD_LOGIC;
  signal \DATAuu[9]_i_4_n_0\ : STD_LOGIC;
  signal \DATAuu[9]_i_5_n_0\ : STD_LOGIC;
  signal \DATAuu[9]_i_6_n_0\ : STD_LOGIC;
  signal \DATAuu[9]_i_7_n_0\ : STD_LOGIC;
  signal \DATAuu[9]_i_8_n_0\ : STD_LOGIC;
  signal \DATAuu[9]_i_9_n_0\ : STD_LOGIC;
  signal \DATAuu_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal Di0 : STD_LOGIC;
  signal E : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \E[10]_i_1_n_0\ : STD_LOGIC;
  signal \E[11]_i_1_n_0\ : STD_LOGIC;
  signal \E[12]_i_1_n_0\ : STD_LOGIC;
  signal \E[13]_i_1_n_0\ : STD_LOGIC;
  signal \E[14]_i_1_n_0\ : STD_LOGIC;
  signal \E[15]_i_1_n_0\ : STD_LOGIC;
  signal \E[8]_i_1_n_0\ : STD_LOGIC;
  signal \E[9]_i_1_n_0\ : STD_LOGIC;
  signal F : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal F0 : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[13]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[13]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[13]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[14]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[15]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[15]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[16]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[16]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[16]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[17]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[17]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[19]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[21]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[21]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[22]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[24]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[25]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[28]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[14]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[15]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[16]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[17]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[18]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[19]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[20]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[21]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[22]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[23]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[24]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[25]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[26]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[27]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[28]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_NEXT_STATE_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[14]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[15]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[16]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[17]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[18]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[19]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[20]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[21]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[22]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[23]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[24]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[25]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[26]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[27]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[28]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_sequential_NEXT_STATE[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_NEXT_STATE[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_NEXT_STATE[0]_i_5_n_0\ : STD_LOGIC;
  signal \F[15]_i_1_n_0\ : STD_LOGIC;
  signal \^f_mode_offset__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ICR0 : STD_LOGIC;
  signal \ICRi__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IDR0 : STD_LOGIC;
  signal \IDR[0]_i_2_n_0\ : STD_LOGIC;
  signal \IDR[0]_i_3_n_0\ : STD_LOGIC;
  signal \IDR[0]_i_4_n_0\ : STD_LOGIC;
  signal \IDR[0]_i_5_n_0\ : STD_LOGIC;
  signal \IDR[0]_i_6_n_0\ : STD_LOGIC;
  signal \IDR[0]_i_7_n_0\ : STD_LOGIC;
  signal \IDR[1]_i_1_n_0\ : STD_LOGIC;
  signal \IDR[1]_i_2_n_0\ : STD_LOGIC;
  signal \IDR[2]_i_1_n_0\ : STD_LOGIC;
  signal \IDR[2]_i_2_n_0\ : STD_LOGIC;
  signal \IDR[3]_i_1_n_0\ : STD_LOGIC;
  signal \IDR[3]_i_2_n_0\ : STD_LOGIC;
  signal \IDR[4]_i_1_n_0\ : STD_LOGIC;
  signal \IDR[4]_i_2_n_0\ : STD_LOGIC;
  signal \IDR[5]_i_1_n_0\ : STD_LOGIC;
  signal \IDR[5]_i_2_n_0\ : STD_LOGIC;
  signal \IDR[6]_i_1_n_0\ : STD_LOGIC;
  signal \IDR[6]_i_2_n_0\ : STD_LOGIC;
  signal \IDR[7]_i_1_n_0\ : STD_LOGIC;
  signal \IDR[7]_i_2_n_0\ : STD_LOGIC;
  signal \^interrupt_block\ : STD_LOGIC;
  signal INTERRUPT_BLOCK_i_1_n_0 : STD_LOGIC;
  signal INTERRUPT_BLOCK_i_2_n_0 : STD_LOGIC;
  signal IORi0 : STD_LOGIC;
  signal ISRi_new0 : STD_LOGIC;
  signal \ISRi_new__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^iwr_reg[0]_0\ : STD_LOGIC;
  signal \^iwr_reg[3]_0\ : STD_LOGIC;
  signal \^iwr_reg[7]_0\ : STD_LOGIC;
  signal \^iwr_reg[7]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IWRi0 : STD_LOGIC;
  signal \IWRi__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MCR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MCRi0 : STD_LOGIC;
  signal \MCRi__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MCRu0 : STD_LOGIC;
  signal \MCRu[0]_i_1_n_0\ : STD_LOGIC;
  signal \MCRu[1]_i_1_n_0\ : STD_LOGIC;
  signal \MCRu[1]_i_2_n_0\ : STD_LOGIC;
  signal \MCRu[2]_i_1_n_0\ : STD_LOGIC;
  signal \MCRu[2]_i_2_n_0\ : STD_LOGIC;
  signal \MCRu[3]_i_1_n_0\ : STD_LOGIC;
  signal \MCRu[3]_i_2_n_0\ : STD_LOGIC;
  signal \MCRu[4]_i_1_n_0\ : STD_LOGIC;
  signal \MCRu[5]_i_1_n_0\ : STD_LOGIC;
  signal \MCRu[6]_i_1_n_0\ : STD_LOGIC;
  signal \MCRu[7]_i_2_n_0\ : STD_LOGIC;
  signal \MCRu[7]_i_3_n_0\ : STD_LOGIC;
  signal MEM_address0 : STD_LOGIC;
  signal \MEM_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[0]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[0]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[10]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[10]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[11]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[11]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[11]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[12]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[12]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[12]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[13]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[13]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[13]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[13]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_10_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_13_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_5_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_6_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_7_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_8_n_0\ : STD_LOGIC;
  signal \MEM_address[14]_i_9_n_0\ : STD_LOGIC;
  signal \MEM_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[1]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[1]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[1]_i_5_n_0\ : STD_LOGIC;
  signal \MEM_address[1]_i_6_n_0\ : STD_LOGIC;
  signal \MEM_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[2]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[2]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[2]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[3]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[3]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[3]_i_5_n_0\ : STD_LOGIC;
  signal \MEM_address[3]_i_6_n_0\ : STD_LOGIC;
  signal \MEM_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[4]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[4]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[5]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[5]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[6]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[6]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[7]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[7]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[8]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[8]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address[8]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_address[9]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_address[9]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_address[9]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_address_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_address_reg[11]_i_4_n_1\ : STD_LOGIC;
  signal \MEM_address_reg[11]_i_4_n_2\ : STD_LOGIC;
  signal \MEM_address_reg[11]_i_4_n_3\ : STD_LOGIC;
  signal \MEM_address_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \MEM_address_reg[11]_i_5_n_1\ : STD_LOGIC;
  signal \MEM_address_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \MEM_address_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \MEM_address_reg[14]_i_11_n_2\ : STD_LOGIC;
  signal \MEM_address_reg[14]_i_11_n_3\ : STD_LOGIC;
  signal \MEM_address_reg[14]_i_12_n_2\ : STD_LOGIC;
  signal \MEM_address_reg[14]_i_12_n_3\ : STD_LOGIC;
  signal \MEM_address_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_address_reg[1]_i_4_n_1\ : STD_LOGIC;
  signal \MEM_address_reg[1]_i_4_n_2\ : STD_LOGIC;
  signal \MEM_address_reg[1]_i_4_n_3\ : STD_LOGIC;
  signal \MEM_address_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_address_reg[3]_i_4_n_1\ : STD_LOGIC;
  signal \MEM_address_reg[3]_i_4_n_2\ : STD_LOGIC;
  signal \MEM_address_reg[3]_i_4_n_3\ : STD_LOGIC;
  signal \MEM_address_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_address_reg[7]_i_4_n_1\ : STD_LOGIC;
  signal \MEM_address_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \MEM_address_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \MEM_address_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \MEM_address_reg[7]_i_5_n_1\ : STD_LOGIC;
  signal \MEM_address_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \MEM_address_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal MEM_data0 : STD_LOGIC;
  signal \MEM_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \MEM_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_data[7]_i_5_n_0\ : STD_LOGIC;
  signal MEM_wren0 : STD_LOGIC;
  signal MEM_wren_i_1_n_0 : STD_LOGIC;
  signal MEM_wren_i_2_n_0 : STD_LOGIC;
  signal MEM_wren_i_4_n_0 : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi[7]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi_reg_n_0_[1]\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi_reg_n_0_[2]\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi_reg_n_0_[3]\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi_reg_n_0_[4]\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi_reg_n_0_[5]\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi_reg_n_0_[6]\ : STD_LOGIC;
  signal \NETWORK0.ALU_DATAi_reg_n_0_[7]\ : STD_LOGIC;
  signal \NETWORK0.Ai[15]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[10]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[11]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[12]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[13]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[14]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[15]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[1]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[2]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[3]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[4]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[5]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[6]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[7]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[8]\ : STD_LOGIC;
  signal \NETWORK0.Ai_reg_n_0_[9]\ : STD_LOGIC;
  signal \NETWORK0.Bi[15]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[10]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[11]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[12]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[13]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[14]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[15]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[1]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[2]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[3]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[4]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[5]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[6]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[7]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[8]\ : STD_LOGIC;
  signal \NETWORK0.Bi_reg_n_0_[9]\ : STD_LOGIC;
  signal \NETWORK0.CHRi[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[0]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[0]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[0]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[0]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[0]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[1]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[1]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[1]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[2]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[2]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[3]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[3]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[4]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[4]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[5]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[5]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[6]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[6]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_10_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_11_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_12_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_13_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_14_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_15_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_16_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_17_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_18_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_7_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_8_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi[7]_i_9_n_0\ : STD_LOGIC;
  signal \NETWORK0.CHRi_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.CHRi_reg_n_0_[1]\ : STD_LOGIC;
  signal \NETWORK0.CHRi_reg_n_0_[2]\ : STD_LOGIC;
  signal \NETWORK0.CHRi_reg_n_0_[3]\ : STD_LOGIC;
  signal \NETWORK0.CHRi_reg_n_0_[4]\ : STD_LOGIC;
  signal \NETWORK0.CHRi_reg_n_0_[5]\ : STD_LOGIC;
  signal \NETWORK0.CHRi_reg_n_0_[6]\ : STD_LOGIC;
  signal \NETWORK0.CHRi_reg_n_0_[7]\ : STD_LOGIC;
  signal \NETWORK0.CSRi[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[0]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[1]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[2]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[3]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[4]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[5]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[6]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[7]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[7]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[7]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.CSRi[7]_i_7_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ci[15]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[10]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[11]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[12]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[13]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[14]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[15]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[1]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[2]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[3]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[4]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[5]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[6]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[7]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[8]\ : STD_LOGIC;
  signal \NETWORK0.Ci_reg_n_0_[9]\ : STD_LOGIC;
  signal \NETWORK0.Di[15]_i_1_n_0\ : STD_LOGIC;
  signal \^network0.di_reg[14]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NETWORK0.Ei[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[10]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[11]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[12]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[13]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[14]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[15]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[15]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[7]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[8]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei[9]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.Ei_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.Ei_reg_n_0_[7]\ : STD_LOGIC;
  signal \NETWORK0.F_MODE_OFFSET[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.F_MODE_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.F_MODE_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.F_MODE_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.F_MODE_reg_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[0]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[0]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[1]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[2]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[3]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[4]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[5]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[6]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[7]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[7]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.ICRi[7]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[0]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[0]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[0]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[0]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[0]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[1]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[1]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[1]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[1]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[1]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[2]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[2]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[2]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[2]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[2]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[3]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[3]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[3]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[3]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[3]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[4]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[4]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[4]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[4]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[4]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[5]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[5]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[5]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[5]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[5]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[6]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[6]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[6]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[6]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[6]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_10_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_11_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_12_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_13_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_14_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_7_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_8_n_0\ : STD_LOGIC;
  signal \NETWORK0.IORi[7]_i_9_n_0\ : STD_LOGIC;
  signal \^network0.iori_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NETWORK0.ISRi_new[7]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[0]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[1]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[2]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[3]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[4]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[5]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[6]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_10_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_11_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_12_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_7_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_8_n_0\ : STD_LOGIC;
  signal \NETWORK0.IWRi[7]_i_9_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_10_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_11_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_12_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_13_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_14_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_15_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_16_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_17_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_7_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_8_n_0\ : STD_LOGIC;
  signal \NETWORK0.MCRi[7]_i_9_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi[30]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[0]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[10]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[10]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[11]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[11]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[12]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[12]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[13]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[13]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[14]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[14]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[15]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[15]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[15]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[16]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[16]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[17]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[18]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[19]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[1]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[20]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[21]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[22]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[23]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[24]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[25]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[26]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[27]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[28]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[29]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[2]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[30]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[30]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[30]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[3]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[4]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[5]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[6]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[7]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[8]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[8]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[9]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new[9]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[10]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[11]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[12]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[13]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[14]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[15]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[16]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[17]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[18]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[19]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[1]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[20]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[21]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[22]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[23]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[24]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[25]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[26]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[27]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[28]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[29]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[2]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[30]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[3]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[4]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[5]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[6]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[7]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[8]\ : STD_LOGIC;
  signal \NETWORK0.PCi_new_reg_n_0_[9]\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \NEXT_STATE1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__0_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__0_n_1\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__0_n_2\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__0_n_3\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__1_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__1_n_1\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__1_n_2\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__1_n_3\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__2_n_1\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__2_n_2\ : STD_LOGIC;
  signal \NEXT_STATE2_carry__2_n_3\ : STD_LOGIC;
  signal NEXT_STATE2_carry_i_1_n_0 : STD_LOGIC;
  signal NEXT_STATE2_carry_i_2_n_0 : STD_LOGIC;
  signal NEXT_STATE2_carry_i_3_n_0 : STD_LOGIC;
  signal NEXT_STATE2_carry_i_4_n_0 : STD_LOGIC;
  signal NEXT_STATE2_carry_i_5_n_0 : STD_LOGIC;
  signal NEXT_STATE2_carry_n_0 : STD_LOGIC;
  signal NEXT_STATE2_carry_n_1 : STD_LOGIC;
  signal NEXT_STATE2_carry_n_2 : STD_LOGIC;
  signal NEXT_STATE2_carry_n_3 : STD_LOGIC;
  signal PC : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PCi : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal PCi0 : STD_LOGIC;
  signal PCi_new0 : STD_LOGIC;
  signal \PCi_new0_carry__0_n_0\ : STD_LOGIC;
  signal \PCi_new0_carry__0_n_1\ : STD_LOGIC;
  signal \PCi_new0_carry__0_n_2\ : STD_LOGIC;
  signal \PCi_new0_carry__0_n_3\ : STD_LOGIC;
  signal \PCi_new0_carry__1_n_0\ : STD_LOGIC;
  signal \PCi_new0_carry__1_n_1\ : STD_LOGIC;
  signal \PCi_new0_carry__1_n_2\ : STD_LOGIC;
  signal \PCi_new0_carry__1_n_3\ : STD_LOGIC;
  signal \PCi_new0_carry__2_n_0\ : STD_LOGIC;
  signal \PCi_new0_carry__2_n_1\ : STD_LOGIC;
  signal \PCi_new0_carry__2_n_2\ : STD_LOGIC;
  signal \PCi_new0_carry__2_n_3\ : STD_LOGIC;
  signal \PCi_new0_carry__3_n_0\ : STD_LOGIC;
  signal \PCi_new0_carry__3_n_1\ : STD_LOGIC;
  signal \PCi_new0_carry__3_n_2\ : STD_LOGIC;
  signal \PCi_new0_carry__3_n_3\ : STD_LOGIC;
  signal \PCi_new0_carry__4_n_0\ : STD_LOGIC;
  signal \PCi_new0_carry__4_n_1\ : STD_LOGIC;
  signal \PCi_new0_carry__4_n_2\ : STD_LOGIC;
  signal \PCi_new0_carry__4_n_3\ : STD_LOGIC;
  signal \PCi_new0_carry__5_n_0\ : STD_LOGIC;
  signal \PCi_new0_carry__5_n_1\ : STD_LOGIC;
  signal \PCi_new0_carry__5_n_2\ : STD_LOGIC;
  signal \PCi_new0_carry__5_n_3\ : STD_LOGIC;
  signal \PCi_new0_carry__6_n_3\ : STD_LOGIC;
  signal PCi_new0_carry_n_0 : STD_LOGIC;
  signal PCi_new0_carry_n_1 : STD_LOGIC;
  signal PCi_new0_carry_n_2 : STD_LOGIC;
  signal PCi_new0_carry_n_3 : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__0_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__0_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__0_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__1_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__1_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__1_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__1_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__2_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__2_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry__2_n_3\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry_n_0\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry_n_1\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry_n_2\ : STD_LOGIC;
  signal \PCi_new0_inferred__1/i___0_carry_n_3\ : STD_LOGIC;
  signal PCi_new1 : STD_LOGIC;
  signal \PCi_new1_carry__0_n_2\ : STD_LOGIC;
  signal \PCi_new1_carry__0_n_3\ : STD_LOGIC;
  signal PCi_new1_carry_n_0 : STD_LOGIC;
  signal PCi_new1_carry_n_1 : STD_LOGIC;
  signal PCi_new1_carry_n_2 : STD_LOGIC;
  signal PCi_new1_carry_n_3 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i___0_carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal in27 : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal in35 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal in36 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal in6 : STD_LOGIC;
  signal in62 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal in65 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal in7 : STD_LOGIC;
  signal p_1_in15_in : STD_LOGIC;
  signal p_1_in17_in : STD_LOGIC;
  signal p_1_in19_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_MEM_address_reg[14]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_MEM_address_reg[14]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_MEM_address_reg[14]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_MEM_address_reg[14]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_NEXT_STATE1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NEXT_STATE1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_NEXT_STATE1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NEXT_STATE1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NEXT_STATE1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NEXT_STATE1_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NEXT_STATE1_inferred__1/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_NEXT_STATE1_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_NEXT_STATE2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NEXT_STATE2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NEXT_STATE2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NEXT_STATE2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_NEXT_STATE2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PCi_new0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PCi_new0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PCi_new0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PCi_new0_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_PCi_new1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PCi_new1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_PCi_new1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CMPuu[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \CMPuu[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \CMPuu[2]_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \DATAuu[0]_i_4\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \DATAuu[0]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \DATAuu[10]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \DATAuu[10]_i_6\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \DATAuu[11]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \DATAuu[11]_i_5\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \DATAuu[12]_i_5\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \DATAuu[12]_i_6\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \DATAuu[12]_i_7\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \DATAuu[13]_i_7\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \DATAuu[14]_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \DATAuu[15]_i_10\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \DATAuu[15]_i_11\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \DATAuu[15]_i_14\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \DATAuu[15]_i_4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \DATAuu[15]_i_9\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \DATAuu[1]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \DATAuu[4]_i_10\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \DATAuu[4]_i_11\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \DATAuu[4]_i_12\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \DATAuu[4]_i_4\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \DATAuu[4]_i_7\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \DATAuu[4]_i_9\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \DATAuu[5]_i_4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \DATAuu[5]_i_6\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \DATAuu[6]_i_4\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \DATAuu[7]_i_4\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \DATAuu[7]_i_6\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \DATAuu[7]_i_8\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \DATAuu[8]_i_10\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \DATAuu[8]_i_4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \DATAuu[8]_i_6\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \DATAuu[8]_i_8\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \DATAuu[9]_i_4\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \DATAuu[9]_i_6\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \DATAuu[9]_i_9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \E[15]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[11]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[12]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[14]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[15]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[17]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[19]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[1]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[1]_i_4\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[1]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[1]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[22]_i_10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[22]_i_13\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[22]_i_14\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[22]_i_15\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[22]_i_16\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[22]_i_18\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[22]_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[25]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[28]_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[28]_i_13\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[28]_i_14\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[28]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[28]_i_9\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FSM_onehot_NEXT_STATE[4]_i_1\ : label is "soft_lutpair49";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[0]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[10]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[11]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[12]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[13]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[14]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[15]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[16]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[17]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[18]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[19]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[1]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[20]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[21]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[22]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[23]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[24]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[25]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[26]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[27]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[28]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[2]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[3]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[4]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[5]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[6]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[7]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[8]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[9]\ : label is "pcs_write_back:10000000000000000000000000000,iwr_int_trigger:00000010000000000000000000000,memr_write_back:00000000000100000000000000000,mem_write_back:00000000010000000000000000000,fetch_d_save_c:00000000000000000000010000000,fetch_c_save_b:00000000000000000000001000000,fetch_mcr:00000000000000000000000000100,fetch_b_save_a:00000000000000000000000100000,fetch_0_save_mcr:00000000000000000000000001000,cpu_cycle_start:00000000000000000000000000010,cpu_halt:00000001000000000000000000000,leq_flags_write_back:00000000000010000000000000000,tta_mem_write_back:00000000100000000000000000000,bootstrap_ctrl:00000000000000000100000000000,tta_memr_write_back:00000000001000000000000000000,fetch_0_save_f:00000000000000000010000000000,leq_pc_write_back:00000000000001000000000000000,tta_write_back:00000000000000010000000000000,exec_ctrl:00000000000000100000000000000,tta_ctrl:00000000000000001000000000000,wait_for_interrupt:00001000000000000000000000000,fetch_f_save_e:00000000000000000001000000000,iwr_int_set:00000100000000000000000000000,fetch_e_save_d:00000000000000000000100000000,fetch_a:00000000000000000000000010000,isr_write_back:00010000000000000000000000000,iwr_reset:01000000000000000000000000000,isr_update:00100000000000000000000000000,reset:00000000000000000000000000001";
  attribute SOFT_HLUTNM of \IDR[0]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \IDR[0]_i_7\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of INTERRUPT_BLOCK_i_2 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \MCRu[1]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \MCRu[2]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \MCRu[3]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \MCRu[7]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \MEM_address[13]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \MEM_address[14]_i_13\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \MEM_address[14]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \MEM_address[14]_i_5\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \MEM_address[14]_i_6\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \MEM_address[14]_i_8\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \MEM_address[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \MEM_address[1]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \MEM_address[2]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \MEM_address[8]_i_3\ : label is "soft_lutpair57";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \MEM_address_reg[11]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \MEM_address_reg[11]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \MEM_address_reg[14]_i_11\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \MEM_address_reg[14]_i_12\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \MEM_address_reg[1]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \MEM_address_reg[3]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \MEM_address_reg[7]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \MEM_address_reg[7]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \MEM_data[2]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \MEM_data[3]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \MEM_data[3]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \MEM_data[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \MEM_data[7]_i_4\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of MEM_wren_i_4 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \NETWORK0.ALU_DATAi[7]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[0]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[0]_i_5\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[0]_i_6\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[1]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[2]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[3]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[4]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[5]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[6]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[7]_i_16\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[7]_i_17\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[7]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[7]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \NETWORK0.CHRi[7]_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \NETWORK0.CSRi[7]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \NETWORK0.CSRi[7]_i_4\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \NETWORK0.CSRi[7]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \NETWORK0.CSRi[7]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[10]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[11]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[12]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[13]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[14]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[15]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[7]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[8]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \NETWORK0.Ei[9]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \NETWORK0.F_MODE_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \NETWORK0.ICRi[0]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \NETWORK0.ICRi[7]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \NETWORK0.ICRi[7]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \NETWORK0.ICRi[7]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \NETWORK0.IORi[7]_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \NETWORK0.IORi[7]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \NETWORK0.IORi[7]_i_12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \NETWORK0.IORi[7]_i_14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \NETWORK0.IORi[7]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \NETWORK0.IORi[7]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \NETWORK0.IWRi[3]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \NETWORK0.IWRi[7]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \NETWORK0.IWRi[7]_i_12\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \NETWORK0.IWRi[7]_i_9\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \NETWORK0.MCRi[7]_i_10\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \NETWORK0.MCRi[7]_i_11\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \NETWORK0.MCRi[7]_i_12\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[15]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[16]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[17]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[18]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[19]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[20]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[21]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[22]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[23]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[24]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[25]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \NETWORK0.PCi_new[30]_i_4\ : label is "soft_lutpair31";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE1_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE1_inferred__1/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE1_inferred__1/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE1_inferred__1/i__carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of NEXT_STATE2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \NEXT_STATE2_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of PCi_new0_carry : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \PCi_new0_inferred__0/i__carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD of PCi_new1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \PCi_new1_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \loop0[0].IOBUF_inst_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \loop0[1].IOBUF_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \loop0[2].IOBUF_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \loop0[3].IOBUF_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \loop0[4].IOBUF_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \loop0[5].IOBUF_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \loop0[6].IOBUF_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \loop0[7].IOBUF_inst_i_1\ : label is "soft_lutpair3";
begin
  CPU_STOP <= \^cpu_stop\;
  \F_MODE_OFFSET__0\(0) <= \^f_mode_offset__0\(0);
  INTERRUPT_BLOCK <= \^interrupt_block\;
  \IWR_reg[0]_0\ <= \^iwr_reg[0]_0\;
  \IWR_reg[3]_0\ <= \^iwr_reg[3]_0\;
  \IWR_reg[7]_0\ <= \^iwr_reg[7]_0\;
  \IWR_reg[7]_1\(7 downto 0) <= \^iwr_reg[7]_1\(7 downto 0);
  \NETWORK0.Di_reg[14]_0\(14 downto 0) <= \^network0.di_reg[14]_0\(14 downto 0);
  \NETWORK0.IORi_reg[7]_0\(7 downto 0) <= \^network0.iori_reg[7]_0\(7 downto 0);
  Q(14 downto 0) <= \^q\(14 downto 0);
  wea(0) <= \^wea\(0);
\ARG_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^network0.di_reg[14]_0\(7),
      O => \E_reg[7]_0\(3)
    );
\ARG_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^network0.di_reg[14]_0\(6),
      O => \E_reg[7]_0\(2)
    );
\ARG_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^network0.di_reg[14]_0\(5),
      O => \E_reg[7]_0\(1)
    );
\ARG_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^network0.di_reg[14]_0\(4),
      O => \E_reg[7]_0\(0)
    );
\ARG_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^network0.di_reg[14]_0\(11),
      O => \E_reg[11]_0\(3)
    );
\ARG_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^network0.di_reg[14]_0\(10),
      O => \E_reg[11]_0\(2)
    );
\ARG_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^network0.di_reg[14]_0\(9),
      O => \E_reg[11]_0\(1)
    );
\ARG_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^network0.di_reg[14]_0\(8),
      O => \E_reg[11]_0\(0)
    );
\ARG_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => E(15),
      I1 => D(15),
      O => \E_reg[15]_1\(3)
    );
\ARG_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^network0.di_reg[14]_0\(14),
      O => \E_reg[15]_1\(2)
    );
\ARG_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^network0.di_reg[14]_0\(13),
      O => \E_reg[15]_1\(1)
    );
\ARG_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^network0.di_reg[14]_0\(12),
      O => \E_reg[15]_1\(0)
    );
ARG_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(3),
      I1 => \^q\(3),
      O => S(3)
    );
ARG_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^network0.di_reg[14]_0\(2),
      O => S(2)
    );
ARG_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^network0.di_reg[14]_0\(1),
      O => S(1)
    );
ARG_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^network0.di_reg[14]_0\(0),
      O => S(0)
    );
\CMPLEQ1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(14),
      I1 => \^q\(14),
      I2 => D(15),
      I3 => E(15),
      O => \NETWORK0.Di_reg[14]_1\(3)
    );
\CMPLEQ1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(12),
      I1 => \^q\(12),
      I2 => \^q\(13),
      I3 => \^network0.di_reg[14]_0\(13),
      O => \NETWORK0.Di_reg[14]_1\(2)
    );
\CMPLEQ1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(10),
      I1 => \^q\(10),
      I2 => \^q\(11),
      I3 => \^network0.di_reg[14]_0\(11),
      O => \NETWORK0.Di_reg[14]_1\(1)
    );
\CMPLEQ1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(8),
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \^network0.di_reg[14]_0\(9),
      O => \NETWORK0.Di_reg[14]_1\(0)
    );
\CMPLEQ1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => E(15),
      I1 => D(15),
      I2 => \^network0.di_reg[14]_0\(14),
      I3 => \^q\(14),
      O => \E_reg[15]_2\(3)
    );
\CMPLEQ1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(12),
      I1 => \^q\(12),
      I2 => \^network0.di_reg[14]_0\(13),
      I3 => \^q\(13),
      O => \E_reg[15]_2\(2)
    );
\CMPLEQ1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(10),
      I1 => \^q\(10),
      I2 => \^network0.di_reg[14]_0\(11),
      I3 => \^q\(11),
      O => \E_reg[15]_2\(1)
    );
\CMPLEQ1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(8),
      I1 => \^q\(8),
      I2 => \^network0.di_reg[14]_0\(9),
      I3 => \^q\(9),
      O => \E_reg[15]_2\(0)
    );
CMPLEQ1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(6),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^network0.di_reg[14]_0\(7),
      O => DI(3)
    );
CMPLEQ1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^network0.di_reg[14]_0\(5),
      O => DI(2)
    );
CMPLEQ1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(2),
      I1 => \^q\(2),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^q\(3),
      O => DI(1)
    );
CMPLEQ1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^network0.di_reg[14]_0\(1),
      O => DI(0)
    );
CMPLEQ1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(6),
      I1 => \^q\(6),
      I2 => \^network0.di_reg[14]_0\(7),
      I3 => \^q\(7),
      O => \NETWORK0.Di_reg[6]_1\(3)
    );
CMPLEQ1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(5),
      I1 => \^q\(5),
      I2 => \^network0.di_reg[14]_0\(4),
      I3 => \^q\(4),
      O => \NETWORK0.Di_reg[6]_1\(2)
    );
CMPLEQ1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^network0.di_reg[14]_0\(3),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(2),
      O => \NETWORK0.Di_reg[6]_1\(1)
    );
CMPLEQ1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(1),
      I1 => \^q\(1),
      I2 => \^network0.di_reg[14]_0\(0),
      I3 => \^q\(0),
      O => \NETWORK0.Di_reg[6]_1\(0)
    );
\CMPuu[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \CMPuu_reg[0]\(0),
      I1 => \CMPuu[2]_i_2_n_0\,
      O => \MCRu_reg[3]_0\(0)
    );
\CMPuu[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \CMPuu_reg[0]\(0),
      I1 => \CMPuu[2]_i_2_n_0\,
      I2 => CO(0),
      O => \MCRu_reg[3]_0\(1)
    );
\CMPuu[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \CMPuu_reg[0]\(0),
      I1 => \CMPuu[2]_i_2_n_0\,
      I2 => CO(0),
      O => \MCRu_reg[3]_0\(2)
    );
\CMPuu[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444F444444"
    )
        port map (
      I0 => \CMPuu[2]_i_3_n_0\,
      I1 => \CMPuu[2]_i_4_n_0\,
      I2 => \CMPuu[2]_i_5_n_0\,
      I3 => \CMPuu[2]_i_6_n_0\,
      I4 => MCR(3),
      I5 => MCR(4),
      O => \CMPuu[2]_i_2_n_0\
    );
\CMPuu[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => MCR(4),
      I1 => MCR(0),
      I2 => MCR(5),
      I3 => MCR(1),
      O => \CMPuu[2]_i_3_n_0\
    );
\CMPuu[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010000C3"
    )
        port map (
      I0 => MCR(1),
      I1 => MCR(2),
      I2 => MCR(6),
      I3 => MCR(3),
      I4 => MCR(7),
      O => \CMPuu[2]_i_4_n_0\
    );
\CMPuu[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => MCR(0),
      I1 => MCR(6),
      I2 => MCR(7),
      O => \CMPuu[2]_i_5_n_0\
    );
\CMPuu[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => MCR(2),
      I1 => MCR(5),
      I2 => MCR(1),
      O => \CMPuu[2]_i_6_n_0\
    );
CPU_STOP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1F00F00000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => CPU_STOPio,
      I3 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[21]\,
      I5 => \^cpu_stop\,
      O => CPU_STOP_i_1_n_0
    );
CPU_STOP_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => CPU_STOP_i_1_n_0,
      Q => \^cpu_stop\,
      R => '0'
    );
\CSR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[0]_i_1_n_0\,
      Q => \CSR_reg[7]_0\(0),
      R => '0'
    );
\CSR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[1]_i_1_n_0\,
      Q => \CSR_reg[7]_0\(1),
      R => '0'
    );
\CSR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[2]_i_1_n_0\,
      Q => \CSR_reg[7]_0\(2),
      R => '0'
    );
\CSR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[3]_i_1_n_0\,
      Q => \CSR_reg[7]_0\(3),
      R => '0'
    );
\CSR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[4]_i_1_n_0\,
      Q => \CSR_reg[7]_0\(4),
      R => '0'
    );
\CSR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[5]_i_1_n_0\,
      Q => \CSR_reg[7]_0\(5),
      R => '0'
    );
\CSR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[6]_i_1_n_0\,
      Q => \CSR_reg[7]_0\(6),
      R => '0'
    );
\CSR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[7]_i_2_n_0\,
      Q => \CSR_reg[7]_0\(7),
      R => '0'
    );
\DATAuu[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[0]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[0]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[0]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(0)
    );
\DATAuu[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000020FF0000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \DATAuu[0]_i_5_n_0\,
      I2 => \DATAuu[15]_i_9_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I5 => \DATAuu[0]_i_6_n_0\,
      O => \DATAuu[0]_i_2_n_0\
    );
\DATAuu[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(0),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(0),
      I5 => \^q\(0),
      O => \DATAuu[0]_i_3_n_0\
    );
\DATAuu[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \DATAuu[0]_i_7_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[15]_i_5_n_0\,
      O => \DATAuu[0]_i_4_n_0\
    );
\DATAuu[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(2),
      I1 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[0]_i_5_n_0\
    );
\DATAuu[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"550355F3"
    )
        port map (
      I0 => \DATAuu_reg[1]_i_7_n_0\,
      I1 => \DATAuu[0]_i_8_n_0\,
      I2 => \^network0.di_reg[14]_0\(1),
      I3 => \^network0.di_reg[14]_0\(0),
      I4 => \DATAuu[2]_i_7_n_0\,
      O => \DATAuu[0]_i_6_n_0\
    );
\DATAuu[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(0),
      I1 => data8(0),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(0),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(0),
      O => \DATAuu[0]_i_7_n_0\
    );
\DATAuu[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(4),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(8),
      I4 => \^network0.di_reg[14]_0\(3),
      I5 => \^q\(0),
      O => \DATAuu[0]_i_8_n_0\
    );
\DATAuu[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[10]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[10]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[10]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(10)
    );
\DATAuu[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DFF1D0000000000"
    )
        port map (
      I0 => \DATAuu[11]_i_5_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[10]_i_5_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \DATAuu[10]_i_6_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \DATAuu[10]_i_2_n_0\
    );
\DATAuu[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(10),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(10),
      I5 => \^q\(10),
      O => \DATAuu[10]_i_3_n_0\
    );
\DATAuu[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[10]_i_7_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(10),
      O => \DATAuu[10]_i_4_n_0\
    );
\DATAuu[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF350000FF35FFFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(3),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \DATAuu[12]_i_10_n_0\,
      O => \DATAuu[10]_i_5_n_0\
    );
\DATAuu[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[11]_i_9_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[10]_i_8_n_0\,
      O => \DATAuu[10]_i_6_n_0\
    );
\DATAuu[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(10),
      I1 => data8(10),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(10),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(10),
      O => \DATAuu[10]_i_7_n_0\
    );
\DATAuu[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \^q\(14),
      I3 => \^network0.di_reg[14]_0\(2),
      I4 => \^q\(10),
      I5 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[10]_i_8_n_0\
    );
\DATAuu[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[11]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[11]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[11]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(11)
    );
\DATAuu[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF740000000000"
    )
        port map (
      I0 => \DATAuu[11]_i_5_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[12]_i_7_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \DATAuu[11]_i_6_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \DATAuu[11]_i_2_n_0\
    );
\DATAuu[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(11),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(11),
      I5 => \^q\(11),
      O => \DATAuu[11]_i_3_n_0\
    );
\DATAuu[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[11]_i_7_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(11),
      O => \DATAuu[11]_i_4_n_0\
    );
\DATAuu[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \DATAuu[11]_i_8_n_0\,
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \DATAuu[13]_i_7_n_0\,
      O => \DATAuu[11]_i_5_n_0\
    );
\DATAuu[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0AFFFF0C0A0000"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(14),
      I2 => \DATAuu[0]_i_5_n_0\,
      I3 => \^network0.di_reg[14]_0\(1),
      I4 => \^network0.di_reg[14]_0\(0),
      I5 => \DATAuu[11]_i_9_n_0\,
      O => \DATAuu[11]_i_6_n_0\
    );
\DATAuu[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(11),
      I1 => data8(11),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(11),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(11),
      O => \DATAuu[11]_i_7_n_0\
    );
\DATAuu[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(0),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^q\(8),
      O => \DATAuu[11]_i_8_n_0\
    );
\DATAuu[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => E(15),
      I3 => \^network0.di_reg[14]_0\(2),
      I4 => \^q\(11),
      I5 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[11]_i_9_n_0\
    );
\DATAuu[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[12]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[12]_i_4_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[12]_i_5_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(12)
    );
\DATAuu[12]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B800B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(9),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^q\(1),
      O => \DATAuu[12]_i_10_n_0\
    );
\DATAuu[12]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C000A"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(14),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^network0.di_reg[14]_0\(2),
      I4 => \^network0.di_reg[14]_0\(1),
      O => \DATAuu[12]_i_11_n_0\
    );
\DATAuu[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2000000E2FF0000"
    )
        port map (
      I0 => \DATAuu[12]_i_6_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[12]_i_7_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I5 => \DATAuu[12]_i_8_n_0\,
      O => \DATAuu[12]_i_2_n_0\
    );
\DATAuu[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \DATAuu[15]_i_8_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      O => \DATAuu[12]_i_3_n_0\
    );
\DATAuu[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(12),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(12),
      I5 => \^q\(12),
      O => \DATAuu[12]_i_4_n_0\
    );
\DATAuu[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[12]_i_9_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(12),
      O => \DATAuu[12]_i_5_n_0\
    );
\DATAuu[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[13]_i_7_n_0\,
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \DATAuu[15]_i_19_n_0\,
      O => \DATAuu[12]_i_6_n_0\
    );
\DATAuu[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[12]_i_10_n_0\,
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \DATAuu[14]_i_7_n_0\,
      O => \DATAuu[12]_i_7_n_0\
    );
\DATAuu[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FD0000F1FDFFFF"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \DATAuu[0]_i_5_n_0\,
      I3 => E(15),
      I4 => \^network0.di_reg[14]_0\(0),
      I5 => \DATAuu[12]_i_11_n_0\,
      O => \DATAuu[12]_i_8_n_0\
    );
\DATAuu[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(12),
      I1 => data8(12),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(12),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(12),
      O => \DATAuu[12]_i_9_n_0\
    );
\DATAuu[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \DATAuu[13]_i_2_n_0\,
      I1 => \DATAuu[15]_i_4_n_0\,
      I2 => \^network0.di_reg[14]_0\(13),
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \DATAuu[13]_i_3_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(13)
    );
\DATAuu[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7400FFFF74000000"
    )
        port map (
      I0 => \DATAuu[13]_i_4_n_0\,
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[13]_i_5_n_0\,
      I3 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I4 => \DATAuu[12]_i_3_n_0\,
      I5 => \DATAuu[13]_i_6_n_0\,
      O => \DATAuu[13]_i_2_n_0\
    );
\DATAuu[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(13),
      I1 => data8(13),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(13),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(13),
      O => \DATAuu[13]_i_3_n_0\
    );
\DATAuu[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F30A0A03F3FAFA"
    )
        port map (
      I0 => \DATAuu[15]_i_22_n_0\,
      I1 => \DATAuu[14]_i_7_n_0\,
      I2 => \^network0.di_reg[14]_0\(0),
      I3 => \DATAuu[13]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \DATAuu[15]_i_19_n_0\,
      O => \DATAuu[13]_i_4_n_0\
    );
\DATAuu[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FCA00CA"
    )
        port map (
      I0 => \^q\(13),
      I1 => E(15),
      I2 => \^network0.di_reg[14]_0\(1),
      I3 => \^network0.di_reg[14]_0\(0),
      I4 => \^q\(14),
      I5 => \DATAuu[0]_i_5_n_0\,
      O => \DATAuu[13]_i_5_n_0\
    );
\DATAuu[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3ABCCA8CCA803AB"
    )
        port map (
      I0 => data0(13),
      I1 => \DATAuu[15]_i_7_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \^network0.di_reg[14]_0\(13),
      I5 => \^q\(13),
      O => \DATAuu[13]_i_6_n_0\
    );
\DATAuu[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(2),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^q\(10),
      O => \DATAuu[13]_i_7_n_0\
    );
\DATAuu[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD0D0D0DFDFD0DF"
    )
        port map (
      I0 => \DATAuu[14]_i_2_n_0\,
      I1 => \DATAuu[14]_i_3_n_0\,
      I2 => \DATAuu[15]_i_4_n_0\,
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \^network0.di_reg[14]_0\(14),
      I5 => \DATAuu[14]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(14)
    );
\DATAuu[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF777F7"
    )
        port map (
      I0 => \DATAuu[12]_i_3_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I2 => \DATAuu[14]_i_5_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \DATAuu[14]_i_6_n_0\,
      O => \DATAuu[14]_i_2_n_0\
    );
\DATAuu[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8FF0069690000"
    )
        port map (
      I0 => \DATAuu[15]_i_7_n_0\,
      I1 => \^q\(14),
      I2 => \^network0.di_reg[14]_0\(14),
      I3 => data0(14),
      I4 => \DATAuu[15]_i_5_n_0\,
      I5 => \DATAuu[15]_i_8_n_0\,
      O => \DATAuu[14]_i_3_n_0\
    );
\DATAuu[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(14),
      I1 => data8(14),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(14),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(14),
      O => \DATAuu[14]_i_4_n_0\
    );
\DATAuu[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF1FFFFFFFD"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \^network0.di_reg[14]_0\(1),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(2),
      I5 => E(15),
      O => \DATAuu[14]_i_5_n_0\
    );
\DATAuu[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300FFCC47474747"
    )
        port map (
      I0 => \DATAuu[15]_i_19_n_0\,
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \DATAuu[15]_i_20_n_0\,
      I3 => \DATAuu[15]_i_22_n_0\,
      I4 => \DATAuu[14]_i_7_n_0\,
      I5 => \^network0.di_reg[14]_0\(0),
      O => \DATAuu[14]_i_6_n_0\
    );
\DATAuu[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B800B8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(11),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^q\(3),
      O => \DATAuu[14]_i_7_n_0\
    );
\DATAuu[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => \DATAuu[15]_i_2_n_0\,
      I1 => \DATAuu[15]_i_3_n_0\,
      I2 => \DATAuu[15]_i_4_n_0\,
      I3 => D(15),
      I4 => \DATAuu[15]_i_5_n_0\,
      I5 => \DATAuu[15]_i_6_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(15)
    );
\DATAuu[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(3),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => E(15),
      O => \DATAuu[15]_i_10_n_0\
    );
\DATAuu[15]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \DATAuu[15]_i_7_n_0\,
      I1 => \DATAuu[15]_i_8_n_0\,
      I2 => \DATAuu[15]_i_5_n_0\,
      O => \DATAuu[15]_i_11_n_0\
    );
\DATAuu[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47CC47334700"
    )
        port map (
      I0 => \DATAuu[15]_i_19_n_0\,
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \DATAuu[15]_i_20_n_0\,
      I3 => \^network0.di_reg[14]_0\(0),
      I4 => \DATAuu[15]_i_21_n_0\,
      I5 => \DATAuu[15]_i_22_n_0\,
      O => \DATAuu[15]_i_12_n_0\
    );
\DATAuu[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000001008"
    )
        port map (
      I0 => MCR(7),
      I1 => MCR(3),
      I2 => MCR(6),
      I3 => MCR(2),
      I4 => MCR(5),
      I5 => MCR(1),
      O => \DATAuu[15]_i_13_n_0\
    );
\DATAuu[15]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \CMPuu[2]_i_5_n_0\,
      I1 => MCR(2),
      I2 => MCR(3),
      I3 => MCR(1),
      I4 => MCR(5),
      O => \DATAuu[15]_i_14_n_0\
    );
\DATAuu[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF66F6"
    )
        port map (
      I0 => MCR(4),
      I1 => MCR(0),
      I2 => MCR(5),
      I3 => MCR(6),
      I4 => MCR(7),
      I5 => MCR(3),
      O => \DATAuu[15]_i_15_n_0\
    );
\DATAuu[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => MCR(6),
      I1 => MCR(2),
      I2 => MCR(1),
      I3 => MCR(5),
      I4 => MCR(0),
      I5 => MCR(4),
      O => \DATAuu[15]_i_16_n_0\
    );
\DATAuu[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC44FCFCFCFF"
    )
        port map (
      I0 => MCR(5),
      I1 => MCR(1),
      I2 => MCR(4),
      I3 => MCR(7),
      I4 => MCR(2),
      I5 => MCR(0),
      O => \DATAuu[15]_i_17_n_0\
    );
\DATAuu[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => MCR(0),
      I1 => MCR(4),
      I2 => MCR(5),
      I3 => MCR(1),
      I4 => MCR(6),
      I5 => MCR(2),
      O => \DATAuu[15]_i_18_n_0\
    );
\DATAuu[15]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFC0C0AFA0AFA0"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(0),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(12),
      I4 => \^q\(4),
      I5 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[15]_i_19_n_0\
    );
\DATAuu[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8FF0069690000"
    )
        port map (
      I0 => D(15),
      I1 => E(15),
      I2 => \DATAuu[15]_i_7_n_0\,
      I3 => data0(15),
      I4 => \DATAuu[15]_i_5_n_0\,
      I5 => \DATAuu[15]_i_8_n_0\,
      O => \DATAuu[15]_i_2_n_0\
    );
\DATAuu[15]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(10),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(6),
      I4 => \^network0.di_reg[14]_0\(3),
      I5 => \^q\(14),
      O => \DATAuu[15]_i_20_n_0\
    );
\DATAuu[15]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(11),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(7),
      I4 => \^network0.di_reg[14]_0\(3),
      I5 => E(15),
      O => \DATAuu[15]_i_21_n_0\
    );
\DATAuu[15]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50505F5F303F303F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(9),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(13),
      I4 => \^q\(5),
      I5 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[15]_i_22_n_0\
    );
\DATAuu[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2000000"
    )
        port map (
      I0 => \DATAuu[15]_i_9_n_0\,
      I1 => \DATAuu[15]_i_10_n_0\,
      I2 => \DATAuu[15]_i_11_n_0\,
      I3 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I4 => \DATAuu[12]_i_3_n_0\,
      I5 => \DATAuu[15]_i_12_n_0\,
      O => \DATAuu[15]_i_3_n_0\
    );
\DATAuu[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9099"
    )
        port map (
      I0 => MCR(4),
      I1 => MCR(0),
      I2 => \DATAuu[15]_i_13_n_0\,
      I3 => \DATAuu[15]_i_14_n_0\,
      O => \DATAuu[15]_i_4_n_0\
    );
\DATAuu[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C3C00001"
    )
        port map (
      I0 => MCR(4),
      I1 => MCR(1),
      I2 => MCR(5),
      I3 => MCR(6),
      I4 => MCR(2),
      I5 => \DATAuu[15]_i_15_n_0\,
      O => \DATAuu[15]_i_5_n_0\
    );
\DATAuu[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => E(15),
      I1 => data8(15),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(15),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(15),
      O => \DATAuu[15]_i_6_n_0\
    );
\DATAuu[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020000A880000022"
    )
        port map (
      I0 => \DATAuu[15]_i_16_n_0\,
      I1 => MCR(2),
      I2 => MCR(1),
      I3 => MCR(3),
      I4 => MCR(7),
      I5 => MCR(0),
      O => \DATAuu[15]_i_7_n_0\
    );
\DATAuu[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFBAFFFFFFFF"
    )
        port map (
      I0 => \DATAuu[15]_i_17_n_0\,
      I1 => MCR(6),
      I2 => MCR(2),
      I3 => MCR(3),
      I4 => MCR(7),
      I5 => \DATAuu[15]_i_18_n_0\,
      O => \DATAuu[15]_i_8_n_0\
    );
\DATAuu[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(0),
      I1 => \^network0.di_reg[14]_0\(1),
      O => \DATAuu[15]_i_9_n_0\
    );
\DATAuu[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \DATAuu[1]_i_2_n_0\,
      I1 => \DATAuu[15]_i_4_n_0\,
      I2 => \^network0.di_reg[14]_0\(1),
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \DATAuu[1]_i_3_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(1)
    );
\DATAuu[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4070FFFF40700000"
    )
        port map (
      I0 => \DATAuu[1]_i_4_n_0\,
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I3 => \DATAuu[1]_i_5_n_0\,
      I4 => \DATAuu[12]_i_3_n_0\,
      I5 => \DATAuu[1]_i_6_n_0\,
      O => \DATAuu[1]_i_2_n_0\
    );
\DATAuu[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(1),
      I1 => data8(1),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(1),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(1),
      O => \DATAuu[1]_i_3_n_0\
    );
\DATAuu[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF1FFFFFFFD"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \^network0.di_reg[14]_0\(1),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(2),
      I5 => \^q\(0),
      O => \DATAuu[1]_i_4_n_0\
    );
\DATAuu[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D111DDD"
    )
        port map (
      I0 => \DATAuu_reg[1]_i_7_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[4]_i_10_n_0\,
      I3 => \^network0.di_reg[14]_0\(1),
      I4 => \DATAuu[2]_i_7_n_0\,
      O => \DATAuu[1]_i_5_n_0\
    );
\DATAuu[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3ABCCA8CCA803AB"
    )
        port map (
      I0 => data0(1),
      I1 => \DATAuu[15]_i_7_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \^q\(1),
      O => \DATAuu[1]_i_6_n_0\
    );
\DATAuu[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(5),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(9),
      I4 => \^network0.di_reg[14]_0\(3),
      I5 => \^q\(1),
      O => \DATAuu[1]_i_8_n_0\
    );
\DATAuu[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5DF858AD0DA808"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(2),
      I1 => \^q\(7),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => E(15),
      I4 => \^q\(3),
      I5 => \^q\(11),
      O => \DATAuu[1]_i_9_n_0\
    );
\DATAuu[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \DATAuu[2]_i_2_n_0\,
      I1 => \DATAuu[15]_i_4_n_0\,
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \DATAuu[2]_i_3_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(2)
    );
\DATAuu[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80B0FFFF80B00000"
    )
        port map (
      I0 => \DATAuu[2]_i_4_n_0\,
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I3 => \DATAuu[2]_i_5_n_0\,
      I4 => \DATAuu[12]_i_3_n_0\,
      I5 => \DATAuu[2]_i_6_n_0\,
      O => \DATAuu[2]_i_2_n_0\
    );
\DATAuu[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => data8(2),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(2),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(2),
      O => \DATAuu[2]_i_3_n_0\
    );
\DATAuu[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(1),
      I1 => \^q\(1),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^network0.di_reg[14]_0\(2),
      I4 => \^network0.di_reg[14]_0\(0),
      I5 => \DATAuu[3]_i_7_n_0\,
      O => \DATAuu[2]_i_4_n_0\
    );
\DATAuu[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FC0C0505FCFCF"
    )
        port map (
      I0 => \DATAuu[4]_i_12_n_0\,
      I1 => \DATAuu[3]_i_8_n_0\,
      I2 => \^network0.di_reg[14]_0\(0),
      I3 => \DATAuu[4]_i_10_n_0\,
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \DATAuu[2]_i_7_n_0\,
      O => \DATAuu[2]_i_5_n_0\
    );
\DATAuu[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3ABCCA8CCA803AB"
    )
        port map (
      I0 => data0(2),
      I1 => \DATAuu[15]_i_7_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \^network0.di_reg[14]_0\(2),
      I5 => \^q\(2),
      O => \DATAuu[2]_i_6_n_0\
    );
\DATAuu[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(6),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(10),
      I4 => \^network0.di_reg[14]_0\(3),
      I5 => \^q\(2),
      O => \DATAuu[2]_i_7_n_0\
    );
\DATAuu[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \DATAuu[3]_i_2_n_0\,
      I1 => \DATAuu[15]_i_4_n_0\,
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \DATAuu[3]_i_3_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(3)
    );
\DATAuu[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80B0FFFF80B00000"
    )
        port map (
      I0 => \DATAuu[3]_i_4_n_0\,
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I3 => \DATAuu[3]_i_5_n_0\,
      I4 => \DATAuu[12]_i_3_n_0\,
      I5 => \DATAuu[3]_i_6_n_0\,
      O => \DATAuu[3]_i_2_n_0\
    );
\DATAuu[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => data8(3),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(3),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(3),
      O => \DATAuu[3]_i_3_n_0\
    );
\DATAuu[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B88888B888B88"
    )
        port map (
      I0 => \DATAuu[3]_i_7_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[0]_i_5_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \^network0.di_reg[14]_0\(1),
      O => \DATAuu[3]_i_4_n_0\
    );
\DATAuu[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330FFF0F00"
    )
        port map (
      I0 => \DATAuu[4]_i_9_n_0\,
      I1 => \DATAuu[4]_i_10_n_0\,
      I2 => \DATAuu[4]_i_12_n_0\,
      I3 => \^network0.di_reg[14]_0\(1),
      I4 => \DATAuu[3]_i_8_n_0\,
      I5 => \^network0.di_reg[14]_0\(0),
      O => \DATAuu[3]_i_5_n_0\
    );
\DATAuu[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3ABCCA8CCA803AB"
    )
        port map (
      I0 => data0(3),
      I1 => \DATAuu[15]_i_7_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_5_n_0\,
      I4 => \^network0.di_reg[14]_0\(3),
      I5 => \^q\(3),
      O => \DATAuu[3]_i_6_n_0\
    );
\DATAuu[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^q\(2),
      I4 => \^network0.di_reg[14]_0\(2),
      O => \DATAuu[3]_i_7_n_0\
    );
\DATAuu[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(3),
      I2 => E(15),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^q\(7),
      I5 => \^network0.di_reg[14]_0\(2),
      O => \DATAuu[3]_i_8_n_0\
    );
\DATAuu[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[4]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[4]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[4]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(4)
    );
\DATAuu[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(12),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^q\(4),
      O => \DATAuu[4]_i_10_n_0\
    );
\DATAuu[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => E(15),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^q\(7),
      O => \DATAuu[4]_i_11_n_0\
    );
\DATAuu[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(13),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^q\(5),
      I4 => \^network0.di_reg[14]_0\(2),
      O => \DATAuu[4]_i_12_n_0\
    );
\DATAuu[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B800000000"
    )
        port map (
      I0 => \DATAuu[4]_i_5_n_0\,
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[4]_i_6_n_0\,
      I3 => \^network0.di_reg[14]_0\(0),
      I4 => \DATAuu[4]_i_7_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \DATAuu[4]_i_2_n_0\
    );
\DATAuu[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(4),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(4),
      I5 => \^q\(4),
      O => \DATAuu[4]_i_3_n_0\
    );
\DATAuu[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[4]_i_8_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(4),
      O => \DATAuu[4]_i_4_n_0\
    );
\DATAuu[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5044FFFF50440000"
    )
        port map (
      I0 => \DATAuu[0]_i_5_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^network0.di_reg[14]_0\(1),
      I4 => \^network0.di_reg[14]_0\(0),
      I5 => \DATAuu[5]_i_5_n_0\,
      O => \DATAuu[4]_i_5_n_0\
    );
\DATAuu[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[4]_i_9_n_0\,
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \DATAuu[4]_i_10_n_0\,
      O => \DATAuu[4]_i_6_n_0\
    );
\DATAuu[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[4]_i_11_n_0\,
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \DATAuu[4]_i_12_n_0\,
      O => \DATAuu[4]_i_7_n_0\
    );
\DATAuu[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(4),
      I1 => data8(4),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(4),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(4),
      O => \DATAuu[4]_i_8_n_0\
    );
\DATAuu[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(14),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^q\(6),
      O => \DATAuu[4]_i_9_n_0\
    );
\DATAuu[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[5]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[5]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[5]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(5)
    );
\DATAuu[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE20000000000"
    )
        port map (
      I0 => \DATAuu[6]_i_5_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[5]_i_5_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \DATAuu[5]_i_6_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \DATAuu[5]_i_2_n_0\
    );
\DATAuu[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(5),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(5),
      I5 => \^q\(5),
      O => \DATAuu[5]_i_3_n_0\
    );
\DATAuu[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[5]_i_7_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(5),
      O => \DATAuu[5]_i_4_n_0\
    );
\DATAuu[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000030BB00003088"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \^q\(0),
      I3 => \^network0.di_reg[14]_0\(2),
      I4 => \^network0.di_reg[14]_0\(3),
      I5 => \^q\(4),
      O => \DATAuu[5]_i_5_n_0\
    );
\DATAuu[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[6]_i_8_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[4]_i_7_n_0\,
      O => \DATAuu[5]_i_6_n_0\
    );
\DATAuu[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(5),
      I1 => data8(5),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(5),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(5),
      O => \DATAuu[5]_i_7_n_0\
    );
\DATAuu[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[6]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[6]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[6]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(6)
    );
\DATAuu[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE20000000000"
    )
        port map (
      I0 => \DATAuu[7]_i_5_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[6]_i_5_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \DATAuu[6]_i_6_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \DATAuu[6]_i_2_n_0\
    );
\DATAuu[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(6),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(6),
      I5 => \^q\(6),
      O => \DATAuu[6]_i_3_n_0\
    );
\DATAuu[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[6]_i_7_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(6),
      O => \DATAuu[6]_i_4_n_0\
    );
\DATAuu[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \^q\(1),
      I3 => \^network0.di_reg[14]_0\(2),
      I4 => \^q\(5),
      I5 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[6]_i_5_n_0\
    );
\DATAuu[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[7]_i_9_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[6]_i_8_n_0\,
      O => \DATAuu[6]_i_6_n_0\
    );
\DATAuu[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(6),
      I1 => data8(6),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(6),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(6),
      O => \DATAuu[6]_i_7_n_0\
    );
\DATAuu[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(8),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \DATAuu[4]_i_9_n_0\,
      O => \DATAuu[6]_i_8_n_0\
    );
\DATAuu[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[7]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[7]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[7]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(7)
    );
\DATAuu[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE20000000000"
    )
        port map (
      I0 => \DATAuu[8]_i_5_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[7]_i_5_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \DATAuu[7]_i_6_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \DATAuu[7]_i_2_n_0\
    );
\DATAuu[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(7),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(7),
      I5 => \^q\(7),
      O => \DATAuu[7]_i_3_n_0\
    );
\DATAuu[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[7]_i_7_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(7),
      O => \DATAuu[7]_i_4_n_0\
    );
\DATAuu[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B08FFFF0B080000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^q\(4),
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \DATAuu[7]_i_8_n_0\,
      O => \DATAuu[7]_i_5_n_0\
    );
\DATAuu[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[8]_i_9_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[7]_i_9_n_0\,
      O => \DATAuu[7]_i_6_n_0\
    );
\DATAuu[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(7),
      I1 => data8(7),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(7),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(7),
      O => \DATAuu[7]_i_7_n_0\
    );
\DATAuu[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(6),
      I3 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[7]_i_8_n_0\
    );
\DATAuu[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(9),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \DATAuu[4]_i_11_n_0\,
      O => \DATAuu[7]_i_9_n_0\
    );
\DATAuu[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[8]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[8]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[8]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(8)
    );
\DATAuu[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(8),
      I3 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[8]_i_10_n_0\
    );
\DATAuu[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D1FFD10000000000"
    )
        port map (
      I0 => \DATAuu[9]_i_5_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[8]_i_5_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \DATAuu[8]_i_6_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \DATAuu[8]_i_2_n_0\
    );
\DATAuu[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(8),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(8),
      I5 => \^q\(8),
      O => \DATAuu[8]_i_3_n_0\
    );
\DATAuu[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[8]_i_7_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(8),
      O => \DATAuu[8]_i_4_n_0\
    );
\DATAuu[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B800B80000FFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(5),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \DATAuu[8]_i_8_n_0\,
      I5 => \^network0.di_reg[14]_0\(1),
      O => \DATAuu[8]_i_5_n_0\
    );
\DATAuu[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[9]_i_8_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[8]_i_9_n_0\,
      O => \DATAuu[8]_i_6_n_0\
    );
\DATAuu[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(8),
      I1 => data8(8),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(8),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(8),
      O => \DATAuu[8]_i_7_n_0\
    );
\DATAuu[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF35"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(3),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[8]_i_8_n_0\
    );
\DATAuu[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(10),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \DATAuu[8]_i_10_n_0\,
      O => \DATAuu[8]_i_9_n_0\
    );
\DATAuu[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \DATAuu[9]_i_2_n_0\,
      I1 => \DATAuu[12]_i_3_n_0\,
      I2 => \DATAuu[9]_i_3_n_0\,
      I3 => \DATAuu[15]_i_4_n_0\,
      I4 => \DATAuu[9]_i_4_n_0\,
      O => \NETWORK0.Di_reg[15]_0\(9)
    );
\DATAuu[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DFF1D0000000000"
    )
        port map (
      I0 => \DATAuu[10]_i_5_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[9]_i_5_n_0\,
      I3 => \DATAuu[15]_i_11_n_0\,
      I4 => \DATAuu[9]_i_6_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \DATAuu[9]_i_2_n_0\
    );
\DATAuu[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBB88BB88888B"
    )
        port map (
      I0 => data0(9),
      I1 => \DATAuu[15]_i_11_n_0\,
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => \DATAuu[15]_i_7_n_0\,
      I4 => \^network0.di_reg[14]_0\(9),
      I5 => \^q\(9),
      O => \DATAuu[9]_i_3_n_0\
    );
\DATAuu[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \DATAuu[9]_i_7_n_0\,
      I1 => \DATAuu[15]_i_5_n_0\,
      I2 => \^network0.di_reg[14]_0\(9),
      O => \DATAuu[9]_i_4_n_0\
    );
\DATAuu[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF303FAAAAAAAA"
    )
        port map (
      I0 => \DATAuu[11]_i_8_n_0\,
      I1 => \^q\(2),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(6),
      I4 => \^network0.di_reg[14]_0\(3),
      I5 => \^network0.di_reg[14]_0\(1),
      O => \DATAuu[9]_i_5_n_0\
    );
\DATAuu[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DATAuu[10]_i_8_n_0\,
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \DATAuu[9]_i_8_n_0\,
      O => \DATAuu[9]_i_6_n_0\
    );
\DATAuu[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^q\(9),
      I1 => data8(9),
      I2 => \DATAuu[15]_i_8_n_0\,
      I3 => PC(9),
      I4 => \DATAuu[15]_i_7_n_0\,
      I5 => F(9),
      O => \DATAuu[9]_i_7_n_0\
    );
\DATAuu[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => E(15),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(11),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \DATAuu[9]_i_9_n_0\,
      O => \DATAuu[9]_i_8_n_0\
    );
\DATAuu[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^q\(9),
      I3 => \^network0.di_reg[14]_0\(3),
      O => \DATAuu[9]_i_9_n_0\
    );
\DATAuu_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DATAuu[1]_i_8_n_0\,
      I1 => \DATAuu[1]_i_9_n_0\,
      O => \DATAuu_reg[1]_i_7_n_0\,
      S => \^network0.di_reg[14]_0\(1)
    );
\E[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => douta(10),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => in27(10),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \E[10]_i_1_n_0\
    );
\E[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => douta(11),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => in27(11),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \E[11]_i_1_n_0\
    );
\E[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => douta(12),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => in27(12),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \E[12]_i_1_n_0\
    );
\E[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => douta(13),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => in27(13),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \E[13]_i_1_n_0\
    );
\E[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => douta(14),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => in27(14),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \E[14]_i_1_n_0\
    );
\E[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => douta(15),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => in27(15),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \E[15]_i_1_n_0\
    );
\E[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => douta(8),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => in27(8),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \E[8]_i_1_n_0\
    );
\E[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => douta(9),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => in27(9),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \E[9]_i_1_n_0\
    );
\E_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\E_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \E[10]_i_1_n_0\,
      Q => \^q\(10),
      R => '0'
    );
\E_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \E[11]_i_1_n_0\,
      Q => \^q\(11),
      R => '0'
    );
\E_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \E[12]_i_1_n_0\,
      Q => \^q\(12),
      R => '0'
    );
\E_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \E[13]_i_1_n_0\,
      Q => \^q\(13),
      R => '0'
    );
\E_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \E[14]_i_1_n_0\,
      Q => \^q\(14),
      R => '0'
    );
\E_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \E[15]_i_1_n_0\,
      Q => E(15),
      R => '0'
    );
\E_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\E_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\E_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\E_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\E_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\E_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[6]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\E_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[7]_i_2_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\E_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \E[8]_i_1_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\E_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \E[9]_i_1_n_0\,
      Q => \^q\(9),
      R => '0'
    );
\FSM_onehot_NEXT_STATE[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I1 => in6,
      O => \FSM_onehot_NEXT_STATE[11]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in7,
      I1 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I2 => in6,
      O => \FSM_onehot_NEXT_STATE[12]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2828AAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => \NETWORK0.Bi_reg_n_0_[0]\,
      I2 => \NETWORK0.Bi_reg_n_0_[1]\,
      I3 => \FSM_onehot_NEXT_STATE[13]_i_2_n_0\,
      I4 => \NETWORK0.Bi_reg_n_0_[2]\,
      I5 => \FSM_onehot_NEXT_STATE[28]_i_5_n_0\,
      O => \FSM_onehot_NEXT_STATE[13]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \NETWORK0.Ei_reg_n_0_[0]\,
      I1 => p_1_in17_in,
      I2 => p_1_in15_in,
      I3 => p_1_in19_in,
      I4 => \FSM_onehot_NEXT_STATE[13]_i_3_n_0\,
      O => \FSM_onehot_NEXT_STATE[13]_i_2_n_0\
    );
\FSM_onehot_NEXT_STATE[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \NETWORK0.Ei_reg_n_0_[7]\,
      I1 => p_2_in,
      I2 => p_3_in,
      I3 => p_21_in,
      O => \FSM_onehot_NEXT_STATE[13]_i_3_n_0\
    );
\FSM_onehot_NEXT_STATE[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => in7,
      I1 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I2 => in6,
      O => \FSM_onehot_NEXT_STATE[14]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAA8AAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[14]\,
      I1 => \MCRi__0\(7),
      I2 => \MCRi__0\(6),
      I3 => \MCRi__0\(0),
      I4 => \MCRi__0\(4),
      I5 => \FSM_onehot_NEXT_STATE[15]_i_2_n_0\,
      O => \FSM_onehot_NEXT_STATE[15]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000141"
    )
        port map (
      I0 => \MCRi__0\(2),
      I1 => \MCRi__0\(5),
      I2 => \MCRi__0\(1),
      I3 => \MCRi__0\(0),
      I4 => \MCRi__0\(3),
      O => \FSM_onehot_NEXT_STATE[15]_i_2_n_0\
    );
\FSM_onehot_NEXT_STATE[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I1 => \FSM_onehot_NEXT_STATE[16]_i_2_n_0\,
      O => \FSM_onehot_NEXT_STATE[16]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAFF93FF9"
    )
        port map (
      I0 => \MCRi__0\(3),
      I1 => \MCRi__0\(2),
      I2 => \MCRi__0\(5),
      I3 => \MCRi__0\(1),
      I4 => \MCRi__0\(0),
      I5 => \FSM_onehot_NEXT_STATE[16]_i_3_n_0\,
      O => \FSM_onehot_NEXT_STATE[16]_i_2_n_0\
    );
\FSM_onehot_NEXT_STATE[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \MCRi__0\(3),
      I1 => \MCRi__0\(7),
      I2 => \MCRi__0\(6),
      I3 => \MCRi__0\(2),
      I4 => \MCRi__0\(4),
      I5 => \MCRi__0\(0),
      O => \FSM_onehot_NEXT_STATE[16]_i_3_n_0\
    );
\FSM_onehot_NEXT_STATE[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[17]_i_2_n_0\,
      I1 => \MCRi__0\(4),
      I2 => \MCRi__0\(0),
      I3 => \MCRi__0\(7),
      I4 => \MCRi__0\(6),
      I5 => \FSM_onehot_STATE_reg_n_0_[14]\,
      O => \FSM_onehot_NEXT_STATE[17]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \MCRi__0\(1),
      I1 => \MCRi__0\(5),
      I2 => \MCRi__0\(2),
      I3 => \MCRi__0\(3),
      O => \FSM_onehot_NEXT_STATE[17]_i_2_n_0\
    );
\FSM_onehot_NEXT_STATE[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[28]_i_6_n_0\,
      I1 => \MCRi__0\(1),
      I2 => \MCRi__0\(5),
      I3 => \MCRi__0\(2),
      O => \FSM_onehot_NEXT_STATE[19]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF4FFF4FFF4"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[1]_i_2_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[22]_i_3_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[1]_i_3_n_0\,
      I3 => \FSM_onehot_NEXT_STATE[1]_i_4_n_0\,
      I4 => \FSM_onehot_NEXT_STATE[22]_i_5_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[1]_i_5_n_0\,
      O => \FSM_onehot_NEXT_STATE[1]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004000FFFFFFFF"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[2]\,
      I1 => \FSM_onehot_NEXT_STATE[1]_i_6_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[1]_i_7_n_0\,
      I3 => \NETWORK0.Ai_reg_n_0_[1]\,
      I4 => \NETWORK0.Ai_reg_n_0_[0]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[18]\,
      O => \FSM_onehot_NEXT_STATE[1]_i_2_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => \NETWORK0.Bi_reg_n_0_[2]\,
      I2 => \FSM_onehot_NEXT_STATE[28]_i_5_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[1]\,
      I4 => \NETWORK0.Bi_reg_n_0_[0]\,
      O => \FSM_onehot_NEXT_STATE[1]_i_3_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[16]_i_2_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I2 => \FSM_onehot_NEXT_STATE[1]_i_8_n_0\,
      O => \FSM_onehot_NEXT_STATE[1]_i_4_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA2AAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \^network0.di_reg[14]_0\(0),
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(2),
      I5 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \FSM_onehot_NEXT_STATE[1]_i_5_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[8]\,
      I1 => \NETWORK0.Ai_reg_n_0_[9]\,
      I2 => \NETWORK0.Ai_reg_n_0_[10]\,
      I3 => \NETWORK0.Ai_reg_n_0_[11]\,
      I4 => \FSM_onehot_NEXT_STATE[1]_i_9_n_0\,
      O => \FSM_onehot_NEXT_STATE[1]_i_6_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[4]\,
      I1 => \NETWORK0.Ai_reg_n_0_[3]\,
      I2 => \NETWORK0.Ai_reg_n_0_[6]\,
      I3 => \NETWORK0.Ai_reg_n_0_[7]\,
      I4 => \NETWORK0.Ai_reg_n_0_[5]\,
      O => \FSM_onehot_NEXT_STATE[1]_i_7_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[27]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[16]\,
      O => \FSM_onehot_NEXT_STATE[1]_i_8_n_0\
    );
\FSM_onehot_NEXT_STATE[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[13]\,
      I1 => \NETWORK0.Ai_reg_n_0_[12]\,
      I2 => \NETWORK0.Ai_reg_n_0_[14]\,
      I3 => \NETWORK0.Ai_reg_n_0_[15]\,
      O => \FSM_onehot_NEXT_STATE[1]_i_9_n_0\
    );
\FSM_onehot_NEXT_STATE[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \FSM_onehot_NEXT_STATE[21]_i_2_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I4 => \FSM_onehot_NEXT_STATE[22]_i_5_n_0\,
      O => \FSM_onehot_NEXT_STATE[21]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[21]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \FSM_onehot_NEXT_STATE[13]_i_2_n_0\,
      I3 => \NETWORK0.CHRi[7]_i_5_n_0\,
      O => \FSM_onehot_NEXT_STATE[21]_i_2_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4F4F"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_2_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[22]_i_3_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => \FSM_onehot_NEXT_STATE[22]_i_5_n_0\,
      I4 => \FSM_onehot_NEXT_STATE[22]_i_6_n_0\,
      O => \FSM_onehot_NEXT_STATE[22]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[3]\,
      I1 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      I2 => \NETWORK0.CHRi_reg_n_0_[0]\,
      I3 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I4 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_10_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[7]\,
      I1 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      I2 => \NETWORK0.CHRi_reg_n_0_[4]\,
      I3 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I4 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_11_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[10]\,
      I1 => \NETWORK0.Bi_reg_n_0_[11]\,
      I2 => \NETWORK0.Bi_reg_n_0_[12]\,
      I3 => \NETWORK0.Bi_reg_n_0_[13]\,
      I4 => \NETWORK0.Bi_reg_n_0_[14]\,
      I5 => \NETWORK0.Bi_reg_n_0_[15]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_12_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      I1 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[5]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_13_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      I1 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[4]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_14_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      I1 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[3]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_15_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      I1 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[2]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_16_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[7]\,
      I1 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      I2 => \NETWORK0.CHRi_reg_n_0_[6]\,
      I3 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I4 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_17_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[1]\,
      I1 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      I2 => \NETWORK0.CHRi_reg_n_0_[0]\,
      I3 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I4 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_18_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(12),
      I1 => \^network0.di_reg[14]_0\(13),
      I2 => D(15),
      I3 => \^network0.di_reg[14]_0\(14),
      I4 => \FSM_onehot_NEXT_STATE[22]_i_20_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_21_n_0\,
      O => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I1 => \NETWORK0.Ai_reg_n_0_[2]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_7_n_0\,
      I3 => \NETWORK0.Ai_reg_n_0_[1]\,
      I4 => \NETWORK0.Ai_reg_n_0_[0]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_2_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(5),
      I1 => \^network0.di_reg[14]_0\(4),
      I2 => \^network0.di_reg[14]_0\(7),
      I3 => \^network0.di_reg[14]_0\(6),
      O => \FSM_onehot_NEXT_STATE[22]_i_20_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(9),
      I1 => \^network0.di_reg[14]_0\(8),
      I2 => \^network0.di_reg[14]_0\(11),
      I3 => \^network0.di_reg[14]_0\(10),
      O => \FSM_onehot_NEXT_STATE[22]_i_21_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_8_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[22]_i_9_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_10_n_0\,
      I3 => \FSM_onehot_NEXT_STATE[22]_i_11_n_0\,
      O => \FSM_onehot_NEXT_STATE[22]_i_3_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[2]\,
      I1 => \FSM_onehot_NEXT_STATE[28]_i_11_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_12_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[0]\,
      I4 => \NETWORK0.Bi_reg_n_0_[1]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_13_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[22]_i_14_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_15_n_0\,
      I3 => \FSM_onehot_NEXT_STATE[22]_i_16_n_0\,
      I4 => \FSM_onehot_NEXT_STATE[22]_i_17_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_18_n_0\,
      O => \FSM_onehot_NEXT_STATE[22]_i_5_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(1),
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^network0.di_reg[14]_0\(2),
      I4 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[20]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_6_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[5]\,
      I1 => \NETWORK0.Ai_reg_n_0_[7]\,
      I2 => \NETWORK0.Ai_reg_n_0_[6]\,
      I3 => \NETWORK0.Ai_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[4]\,
      I5 => \FSM_onehot_NEXT_STATE[1]_i_6_n_0\,
      O => \FSM_onehot_NEXT_STATE[22]_i_7_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[2]\,
      I1 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      I2 => \NETWORK0.CHRi_reg_n_0_[1]\,
      I3 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I4 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_8_n_0\
    );
\FSM_onehot_NEXT_STATE[22]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[6]\,
      I1 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      I2 => \NETWORK0.CHRi_reg_n_0_[5]\,
      I3 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I4 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      O => \FSM_onehot_NEXT_STATE[22]_i_9_n_0\
    );
\FSM_onehot_NEXT_STATE[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[23]\,
      I1 => INTERRUPTi,
      I2 => \FSM_onehot_STATE_reg_n_0_[24]\,
      O => \FSM_onehot_NEXT_STATE[24]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[24]\,
      I1 => INTERRUPTi,
      O => \FSM_onehot_NEXT_STATE[25]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A2A2A"
    )
        port map (
      I0 => CPU_STOPio,
      I1 => \FSM_onehot_NEXT_STATE[28]_i_3_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[28]_i_4_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \FSM_onehot_NEXT_STATE[28]_i_5_n_0\,
      O => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[14]\,
      I1 => \NETWORK0.Bi_reg_n_0_[15]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_10_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[6]\,
      I1 => \NETWORK0.Bi_reg_n_0_[7]\,
      I2 => \NETWORK0.Bi_reg_n_0_[3]\,
      I3 => \FSM_onehot_NEXT_STATE[28]_i_15_n_0\,
      I4 => \NETWORK0.Bi_reg_n_0_[9]\,
      I5 => \NETWORK0.Bi_reg_n_0_[8]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_11_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[19]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_12_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_13_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[6]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_14_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[5]\,
      I1 => \NETWORK0.Bi_reg_n_0_[4]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_15_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \MCRi__0\(1),
      I1 => \MCRi__0\(5),
      I2 => \MCRi__0\(2),
      I3 => \FSM_onehot_NEXT_STATE[28]_i_6_n_0\,
      O => \FSM_onehot_NEXT_STATE[28]_i_2_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[28]_i_7_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[28]_i_8_n_0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[14]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[15]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_3_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[21]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[23]\,
      I2 => \FSM_onehot_NEXT_STATE[28]_i_9_n_0\,
      I3 => INTERRUPT_BLOCK_i_2_n_0,
      I4 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[28]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_4_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[28]_i_10_n_0\,
      I1 => \NETWORK0.Bi_reg_n_0_[13]\,
      I2 => \NETWORK0.Bi_reg_n_0_[12]\,
      I3 => \NETWORK0.Bi_reg_n_0_[11]\,
      I4 => \NETWORK0.Bi_reg_n_0_[10]\,
      I5 => \FSM_onehot_NEXT_STATE[28]_i_11_n_0\,
      O => \FSM_onehot_NEXT_STATE[28]_i_5_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[14]\,
      I1 => \MCRi__0\(6),
      I2 => \MCRi__0\(7),
      I3 => \MCRi__0\(0),
      I4 => \MCRi__0\(3),
      I5 => \MCRi__0\(4),
      O => \FSM_onehot_NEXT_STATE[28]_i_6_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[16]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[27]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[26]\,
      I4 => \FSM_onehot_NEXT_STATE[28]_i_12_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[28]_i_13_n_0\,
      O => \FSM_onehot_NEXT_STATE[28]_i_7_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I4 => \MEM_address[14]_i_4_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[28]_i_14_n_0\,
      O => \FSM_onehot_NEXT_STATE[28]_i_8_n_0\
    );
\FSM_onehot_NEXT_STATE[28]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[24]\,
      O => \FSM_onehot_NEXT_STATE[28]_i_9_n_0\
    );
\FSM_onehot_NEXT_STATE[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => \NEXT_STATE2_carry__2_n_1\,
      I2 => \NETWORK0.F_MODE_reg_n_0\,
      O => \FSM_onehot_NEXT_STATE[2]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => \NETWORK0.F_MODE_reg_n_0\,
      I2 => \NEXT_STATE2_carry__2_n_1\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \FSM_onehot_NEXT_STATE[4]_i_1_n_0\
    );
\FSM_onehot_NEXT_STATE_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      D => '0',
      PRE => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[0]\
    );
\FSM_onehot_NEXT_STATE_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[9]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[10]\
    );
\FSM_onehot_NEXT_STATE_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[11]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[11]\
    );
\FSM_onehot_NEXT_STATE_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[12]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[12]\
    );
\FSM_onehot_NEXT_STATE_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[13]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[13]\
    );
\FSM_onehot_NEXT_STATE_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[14]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[14]\
    );
\FSM_onehot_NEXT_STATE_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[15]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[15]\
    );
\FSM_onehot_NEXT_STATE_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[16]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[16]\
    );
\FSM_onehot_NEXT_STATE_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[17]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[17]\
    );
\FSM_onehot_NEXT_STATE_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[17]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[18]\
    );
\FSM_onehot_NEXT_STATE_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[19]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[19]\
    );
\FSM_onehot_NEXT_STATE_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[1]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[1]\
    );
\FSM_onehot_NEXT_STATE_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[19]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[20]\
    );
\FSM_onehot_NEXT_STATE_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[21]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[21]\
    );
\FSM_onehot_NEXT_STATE_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[22]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[22]\
    );
\FSM_onehot_NEXT_STATE_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[22]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[23]\
    );
\FSM_onehot_NEXT_STATE_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[24]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[24]\
    );
\FSM_onehot_NEXT_STATE_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[25]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[25]\
    );
\FSM_onehot_NEXT_STATE_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[25]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[26]\
    );
\FSM_onehot_NEXT_STATE_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[26]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[27]\
    );
\FSM_onehot_NEXT_STATE_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[28]_i_2_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[28]\
    );
\FSM_onehot_NEXT_STATE_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[2]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[2]\
    );
\FSM_onehot_NEXT_STATE_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[2]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[3]\
    );
\FSM_onehot_NEXT_STATE_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE[4]_i_1_n_0\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[4]\
    );
\FSM_onehot_NEXT_STATE_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[4]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[5]\
    );
\FSM_onehot_NEXT_STATE_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[5]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[6]\
    );
\FSM_onehot_NEXT_STATE_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[6]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[7]\
    );
\FSM_onehot_NEXT_STATE_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[7]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[8]\
    );
\FSM_onehot_NEXT_STATE_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \FSM_onehot_NEXT_STATE[28]_i_1_n_0\,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_STATE_reg_n_0_[8]\,
      Q => \FSM_onehot_NEXT_STATE_reg_n_0_[9]\
    );
\FSM_onehot_STATE_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[0]\,
      PRE => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[0]\
    );
\FSM_onehot_STATE_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[10]\,
      Q => \FSM_onehot_STATE_reg_n_0_[10]\
    );
\FSM_onehot_STATE_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[11]\,
      Q => \FSM_onehot_STATE_reg_n_0_[11]\
    );
\FSM_onehot_STATE_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[12]\,
      Q => \FSM_onehot_STATE_reg_n_0_[12]\
    );
\FSM_onehot_STATE_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[13]\,
      Q => \FSM_onehot_STATE_reg_n_0_[13]\
    );
\FSM_onehot_STATE_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[14]\,
      Q => \FSM_onehot_STATE_reg_n_0_[14]\
    );
\FSM_onehot_STATE_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[15]\,
      Q => \FSM_onehot_STATE_reg_n_0_[15]\
    );
\FSM_onehot_STATE_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[16]\,
      Q => \FSM_onehot_STATE_reg_n_0_[16]\
    );
\FSM_onehot_STATE_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[17]\,
      Q => \FSM_onehot_STATE_reg_n_0_[17]\
    );
\FSM_onehot_STATE_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[18]\,
      Q => \FSM_onehot_STATE_reg_n_0_[18]\
    );
\FSM_onehot_STATE_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[19]\,
      Q => \FSM_onehot_STATE_reg_n_0_[19]\
    );
\FSM_onehot_STATE_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[1]\,
      Q => \FSM_onehot_STATE_reg_n_0_[1]\
    );
\FSM_onehot_STATE_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[20]\,
      Q => \FSM_onehot_STATE_reg_n_0_[20]\
    );
\FSM_onehot_STATE_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[21]\,
      Q => \FSM_onehot_STATE_reg_n_0_[21]\
    );
\FSM_onehot_STATE_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[22]\,
      Q => \FSM_onehot_STATE_reg_n_0_[22]\
    );
\FSM_onehot_STATE_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[23]\,
      Q => \FSM_onehot_STATE_reg_n_0_[23]\
    );
\FSM_onehot_STATE_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[24]\,
      Q => \FSM_onehot_STATE_reg_n_0_[24]\
    );
\FSM_onehot_STATE_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[25]\,
      Q => \FSM_onehot_STATE_reg_n_0_[25]\
    );
\FSM_onehot_STATE_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[26]\,
      Q => \FSM_onehot_STATE_reg_n_0_[26]\
    );
\FSM_onehot_STATE_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[27]\,
      Q => \FSM_onehot_STATE_reg_n_0_[27]\
    );
\FSM_onehot_STATE_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[28]\,
      Q => \FSM_onehot_STATE_reg_n_0_[28]\
    );
\FSM_onehot_STATE_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[2]\,
      Q => \FSM_onehot_STATE_reg_n_0_[2]\
    );
\FSM_onehot_STATE_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[3]\,
      Q => \FSM_onehot_STATE_reg_n_0_[3]\
    );
\FSM_onehot_STATE_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[4]\,
      Q => \FSM_onehot_STATE_reg_n_0_[4]\
    );
\FSM_onehot_STATE_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[5]\,
      Q => \FSM_onehot_STATE_reg_n_0_[5]\
    );
\FSM_onehot_STATE_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[6]\,
      Q => \FSM_onehot_STATE_reg_n_0_[6]\
    );
\FSM_onehot_STATE_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[7]\,
      Q => \FSM_onehot_STATE_reg_n_0_[7]\
    );
\FSM_onehot_STATE_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[8]\,
      Q => \FSM_onehot_STATE_reg_n_0_[8]\
    );
\FSM_onehot_STATE_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CPU_STOPio,
      CLR => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      D => \FSM_onehot_NEXT_STATE_reg_n_0_[9]\,
      Q => \FSM_onehot_STATE_reg_n_0_[9]\
    );
\FSM_sequential_NEXT_STATE[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090090909"
    )
        port map (
      I0 => \FSM_sequential_NEXT_STATE_reg[0]\(7),
      I1 => \^iwr_reg[7]_0\,
      I2 => \FSM_sequential_NEXT_STATE_reg[0]\(6),
      I3 => dataout(6),
      I4 => \^iwr_reg[7]_1\(6),
      I5 => \FSM_sequential_NEXT_STATE[0]_i_3_n_0\,
      O => \DETECT_PREVu_reg[7]\
    );
\FSM_sequential_NEXT_STATE[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \FSM_sequential_NEXT_STATE[0]_i_4_n_0\,
      I1 => \FSM_sequential_NEXT_STATE_reg[0]\(3),
      I2 => \^iwr_reg[3]_0\,
      I3 => \FSM_sequential_NEXT_STATE_reg[0]\(0),
      I4 => \^iwr_reg[0]_0\,
      I5 => \FSM_sequential_NEXT_STATE[0]_i_5_n_0\,
      O => \FSM_sequential_NEXT_STATE[0]_i_3_n_0\
    );
\FSM_sequential_NEXT_STATE[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78FFFFFFFF787878"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(5),
      I1 => dataout(5),
      I2 => \FSM_sequential_NEXT_STATE_reg[0]\(5),
      I3 => \^iwr_reg[7]_1\(4),
      I4 => dataout(4),
      I5 => \FSM_sequential_NEXT_STATE_reg[0]\(4),
      O => \FSM_sequential_NEXT_STATE[0]_i_4_n_0\
    );
\FSM_sequential_NEXT_STATE[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78FFFFFFFF787878"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(2),
      I1 => dataout(2),
      I2 => \FSM_sequential_NEXT_STATE_reg[0]\(2),
      I3 => \^iwr_reg[7]_1\(1),
      I4 => dataout(1),
      I5 => \FSM_sequential_NEXT_STATE_reg[0]\(1),
      O => \FSM_sequential_NEXT_STATE[0]_i_5_n_0\
    );
\F[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => \F[15]_i_1_n_0\
    );
\F[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => F0
    );
\F_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(0),
      Q => F(0),
      R => \F[15]_i_1_n_0\
    );
\F_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(10),
      Q => F(10),
      R => \F[15]_i_1_n_0\
    );
\F_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(11),
      Q => F(11),
      R => \F[15]_i_1_n_0\
    );
\F_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(12),
      Q => F(12),
      R => \F[15]_i_1_n_0\
    );
\F_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(13),
      Q => F(13),
      R => \F[15]_i_1_n_0\
    );
\F_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(14),
      Q => F(14),
      R => \F[15]_i_1_n_0\
    );
\F_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(15),
      Q => F(15),
      R => \F[15]_i_1_n_0\
    );
\F_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(1),
      Q => F(1),
      R => \F[15]_i_1_n_0\
    );
\F_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(2),
      Q => F(2),
      R => \F[15]_i_1_n_0\
    );
\F_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(3),
      Q => F(3),
      R => \F[15]_i_1_n_0\
    );
\F_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(4),
      Q => F(4),
      R => \F[15]_i_1_n_0\
    );
\F_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(5),
      Q => F(5),
      R => \F[15]_i_1_n_0\
    );
\F_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(6),
      Q => F(6),
      R => \F[15]_i_1_n_0\
    );
\F_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(7),
      Q => F(7),
      R => \F[15]_i_1_n_0\
    );
\F_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(8),
      Q => F(8),
      R => \F[15]_i_1_n_0\
    );
\F_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => F0,
      D => douta(9),
      Q => F(9),
      R => \F[15]_i_1_n_0\
    );
\ICR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[0]_i_1_n_0\,
      Q => \ICR_reg[7]_0\(0),
      R => '0'
    );
\ICR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[1]_i_1_n_0\,
      Q => \ICR_reg[7]_0\(1),
      R => '0'
    );
\ICR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[2]_i_1_n_0\,
      Q => \ICR_reg[7]_0\(2),
      R => '0'
    );
\ICR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[3]_i_1_n_0\,
      Q => \ICR_reg[7]_0\(3),
      R => '0'
    );
\ICR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[4]_i_1_n_0\,
      Q => \ICR_reg[7]_0\(4),
      R => '0'
    );
\ICR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[5]_i_1_n_0\,
      Q => \ICR_reg[7]_0\(5),
      R => '0'
    );
\ICR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[6]_i_1_n_0\,
      Q => \ICR_reg[7]_0\(6),
      R => '0'
    );
\ICR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[7]_i_2_n_0\,
      Q => \ICR_reg[7]_0\(7),
      R => '0'
    );
\IDR[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044444"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_4_n_0\,
      I4 => \NETWORK0.IORi[7]_i_3_n_0\,
      O => IDR0
    );
\IDR[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \IDR[0]_i_3_n_0\,
      I1 => IDR(0),
      I2 => \IDR[0]_i_4_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      I4 => \IDR[0]_i_5_n_0\,
      O => \IDR[0]_i_2_n_0\
    );
\IDR[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707770707070707"
    )
        port map (
      I0 => \IDR[0]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I3 => \NETWORK0.Ai_reg_n_0_[2]\,
      I4 => \FSM_onehot_NEXT_STATE[22]_i_7_n_0\,
      I5 => \IDR[0]_i_7_n_0\,
      O => \IDR[0]_i_3_n_0\
    );
\IDR[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ei_reg_n_0_[0]\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => IDR(0),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \NETWORK0.ICRi[0]_i_2_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \IDR[0]_i_4_n_0\
    );
\IDR[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDDDDDDDDDDDD"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I1 => \IDR[0]_i_6_n_0\,
      I2 => \NETWORK0.Ai_reg_n_0_[2]\,
      I3 => \FSM_onehot_NEXT_STATE[22]_i_7_n_0\,
      I4 => \IDR[0]_i_7_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[18]\,
      O => \IDR[0]_i_5_n_0\
    );
\IDR[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(1),
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I3 => \^network0.di_reg[14]_0\(2),
      I4 => \^network0.di_reg[14]_0\(3),
      O => \IDR[0]_i_6_n_0\
    );
\IDR[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[1]\,
      I1 => \NETWORK0.Ai_reg_n_0_[0]\,
      O => \IDR[0]_i_7_n_0\
    );
\IDR[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \IDR[0]_i_3_n_0\,
      I1 => IDR(1),
      I2 => \IDR[1]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      I4 => \IDR[0]_i_5_n_0\,
      O => \IDR[1]_i_1_n_0\
    );
\IDR[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => p_1_in15_in,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => IDR(1),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \MCRu[1]_i_2_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \IDR[1]_i_2_n_0\
    );
\IDR[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \IDR[0]_i_3_n_0\,
      I1 => IDR(2),
      I2 => \IDR[2]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      I4 => \IDR[0]_i_5_n_0\,
      O => \IDR[2]_i_1_n_0\
    );
\IDR[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => p_1_in17_in,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => IDR(2),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \MCRu[2]_i_2_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \IDR[2]_i_2_n_0\
    );
\IDR[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \IDR[0]_i_3_n_0\,
      I1 => IDR(3),
      I2 => \IDR[3]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      I4 => \IDR[0]_i_5_n_0\,
      O => \IDR[3]_i_1_n_0\
    );
\IDR[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => p_1_in19_in,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => IDR(3),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \MCRu[3]_i_2_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \IDR[3]_i_2_n_0\
    );
\IDR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \IDR[0]_i_3_n_0\,
      I1 => IDR(4),
      I2 => \IDR[4]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      I4 => \IDR[0]_i_5_n_0\,
      O => \IDR[4]_i_1_n_0\
    );
\IDR[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => p_21_in,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => IDR(4),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \NETWORK0.CHRi[4]_i_2_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \IDR[4]_i_2_n_0\
    );
\IDR[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \IDR[0]_i_3_n_0\,
      I1 => IDR(5),
      I2 => \IDR[5]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      I4 => \IDR[0]_i_5_n_0\,
      O => \IDR[5]_i_1_n_0\
    );
\IDR[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => p_2_in,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => IDR(5),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \NETWORK0.CHRi[5]_i_2_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \IDR[5]_i_2_n_0\
    );
\IDR[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \IDR[0]_i_3_n_0\,
      I1 => IDR(6),
      I2 => \IDR[6]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      I4 => \IDR[0]_i_5_n_0\,
      O => \IDR[6]_i_1_n_0\
    );
\IDR[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => p_3_in,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => IDR(6),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \NETWORK0.CHRi[6]_i_2_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \IDR[6]_i_2_n_0\
    );
\IDR[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \IDR[0]_i_3_n_0\,
      I1 => IDR(7),
      I2 => \IDR[7]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      I4 => \IDR[0]_i_5_n_0\,
      O => \IDR[7]_i_1_n_0\
    );
\IDR[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ei_reg_n_0_[7]\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => IDR(7),
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \NETWORK0.CHRi[7]_i_6_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \IDR[7]_i_2_n_0\
    );
\IDR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IDR0,
      D => \IDR[0]_i_2_n_0\,
      Q => IDR(0),
      R => '0'
    );
\IDR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IDR0,
      D => \IDR[1]_i_1_n_0\,
      Q => IDR(1),
      R => '0'
    );
\IDR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IDR0,
      D => \IDR[2]_i_1_n_0\,
      Q => IDR(2),
      R => '0'
    );
\IDR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IDR0,
      D => \IDR[3]_i_1_n_0\,
      Q => IDR(3),
      R => '0'
    );
\IDR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IDR0,
      D => \IDR[4]_i_1_n_0\,
      Q => IDR(4),
      R => '0'
    );
\IDR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IDR0,
      D => \IDR[5]_i_1_n_0\,
      Q => IDR(5),
      R => '0'
    );
\IDR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IDR0,
      D => \IDR[6]_i_1_n_0\,
      Q => IDR(6),
      R => '0'
    );
\IDR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IDR0,
      D => \IDR[7]_i_1_n_0\,
      Q => IDR(7),
      R => '0'
    );
INTERRUPT_BLOCK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDD88888888"
    )
        port map (
      I0 => INTERRUPT_BLOCK_reg_0,
      I1 => \FSM_onehot_STATE_reg_n_0_[23]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[24]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I4 => INTERRUPT_BLOCK_i_2_n_0,
      I5 => \^interrupt_block\,
      O => INTERRUPT_BLOCK_i_1_n_0
    );
INTERRUPT_BLOCK_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[25]\,
      O => INTERRUPT_BLOCK_i_2_n_0
    );
INTERRUPT_BLOCK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => INTERRUPT_BLOCK_i_1_n_0,
      Q => \^interrupt_block\,
      R => '0'
    );
\IWR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[0]_i_1_n_0\,
      Q => \^iwr_reg[7]_1\(0),
      R => '0'
    );
\IWR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[1]_i_1_n_0\,
      Q => \^iwr_reg[7]_1\(1),
      R => '0'
    );
\IWR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[2]_i_1_n_0\,
      Q => \^iwr_reg[7]_1\(2),
      R => '0'
    );
\IWR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[3]_i_1_n_0\,
      Q => \^iwr_reg[7]_1\(3),
      R => '0'
    );
\IWR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[4]_i_1_n_0\,
      Q => \^iwr_reg[7]_1\(4),
      R => '0'
    );
\IWR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[5]_i_1_n_0\,
      Q => \^iwr_reg[7]_1\(5),
      R => '0'
    );
\IWR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[6]_i_1_n_0\,
      Q => \^iwr_reg[7]_1\(6),
      R => '0'
    );
\IWR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[7]_i_2_n_0\,
      Q => \^iwr_reg[7]_1\(7),
      R => '0'
    );
\MCRu[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => douta(0),
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \NETWORK0.Ai_reg_n_0_[0]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I4 => \MCRi__0\(0),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \MCRu[0]_i_1_n_0\
    );
\MCRu[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => douta(1),
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \MCRu[1]_i_2_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I4 => \MCRi__0\(1),
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \MCRu[1]_i_1_n_0\
    );
\MCRu[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[1]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \MCRu[1]_i_2_n_0\
    );
\MCRu[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => douta(2),
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \MCRu[2]_i_2_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I4 => \MCRi__0\(2),
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \MCRu[2]_i_1_n_0\
    );
\MCRu[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[2]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \MCRu[2]_i_2_n_0\
    );
\MCRu[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => douta(3),
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \MCRu[3]_i_2_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I4 => \MCRi__0\(3),
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \MCRu[3]_i_1_n_0\
    );
\MCRu[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[3]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \MCRu[3]_i_2_n_0\
    );
\MCRu[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => douta(4),
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \NETWORK0.Ai_reg_n_0_[4]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I4 => \MCRi__0\(4),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \MCRu[4]_i_1_n_0\
    );
\MCRu[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => douta(5),
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \NETWORK0.CHRi[5]_i_2_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I4 => \MCRi__0\(5),
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \MCRu[5]_i_1_n_0\
    );
\MCRu[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => douta(6),
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \NETWORK0.CHRi[6]_i_2_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I4 => \MCRi__0\(6),
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \MCRu[6]_i_1_n_0\
    );
\MCRu[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044444444"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \NETWORK0.MCRi[7]_i_3_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I5 => \MCRu[7]_i_3_n_0\,
      O => MCRu0
    );
\MCRu[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => douta(7),
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \NETWORK0.CHRi[7]_i_6_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I4 => \MCRi__0\(7),
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \MCRu[7]_i_2_n_0\
    );
\MCRu[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FDF5F5F"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => \NETWORK0.Bi_reg_n_0_[2]\,
      I2 => \FSM_onehot_NEXT_STATE[28]_i_5_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[1]\,
      I4 => \NETWORK0.Bi_reg_n_0_[0]\,
      O => \MCRu[7]_i_3_n_0\
    );
\MCRu_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRu0,
      D => \MCRu[0]_i_1_n_0\,
      Q => MCR(0),
      R => '0'
    );
\MCRu_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRu0,
      D => \MCRu[1]_i_1_n_0\,
      Q => MCR(1),
      R => '0'
    );
\MCRu_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRu0,
      D => \MCRu[2]_i_1_n_0\,
      Q => MCR(2),
      R => '0'
    );
\MCRu_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRu0,
      D => \MCRu[3]_i_1_n_0\,
      Q => MCR(3),
      R => '0'
    );
\MCRu_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRu0,
      D => \MCRu[4]_i_1_n_0\,
      Q => MCR(4),
      R => '0'
    );
\MCRu_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRu0,
      D => \MCRu[5]_i_1_n_0\,
      Q => MCR(5),
      R => '0'
    );
\MCRu_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRu0,
      D => \MCRu[6]_i_1_n_0\,
      Q => MCR(6),
      R => '0'
    );
\MCRu_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRu0,
      D => \MCRu[7]_i_2_n_0\,
      Q => MCR(7),
      R => '0'
    );
\MEM_address[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \MEM_address[0]_i_2_n_0\,
      I1 => in35(0),
      I2 => \MEM_address[14]_i_4_n_0\,
      I3 => \MEM_address[0]_i_3_n_0\,
      I4 => \NETWORK0.Bi_reg_n_0_[0]\,
      I5 => \MEM_address[14]_i_8_n_0\,
      O => \MEM_address[0]_i_1_n_0\
    );
\MEM_address[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I2 => \^network0.di_reg[14]_0\(0),
      I3 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I5 => \NETWORK0.Ai_reg_n_0_[0]\,
      O => \MEM_address[0]_i_2_n_0\
    );
\MEM_address[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I1 => in36(0),
      I2 => \FSM_onehot_STATE_reg_n_0_[16]\,
      I3 => PCi(0),
      I4 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I5 => INTERRUPT_BLOCK_i_2_n_0,
      O => \MEM_address[0]_i_3_n_0\
    );
\MEM_address[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \MEM_address[10]_i_2_n_0\,
      I1 => \MEM_address[14]_i_8_n_0\,
      I2 => \NETWORK0.Bi_reg_n_0_[10]\,
      I3 => \MEM_address[10]_i_3_n_0\,
      I4 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[10]_i_1_n_0\
    );
\MEM_address[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[10]\,
      I1 => \MEM_address[2]_i_3_n_0\,
      I2 => \MEM_address[14]_i_13_n_0\,
      I3 => in35(10),
      I4 => \MEM_address[14]_i_4_n_0\,
      I5 => \MEM_address[14]_i_6_n_0\,
      O => \MEM_address[10]_i_2_n_0\
    );
\MEM_address[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[13]_i_4_n_0\,
      I1 => \^network0.di_reg[14]_0\(10),
      I2 => PCi(10),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(10),
      O => \MEM_address[10]_i_3_n_0\
    );
\MEM_address[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \MEM_address[11]_i_2_n_0\,
      I1 => \MEM_address[14]_i_8_n_0\,
      I2 => \NETWORK0.Bi_reg_n_0_[11]\,
      I3 => \MEM_address[11]_i_3_n_0\,
      I4 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[11]_i_1_n_0\
    );
\MEM_address[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[11]\,
      I1 => \MEM_address[2]_i_3_n_0\,
      I2 => \MEM_address[14]_i_13_n_0\,
      I3 => \^network0.di_reg[14]_0\(11),
      I4 => \MEM_address[13]_i_4_n_0\,
      I5 => \MEM_address[14]_i_6_n_0\,
      O => \MEM_address[11]_i_2_n_0\
    );
\MEM_address[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[14]_i_4_n_0\,
      I1 => in35(11),
      I2 => PCi(11),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(11),
      O => \MEM_address[11]_i_3_n_0\
    );
\MEM_address[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \MEM_address[12]_i_2_n_0\,
      I1 => \MEM_address[14]_i_8_n_0\,
      I2 => \NETWORK0.Bi_reg_n_0_[12]\,
      I3 => \MEM_address[12]_i_3_n_0\,
      I4 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[12]_i_1_n_0\
    );
\MEM_address[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[12]\,
      I1 => \MEM_address[2]_i_3_n_0\,
      I2 => \MEM_address[14]_i_13_n_0\,
      I3 => in35(12),
      I4 => \MEM_address[14]_i_4_n_0\,
      I5 => \MEM_address[14]_i_6_n_0\,
      O => \MEM_address[12]_i_2_n_0\
    );
\MEM_address[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[13]_i_4_n_0\,
      I1 => \^network0.di_reg[14]_0\(12),
      I2 => PCi(12),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(12),
      O => \MEM_address[12]_i_3_n_0\
    );
\MEM_address[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \MEM_address[13]_i_2_n_0\,
      I1 => \MEM_address[14]_i_8_n_0\,
      I2 => \NETWORK0.Bi_reg_n_0_[13]\,
      I3 => \MEM_address[13]_i_3_n_0\,
      I4 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[13]_i_1_n_0\
    );
\MEM_address[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[13]\,
      I1 => \MEM_address[2]_i_3_n_0\,
      I2 => \MEM_address[14]_i_13_n_0\,
      I3 => in35(13),
      I4 => \MEM_address[14]_i_4_n_0\,
      I5 => \MEM_address[14]_i_6_n_0\,
      O => \MEM_address[13]_i_2_n_0\
    );
\MEM_address[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[13]_i_4_n_0\,
      I1 => \^network0.di_reg[14]_0\(13),
      I2 => PCi(13),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(13),
      O => \MEM_address[13]_i_3_n_0\
    );
\MEM_address[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[19]\,
      O => \MEM_address[13]_i_4_n_0\
    );
\MEM_address[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA8AAAA"
    )
        port map (
      I0 => INTERRUPT_BLOCK_reg_0,
      I1 => \MEM_address[14]_i_3_n_0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I4 => \MEM_address[14]_i_4_n_0\,
      I5 => \MEM_address[14]_i_5_n_0\,
      O => MEM_address0
    );
\MEM_address[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F444"
    )
        port map (
      I0 => \MEM_address[14]_i_4_n_0\,
      I1 => in35(14),
      I2 => \^network0.di_reg[14]_0\(14),
      I3 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I5 => \MEM_address[14]_i_13_n_0\,
      O => \MEM_address[14]_i_10_n_0\
    );
\MEM_address[14]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[24]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[21]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[14]\,
      O => \MEM_address[14]_i_13_n_0\
    );
\MEM_address[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \MEM_address[14]_i_6_n_0\,
      I1 => \MEM_address[14]_i_7_n_0\,
      I2 => \MEM_address[14]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[14]\,
      I4 => \MEM_address[14]_i_9_n_0\,
      I5 => \MEM_address[14]_i_10_n_0\,
      O => \MEM_address[14]_i_2_n_0\
    );
\MEM_address[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \MEM_address[14]_i_8_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I5 => \MEM_data[7]_i_4_n_0\,
      O => \MEM_address[14]_i_3_n_0\
    );
\MEM_address[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      O => \MEM_address[14]_i_4_n_0\
    );
\MEM_address[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[22]\,
      O => \MEM_address[14]_i_5_n_0\
    );
\MEM_address[14]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[26]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[27]\,
      O => \MEM_address[14]_i_6_n_0\
    );
\MEM_address[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[23]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \MEM_address[14]_i_7_n_0\
    );
\MEM_address[14]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[13]\,
      O => \MEM_address[14]_i_8_n_0\
    );
\MEM_address[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I1 => in36(14),
      I2 => PCi(14),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \MEM_address[2]_i_3_n_0\,
      I5 => \NETWORK0.Ai_reg_n_0_[14]\,
      O => \MEM_address[14]_i_9_n_0\
    );
\MEM_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \MEM_address[1]_i_2_n_0\,
      I1 => \MEM_address[1]_i_3_n_0\,
      I2 => in35(1),
      I3 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[5]\,
      O => \MEM_address[1]_i_1_n_0\
    );
\MEM_address[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEFF"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I3 => \NETWORK0.ALU_DATAi[7]_i_3_n_0\,
      I4 => \MEM_address[1]_i_5_n_0\,
      O => \MEM_address[1]_i_2_n_0\
    );
\MEM_address[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I3 => PCi(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(1),
      O => \MEM_address[1]_i_3_n_0\
    );
\MEM_address[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D0DDD0D0000DD0D"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[1]\,
      I1 => \MEM_address[14]_i_8_n_0\,
      I2 => \NETWORK0.Ai_reg_n_0_[1]\,
      I3 => \MEM_address[2]_i_3_n_0\,
      I4 => \^network0.di_reg[14]_0\(1),
      I5 => \MEM_address[13]_i_4_n_0\,
      O => \MEM_address[1]_i_5_n_0\
    );
\MEM_address[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \^f_mode_offset__0\(0),
      O => \MEM_address[1]_i_6_n_0\
    );
\MEM_address[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \MEM_address[2]_i_2_n_0\,
      I1 => \NETWORK0.Ai_reg_n_0_[2]\,
      I2 => \MEM_address[2]_i_3_n_0\,
      I3 => \MEM_address[2]_i_4_n_0\,
      I4 => \NETWORK0.Bi_reg_n_0_[2]\,
      I5 => \MEM_address[14]_i_8_n_0\,
      O => \MEM_address[2]_i_1_n_0\
    );
\MEM_address[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I2 => in35(2),
      I3 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I5 => \^network0.di_reg[14]_0\(2),
      O => \MEM_address[2]_i_2_n_0\
    );
\MEM_address[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[17]\,
      O => \MEM_address[2]_i_3_n_0\
    );
\MEM_address[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => PCi(2),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(2),
      O => \MEM_address[2]_i_4_n_0\
    );
\MEM_address[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \MEM_address[3]_i_2_n_0\,
      I1 => \MEM_address[8]_i_3_n_0\,
      I2 => \MEM_address[14]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[3]\,
      I4 => \MEM_address[3]_i_3_n_0\,
      I5 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[3]_i_1_n_0\
    );
\MEM_address[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I5 => in35(3),
      O => \MEM_address[3]_i_2_n_0\
    );
\MEM_address[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[2]_i_3_n_0\,
      I1 => \NETWORK0.Ai_reg_n_0_[3]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I3 => in36(3),
      I4 => PCi(3),
      I5 => \FSM_onehot_STATE_reg_n_0_[2]\,
      O => \MEM_address[3]_i_3_n_0\
    );
\MEM_address[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(1),
      O => \MEM_address[3]_i_5_n_0\
    );
\MEM_address[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PCi(0),
      I1 => \^f_mode_offset__0\(0),
      O => \MEM_address[3]_i_6_n_0\
    );
\MEM_address[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \MEM_address[4]_i_2_n_0\,
      I1 => \MEM_address[8]_i_3_n_0\,
      I2 => \MEM_address[14]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[4]\,
      I4 => \MEM_address[4]_i_3_n_0\,
      I5 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[4]_i_1_n_0\
    );
\MEM_address[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I2 => in35(4),
      I3 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I5 => \NETWORK0.Ai_reg_n_0_[4]\,
      O => \MEM_address[4]_i_2_n_0\
    );
\MEM_address[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[13]_i_4_n_0\,
      I1 => \^network0.di_reg[14]_0\(4),
      I2 => PCi(4),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(4),
      O => \MEM_address[4]_i_3_n_0\
    );
\MEM_address[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \MEM_address[5]_i_2_n_0\,
      I1 => \MEM_address[8]_i_3_n_0\,
      I2 => \MEM_address[14]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[5]\,
      I4 => \MEM_address[5]_i_3_n_0\,
      I5 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[5]_i_1_n_0\
    );
\MEM_address[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I2 => \^network0.di_reg[14]_0\(5),
      I3 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I5 => \NETWORK0.Ai_reg_n_0_[5]\,
      O => \MEM_address[5]_i_2_n_0\
    );
\MEM_address[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[14]_i_4_n_0\,
      I1 => in35(5),
      I2 => PCi(5),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(5),
      O => \MEM_address[5]_i_3_n_0\
    );
\MEM_address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \MEM_address[6]_i_2_n_0\,
      I1 => \MEM_address[8]_i_3_n_0\,
      I2 => \MEM_address[14]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[6]\,
      I4 => \MEM_address[6]_i_3_n_0\,
      I5 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[6]_i_1_n_0\
    );
\MEM_address[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I2 => in35(6),
      I3 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I5 => \NETWORK0.Ai_reg_n_0_[6]\,
      O => \MEM_address[6]_i_2_n_0\
    );
\MEM_address[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[13]_i_4_n_0\,
      I1 => \^network0.di_reg[14]_0\(6),
      I2 => PCi(6),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(6),
      O => \MEM_address[6]_i_3_n_0\
    );
\MEM_address[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \MEM_address[7]_i_2_n_0\,
      I1 => \MEM_address[8]_i_3_n_0\,
      I2 => \MEM_address[14]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[7]\,
      I4 => \MEM_address[7]_i_3_n_0\,
      I5 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[7]_i_1_n_0\
    );
\MEM_address[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I2 => in35(7),
      I3 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I5 => \^network0.di_reg[14]_0\(7),
      O => \MEM_address[7]_i_2_n_0\
    );
\MEM_address[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[2]_i_3_n_0\,
      I1 => \NETWORK0.Ai_reg_n_0_[7]\,
      I2 => PCi(7),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(7),
      O => \MEM_address[7]_i_3_n_0\
    );
\MEM_address[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \MEM_address[8]_i_2_n_0\,
      I1 => \MEM_address[8]_i_3_n_0\,
      I2 => \MEM_address[14]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[8]\,
      I4 => \MEM_address[8]_i_4_n_0\,
      I5 => \MEM_address[14]_i_7_n_0\,
      O => \MEM_address[8]_i_1_n_0\
    );
\MEM_address[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I2 => in35(8),
      I3 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I5 => \NETWORK0.Ai_reg_n_0_[8]\,
      O => \MEM_address[8]_i_2_n_0\
    );
\MEM_address[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[27]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[26]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I3 => \MEM_address[14]_i_13_n_0\,
      O => \MEM_address[8]_i_3_n_0\
    );
\MEM_address[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[13]_i_4_n_0\,
      I1 => \^network0.di_reg[14]_0\(8),
      I2 => PCi(8),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(8),
      O => \MEM_address[8]_i_4_n_0\
    );
\MEM_address[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \MEM_address[14]_i_6_n_0\,
      I1 => \MEM_address[14]_i_7_n_0\,
      I2 => \MEM_address[14]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[9]\,
      I4 => \MEM_address[9]_i_2_n_0\,
      I5 => \MEM_address[9]_i_3_n_0\,
      O => \MEM_address[9]_i_1_n_0\
    );
\MEM_address[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \MEM_address[2]_i_3_n_0\,
      I1 => \NETWORK0.Ai_reg_n_0_[9]\,
      I2 => PCi(9),
      I3 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I5 => in36(9),
      O => \MEM_address[9]_i_2_n_0\
    );
\MEM_address[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0E0FFE0"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I2 => \^network0.di_reg[14]_0\(9),
      I3 => in35(9),
      I4 => \MEM_address[14]_i_4_n_0\,
      I5 => \MEM_address[14]_i_13_n_0\,
      O => \MEM_address[9]_i_3_n_0\
    );
\MEM_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[0]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(0),
      R => '0'
    );
\MEM_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[10]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(10),
      R => '0'
    );
\MEM_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[11]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(11),
      R => '0'
    );
\MEM_address_reg[11]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \MEM_address_reg[7]_i_4_n_0\,
      CO(3) => \MEM_address_reg[11]_i_4_n_0\,
      CO(2) => \MEM_address_reg[11]_i_4_n_1\,
      CO(1) => \MEM_address_reg[11]_i_4_n_2\,
      CO(0) => \MEM_address_reg[11]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in35(11 downto 8),
      S(3 downto 0) => PCi(11 downto 8)
    );
\MEM_address_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \MEM_address_reg[7]_i_5_n_0\,
      CO(3) => \MEM_address_reg[11]_i_5_n_0\,
      CO(2) => \MEM_address_reg[11]_i_5_n_1\,
      CO(1) => \MEM_address_reg[11]_i_5_n_2\,
      CO(0) => \MEM_address_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in36(11 downto 8),
      S(3 downto 0) => PCi(11 downto 8)
    );
\MEM_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[12]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(12),
      R => '0'
    );
\MEM_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[13]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(13),
      R => '0'
    );
\MEM_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[14]_i_2_n_0\,
      Q => \MEM_address_reg[14]_0\(14),
      R => '0'
    );
\MEM_address_reg[14]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \MEM_address_reg[11]_i_5_n_0\,
      CO(3 downto 2) => \NLW_MEM_address_reg[14]_i_11_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \MEM_address_reg[14]_i_11_n_2\,
      CO(0) => \MEM_address_reg[14]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_MEM_address_reg[14]_i_11_O_UNCONNECTED\(3),
      O(2 downto 0) => in36(14 downto 12),
      S(3) => '0',
      S(2 downto 0) => PCi(14 downto 12)
    );
\MEM_address_reg[14]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \MEM_address_reg[11]_i_4_n_0\,
      CO(3 downto 2) => \NLW_MEM_address_reg[14]_i_12_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \MEM_address_reg[14]_i_12_n_2\,
      CO(0) => \MEM_address_reg[14]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_MEM_address_reg[14]_i_12_O_UNCONNECTED\(3),
      O(2 downto 0) => in35(14 downto 12),
      S(3) => '0',
      S(2 downto 0) => PCi(14 downto 12)
    );
\MEM_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[1]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(1),
      R => '0'
    );
\MEM_address_reg[1]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \MEM_address_reg[1]_i_4_n_0\,
      CO(2) => \MEM_address_reg[1]_i_4_n_1\,
      CO(1) => \MEM_address_reg[1]_i_4_n_2\,
      CO(0) => \MEM_address_reg[1]_i_4_n_3\,
      CYINIT => PCi(0),
      DI(3 downto 1) => B"000",
      DI(0) => \FSM_onehot_STATE_reg_n_0_[5]\,
      O(3 downto 0) => in35(3 downto 0),
      S(3 downto 1) => PCi(3 downto 1),
      S(0) => \MEM_address[1]_i_6_n_0\
    );
\MEM_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[2]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(2),
      R => '0'
    );
\MEM_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[3]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(3),
      R => '0'
    );
\MEM_address_reg[3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \MEM_address_reg[3]_i_4_n_0\,
      CO(2) => \MEM_address_reg[3]_i_4_n_1\,
      CO(1) => \MEM_address_reg[3]_i_4_n_2\,
      CO(0) => \MEM_address_reg[3]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"001",
      DI(0) => PCi(0),
      O(3 downto 0) => in36(3 downto 0),
      S(3 downto 2) => PCi(3 downto 2),
      S(1) => \MEM_address[3]_i_5_n_0\,
      S(0) => \MEM_address[3]_i_6_n_0\
    );
\MEM_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[4]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(4),
      R => '0'
    );
\MEM_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[5]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(5),
      R => '0'
    );
\MEM_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[6]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(6),
      R => '0'
    );
\MEM_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[7]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(7),
      R => '0'
    );
\MEM_address_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \MEM_address_reg[1]_i_4_n_0\,
      CO(3) => \MEM_address_reg[7]_i_4_n_0\,
      CO(2) => \MEM_address_reg[7]_i_4_n_1\,
      CO(1) => \MEM_address_reg[7]_i_4_n_2\,
      CO(0) => \MEM_address_reg[7]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in35(7 downto 4),
      S(3 downto 0) => PCi(7 downto 4)
    );
\MEM_address_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \MEM_address_reg[3]_i_4_n_0\,
      CO(3) => \MEM_address_reg[7]_i_5_n_0\,
      CO(2) => \MEM_address_reg[7]_i_5_n_1\,
      CO(1) => \MEM_address_reg[7]_i_5_n_2\,
      CO(0) => \MEM_address_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in36(7 downto 4),
      S(3 downto 0) => PCi(7 downto 4)
    );
\MEM_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[8]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(8),
      R => '0'
    );
\MEM_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_address0,
      D => \MEM_address[9]_i_1_n_0\,
      Q => \MEM_address_reg[14]_0\(9),
      R => '0'
    );
\MEM_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => \NETWORK0.CHRi[0]_i_3_n_0\,
      I1 => \MEM_data[0]_i_2_n_0\,
      I2 => \MEM_data_reg[15]_0\(0),
      I3 => \NETWORK0.ALU_DATAi[7]_i_3_n_0\,
      O => \MEM_data[0]_i_1_n_0\
    );
\MEM_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dataout(0),
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I3 => \IWRi__0\(0),
      I4 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I5 => \ISRi_new__0\(0),
      O => \MEM_data[0]_i_2_n_0\
    );
\MEM_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I4 => MEM_data0,
      O => \MEM_data[15]_i_1_n_0\
    );
\MEM_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4F4F4"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi[7]_i_3_n_0\,
      I1 => \MEM_data_reg[15]_0\(1),
      I2 => \MEM_data[1]_i_2_n_0\,
      I3 => dataout(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I5 => \MEM_data[1]_i_3_n_0\,
      O => \MEM_data[1]_i_1_n_0\
    );
\MEM_data[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ISRi_new__0\(1),
      I1 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I2 => \IWRi__0\(1),
      I3 => \FSM_onehot_STATE_reg_n_0_[22]\,
      O => \MEM_data[1]_i_2_n_0\
    );
\MEM_data[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[16]\,
      I1 => \MEM_data_reg[3]_0\(0),
      O => \MEM_data[1]_i_3_n_0\
    );
\MEM_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4F4F4"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi[7]_i_3_n_0\,
      I1 => \MEM_data_reg[15]_0\(2),
      I2 => \MEM_data[2]_i_2_n_0\,
      I3 => dataout(2),
      I4 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I5 => \MEM_data[2]_i_3_n_0\,
      O => \MEM_data[2]_i_1_n_0\
    );
\MEM_data[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ISRi_new__0\(2),
      I1 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I2 => \IWRi__0\(2),
      I3 => \FSM_onehot_STATE_reg_n_0_[22]\,
      O => \MEM_data[2]_i_2_n_0\
    );
\MEM_data[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[16]\,
      I1 => \MEM_data_reg[3]_0\(1),
      O => \MEM_data[2]_i_3_n_0\
    );
\MEM_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4F4F4"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi[7]_i_3_n_0\,
      I1 => \MEM_data_reg[15]_0\(3),
      I2 => \MEM_data[3]_i_2_n_0\,
      I3 => dataout(3),
      I4 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I5 => \MEM_data[3]_i_3_n_0\,
      O => \MEM_data[3]_i_1_n_0\
    );
\MEM_data[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ISRi_new__0\(3),
      I1 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I2 => \IWRi__0\(3),
      I3 => \FSM_onehot_STATE_reg_n_0_[22]\,
      O => \MEM_data[3]_i_2_n_0\
    );
\MEM_data[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[16]\,
      I1 => \MEM_data_reg[3]_0\(2),
      O => \MEM_data[3]_i_3_n_0\
    );
\MEM_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I4 => \MEM_data_reg[15]_0\(4),
      I5 => \MEM_data[4]_i_2_n_0\,
      O => \MEM_data[4]_i_1_n_0\
    );
\MEM_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dataout(4),
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I3 => \IWRi__0\(4),
      I4 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I5 => \ISRi_new__0\(4),
      O => \MEM_data[4]_i_2_n_0\
    );
\MEM_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I4 => \MEM_data_reg[15]_0\(5),
      I5 => \MEM_data[5]_i_2_n_0\,
      O => \MEM_data[5]_i_1_n_0\
    );
\MEM_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dataout(5),
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I3 => \IWRi__0\(5),
      I4 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I5 => \ISRi_new__0\(5),
      O => \MEM_data[5]_i_2_n_0\
    );
\MEM_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I4 => \MEM_data_reg[15]_0\(6),
      I5 => \MEM_data[6]_i_2_n_0\,
      O => \MEM_data[6]_i_1_n_0\
    );
\MEM_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dataout(6),
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I3 => \IWRi__0\(6),
      I4 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I5 => \ISRi_new__0\(6),
      O => \MEM_data[6]_i_2_n_0\
    );
\MEM_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => INTERRUPT_BLOCK_reg_0,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I3 => \MEM_data[7]_i_3_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I5 => \MEM_data[7]_i_4_n_0\,
      O => MEM_data0
    );
\MEM_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I4 => \MEM_data_reg[15]_0\(7),
      I5 => \MEM_data[7]_i_5_n_0\,
      O => \MEM_data[7]_i_2_n_0\
    );
\MEM_data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[15]\,
      O => \MEM_data[7]_i_3_n_0\
    );
\MEM_data[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[16]\,
      O => \MEM_data[7]_i_4_n_0\
    );
\MEM_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dataout(7),
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I3 => \IWRi__0\(7),
      I4 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I5 => \ISRi_new__0\(7),
      O => \MEM_data[7]_i_5_n_0\
    );
\MEM_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data[0]_i_1_n_0\,
      Q => dina(0),
      R => '0'
    );
\MEM_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data_reg[15]_0\(10),
      Q => dina(10),
      R => \MEM_data[15]_i_1_n_0\
    );
\MEM_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data_reg[15]_0\(11),
      Q => dina(11),
      R => \MEM_data[15]_i_1_n_0\
    );
\MEM_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data_reg[15]_0\(12),
      Q => dina(12),
      R => \MEM_data[15]_i_1_n_0\
    );
\MEM_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data_reg[15]_0\(13),
      Q => dina(13),
      R => \MEM_data[15]_i_1_n_0\
    );
\MEM_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data_reg[15]_0\(14),
      Q => dina(14),
      R => \MEM_data[15]_i_1_n_0\
    );
\MEM_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data_reg[15]_0\(15),
      Q => dina(15),
      R => \MEM_data[15]_i_1_n_0\
    );
\MEM_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data[1]_i_1_n_0\,
      Q => dina(1),
      R => '0'
    );
\MEM_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data[2]_i_1_n_0\,
      Q => dina(2),
      R => '0'
    );
\MEM_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data[3]_i_1_n_0\,
      Q => dina(3),
      R => '0'
    );
\MEM_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data[4]_i_1_n_0\,
      Q => dina(4),
      R => '0'
    );
\MEM_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data[5]_i_1_n_0\,
      Q => dina(5),
      R => '0'
    );
\MEM_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data[6]_i_1_n_0\,
      Q => dina(6),
      R => '0'
    );
\MEM_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data[7]_i_2_n_0\,
      Q => dina(7),
      R => '0'
    );
\MEM_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data_reg[15]_0\(8),
      Q => dina(8),
      R => \MEM_data[15]_i_1_n_0\
    );
\MEM_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MEM_data0,
      D => \MEM_data_reg[15]_0\(9),
      Q => dina(9),
      R => \MEM_data[15]_i_1_n_0\
    );
MEM_wren_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I3 => MEM_wren_i_2_n_0,
      I4 => MEM_wren0,
      I5 => \^wea\(0),
      O => MEM_wren_i_1_n_0
    );
MEM_wren_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[16]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[22]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[19]\,
      O => MEM_wren_i_2_n_0
    );
MEM_wren_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA2AAAAAAAA"
    )
        port map (
      I0 => INTERRUPT_BLOCK_reg_0,
      I1 => MEM_wren_i_4_n_0,
      I2 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I5 => \FSM_onehot_NEXT_STATE[28]_i_3_n_0\,
      O => MEM_wren0
    );
MEM_wren_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[25]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[24]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[23]\,
      O => MEM_wren_i_4_n_0
    );
MEM_wren_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => MEM_wren_i_1_n_0,
      Q => \^wea\(0),
      R => '0'
    );
\NETWORK0.ALU_DATAi[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I1 => \NETWORK0.ALU_DATAi[7]_i_3_n_0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I3 => CPU_STOPio,
      I4 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      O => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.ALU_DATAi[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I3 => \NETWORK0.ALU_DATAi[7]_i_3_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[28]\,
      O => ALU_DATAi0
    );
\NETWORK0.ALU_DATAi[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[13]\,
      O => \NETWORK0.ALU_DATAi[7]_i_3_n_0\
    );
\NETWORK0.ALU_DATAi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ALU_DATAi0,
      D => \MEM_data_reg[15]_0\(0),
      Q => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      R => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.ALU_DATAi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ALU_DATAi0,
      D => \MEM_data_reg[15]_0\(1),
      Q => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      R => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.ALU_DATAi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ALU_DATAi0,
      D => \MEM_data_reg[15]_0\(2),
      Q => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      R => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.ALU_DATAi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ALU_DATAi0,
      D => \MEM_data_reg[15]_0\(3),
      Q => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      R => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.ALU_DATAi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ALU_DATAi0,
      D => \MEM_data_reg[15]_0\(4),
      Q => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      R => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.ALU_DATAi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ALU_DATAi0,
      D => \MEM_data_reg[15]_0\(5),
      Q => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      R => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.ALU_DATAi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ALU_DATAi0,
      D => \MEM_data_reg[15]_0\(6),
      Q => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      R => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.ALU_DATAi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ALU_DATAi0,
      D => \MEM_data_reg[15]_0\(7),
      Q => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      R => \NETWORK0.ALU_DATAi[7]_i_1_n_0\
    );
\NETWORK0.Ai[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[5]\,
      O => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => Ai0
    );
\NETWORK0.Ai_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(0),
      Q => \NETWORK0.Ai_reg_n_0_[0]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(10),
      Q => \NETWORK0.Ai_reg_n_0_[10]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(11),
      Q => \NETWORK0.Ai_reg_n_0_[11]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(12),
      Q => \NETWORK0.Ai_reg_n_0_[12]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(13),
      Q => \NETWORK0.Ai_reg_n_0_[13]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(14),
      Q => \NETWORK0.Ai_reg_n_0_[14]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(15),
      Q => \NETWORK0.Ai_reg_n_0_[15]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(1),
      Q => \NETWORK0.Ai_reg_n_0_[1]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(2),
      Q => \NETWORK0.Ai_reg_n_0_[2]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(3),
      Q => \NETWORK0.Ai_reg_n_0_[3]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(4),
      Q => \NETWORK0.Ai_reg_n_0_[4]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(5),
      Q => \NETWORK0.Ai_reg_n_0_[5]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(6),
      Q => \NETWORK0.Ai_reg_n_0_[6]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(7),
      Q => \NETWORK0.Ai_reg_n_0_[7]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(8),
      Q => \NETWORK0.Ai_reg_n_0_[8]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Ai_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ai0,
      D => douta(9),
      Q => \NETWORK0.Ai_reg_n_0_[9]\,
      R => \NETWORK0.Ai[15]_i_1_n_0\
    );
\NETWORK0.Bi[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[6]\,
      O => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => Bi0
    );
\NETWORK0.Bi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(0),
      Q => \NETWORK0.Bi_reg_n_0_[0]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(10),
      Q => \NETWORK0.Bi_reg_n_0_[10]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(11),
      Q => \NETWORK0.Bi_reg_n_0_[11]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(12),
      Q => \NETWORK0.Bi_reg_n_0_[12]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(13),
      Q => \NETWORK0.Bi_reg_n_0_[13]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(14),
      Q => \NETWORK0.Bi_reg_n_0_[14]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(15),
      Q => \NETWORK0.Bi_reg_n_0_[15]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(1),
      Q => \NETWORK0.Bi_reg_n_0_[1]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(2),
      Q => \NETWORK0.Bi_reg_n_0_[2]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(3),
      Q => \NETWORK0.Bi_reg_n_0_[3]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(4),
      Q => \NETWORK0.Bi_reg_n_0_[4]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(5),
      Q => \NETWORK0.Bi_reg_n_0_[5]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(6),
      Q => \NETWORK0.Bi_reg_n_0_[6]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(7),
      Q => \NETWORK0.Bi_reg_n_0_[7]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(8),
      Q => \NETWORK0.Bi_reg_n_0_[8]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.Bi_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Bi0,
      D => douta(9),
      Q => \NETWORK0.Bi_reg_n_0_[9]\,
      R => \NETWORK0.Bi[15]_i_1_n_0\
    );
\NETWORK0.CHRi[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[0]\,
      I2 => \NETWORK0.CHRi[0]_i_2_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I4 => \NETWORK0.CHRi[0]_i_3_n_0\,
      I5 => \NETWORK0.CHRi[0]_i_4_n_0\,
      O => \NETWORK0.CHRi[0]_i_1_n_0\
    );
\NETWORK0.CHRi[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      I1 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[0]\,
      O => \NETWORK0.CHRi[0]_i_2_n_0\
    );
\NETWORK0.CHRi[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000040"
    )
        port map (
      I0 => \CMPuu[2]_i_2_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[16]\,
      I2 => D(15),
      I3 => \MEM_data_reg[15]_0\(15),
      I4 => \NETWORK0.CHRi[0]_i_5_n_0\,
      O => \NETWORK0.CHRi[0]_i_3_n_0\
    );
\NETWORK0.CHRi[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FF4444F4444444"
    )
        port map (
      I0 => \NETWORK0.CHRi[0]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.Ei_reg_n_0_[0]\,
      I3 => \NETWORK0.CHRi[7]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I5 => \NETWORK0.CHRi_reg_n_0_[0]\,
      O => \NETWORK0.CHRi[0]_i_4_n_0\
    );
\NETWORK0.CHRi[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => E(15),
      I1 => \DATAuu[15]_i_14_n_0\,
      I2 => MCR(4),
      O => \NETWORK0.CHRi[0]_i_5_n_0\
    );
\NETWORK0.CHRi[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      I1 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[0]\,
      O => \NETWORK0.CHRi[0]_i_6_n_0\
    );
\NETWORK0.CHRi[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => p_1_in15_in,
      I1 => \NETWORK0.CHRi[7]_i_5_n_0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I3 => \NETWORK0.CHRi_reg_n_0_[1]\,
      I4 => \NETWORK0.CHRi[1]_i_2_n_0\,
      O => \NETWORK0.CHRi[1]_i_1_n_0\
    );
\NETWORK0.CHRi[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \NETWORK0.CHRi[1]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \MCRu[1]_i_2_n_0\,
      I3 => \MEM_data[1]_i_3_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \NETWORK0.CHRi[1]_i_4_n_0\,
      O => \NETWORK0.CHRi[1]_i_2_n_0\
    );
\NETWORK0.CHRi[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      I1 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[1]\,
      O => \NETWORK0.CHRi[1]_i_3_n_0\
    );
\NETWORK0.CHRi[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      I1 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[1]\,
      O => \NETWORK0.CHRi[1]_i_4_n_0\
    );
\NETWORK0.CHRi[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => p_1_in17_in,
      I1 => \NETWORK0.CHRi[7]_i_5_n_0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I3 => \NETWORK0.CHRi_reg_n_0_[2]\,
      I4 => \NETWORK0.CHRi[2]_i_2_n_0\,
      O => \NETWORK0.CHRi[2]_i_1_n_0\
    );
\NETWORK0.CHRi[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_16_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \MCRu[2]_i_2_n_0\,
      I3 => \MEM_data[2]_i_3_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \NETWORK0.CHRi[2]_i_3_n_0\,
      O => \NETWORK0.CHRi[2]_i_2_n_0\
    );
\NETWORK0.CHRi[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      I1 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[2]\,
      O => \NETWORK0.CHRi[2]_i_3_n_0\
    );
\NETWORK0.CHRi[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => p_1_in19_in,
      I1 => \NETWORK0.CHRi[7]_i_5_n_0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I3 => \NETWORK0.CHRi_reg_n_0_[3]\,
      I4 => \NETWORK0.CHRi[3]_i_2_n_0\,
      O => \NETWORK0.CHRi[3]_i_1_n_0\
    );
\NETWORK0.CHRi[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_15_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \MCRu[3]_i_2_n_0\,
      I3 => \MEM_data[3]_i_3_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \NETWORK0.CHRi[3]_i_3_n_0\,
      O => \NETWORK0.CHRi[3]_i_2_n_0\
    );
\NETWORK0.CHRi[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      I1 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I2 => \NETWORK0.CHRi_reg_n_0_[3]\,
      O => \NETWORK0.CHRi[3]_i_3_n_0\
    );
\NETWORK0.CHRi[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC088"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[4]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_21_in,
      I3 => \NETWORK0.CHRi[7]_i_5_n_0\,
      I4 => \NETWORK0.CHRi[4]_i_2_n_0\,
      I5 => \NETWORK0.CHRi[4]_i_3_n_0\,
      O => \NETWORK0.CHRi[4]_i_1_n_0\
    );
\NETWORK0.CHRi[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[4]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.CHRi[4]_i_2_n_0\
    );
\NETWORK0.CHRi[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF080C4C48080"
    )
        port map (
      I0 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      I3 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi_reg_n_0_[4]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[20]\,
      O => \NETWORK0.CHRi[4]_i_3_n_0\
    );
\NETWORK0.CHRi[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC088"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_2_in,
      I3 => \NETWORK0.CHRi[7]_i_5_n_0\,
      I4 => \NETWORK0.CHRi[5]_i_2_n_0\,
      I5 => \NETWORK0.CHRi[5]_i_3_n_0\,
      O => \NETWORK0.CHRi[5]_i_1_n_0\
    );
\NETWORK0.CHRi[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.CHRi[5]_i_2_n_0\
    );
\NETWORK0.CHRi[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF080C4C48080"
    )
        port map (
      I0 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      I3 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi_reg_n_0_[5]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[20]\,
      O => \NETWORK0.CHRi[5]_i_3_n_0\
    );
\NETWORK0.CHRi[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC088"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[6]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_3_in,
      I3 => \NETWORK0.CHRi[7]_i_5_n_0\,
      I4 => \NETWORK0.CHRi[6]_i_2_n_0\,
      I5 => \NETWORK0.CHRi[6]_i_3_n_0\,
      O => \NETWORK0.CHRi[6]_i_1_n_0\
    );
\NETWORK0.CHRi[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[6]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.CHRi[6]_i_2_n_0\
    );
\NETWORK0.CHRi[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF080C4C48080"
    )
        port map (
      I0 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      I3 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi_reg_n_0_[6]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[20]\,
      O => \NETWORK0.CHRi[6]_i_3_n_0\
    );
\NETWORK0.CHRi[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444400404444"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I3 => \NETWORK0.CHRi[7]_i_4_n_0\,
      I4 => \NETWORK0.IORi[7]_i_3_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[16]\,
      O => CHRi0
    );
\NETWORK0.CHRi[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => PCi(9),
      I1 => PCi(10),
      I2 => PCi(8),
      I3 => PCi(7),
      I4 => \NETWORK0.CHRi[7]_i_14_n_0\,
      O => \NETWORK0.CHRi[7]_i_10_n_0\
    );
\NETWORK0.CHRi[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.MCRi[7]_i_14_n_0\,
      I1 => \NETWORK0.CHRi[7]_i_15_n_0\,
      I2 => PCi(25),
      I3 => PCi(26),
      I4 => PCi(23),
      I5 => PCi(24),
      O => \NETWORK0.CHRi[7]_i_11_n_0\
    );
\NETWORK0.CHRi[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[1]_i_9_n_0\,
      I1 => \NETWORK0.CHRi[7]_i_16_n_0\,
      I2 => \NETWORK0.Ai_reg_n_0_[0]\,
      I3 => \NETWORK0.Ai_reg_n_0_[1]\,
      I4 => \NETWORK0.CHRi[7]_i_17_n_0\,
      I5 => \NETWORK0.F_MODE_i_3_n_0\,
      O => \NETWORK0.CHRi[7]_i_12_n_0\
    );
\NETWORK0.CHRi[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_21_n_0\,
      I1 => \NETWORK0.CHRi[7]_i_18_n_0\,
      I2 => \^network0.di_reg[14]_0\(0),
      I3 => \^network0.di_reg[14]_0\(1),
      I4 => \DATAuu[0]_i_5_n_0\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_20_n_0\,
      O => \NETWORK0.CHRi[7]_i_13_n_0\
    );
\NETWORK0.CHRi[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PCi(4),
      I1 => PCi(3),
      I2 => PCi(5),
      I3 => PCi(6),
      O => \NETWORK0.CHRi[7]_i_14_n_0\
    );
\NETWORK0.CHRi[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PCi(22),
      I1 => PCi(21),
      I2 => PCi(19),
      I3 => PCi(20),
      O => \NETWORK0.CHRi[7]_i_15_n_0\
    );
\NETWORK0.CHRi[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[10]\,
      I2 => \NETWORK0.Ai_reg_n_0_[9]\,
      I3 => \NETWORK0.Ai_reg_n_0_[8]\,
      O => \NETWORK0.CHRi[7]_i_16_n_0\
    );
\NETWORK0.CHRi[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[2]\,
      I1 => \NETWORK0.Ai_reg_n_0_[3]\,
      O => \NETWORK0.CHRi[7]_i_17_n_0\
    );
\NETWORK0.CHRi[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(14),
      I1 => D(15),
      I2 => \^network0.di_reg[14]_0\(13),
      I3 => \^network0.di_reg[14]_0\(12),
      O => \NETWORK0.CHRi[7]_i_18_n_0\
    );
\NETWORK0.CHRi[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC088"
    )
        port map (
      I0 => \NETWORK0.CHRi_reg_n_0_[7]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.Ei_reg_n_0_[7]\,
      I3 => \NETWORK0.CHRi[7]_i_5_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_6_n_0\,
      I5 => \NETWORK0.CHRi[7]_i_7_n_0\,
      O => \NETWORK0.CHRi[7]_i_2_n_0\
    );
\NETWORK0.CHRi[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => PCi(18),
      I1 => PCi(17),
      I2 => \NETWORK0.CHRi[7]_i_8_n_0\,
      I3 => \NETWORK0.CHRi[7]_i_9_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_10_n_0\,
      I5 => \NETWORK0.CHRi[7]_i_11_n_0\,
      O => \NETWORK0.CHRi[7]_i_3_n_0\
    );
\NETWORK0.CHRi[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => PCi(1),
      I2 => PCi(0),
      I3 => PCi(2),
      O => \NETWORK0.CHRi[7]_i_4_n_0\
    );
\NETWORK0.CHRi[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[0]\,
      I1 => \NETWORK0.Bi_reg_n_0_[1]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_12_n_0\,
      I3 => \FSM_onehot_NEXT_STATE[28]_i_11_n_0\,
      I4 => \NETWORK0.Bi_reg_n_0_[2]\,
      O => \NETWORK0.CHRi[7]_i_5_n_0\
    );
\NETWORK0.CHRi[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[7]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.CHRi[7]_i_6_n_0\
    );
\NETWORK0.CHRi[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF080C4C48080"
    )
        port map (
      I0 => \NETWORK0.CHRi[7]_i_12_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      I3 => \NETWORK0.CHRi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi_reg_n_0_[7]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[20]\,
      O => \NETWORK0.CHRi[7]_i_7_n_0\
    );
\NETWORK0.CHRi[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => PCi(15),
      I1 => PCi(16),
      O => \NETWORK0.CHRi[7]_i_8_n_0\
    );
\NETWORK0.CHRi[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PCi(13),
      I1 => PCi(14),
      I2 => PCi(11),
      I3 => PCi(12),
      O => \NETWORK0.CHRi[7]_i_9_n_0\
    );
\NETWORK0.CHRi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CHRi0,
      D => \NETWORK0.CHRi[0]_i_1_n_0\,
      Q => \NETWORK0.CHRi_reg_n_0_[0]\,
      R => '0'
    );
\NETWORK0.CHRi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CHRi0,
      D => \NETWORK0.CHRi[1]_i_1_n_0\,
      Q => \NETWORK0.CHRi_reg_n_0_[1]\,
      R => '0'
    );
\NETWORK0.CHRi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CHRi0,
      D => \NETWORK0.CHRi[2]_i_1_n_0\,
      Q => \NETWORK0.CHRi_reg_n_0_[2]\,
      R => '0'
    );
\NETWORK0.CHRi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CHRi0,
      D => \NETWORK0.CHRi[3]_i_1_n_0\,
      Q => \NETWORK0.CHRi_reg_n_0_[3]\,
      R => '0'
    );
\NETWORK0.CHRi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CHRi0,
      D => \NETWORK0.CHRi[4]_i_1_n_0\,
      Q => \NETWORK0.CHRi_reg_n_0_[4]\,
      R => '0'
    );
\NETWORK0.CHRi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CHRi0,
      D => \NETWORK0.CHRi[5]_i_1_n_0\,
      Q => \NETWORK0.CHRi_reg_n_0_[5]\,
      R => '0'
    );
\NETWORK0.CHRi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CHRi0,
      D => \NETWORK0.CHRi[6]_i_1_n_0\,
      Q => \NETWORK0.CHRi_reg_n_0_[6]\,
      R => '0'
    );
\NETWORK0.CHRi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CHRi0,
      D => \NETWORK0.CHRi[7]_i_2_n_0\,
      Q => \NETWORK0.CHRi_reg_n_0_[7]\,
      R => '0'
    );
\NETWORK0.CSRi[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \CSRi__0\(0),
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.CSRi[7]_i_4_n_0\,
      I3 => \NETWORK0.Ei_reg_n_0_[0]\,
      I4 => \NETWORK0.ICRi[0]_i_2_n_0\,
      I5 => \NETWORK0.CSRi[0]_i_2_n_0\,
      O => \NETWORK0.CSRi[0]_i_1_n_0\
    );
\NETWORK0.CSRi[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFC8C8F0404040"
    )
        port map (
      I0 => \NETWORK0.CSRi[7]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      I3 => \NETWORK0.CSRi[7]_i_7_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \CSRi__0\(0),
      O => \NETWORK0.CSRi[0]_i_2_n_0\
    );
\NETWORK0.CSRi[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \CSRi__0\(1),
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.CSRi[7]_i_4_n_0\,
      I3 => p_1_in15_in,
      I4 => \MCRu[1]_i_2_n_0\,
      I5 => \NETWORK0.CSRi[1]_i_2_n_0\,
      O => \NETWORK0.CSRi[1]_i_1_n_0\
    );
\NETWORK0.CSRi[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFC8C8F0404040"
    )
        port map (
      I0 => \NETWORK0.CSRi[7]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      I3 => \NETWORK0.CSRi[7]_i_7_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \CSRi__0\(1),
      O => \NETWORK0.CSRi[1]_i_2_n_0\
    );
\NETWORK0.CSRi[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \CSRi__0\(2),
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.CSRi[7]_i_4_n_0\,
      I3 => p_1_in17_in,
      I4 => \MCRu[2]_i_2_n_0\,
      I5 => \NETWORK0.CSRi[2]_i_2_n_0\,
      O => \NETWORK0.CSRi[2]_i_1_n_0\
    );
\NETWORK0.CSRi[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFC8C8F0404040"
    )
        port map (
      I0 => \NETWORK0.CSRi[7]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      I3 => \NETWORK0.CSRi[7]_i_7_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \CSRi__0\(2),
      O => \NETWORK0.CSRi[2]_i_2_n_0\
    );
\NETWORK0.CSRi[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \CSRi__0\(3),
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.CSRi[7]_i_4_n_0\,
      I3 => p_1_in19_in,
      I4 => \MCRu[3]_i_2_n_0\,
      I5 => \NETWORK0.CSRi[3]_i_2_n_0\,
      O => \NETWORK0.CSRi[3]_i_1_n_0\
    );
\NETWORK0.CSRi[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFC8C8F0404040"
    )
        port map (
      I0 => \NETWORK0.CSRi[7]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      I3 => \NETWORK0.CSRi[7]_i_7_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \CSRi__0\(3),
      O => \NETWORK0.CSRi[3]_i_2_n_0\
    );
\NETWORK0.CSRi[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \CSRi__0\(4),
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.CSRi[7]_i_4_n_0\,
      I3 => p_21_in,
      I4 => \NETWORK0.CHRi[4]_i_2_n_0\,
      I5 => \NETWORK0.CSRi[4]_i_2_n_0\,
      O => \NETWORK0.CSRi[4]_i_1_n_0\
    );
\NETWORK0.CSRi[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFC8C8F0404040"
    )
        port map (
      I0 => \NETWORK0.CSRi[7]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      I3 => \NETWORK0.CSRi[7]_i_7_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \CSRi__0\(4),
      O => \NETWORK0.CSRi[4]_i_2_n_0\
    );
\NETWORK0.CSRi[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \CSRi__0\(5),
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.CSRi[7]_i_4_n_0\,
      I3 => p_2_in,
      I4 => \NETWORK0.CHRi[5]_i_2_n_0\,
      I5 => \NETWORK0.CSRi[5]_i_2_n_0\,
      O => \NETWORK0.CSRi[5]_i_1_n_0\
    );
\NETWORK0.CSRi[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFC8C8F0404040"
    )
        port map (
      I0 => \NETWORK0.CSRi[7]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      I3 => \NETWORK0.CSRi[7]_i_7_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \CSRi__0\(5),
      O => \NETWORK0.CSRi[5]_i_2_n_0\
    );
\NETWORK0.CSRi[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \CSRi__0\(6),
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.CSRi[7]_i_4_n_0\,
      I3 => p_3_in,
      I4 => \NETWORK0.CHRi[6]_i_2_n_0\,
      I5 => \NETWORK0.CSRi[6]_i_2_n_0\,
      O => \NETWORK0.CSRi[6]_i_1_n_0\
    );
\NETWORK0.CSRi[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFC8C8F0404040"
    )
        port map (
      I0 => \NETWORK0.CSRi[7]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      I3 => \NETWORK0.CSRi[7]_i_7_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \CSRi__0\(6),
      O => \NETWORK0.CSRi[6]_i_2_n_0\
    );
\NETWORK0.CSRi[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800000AAAAAAAA"
    )
        port map (
      I0 => INTERRUPT_BLOCK_reg_0,
      I1 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I2 => PCi(2),
      I3 => PCi(1),
      I4 => \NETWORK0.CSRi[7]_i_3_n_0\,
      I5 => \NETWORK0.IORi[7]_i_3_n_0\,
      O => CSR0
    );
\NETWORK0.CSRi[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \CSRi__0\(7),
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.CSRi[7]_i_4_n_0\,
      I3 => \NETWORK0.Ei_reg_n_0_[7]\,
      I4 => \NETWORK0.CHRi[7]_i_6_n_0\,
      I5 => \NETWORK0.CSRi[7]_i_5_n_0\,
      O => \NETWORK0.CSRi[7]_i_2_n_0\
    );
\NETWORK0.CSRi[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => PCi(0),
      O => \NETWORK0.CSRi[7]_i_3_n_0\
    );
\NETWORK0.CSRi[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[1]\,
      I1 => \NETWORK0.Bi_reg_n_0_[0]\,
      I2 => \FSM_onehot_NEXT_STATE[28]_i_5_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[2]\,
      O => \NETWORK0.CSRi[7]_i_4_n_0\
    );
\NETWORK0.CSRi[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFC8C8F0404040"
    )
        port map (
      I0 => \NETWORK0.CSRi[7]_i_6_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      I3 => \NETWORK0.CSRi[7]_i_7_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \CSRi__0\(7),
      O => \NETWORK0.CSRi[7]_i_5_n_0\
    );
\NETWORK0.CSRi[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^network0.di_reg[14]_0\(1),
      I4 => \^network0.di_reg[14]_0\(0),
      O => \NETWORK0.CSRi[7]_i_6_n_0\
    );
\NETWORK0.CSRi[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[1]_i_6_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[1]_i_7_n_0\,
      I2 => \NETWORK0.Ai_reg_n_0_[2]\,
      I3 => \NETWORK0.Ai_reg_n_0_[0]\,
      I4 => \NETWORK0.Ai_reg_n_0_[1]\,
      O => \NETWORK0.CSRi[7]_i_7_n_0\
    );
\NETWORK0.CSRi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[0]_i_1_n_0\,
      Q => \CSRi__0\(0),
      R => '0'
    );
\NETWORK0.CSRi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[1]_i_1_n_0\,
      Q => \CSRi__0\(1),
      R => '0'
    );
\NETWORK0.CSRi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[2]_i_1_n_0\,
      Q => \CSRi__0\(2),
      R => '0'
    );
\NETWORK0.CSRi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[3]_i_1_n_0\,
      Q => \CSRi__0\(3),
      R => '0'
    );
\NETWORK0.CSRi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[4]_i_1_n_0\,
      Q => \CSRi__0\(4),
      R => '0'
    );
\NETWORK0.CSRi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[5]_i_1_n_0\,
      Q => \CSRi__0\(5),
      R => '0'
    );
\NETWORK0.CSRi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[6]_i_1_n_0\,
      Q => \CSRi__0\(6),
      R => '0'
    );
\NETWORK0.CSRi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => CSR0,
      D => \NETWORK0.CSRi[7]_i_2_n_0\,
      Q => \CSRi__0\(7),
      R => '0'
    );
\NETWORK0.Ci[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[7]\,
      O => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => Ci0
    );
\NETWORK0.Ci_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(0),
      Q => \NETWORK0.Ci_reg_n_0_[0]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(10),
      Q => \NETWORK0.Ci_reg_n_0_[10]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(11),
      Q => \NETWORK0.Ci_reg_n_0_[11]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(12),
      Q => \NETWORK0.Ci_reg_n_0_[12]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(13),
      Q => \NETWORK0.Ci_reg_n_0_[13]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(14),
      Q => \NETWORK0.Ci_reg_n_0_[14]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(15),
      Q => \NETWORK0.Ci_reg_n_0_[15]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(1),
      Q => \NETWORK0.Ci_reg_n_0_[1]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(2),
      Q => \NETWORK0.Ci_reg_n_0_[2]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(3),
      Q => \NETWORK0.Ci_reg_n_0_[3]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(4),
      Q => \NETWORK0.Ci_reg_n_0_[4]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(5),
      Q => \NETWORK0.Ci_reg_n_0_[5]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(6),
      Q => \NETWORK0.Ci_reg_n_0_[6]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(7),
      Q => \NETWORK0.Ci_reg_n_0_[7]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(8),
      Q => \NETWORK0.Ci_reg_n_0_[8]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.Ci_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Ci0,
      D => douta(9),
      Q => \NETWORK0.Ci_reg_n_0_[9]\,
      R => \NETWORK0.Ci[15]_i_1_n_0\
    );
\NETWORK0.DETECT[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(0),
      I1 => dataout(0),
      O => \^iwr_reg[0]_0\
    );
\NETWORK0.DETECT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(1),
      I1 => dataout(1),
      O => \IWR_reg[1]_0\
    );
\NETWORK0.DETECT[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(2),
      I1 => dataout(2),
      O => \IWR_reg[2]_0\
    );
\NETWORK0.DETECT[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(3),
      I1 => dataout(3),
      O => \^iwr_reg[3]_0\
    );
\NETWORK0.DETECT[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(4),
      I1 => dataout(4),
      O => \IWR_reg[4]_0\
    );
\NETWORK0.DETECT[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(5),
      I1 => dataout(5),
      O => \IWR_reg[5]_0\
    );
\NETWORK0.DETECT[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(6),
      I1 => dataout(6),
      O => \IWR_reg[6]_0\
    );
\NETWORK0.DETECT[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^iwr_reg[7]_1\(7),
      I1 => dataout(7),
      O => \^iwr_reg[7]_0\
    );
\NETWORK0.Di[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[8]\,
      O => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => Di0
    );
\NETWORK0.Di_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(0),
      Q => \^network0.di_reg[14]_0\(0),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(10),
      Q => \^network0.di_reg[14]_0\(10),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(11),
      Q => \^network0.di_reg[14]_0\(11),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(12),
      Q => \^network0.di_reg[14]_0\(12),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(13),
      Q => \^network0.di_reg[14]_0\(13),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(14),
      Q => \^network0.di_reg[14]_0\(14),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(15),
      Q => D(15),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(1),
      Q => \^network0.di_reg[14]_0\(1),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(2),
      Q => \^network0.di_reg[14]_0\(2),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(3),
      Q => \^network0.di_reg[14]_0\(3),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(4),
      Q => \^network0.di_reg[14]_0\(4),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(5),
      Q => \^network0.di_reg[14]_0\(5),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(6),
      Q => \^network0.di_reg[14]_0\(6),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(7),
      Q => \^network0.di_reg[14]_0\(7),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(8),
      Q => \^network0.di_reg[14]_0\(8),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Di_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => Di0,
      D => douta(9),
      Q => \^network0.di_reg[14]_0\(9),
      R => \NETWORK0.Di[15]_i_1_n_0\
    );
\NETWORK0.Ei[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => douta(0),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => IDR(0),
      I3 => \NETWORK0.Ei_reg_n_0_[0]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[0]_i_1_n_0\
    );
\NETWORK0.Ei[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(10),
      O => \NETWORK0.Ei[10]_i_1_n_0\
    );
\NETWORK0.Ei[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(11),
      O => \NETWORK0.Ei[11]_i_1_n_0\
    );
\NETWORK0.Ei[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(12),
      O => \NETWORK0.Ei[12]_i_1_n_0\
    );
\NETWORK0.Ei[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(13),
      O => \NETWORK0.Ei[13]_i_1_n_0\
    );
\NETWORK0.Ei[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(14),
      O => \NETWORK0.Ei[14]_i_1_n_0\
    );
\NETWORK0.Ei[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \NETWORK0.Ei[15]_i_1_n_0\
    );
\NETWORK0.Ei[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(15),
      O => \NETWORK0.Ei[15]_i_2_n_0\
    );
\NETWORK0.Ei[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => douta(1),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => IDR(1),
      I3 => p_1_in15_in,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[1]_i_1_n_0\
    );
\NETWORK0.Ei[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => douta(2),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => IDR(2),
      I3 => p_1_in17_in,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[2]_i_1_n_0\
    );
\NETWORK0.Ei[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => douta(3),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => IDR(3),
      I3 => p_1_in19_in,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[3]_i_1_n_0\
    );
\NETWORK0.Ei[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => douta(4),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => IDR(4),
      I3 => p_21_in,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[4]_i_1_n_0\
    );
\NETWORK0.Ei[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => douta(5),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => IDR(5),
      I3 => p_2_in,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[5]_i_1_n_0\
    );
\NETWORK0.Ei[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => douta(6),
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => IDR(6),
      I3 => p_3_in,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[6]_i_1_n_0\
    );
\NETWORK0.Ei[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EF000000EE0000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => \NETWORK0.Ei[7]_i_3_n_0\,
      I3 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I4 => CPU_STOPio,
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[7]_i_1_n_0\
    );
\NETWORK0.Ei[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(7),
      I2 => IDR(7),
      I3 => \NETWORK0.Ei_reg_n_0_[7]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.Ei[7]_i_2_n_0\
    );
\NETWORK0.Ei[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_12_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[28]_i_11_n_0\,
      I2 => \NETWORK0.Bi_reg_n_0_[2]\,
      I3 => \NETWORK0.Bi_reg_n_0_[1]\,
      I4 => \NETWORK0.Bi_reg_n_0_[0]\,
      O => \NETWORK0.Ei[7]_i_3_n_0\
    );
\NETWORK0.Ei[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(8),
      O => \NETWORK0.Ei[8]_i_1_n_0\
    );
\NETWORK0.Ei[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => douta(9),
      O => \NETWORK0.Ei[9]_i_1_n_0\
    );
\NETWORK0.Ei_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[0]_i_1_n_0\,
      Q => \NETWORK0.Ei_reg_n_0_[0]\,
      R => '0'
    );
\NETWORK0.Ei_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[15]_i_1_n_0\,
      D => \NETWORK0.Ei[10]_i_1_n_0\,
      Q => in27(10),
      R => '0'
    );
\NETWORK0.Ei_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[15]_i_1_n_0\,
      D => \NETWORK0.Ei[11]_i_1_n_0\,
      Q => in27(11),
      R => '0'
    );
\NETWORK0.Ei_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[15]_i_1_n_0\,
      D => \NETWORK0.Ei[12]_i_1_n_0\,
      Q => in27(12),
      R => '0'
    );
\NETWORK0.Ei_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[15]_i_1_n_0\,
      D => \NETWORK0.Ei[13]_i_1_n_0\,
      Q => in27(13),
      R => '0'
    );
\NETWORK0.Ei_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[15]_i_1_n_0\,
      D => \NETWORK0.Ei[14]_i_1_n_0\,
      Q => in27(14),
      R => '0'
    );
\NETWORK0.Ei_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[15]_i_1_n_0\,
      D => \NETWORK0.Ei[15]_i_2_n_0\,
      Q => in27(15),
      R => '0'
    );
\NETWORK0.Ei_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[1]_i_1_n_0\,
      Q => p_1_in15_in,
      R => '0'
    );
\NETWORK0.Ei_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[2]_i_1_n_0\,
      Q => p_1_in17_in,
      R => '0'
    );
\NETWORK0.Ei_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[3]_i_1_n_0\,
      Q => p_1_in19_in,
      R => '0'
    );
\NETWORK0.Ei_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[4]_i_1_n_0\,
      Q => p_21_in,
      R => '0'
    );
\NETWORK0.Ei_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[5]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\NETWORK0.Ei_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[6]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\NETWORK0.Ei_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[7]_i_1_n_0\,
      D => \NETWORK0.Ei[7]_i_2_n_0\,
      Q => \NETWORK0.Ei_reg_n_0_[7]\,
      R => '0'
    );
\NETWORK0.Ei_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[15]_i_1_n_0\,
      D => \NETWORK0.Ei[8]_i_1_n_0\,
      Q => in27(8),
      R => '0'
    );
\NETWORK0.Ei_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.Ei[15]_i_1_n_0\,
      D => \NETWORK0.Ei[9]_i_1_n_0\,
      Q => in27(9),
      R => '0'
    );
\NETWORK0.F_MODE_OFFSET[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF2000"
    )
        port map (
      I0 => \NETWORK0.MCRi[7]_i_3_n_0\,
      I1 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I2 => CPU_STOPio,
      I3 => \NETWORK0.F_MODE_i_2_n_0\,
      I4 => \^f_mode_offset__0\(0),
      O => \NETWORK0.F_MODE_OFFSET[0]_i_1_n_0\
    );
\NETWORK0.F_MODE_OFFSET_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => \NETWORK0.F_MODE_OFFSET[0]_i_1_n_0\,
      Q => \^f_mode_offset__0\(0),
      R => '0'
    );
\NETWORK0.F_MODE_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF2000"
    )
        port map (
      I0 => \NETWORK0.MCRi[7]_i_3_n_0\,
      I1 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I2 => CPU_STOPio,
      I3 => \NETWORK0.F_MODE_i_2_n_0\,
      I4 => \NETWORK0.F_MODE_reg_n_0\,
      O => \NETWORK0.F_MODE_i_1_n_0\
    );
\NETWORK0.F_MODE_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[1]\,
      I2 => \NETWORK0.Ai_reg_n_0_[0]\,
      I3 => \NETWORK0.Ai_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[2]\,
      I5 => \NETWORK0.F_MODE_i_3_n_0\,
      O => \NETWORK0.F_MODE_i_2_n_0\
    );
\NETWORK0.F_MODE_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[7]\,
      I1 => \NETWORK0.Ai_reg_n_0_[6]\,
      I2 => \NETWORK0.Ai_reg_n_0_[5]\,
      I3 => \NETWORK0.Ai_reg_n_0_[4]\,
      O => \NETWORK0.F_MODE_i_3_n_0\
    );
\NETWORK0.F_MODE_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => \NETWORK0.F_MODE_i_1_n_0\,
      Q => \NETWORK0.F_MODE_reg_n_0\,
      R => '0'
    );
\NETWORK0.ICRi[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88C0"
    )
        port map (
      I0 => \NETWORK0.Ei_reg_n_0_[0]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \ICRi__0\(0),
      I3 => \NETWORK0.ICRi[7]_i_3_n_0\,
      I4 => \NETWORK0.ICRi[0]_i_2_n_0\,
      I5 => \NETWORK0.ICRi[0]_i_3_n_0\,
      O => \NETWORK0.ICRi[0]_i_1_n_0\
    );
\NETWORK0.ICRi[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[0]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.ICRi[0]_i_2_n_0\
    );
\NETWORK0.ICRi[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FCC88F4004400"
    )
        port map (
      I0 => \NETWORK0.ICRi[7]_i_5_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ICRi[7]_i_6_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I5 => \ICRi__0\(0),
      O => \NETWORK0.ICRi[0]_i_3_n_0\
    );
\NETWORK0.ICRi[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88C0"
    )
        port map (
      I0 => p_1_in15_in,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \ICRi__0\(1),
      I3 => \NETWORK0.ICRi[7]_i_3_n_0\,
      I4 => \MCRu[1]_i_2_n_0\,
      I5 => \NETWORK0.ICRi[1]_i_2_n_0\,
      O => \NETWORK0.ICRi[1]_i_1_n_0\
    );
\NETWORK0.ICRi[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FCC88F4004400"
    )
        port map (
      I0 => \NETWORK0.ICRi[7]_i_5_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ICRi[7]_i_6_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I5 => \ICRi__0\(1),
      O => \NETWORK0.ICRi[1]_i_2_n_0\
    );
\NETWORK0.ICRi[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88C0"
    )
        port map (
      I0 => p_1_in17_in,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \ICRi__0\(2),
      I3 => \NETWORK0.ICRi[7]_i_3_n_0\,
      I4 => \MCRu[2]_i_2_n_0\,
      I5 => \NETWORK0.ICRi[2]_i_2_n_0\,
      O => \NETWORK0.ICRi[2]_i_1_n_0\
    );
\NETWORK0.ICRi[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FCC88F4004400"
    )
        port map (
      I0 => \NETWORK0.ICRi[7]_i_5_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ICRi[7]_i_6_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I5 => \ICRi__0\(2),
      O => \NETWORK0.ICRi[2]_i_2_n_0\
    );
\NETWORK0.ICRi[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88C0"
    )
        port map (
      I0 => p_1_in19_in,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \ICRi__0\(3),
      I3 => \NETWORK0.ICRi[7]_i_3_n_0\,
      I4 => \MCRu[3]_i_2_n_0\,
      I5 => \NETWORK0.ICRi[3]_i_2_n_0\,
      O => \NETWORK0.ICRi[3]_i_1_n_0\
    );
\NETWORK0.ICRi[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FCC88F4004400"
    )
        port map (
      I0 => \NETWORK0.ICRi[7]_i_5_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ICRi[7]_i_6_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I5 => \ICRi__0\(3),
      O => \NETWORK0.ICRi[3]_i_2_n_0\
    );
\NETWORK0.ICRi[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88C0"
    )
        port map (
      I0 => p_21_in,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \ICRi__0\(4),
      I3 => \NETWORK0.ICRi[7]_i_3_n_0\,
      I4 => \NETWORK0.CHRi[4]_i_2_n_0\,
      I5 => \NETWORK0.ICRi[4]_i_2_n_0\,
      O => \NETWORK0.ICRi[4]_i_1_n_0\
    );
\NETWORK0.ICRi[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FCC88F4004400"
    )
        port map (
      I0 => \NETWORK0.ICRi[7]_i_5_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ICRi[7]_i_6_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I5 => \ICRi__0\(4),
      O => \NETWORK0.ICRi[4]_i_2_n_0\
    );
\NETWORK0.ICRi[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88C0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \ICRi__0\(5),
      I3 => \NETWORK0.ICRi[7]_i_3_n_0\,
      I4 => \NETWORK0.CHRi[5]_i_2_n_0\,
      I5 => \NETWORK0.ICRi[5]_i_2_n_0\,
      O => \NETWORK0.ICRi[5]_i_1_n_0\
    );
\NETWORK0.ICRi[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FCC88F4004400"
    )
        port map (
      I0 => \NETWORK0.ICRi[7]_i_5_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ICRi[7]_i_6_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I5 => \ICRi__0\(5),
      O => \NETWORK0.ICRi[5]_i_2_n_0\
    );
\NETWORK0.ICRi[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88C0"
    )
        port map (
      I0 => p_3_in,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \ICRi__0\(6),
      I3 => \NETWORK0.ICRi[7]_i_3_n_0\,
      I4 => \NETWORK0.CHRi[6]_i_2_n_0\,
      I5 => \NETWORK0.ICRi[6]_i_2_n_0\,
      O => \NETWORK0.ICRi[6]_i_1_n_0\
    );
\NETWORK0.ICRi[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FCC88F4004400"
    )
        port map (
      I0 => \NETWORK0.ICRi[7]_i_5_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ICRi[7]_i_6_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I5 => \ICRi__0\(6),
      O => \NETWORK0.ICRi[6]_i_2_n_0\
    );
\NETWORK0.ICRi[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404444"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => PCi(0),
      I3 => \NETWORK0.IWRi[7]_i_3_n_0\,
      I4 => \NETWORK0.IORi[7]_i_3_n_0\,
      O => ICR0
    );
\NETWORK0.ICRi[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88C0"
    )
        port map (
      I0 => \NETWORK0.Ei_reg_n_0_[7]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \ICRi__0\(7),
      I3 => \NETWORK0.ICRi[7]_i_3_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_6_n_0\,
      I5 => \NETWORK0.ICRi[7]_i_4_n_0\,
      O => \NETWORK0.ICRi[7]_i_2_n_0\
    );
\NETWORK0.ICRi[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[1]\,
      I1 => \NETWORK0.Bi_reg_n_0_[0]\,
      I2 => \FSM_onehot_NEXT_STATE[28]_i_5_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[2]\,
      O => \NETWORK0.ICRi[7]_i_3_n_0\
    );
\NETWORK0.ICRi[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FCC88F4004400"
    )
        port map (
      I0 => \NETWORK0.ICRi[7]_i_5_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.ICRi[7]_i_6_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I5 => \ICRi__0\(7),
      O => \NETWORK0.ICRi[7]_i_4_n_0\
    );
\NETWORK0.ICRi[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[0]\,
      I1 => \NETWORK0.Ai_reg_n_0_[2]\,
      I2 => \FSM_onehot_NEXT_STATE[1]_i_6_n_0\,
      I3 => \FSM_onehot_NEXT_STATE[1]_i_7_n_0\,
      I4 => \NETWORK0.Ai_reg_n_0_[1]\,
      O => \NETWORK0.ICRi[7]_i_5_n_0\
    );
\NETWORK0.ICRi[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(0),
      I1 => \^network0.di_reg[14]_0\(1),
      I2 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      I3 => \^network0.di_reg[14]_0\(3),
      I4 => \^network0.di_reg[14]_0\(2),
      O => \NETWORK0.ICRi[7]_i_6_n_0\
    );
\NETWORK0.ICRi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[0]_i_1_n_0\,
      Q => \ICRi__0\(0),
      R => '0'
    );
\NETWORK0.ICRi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[1]_i_1_n_0\,
      Q => \ICRi__0\(1),
      R => '0'
    );
\NETWORK0.ICRi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[2]_i_1_n_0\,
      Q => \ICRi__0\(2),
      R => '0'
    );
\NETWORK0.ICRi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[3]_i_1_n_0\,
      Q => \ICRi__0\(3),
      R => '0'
    );
\NETWORK0.ICRi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[4]_i_1_n_0\,
      Q => \ICRi__0\(4),
      R => '0'
    );
\NETWORK0.ICRi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[5]_i_1_n_0\,
      Q => \ICRi__0\(5),
      R => '0'
    );
\NETWORK0.ICRi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[6]_i_1_n_0\,
      Q => \ICRi__0\(6),
      R => '0'
    );
\NETWORK0.ICRi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ICR0,
      D => \NETWORK0.ICRi[7]_i_2_n_0\,
      Q => \ICRi__0\(7),
      R => '0'
    );
\NETWORK0.IORi[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IORi[0]_i_2_n_0\,
      I1 => \NETWORK0.IORi[0]_i_3_n_0\,
      I2 => \NETWORK0.IORi[0]_i_4_n_0\,
      I3 => \NETWORK0.IORi[0]_i_5_n_0\,
      I4 => \NETWORK0.IORi[0]_i_6_n_0\,
      O => \NETWORK0.IORi[0]_i_1_n_0\
    );
\NETWORK0.IORi[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_10_n_0\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => \NETWORK0.Ei_reg_n_0_[0]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \^network0.iori_reg[7]_0\(0),
      O => \NETWORK0.IORi[0]_i_2_n_0\
    );
\NETWORK0.IORi[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \NETWORK0.Ei[7]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.Ei_reg_n_0_[0]\,
      I3 => IDR(0),
      I4 => dataout(0),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.IORi[0]_i_3_n_0\
    );
\NETWORK0.IORi[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(0),
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.IORi[7]_i_12_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      O => \NETWORK0.IORi[0]_i_4_n_0\
    );
\NETWORK0.IORi[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACAAAA00000000"
    )
        port map (
      I0 => IDR(0),
      I1 => \^network0.iori_reg[7]_0\(0),
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I5 => \NETWORK0.ICRi[0]_i_2_n_0\,
      O => \NETWORK0.IORi[0]_i_5_n_0\
    );
\NETWORK0.IORi[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C088"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(0),
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      I3 => \NETWORK0.IORi[7]_i_14_n_0\,
      O => \NETWORK0.IORi[0]_i_6_n_0\
    );
\NETWORK0.IORi[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IORi[1]_i_2_n_0\,
      I1 => \NETWORK0.IORi[1]_i_3_n_0\,
      I2 => \NETWORK0.IORi[1]_i_4_n_0\,
      I3 => \NETWORK0.IORi[1]_i_5_n_0\,
      I4 => \NETWORK0.IORi[1]_i_6_n_0\,
      O => \NETWORK0.IORi[1]_i_1_n_0\
    );
\NETWORK0.IORi[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_10_n_0\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => p_1_in15_in,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \^network0.iori_reg[7]_0\(1),
      O => \NETWORK0.IORi[1]_i_2_n_0\
    );
\NETWORK0.IORi[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \NETWORK0.Ei[7]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_1_in15_in,
      I3 => IDR(1),
      I4 => dataout(1),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.IORi[1]_i_3_n_0\
    );
\NETWORK0.IORi[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(1),
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.IORi[7]_i_12_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      O => \NETWORK0.IORi[1]_i_4_n_0\
    );
\NETWORK0.IORi[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACAAAA00000000"
    )
        port map (
      I0 => IDR(1),
      I1 => \^network0.iori_reg[7]_0\(1),
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I5 => \MCRu[1]_i_2_n_0\,
      O => \NETWORK0.IORi[1]_i_5_n_0\
    );
\NETWORK0.IORi[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C088"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(1),
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      I3 => \NETWORK0.IORi[7]_i_14_n_0\,
      O => \NETWORK0.IORi[1]_i_6_n_0\
    );
\NETWORK0.IORi[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IORi[2]_i_2_n_0\,
      I1 => \NETWORK0.IORi[2]_i_3_n_0\,
      I2 => \NETWORK0.IORi[2]_i_4_n_0\,
      I3 => \NETWORK0.IORi[2]_i_5_n_0\,
      I4 => \NETWORK0.IORi[2]_i_6_n_0\,
      O => \NETWORK0.IORi[2]_i_1_n_0\
    );
\NETWORK0.IORi[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_10_n_0\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => p_1_in17_in,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \^network0.iori_reg[7]_0\(2),
      O => \NETWORK0.IORi[2]_i_2_n_0\
    );
\NETWORK0.IORi[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \NETWORK0.Ei[7]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_1_in17_in,
      I3 => IDR(2),
      I4 => dataout(2),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.IORi[2]_i_3_n_0\
    );
\NETWORK0.IORi[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(2),
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.IORi[7]_i_12_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      O => \NETWORK0.IORi[2]_i_4_n_0\
    );
\NETWORK0.IORi[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCACCCC00000000"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(2),
      I1 => IDR(2),
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I5 => \MCRu[2]_i_2_n_0\,
      O => \NETWORK0.IORi[2]_i_5_n_0\
    );
\NETWORK0.IORi[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C088"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(2),
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      I3 => \NETWORK0.IORi[7]_i_14_n_0\,
      O => \NETWORK0.IORi[2]_i_6_n_0\
    );
\NETWORK0.IORi[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IORi[3]_i_2_n_0\,
      I1 => \NETWORK0.IORi[3]_i_3_n_0\,
      I2 => \NETWORK0.IORi[3]_i_4_n_0\,
      I3 => \NETWORK0.IORi[3]_i_5_n_0\,
      I4 => \NETWORK0.IORi[3]_i_6_n_0\,
      O => \NETWORK0.IORi[3]_i_1_n_0\
    );
\NETWORK0.IORi[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_10_n_0\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => p_1_in19_in,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \^network0.iori_reg[7]_0\(3),
      O => \NETWORK0.IORi[3]_i_2_n_0\
    );
\NETWORK0.IORi[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \NETWORK0.Ei[7]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_1_in19_in,
      I3 => IDR(3),
      I4 => dataout(3),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.IORi[3]_i_3_n_0\
    );
\NETWORK0.IORi[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(3),
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.IORi[7]_i_12_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      O => \NETWORK0.IORi[3]_i_4_n_0\
    );
\NETWORK0.IORi[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACAAAA00000000"
    )
        port map (
      I0 => IDR(3),
      I1 => \^network0.iori_reg[7]_0\(3),
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I5 => \MCRu[3]_i_2_n_0\,
      O => \NETWORK0.IORi[3]_i_5_n_0\
    );
\NETWORK0.IORi[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C088"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(3),
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      I3 => \NETWORK0.IORi[7]_i_14_n_0\,
      O => \NETWORK0.IORi[3]_i_6_n_0\
    );
\NETWORK0.IORi[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IORi[4]_i_2_n_0\,
      I1 => \NETWORK0.IORi[4]_i_3_n_0\,
      I2 => \NETWORK0.IORi[4]_i_4_n_0\,
      I3 => \NETWORK0.IORi[4]_i_5_n_0\,
      I4 => \NETWORK0.IORi[4]_i_6_n_0\,
      O => \NETWORK0.IORi[4]_i_1_n_0\
    );
\NETWORK0.IORi[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_10_n_0\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => p_21_in,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \^network0.iori_reg[7]_0\(4),
      O => \NETWORK0.IORi[4]_i_2_n_0\
    );
\NETWORK0.IORi[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \NETWORK0.Ei[7]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_21_in,
      I3 => IDR(4),
      I4 => dataout(4),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.IORi[4]_i_3_n_0\
    );
\NETWORK0.IORi[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(4),
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.IORi[7]_i_12_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      O => \NETWORK0.IORi[4]_i_4_n_0\
    );
\NETWORK0.IORi[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACAAAA00000000"
    )
        port map (
      I0 => IDR(4),
      I1 => \^network0.iori_reg[7]_0\(4),
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I5 => \NETWORK0.CHRi[4]_i_2_n_0\,
      O => \NETWORK0.IORi[4]_i_5_n_0\
    );
\NETWORK0.IORi[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C088"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(4),
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      I3 => \NETWORK0.IORi[7]_i_14_n_0\,
      O => \NETWORK0.IORi[4]_i_6_n_0\
    );
\NETWORK0.IORi[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IORi[5]_i_2_n_0\,
      I1 => \NETWORK0.IORi[5]_i_3_n_0\,
      I2 => \NETWORK0.IORi[5]_i_4_n_0\,
      I3 => \NETWORK0.IORi[5]_i_5_n_0\,
      I4 => \NETWORK0.IORi[5]_i_6_n_0\,
      O => \NETWORK0.IORi[5]_i_1_n_0\
    );
\NETWORK0.IORi[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_10_n_0\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => p_2_in,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \^network0.iori_reg[7]_0\(5),
      O => \NETWORK0.IORi[5]_i_2_n_0\
    );
\NETWORK0.IORi[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \NETWORK0.Ei[7]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_2_in,
      I3 => IDR(5),
      I4 => dataout(5),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.IORi[5]_i_3_n_0\
    );
\NETWORK0.IORi[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(5),
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.IORi[7]_i_12_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      O => \NETWORK0.IORi[5]_i_4_n_0\
    );
\NETWORK0.IORi[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCACCCC00000000"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(5),
      I1 => IDR(5),
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I5 => \NETWORK0.CHRi[5]_i_2_n_0\,
      O => \NETWORK0.IORi[5]_i_5_n_0\
    );
\NETWORK0.IORi[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C088"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(5),
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      I3 => \NETWORK0.IORi[7]_i_14_n_0\,
      O => \NETWORK0.IORi[5]_i_6_n_0\
    );
\NETWORK0.IORi[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IORi[6]_i_2_n_0\,
      I1 => \NETWORK0.IORi[6]_i_3_n_0\,
      I2 => \NETWORK0.IORi[6]_i_4_n_0\,
      I3 => \NETWORK0.IORi[6]_i_5_n_0\,
      I4 => \NETWORK0.IORi[6]_i_6_n_0\,
      O => \NETWORK0.IORi[6]_i_1_n_0\
    );
\NETWORK0.IORi[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_10_n_0\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => p_3_in,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \^network0.iori_reg[7]_0\(6),
      O => \NETWORK0.IORi[6]_i_2_n_0\
    );
\NETWORK0.IORi[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \NETWORK0.Ei[7]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => p_3_in,
      I3 => IDR(6),
      I4 => dataout(6),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.IORi[6]_i_3_n_0\
    );
\NETWORK0.IORi[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(6),
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.IORi[7]_i_12_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      O => \NETWORK0.IORi[6]_i_4_n_0\
    );
\NETWORK0.IORi[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACAAAA00000000"
    )
        port map (
      I0 => IDR(6),
      I1 => \^network0.iori_reg[7]_0\(6),
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I5 => \NETWORK0.CHRi[6]_i_2_n_0\,
      O => \NETWORK0.IORi[6]_i_5_n_0\
    );
\NETWORK0.IORi[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C088"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(6),
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      I3 => \NETWORK0.IORi[7]_i_14_n_0\,
      O => \NETWORK0.IORi[6]_i_6_n_0\
    );
\NETWORK0.IORi[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444444"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I3 => \NETWORK0.IORi[7]_i_3_n_0\,
      I4 => \NETWORK0.IORi[7]_i_4_n_0\,
      O => IORi0
    );
\NETWORK0.IORi[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[22]_i_12_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[28]_i_11_n_0\,
      I2 => \NETWORK0.Bi_reg_n_0_[2]\,
      I3 => \NETWORK0.Bi_reg_n_0_[1]\,
      O => \NETWORK0.IORi[7]_i_10_n_0\
    );
\NETWORK0.IORi[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[28]_i_11_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[22]_i_12_n_0\,
      I2 => \NETWORK0.Bi_reg_n_0_[2]\,
      I3 => \NETWORK0.Bi_reg_n_0_[0]\,
      I4 => \NETWORK0.Bi_reg_n_0_[1]\,
      O => \NETWORK0.IORi[7]_i_11_n_0\
    );
\NETWORK0.IORi[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[2]\,
      I1 => \FSM_onehot_NEXT_STATE[1]_i_7_n_0\,
      I2 => \FSM_onehot_NEXT_STATE[1]_i_6_n_0\,
      I3 => \NETWORK0.Ai_reg_n_0_[1]\,
      I4 => \NETWORK0.Ai_reg_n_0_[0]\,
      O => \NETWORK0.IORi[7]_i_12_n_0\
    );
\NETWORK0.IORi[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => PCi(2),
      I1 => PCi(1),
      O => \NETWORK0.IORi[7]_i_13_n_0\
    );
\NETWORK0.IORi[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(3),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^network0.di_reg[14]_0\(0),
      I3 => \^network0.di_reg[14]_0\(1),
      I4 => \FSM_onehot_NEXT_STATE[22]_i_19_n_0\,
      O => \NETWORK0.IORi[7]_i_14_n_0\
    );
\NETWORK0.IORi[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_5_n_0\,
      I1 => \NETWORK0.IORi[7]_i_6_n_0\,
      I2 => \NETWORK0.IORi[7]_i_7_n_0\,
      I3 => \NETWORK0.IORi[7]_i_8_n_0\,
      I4 => \NETWORK0.IORi[7]_i_9_n_0\,
      O => \NETWORK0.IORi[7]_i_2_n_0\
    );
\NETWORK0.IORi[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \NETWORK0.IORi[7]_i_3_n_0\
    );
\NETWORK0.IORi[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I1 => PCi(2),
      I2 => PCi(1),
      I3 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.IORi[7]_i_4_n_0\
    );
\NETWORK0.IORi[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \NETWORK0.IORi[7]_i_10_n_0\,
      I1 => \NETWORK0.IORi[7]_i_11_n_0\,
      I2 => \NETWORK0.Ei_reg_n_0_[7]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I4 => \^network0.iori_reg[7]_0\(7),
      O => \NETWORK0.IORi[7]_i_5_n_0\
    );
\NETWORK0.IORi[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \NETWORK0.Ei[7]_i_3_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \NETWORK0.Ei_reg_n_0_[7]\,
      I3 => IDR(7),
      I4 => dataout(7),
      I5 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.IORi[7]_i_6_n_0\
    );
\NETWORK0.IORi[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(7),
      I1 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I2 => \NETWORK0.IORi[7]_i_12_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      O => \NETWORK0.IORi[7]_i_7_n_0\
    );
\NETWORK0.IORi[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACAAAA00000000"
    )
        port map (
      I0 => IDR(7),
      I1 => \^network0.iori_reg[7]_0\(7),
      I2 => PCi(0),
      I3 => \NETWORK0.IORi[7]_i_13_n_0\,
      I4 => \NETWORK0.CHRi[7]_i_3_n_0\,
      I5 => \NETWORK0.CHRi[7]_i_6_n_0\,
      O => \NETWORK0.IORi[7]_i_8_n_0\
    );
\NETWORK0.IORi[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C088"
    )
        port map (
      I0 => \^network0.iori_reg[7]_0\(7),
      I1 => \FSM_onehot_STATE_reg_n_0_[20]\,
      I2 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      I3 => \NETWORK0.IORi[7]_i_14_n_0\,
      O => \NETWORK0.IORi[7]_i_9_n_0\
    );
\NETWORK0.IORi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IORi0,
      D => \NETWORK0.IORi[0]_i_1_n_0\,
      Q => \^network0.iori_reg[7]_0\(0),
      R => '0'
    );
\NETWORK0.IORi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IORi0,
      D => \NETWORK0.IORi[1]_i_1_n_0\,
      Q => \^network0.iori_reg[7]_0\(1),
      R => '0'
    );
\NETWORK0.IORi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IORi0,
      D => \NETWORK0.IORi[2]_i_1_n_0\,
      Q => \^network0.iori_reg[7]_0\(2),
      R => '0'
    );
\NETWORK0.IORi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IORi0,
      D => \NETWORK0.IORi[3]_i_1_n_0\,
      Q => \^network0.iori_reg[7]_0\(3),
      R => '0'
    );
\NETWORK0.IORi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IORi0,
      D => \NETWORK0.IORi[4]_i_1_n_0\,
      Q => \^network0.iori_reg[7]_0\(4),
      R => '0'
    );
\NETWORK0.IORi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IORi0,
      D => \NETWORK0.IORi[5]_i_1_n_0\,
      Q => \^network0.iori_reg[7]_0\(5),
      R => '0'
    );
\NETWORK0.IORi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IORi0,
      D => \NETWORK0.IORi[6]_i_1_n_0\,
      Q => \^network0.iori_reg[7]_0\(6),
      R => '0'
    );
\NETWORK0.IORi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IORi0,
      D => \NETWORK0.IORi[7]_i_2_n_0\,
      Q => \^network0.iori_reg[7]_0\(7),
      R => '0'
    );
\NETWORK0.ISRi_new[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => CPU_STOPio,
      I1 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[24]\,
      O => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.ISRi_new[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[24]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I2 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I3 => CPU_STOPio,
      O => ISRi_new0
    );
\NETWORK0.ISRi_new_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISRi_new0,
      D => ISR(0),
      Q => \ISRi_new__0\(0),
      R => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.ISRi_new_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISRi_new0,
      D => ISR(1),
      Q => \ISRi_new__0\(1),
      R => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.ISRi_new_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISRi_new0,
      D => ISR(2),
      Q => \ISRi_new__0\(2),
      R => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.ISRi_new_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISRi_new0,
      D => ISR(3),
      Q => \ISRi_new__0\(3),
      R => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.ISRi_new_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISRi_new0,
      D => ISR(4),
      Q => \ISRi_new__0\(4),
      R => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.ISRi_new_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISRi_new0,
      D => ISR(5),
      Q => \ISRi_new__0\(5),
      R => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.ISRi_new_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISRi_new0,
      D => ISR(6),
      Q => \ISRi_new__0\(6),
      R => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.ISRi_new_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISRi_new0,
      D => ISR(7),
      Q => \ISRi_new__0\(7),
      R => \NETWORK0.ISRi_new[7]_i_1_n_0\
    );
\NETWORK0.IWRi[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_4_n_0\,
      I1 => \IWRi__0\(0),
      I2 => \NETWORK0.IWRi[0]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[0]\,
      I4 => \NETWORK0.IWRi[7]_i_6_n_0\,
      O => \NETWORK0.IWRi[0]_i_1_n_0\
    );
\NETWORK0.IWRi[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[0]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => \NETWORK0.Ei_reg_n_0_[0]\,
      O => \NETWORK0.IWRi[0]_i_2_n_0\
    );
\NETWORK0.IWRi[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_4_n_0\,
      I1 => \IWRi__0\(1),
      I2 => \NETWORK0.IWRi[1]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[1]\,
      I4 => \NETWORK0.IWRi[7]_i_6_n_0\,
      O => \NETWORK0.IWRi[1]_i_1_n_0\
    );
\NETWORK0.IWRi[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[1]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => p_1_in15_in,
      O => \NETWORK0.IWRi[1]_i_2_n_0\
    );
\NETWORK0.IWRi[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_4_n_0\,
      I1 => \IWRi__0\(2),
      I2 => \NETWORK0.IWRi[2]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[2]\,
      I4 => \NETWORK0.IWRi[7]_i_6_n_0\,
      O => \NETWORK0.IWRi[2]_i_1_n_0\
    );
\NETWORK0.IWRi[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[2]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => p_1_in17_in,
      O => \NETWORK0.IWRi[2]_i_2_n_0\
    );
\NETWORK0.IWRi[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_4_n_0\,
      I1 => \IWRi__0\(3),
      I2 => \NETWORK0.IWRi[3]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[3]\,
      I4 => \NETWORK0.IWRi[7]_i_6_n_0\,
      O => \NETWORK0.IWRi[3]_i_1_n_0\
    );
\NETWORK0.IWRi[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[3]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => p_1_in19_in,
      O => \NETWORK0.IWRi[3]_i_2_n_0\
    );
\NETWORK0.IWRi[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_4_n_0\,
      I1 => \IWRi__0\(4),
      I2 => \NETWORK0.IWRi[4]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[4]\,
      I4 => \NETWORK0.IWRi[7]_i_6_n_0\,
      O => \NETWORK0.IWRi[4]_i_1_n_0\
    );
\NETWORK0.IWRi[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[4]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => p_21_in,
      O => \NETWORK0.IWRi[4]_i_2_n_0\
    );
\NETWORK0.IWRi[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_4_n_0\,
      I1 => \IWRi__0\(5),
      I2 => \NETWORK0.IWRi[5]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[5]\,
      I4 => \NETWORK0.IWRi[7]_i_6_n_0\,
      O => \NETWORK0.IWRi[5]_i_1_n_0\
    );
\NETWORK0.IWRi[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[5]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => p_2_in,
      O => \NETWORK0.IWRi[5]_i_2_n_0\
    );
\NETWORK0.IWRi[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_4_n_0\,
      I1 => \IWRi__0\(6),
      I2 => \NETWORK0.IWRi[6]_i_2_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[6]\,
      I4 => \NETWORK0.IWRi[7]_i_6_n_0\,
      O => \NETWORK0.IWRi[6]_i_1_n_0\
    );
\NETWORK0.IWRi[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[6]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => p_3_in,
      O => \NETWORK0.IWRi[6]_i_2_n_0\
    );
\NETWORK0.IWRi[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404440444444"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[27]\,
      I3 => \NETWORK0.IORi[7]_i_3_n_0\,
      I4 => PCi(0),
      I5 => \NETWORK0.IWRi[7]_i_3_n_0\,
      O => IWRi0
    );
\NETWORK0.IWRi[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => PCi(21),
      I1 => PCi(20),
      I2 => PCi(9),
      I3 => PCi(8),
      I4 => \NETWORK0.IWRi[7]_i_12_n_0\,
      O => \NETWORK0.IWRi[7]_i_10_n_0\
    );
\NETWORK0.IWRi[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[11]\,
      I1 => \NETWORK0.Bi_reg_n_0_[10]\,
      O => \NETWORK0.IWRi[7]_i_11_n_0\
    );
\NETWORK0.IWRi[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => PCi(22),
      I1 => PCi(23),
      I2 => PCi(1),
      I3 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.IWRi[7]_i_12_n_0\
    );
\NETWORK0.IWRi[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_4_n_0\,
      I1 => \IWRi__0\(7),
      I2 => \NETWORK0.IWRi[7]_i_5_n_0\,
      I3 => \NETWORK0.ALU_DATAi_reg_n_0_[7]\,
      I4 => \NETWORK0.IWRi[7]_i_6_n_0\,
      O => \NETWORK0.IWRi[7]_i_2_n_0\
    );
\NETWORK0.IWRi[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => PCi(5),
      I1 => PCi(4),
      I2 => PCi(3),
      I3 => \NETWORK0.MCRi[7]_i_7_n_0\,
      I4 => \NETWORK0.MCRi[7]_i_8_n_0\,
      I5 => \NETWORK0.IWRi[7]_i_7_n_0\,
      O => \NETWORK0.IWRi[7]_i_3_n_0\
    );
\NETWORK0.IWRi[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000022222222"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE[1]_i_2_n_0\,
      I1 => \FSM_onehot_NEXT_STATE[1]_i_5_n_0\,
      I2 => \NETWORK0.IWRi[7]_i_8_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[0]\,
      I4 => \NETWORK0.Bi_reg_n_0_[1]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[12]\,
      O => \NETWORK0.IWRi[7]_i_4_n_0\
    );
\NETWORK0.IWRi[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I1 => \NETWORK0.Ai_reg_n_0_[7]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_4_n_0\,
      I3 => \NETWORK0.Ei_reg_n_0_[7]\,
      O => \NETWORK0.IWRi[7]_i_5_n_0\
    );
\NETWORK0.IWRi[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFBFFFF"
    )
        port map (
      I0 => \NETWORK0.Ai_reg_n_0_[0]\,
      I1 => \NETWORK0.Ai_reg_n_0_[1]\,
      I2 => \FSM_onehot_NEXT_STATE[22]_i_7_n_0\,
      I3 => \NETWORK0.Ai_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[18]\,
      I5 => \FSM_onehot_NEXT_STATE[22]_i_6_n_0\,
      O => \NETWORK0.IWRi[7]_i_6_n_0\
    );
\NETWORK0.IWRi[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.IWRi[7]_i_9_n_0\,
      I1 => PCi(10),
      I2 => PCi(11),
      I3 => PCi(14),
      I4 => PCi(15),
      I5 => \NETWORK0.IWRi[7]_i_10_n_0\,
      O => \NETWORK0.IWRi[7]_i_7_n_0\
    );
\NETWORK0.IWRi[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[2]\,
      I1 => \FSM_onehot_NEXT_STATE[28]_i_11_n_0\,
      I2 => \NETWORK0.IWRi[7]_i_11_n_0\,
      I3 => \NETWORK0.Bi_reg_n_0_[12]\,
      I4 => \NETWORK0.Bi_reg_n_0_[13]\,
      I5 => \FSM_onehot_NEXT_STATE[28]_i_10_n_0\,
      O => \NETWORK0.IWRi[7]_i_8_n_0\
    );
\NETWORK0.IWRi[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PCi(2),
      I1 => PCi(26),
      I2 => PCi(16),
      I3 => PCi(17),
      O => \NETWORK0.IWRi[7]_i_9_n_0\
    );
\NETWORK0.IWRi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[0]_i_1_n_0\,
      Q => \IWRi__0\(0),
      R => '0'
    );
\NETWORK0.IWRi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[1]_i_1_n_0\,
      Q => \IWRi__0\(1),
      R => '0'
    );
\NETWORK0.IWRi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[2]_i_1_n_0\,
      Q => \IWRi__0\(2),
      R => '0'
    );
\NETWORK0.IWRi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[3]_i_1_n_0\,
      Q => \IWRi__0\(3),
      R => '0'
    );
\NETWORK0.IWRi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[4]_i_1_n_0\,
      Q => \IWRi__0\(4),
      R => '0'
    );
\NETWORK0.IWRi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[5]_i_1_n_0\,
      Q => \IWRi__0\(5),
      R => '0'
    );
\NETWORK0.IWRi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[6]_i_1_n_0\,
      Q => \IWRi__0\(6),
      R => '0'
    );
\NETWORK0.IWRi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => IWRi0,
      D => \NETWORK0.IWRi[7]_i_2_n_0\,
      Q => \IWRi__0\(7),
      R => '0'
    );
\NETWORK0.MCRi[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => \NETWORK0.Ei_reg_n_0_[0]\,
      I2 => douta(0),
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[0]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.MCRi[0]_i_1_n_0\
    );
\NETWORK0.MCRi[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => p_1_in15_in,
      I2 => douta(1),
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[1]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.MCRi[1]_i_1_n_0\
    );
\NETWORK0.MCRi[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => p_1_in17_in,
      I2 => douta(2),
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[2]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.MCRi[2]_i_1_n_0\
    );
\NETWORK0.MCRi[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => p_1_in19_in,
      I2 => douta(3),
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[3]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.MCRi[3]_i_1_n_0\
    );
\NETWORK0.MCRi[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => p_21_in,
      I2 => douta(4),
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[4]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.MCRi[4]_i_1_n_0\
    );
\NETWORK0.MCRi[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => p_2_in,
      I2 => douta(5),
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[5]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.MCRi[5]_i_1_n_0\
    );
\NETWORK0.MCRi[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => p_3_in,
      I2 => douta(6),
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[6]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.MCRi[6]_i_1_n_0\
    );
\NETWORK0.MCRi[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2030"
    )
        port map (
      I0 => \NETWORK0.MCRi[7]_i_3_n_0\,
      I1 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I2 => CPU_STOPio,
      I3 => \NETWORK0.MCRi[7]_i_4_n_0\,
      O => MCRi0
    );
\NETWORK0.MCRi[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEFE"
    )
        port map (
      I0 => \NETWORK0.MCRi[7]_i_15_n_0\,
      I1 => \NETWORK0.MCRi[7]_i_16_n_0\,
      I2 => \NETWORK0.Bi_reg_n_0_[11]\,
      I3 => \NETWORK0.Bi_reg_n_0_[10]\,
      I4 => \NETWORK0.Bi_reg_n_0_[9]\,
      O => \NETWORK0.MCRi[7]_i_10_n_0\
    );
\NETWORK0.MCRi[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PCi(16),
      I1 => PCi(15),
      I2 => PCi(2),
      I3 => PCi(26),
      O => \NETWORK0.MCRi[7]_i_11_n_0\
    );
\NETWORK0.MCRi[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => PCi(22),
      I1 => PCi(21),
      I2 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I3 => PCi(1),
      O => \NETWORK0.MCRi[7]_i_12_n_0\
    );
\NETWORK0.MCRi[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PCi(8),
      I1 => PCi(0),
      I2 => PCi(10),
      I3 => PCi(20),
      O => \NETWORK0.MCRi[7]_i_13_n_0\
    );
\NETWORK0.MCRi[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PCi(28),
      I1 => PCi(29),
      I2 => PCi(30),
      I3 => PCi(27),
      O => \NETWORK0.MCRi[7]_i_14_n_0\
    );
\NETWORK0.MCRi[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[15]\,
      I1 => \NETWORK0.Bi_reg_n_0_[14]\,
      I2 => \NETWORK0.Bi_reg_n_0_[5]\,
      I3 => \NETWORK0.Bi_reg_n_0_[13]\,
      I4 => \NETWORK0.Bi_reg_n_0_[3]\,
      I5 => \NETWORK0.Bi_reg_n_0_[4]\,
      O => \NETWORK0.MCRi[7]_i_15_n_0\
    );
\NETWORK0.MCRi[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF2FFFF"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[6]\,
      I1 => \NETWORK0.Bi_reg_n_0_[7]\,
      I2 => \NETWORK0.Bi_reg_n_0_[8]\,
      I3 => \NETWORK0.Bi_reg_n_0_[2]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I5 => \NETWORK0.MCRi[7]_i_17_n_0\,
      O => \NETWORK0.MCRi[7]_i_16_n_0\
    );
\NETWORK0.MCRi[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[0]\,
      I1 => \NETWORK0.Bi_reg_n_0_[1]\,
      O => \NETWORK0.MCRi[7]_i_17_n_0\
    );
\NETWORK0.MCRi[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => \NETWORK0.Ei_reg_n_0_[7]\,
      I2 => douta(7),
      I3 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I4 => \NETWORK0.Ai_reg_n_0_[7]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \NETWORK0.MCRi[7]_i_2_n_0\
    );
\NETWORK0.MCRi[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => \NETWORK0.MCRi[7]_i_5_n_0\,
      I2 => \NETWORK0.MCRi[7]_i_6_n_0\,
      I3 => \NETWORK0.MCRi[7]_i_7_n_0\,
      I4 => \NETWORK0.MCRi[7]_i_8_n_0\,
      O => \NETWORK0.MCRi[7]_i_3_n_0\
    );
\NETWORK0.MCRi[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFBA"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[14]\,
      I1 => \NETWORK0.Bi_reg_n_0_[13]\,
      I2 => \NETWORK0.Bi_reg_n_0_[12]\,
      I3 => \NETWORK0.MCRi[7]_i_9_n_0\,
      I4 => \NETWORK0.MCRi[7]_i_10_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[3]\,
      O => \NETWORK0.MCRi[7]_i_4_n_0\
    );
\NETWORK0.MCRi[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => PCi(5),
      I1 => PCi(4),
      I2 => PCi(3),
      I3 => PCi(11),
      I4 => PCi(14),
      O => \NETWORK0.MCRi[7]_i_5_n_0\
    );
\NETWORK0.MCRi[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.MCRi[7]_i_11_n_0\,
      I1 => \NETWORK0.MCRi[7]_i_12_n_0\,
      I2 => \NETWORK0.MCRi[7]_i_13_n_0\,
      I3 => PCi(23),
      I4 => PCi(9),
      I5 => PCi(17),
      O => \NETWORK0.MCRi[7]_i_6_n_0\
    );
\NETWORK0.MCRi[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => PCi(25),
      I1 => PCi(24),
      I2 => PCi(13),
      I3 => PCi(12),
      O => \NETWORK0.MCRi[7]_i_7_n_0\
    );
\NETWORK0.MCRi[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.MCRi[7]_i_14_n_0\,
      I1 => PCi(18),
      I2 => PCi(19),
      I3 => PCi(6),
      I4 => PCi(7),
      O => \NETWORK0.MCRi[7]_i_8_n_0\
    );
\NETWORK0.MCRi[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[4]\,
      I1 => \NETWORK0.Bi_reg_n_0_[5]\,
      I2 => \NETWORK0.Bi_reg_n_0_[8]\,
      I3 => \NETWORK0.Bi_reg_n_0_[7]\,
      I4 => \NETWORK0.Bi_reg_n_0_[11]\,
      I5 => \NETWORK0.Bi_reg_n_0_[10]\,
      O => \NETWORK0.MCRi[7]_i_9_n_0\
    );
\NETWORK0.MCRi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRi0,
      D => \NETWORK0.MCRi[0]_i_1_n_0\,
      Q => \MCRi__0\(0),
      R => '0'
    );
\NETWORK0.MCRi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRi0,
      D => \NETWORK0.MCRi[1]_i_1_n_0\,
      Q => \MCRi__0\(1),
      R => '0'
    );
\NETWORK0.MCRi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRi0,
      D => \NETWORK0.MCRi[2]_i_1_n_0\,
      Q => \MCRi__0\(2),
      R => '0'
    );
\NETWORK0.MCRi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRi0,
      D => \NETWORK0.MCRi[3]_i_1_n_0\,
      Q => \MCRi__0\(3),
      R => '0'
    );
\NETWORK0.MCRi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRi0,
      D => \NETWORK0.MCRi[4]_i_1_n_0\,
      Q => \MCRi__0\(4),
      R => '0'
    );
\NETWORK0.MCRi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRi0,
      D => \NETWORK0.MCRi[5]_i_1_n_0\,
      Q => \MCRi__0\(5),
      R => '0'
    );
\NETWORK0.MCRi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRi0,
      D => \NETWORK0.MCRi[6]_i_1_n_0\,
      Q => \MCRi__0\(6),
      R => '0'
    );
\NETWORK0.MCRi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => MCRi0,
      D => \NETWORK0.MCRi[7]_i_2_n_0\,
      Q => \MCRi__0\(7),
      R => '0'
    );
\NETWORK0.PCi[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      O => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \FSM_onehot_NEXT_STATE_reg[1]_0\,
      I1 => CPU_STOPio,
      I2 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => PCi0
    );
\NETWORK0.PCi_new[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[0]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(0),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[0]_i_2_n_0\,
      O => \NETWORK0.PCi_new[0]_i_1_n_0\
    );
\NETWORK0.PCi_new[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[0]\,
      I2 => in65(0),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => PCi(0),
      O => \NETWORK0.PCi_new[0]_i_2_n_0\
    );
\NETWORK0.PCi_new[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[10]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(10),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[10]_i_2_n_0\,
      O => \NETWORK0.PCi_new[10]_i_1_n_0\
    );
\NETWORK0.PCi_new[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[10]\,
      I2 => in65(10),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(10),
      O => \NETWORK0.PCi_new[10]_i_2_n_0\
    );
\NETWORK0.PCi_new[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[11]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(11),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[11]_i_2_n_0\,
      O => \NETWORK0.PCi_new[11]_i_1_n_0\
    );
\NETWORK0.PCi_new[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[11]\,
      I2 => in65(11),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(11),
      O => \NETWORK0.PCi_new[11]_i_2_n_0\
    );
\NETWORK0.PCi_new[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[12]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(12),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[12]_i_2_n_0\,
      O => \NETWORK0.PCi_new[12]_i_1_n_0\
    );
\NETWORK0.PCi_new[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[12]\,
      I2 => in65(12),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(12),
      O => \NETWORK0.PCi_new[12]_i_2_n_0\
    );
\NETWORK0.PCi_new[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[13]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(13),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[13]_i_2_n_0\,
      O => \NETWORK0.PCi_new[13]_i_1_n_0\
    );
\NETWORK0.PCi_new[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[13]\,
      I2 => in65(13),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(13),
      O => \NETWORK0.PCi_new[13]_i_2_n_0\
    );
\NETWORK0.PCi_new[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[14]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(14),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[14]_i_2_n_0\,
      O => \NETWORK0.PCi_new[14]_i_1_n_0\
    );
\NETWORK0.PCi_new[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[14]\,
      I2 => in65(14),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(14),
      O => \NETWORK0.PCi_new[14]_i_2_n_0\
    );
\NETWORK0.PCi_new[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[15]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(15),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[15]_i_2_n_0\,
      O => \NETWORK0.PCi_new[15]_i_1_n_0\
    );
\NETWORK0.PCi_new[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[15]\,
      I2 => in65(15),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(15),
      O => \NETWORK0.PCi_new[15]_i_2_n_0\
    );
\NETWORK0.PCi_new[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000111"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I3 => PCi_new1,
      I4 => \FSM_onehot_STATE_reg_n_0_[27]\,
      O => \NETWORK0.PCi_new[15]_i_3_n_0\
    );
\NETWORK0.PCi_new[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF40FF40FF40"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg[0]_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I2 => \NETWORK0.PCi_new_reg[16]_0\(0),
      I3 => \NETWORK0.PCi_new[16]_i_4_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(16),
      O => \NETWORK0.PCi_new[16]_i_1_n_0\
    );
\NETWORK0.PCi_new[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA08"
    )
        port map (
      I0 => in65(16),
      I1 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I2 => PCi_new1,
      I3 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[19]\,
      O => \NETWORK0.PCi_new[16]_i_4_n_0\
    );
\NETWORK0.PCi_new[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(17),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(17),
      O => \NETWORK0.PCi_new[17]_i_1_n_0\
    );
\NETWORK0.PCi_new[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(18),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(18),
      O => \NETWORK0.PCi_new[18]_i_1_n_0\
    );
\NETWORK0.PCi_new[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(19),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(19),
      O => \NETWORK0.PCi_new[19]_i_1_n_0\
    );
\NETWORK0.PCi_new[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[1]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(1),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[1]_i_2_n_0\,
      O => \NETWORK0.PCi_new[1]_i_1_n_0\
    );
\NETWORK0.PCi_new[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[1]\,
      I2 => in65(1),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(1),
      O => \NETWORK0.PCi_new[1]_i_2_n_0\
    );
\NETWORK0.PCi_new[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(20),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(20),
      O => \NETWORK0.PCi_new[20]_i_1_n_0\
    );
\NETWORK0.PCi_new[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(21),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(21),
      O => \NETWORK0.PCi_new[21]_i_1_n_0\
    );
\NETWORK0.PCi_new[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(22),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(22),
      O => \NETWORK0.PCi_new[22]_i_1_n_0\
    );
\NETWORK0.PCi_new[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(23),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(23),
      O => \NETWORK0.PCi_new[23]_i_1_n_0\
    );
\NETWORK0.PCi_new[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(24),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(24),
      O => \NETWORK0.PCi_new[24]_i_1_n_0\
    );
\NETWORK0.PCi_new[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(25),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(25),
      O => \NETWORK0.PCi_new[25]_i_1_n_0\
    );
\NETWORK0.PCi_new[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(26),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(26),
      O => \NETWORK0.PCi_new[26]_i_1_n_0\
    );
\NETWORK0.PCi_new[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(27),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(27),
      O => \NETWORK0.PCi_new[27]_i_1_n_0\
    );
\NETWORK0.PCi_new[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(28),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(28),
      O => \NETWORK0.PCi_new[28]_i_1_n_0\
    );
\NETWORK0.PCi_new[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(29),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(29),
      O => \NETWORK0.PCi_new[29]_i_1_n_0\
    );
\NETWORK0.PCi_new[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[2]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(2),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[2]_i_2_n_0\,
      O => \NETWORK0.PCi_new[2]_i_1_n_0\
    );
\NETWORK0.PCi_new[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[2]\,
      I2 => in65(2),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(2),
      O => \NETWORK0.PCi_new[2]_i_2_n_0\
    );
\NETWORK0.PCi_new[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA8A"
    )
        port map (
      I0 => INTERRUPT_BLOCK_reg_0,
      I1 => \FSM_onehot_NEXT_STATE[1]_i_3_n_0\,
      I2 => \NETWORK0.PCi_new[30]_i_4_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[27]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => PCi_new0
    );
\NETWORK0.PCi_new[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => in62(30),
      I1 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I2 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I3 => in65(30),
      O => \NETWORK0.PCi_new[30]_i_2_n_0\
    );
\NETWORK0.PCi_new[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[13]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[15]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[28]\,
      O => \NETWORK0.PCi_new[30]_i_4_n_0\
    );
\NETWORK0.PCi_new[30]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[19]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[17]\,
      I2 => PCi_new1,
      I3 => \FSM_onehot_STATE_reg_n_0_[15]\,
      O => \NETWORK0.PCi_new[30]_i_5_n_0\
    );
\NETWORK0.PCi_new[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[3]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(3),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[3]_i_2_n_0\,
      O => \NETWORK0.PCi_new[3]_i_1_n_0\
    );
\NETWORK0.PCi_new[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[3]\,
      I2 => in65(3),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(3),
      O => \NETWORK0.PCi_new[3]_i_2_n_0\
    );
\NETWORK0.PCi_new[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[4]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(4),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[4]_i_2_n_0\,
      O => \NETWORK0.PCi_new[4]_i_1_n_0\
    );
\NETWORK0.PCi_new[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[4]\,
      I2 => in65(4),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(4),
      O => \NETWORK0.PCi_new[4]_i_2_n_0\
    );
\NETWORK0.PCi_new[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[5]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(5),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[5]_i_2_n_0\,
      O => \NETWORK0.PCi_new[5]_i_1_n_0\
    );
\NETWORK0.PCi_new[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[5]\,
      I2 => in65(5),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(5),
      O => \NETWORK0.PCi_new[5]_i_2_n_0\
    );
\NETWORK0.PCi_new[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[6]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(6),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[6]_i_2_n_0\,
      O => \NETWORK0.PCi_new[6]_i_1_n_0\
    );
\NETWORK0.PCi_new[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[6]\,
      I2 => in65(6),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(6),
      O => \NETWORK0.PCi_new[6]_i_2_n_0\
    );
\NETWORK0.PCi_new[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[7]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(7),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[7]_i_2_n_0\,
      O => \NETWORK0.PCi_new[7]_i_1_n_0\
    );
\NETWORK0.PCi_new[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[7]\,
      I2 => in65(7),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(7),
      O => \NETWORK0.PCi_new[7]_i_2_n_0\
    );
\NETWORK0.PCi_new[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[8]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(8),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[8]_i_2_n_0\,
      O => \NETWORK0.PCi_new[8]_i_1_n_0\
    );
\NETWORK0.PCi_new[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[8]\,
      I2 => in65(8),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(8),
      O => \NETWORK0.PCi_new[8]_i_2_n_0\
    );
\NETWORK0.PCi_new[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \NETWORK0.Ci_reg_n_0_[9]\,
      I1 => \NETWORK0.PCi_new_reg[0]_0\,
      I2 => data1(9),
      I3 => \FSM_onehot_STATE_reg_n_0_[28]\,
      I4 => \NETWORK0.PCi_new[9]_i_2_n_0\,
      O => \NETWORK0.PCi_new[9]_i_1_n_0\
    );
\NETWORK0.PCi_new[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \NETWORK0.PCi_new[15]_i_3_n_0\,
      I1 => \NETWORK0.Ci_reg_n_0_[9]\,
      I2 => in65(9),
      I3 => \NETWORK0.PCi_new[30]_i_5_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => in62(9),
      O => \NETWORK0.PCi_new[9]_i_2_n_0\
    );
\NETWORK0.PCi_new_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[0]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[0]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[10]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[10]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[11]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[11]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[12]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[12]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[13]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[13]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[14]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[14]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[15]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[15]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[16]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[16]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[17]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[17]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[18]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[18]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[19]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[19]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[1]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[1]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[20]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[20]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[21]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[21]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[22]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[22]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[23]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[23]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[24]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[24]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[25]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[25]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[26]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[26]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[27]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[27]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[28]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[28]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[29]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[29]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[2]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[2]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[30]_i_2_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[30]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[3]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[3]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[4]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[4]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[5]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[5]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[6]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[6]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[7]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[7]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[8]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[8]\,
      R => '0'
    );
\NETWORK0.PCi_new_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi_new0,
      D => \NETWORK0.PCi_new[9]_i_1_n_0\,
      Q => \NETWORK0.PCi_new_reg_n_0_[9]\,
      R => '0'
    );
\NETWORK0.PCi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[0]\,
      Q => PCi(0),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[10]\,
      Q => PCi(10),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[11]\,
      Q => PCi(11),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[12]\,
      Q => PCi(12),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[13]\,
      Q => PCi(13),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[14]\,
      Q => PCi(14),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[15]\,
      Q => PCi(15),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[16]\,
      Q => PCi(16),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[17]\,
      Q => PCi(17),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[18]\,
      Q => PCi(18),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[19]\,
      Q => PCi(19),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[1]\,
      Q => PCi(1),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[20]\,
      Q => PCi(20),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[21]\,
      Q => PCi(21),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[22]\,
      Q => PCi(22),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[23]\,
      Q => PCi(23),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[24]\,
      Q => PCi(24),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[25]\,
      Q => PCi(25),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[26]\,
      Q => PCi(26),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[27]\,
      Q => PCi(27),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[28]\,
      Q => PCi(28),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[29]\,
      Q => PCi(29),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[2]\,
      Q => PCi(2),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[30]\,
      Q => PCi(30),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[3]\,
      Q => PCi(3),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[4]\,
      Q => PCi(4),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[5]\,
      Q => PCi(5),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[6]\,
      Q => PCi(6),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[7]\,
      Q => PCi(7),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[8]\,
      Q => PCi(8),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NETWORK0.PCi_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[9]\,
      Q => PCi(9),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\NEXT_STATE1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NEXT_STATE1_inferred__0/i__carry_n_0\,
      CO(2) => \NEXT_STATE1_inferred__0/i__carry_n_1\,
      CO(1) => \NEXT_STATE1_inferred__0/i__carry_n_2\,
      CO(0) => \NEXT_STATE1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1__1_n_0\,
      O(3 downto 0) => \NLW_NEXT_STATE1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2__0_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4__0_n_0\,
      S(0) => \i__carry_i_5__0_n_0\
    );
\NEXT_STATE1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NEXT_STATE1_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_NEXT_STATE1_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => in7,
      CO(1) => \NEXT_STATE1_inferred__0/i__carry__0_n_2\,
      CO(0) => \NEXT_STATE1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NEXT_STATE1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__0_i_1_n_0\,
      S(1) => \i__carry__0_i_2__0_n_0\,
      S(0) => \i__carry__0_i_3__0_n_0\
    );
\NEXT_STATE1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NEXT_STATE1_inferred__1/i__carry_n_0\,
      CO(2) => \NEXT_STATE1_inferred__1/i__carry_n_1\,
      CO(1) => \NEXT_STATE1_inferred__1/i__carry_n_2\,
      CO(0) => \NEXT_STATE1_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1__2_n_0\,
      O(3 downto 0) => \NLW_NEXT_STATE1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2__1_n_0\,
      S(2) => \i__carry_i_3__0_n_0\,
      S(1) => \i__carry_i_4__1_n_0\,
      S(0) => \i__carry_i_5__1_n_0\
    );
\NEXT_STATE1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NEXT_STATE1_inferred__1/i__carry_n_0\,
      CO(3) => \NEXT_STATE1_inferred__1/i__carry__0_n_0\,
      CO(2) => \NEXT_STATE1_inferred__1/i__carry__0_n_1\,
      CO(1) => \NEXT_STATE1_inferred__1/i__carry__0_n_2\,
      CO(0) => \NEXT_STATE1_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NEXT_STATE1_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\NEXT_STATE1_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \NEXT_STATE1_inferred__1/i__carry__0_n_0\,
      CO(3) => \NEXT_STATE1_inferred__1/i__carry__1_n_0\,
      CO(2) => \NEXT_STATE1_inferred__1/i__carry__1_n_1\,
      CO(1) => \NEXT_STATE1_inferred__1/i__carry__1_n_2\,
      CO(0) => \NEXT_STATE1_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NEXT_STATE1_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\NEXT_STATE1_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \NEXT_STATE1_inferred__1/i__carry__1_n_0\,
      CO(3) => \NLW_NEXT_STATE1_inferred__1/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => in6,
      CO(1) => \NEXT_STATE1_inferred__1/i__carry__2_n_2\,
      CO(0) => \NEXT_STATE1_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NEXT_STATE1_inferred__1/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__2_i_1_n_0\,
      S(1) => \i__carry__2_i_2_n_0\,
      S(0) => \i__carry__2_i_3_n_0\
    );
NEXT_STATE2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NEXT_STATE2_carry_n_0,
      CO(2) => NEXT_STATE2_carry_n_1,
      CO(1) => NEXT_STATE2_carry_n_2,
      CO(0) => NEXT_STATE2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => NEXT_STATE2_carry_i_1_n_0,
      O(3 downto 0) => NLW_NEXT_STATE2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => NEXT_STATE2_carry_i_2_n_0,
      S(2) => NEXT_STATE2_carry_i_3_n_0,
      S(1) => NEXT_STATE2_carry_i_4_n_0,
      S(0) => NEXT_STATE2_carry_i_5_n_0
    );
\NEXT_STATE2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => NEXT_STATE2_carry_n_0,
      CO(3) => \NEXT_STATE2_carry__0_n_0\,
      CO(2) => \NEXT_STATE2_carry__0_n_1\,
      CO(1) => \NEXT_STATE2_carry__0_n_2\,
      CO(0) => \NEXT_STATE2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NEXT_STATE2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \NEXT_STATE2_carry__0_i_1_n_0\,
      S(2) => \NEXT_STATE2_carry__0_i_2_n_0\,
      S(1) => \NEXT_STATE2_carry__0_i_3_n_0\,
      S(0) => \NEXT_STATE2_carry__0_i_4_n_0\
    );
\NEXT_STATE2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[17]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[16]\,
      O => \NEXT_STATE2_carry__0_i_1_n_0\
    );
\NEXT_STATE2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[15]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[14]\,
      O => \NEXT_STATE2_carry__0_i_2_n_0\
    );
\NEXT_STATE2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[13]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[12]\,
      O => \NEXT_STATE2_carry__0_i_3_n_0\
    );
\NEXT_STATE2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[11]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[10]\,
      O => \NEXT_STATE2_carry__0_i_4_n_0\
    );
\NEXT_STATE2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \NEXT_STATE2_carry__0_n_0\,
      CO(3) => \NEXT_STATE2_carry__1_n_0\,
      CO(2) => \NEXT_STATE2_carry__1_n_1\,
      CO(1) => \NEXT_STATE2_carry__1_n_2\,
      CO(0) => \NEXT_STATE2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NEXT_STATE2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \NEXT_STATE2_carry__1_i_1_n_0\,
      S(2) => \NEXT_STATE2_carry__1_i_2_n_0\,
      S(1) => \NEXT_STATE2_carry__1_i_3_n_0\,
      S(0) => \NEXT_STATE2_carry__1_i_4_n_0\
    );
\NEXT_STATE2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[25]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[24]\,
      O => \NEXT_STATE2_carry__1_i_1_n_0\
    );
\NEXT_STATE2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[23]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[22]\,
      O => \NEXT_STATE2_carry__1_i_2_n_0\
    );
\NEXT_STATE2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[21]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[20]\,
      O => \NEXT_STATE2_carry__1_i_3_n_0\
    );
\NEXT_STATE2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[19]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[18]\,
      O => \NEXT_STATE2_carry__1_i_4_n_0\
    );
\NEXT_STATE2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \NEXT_STATE2_carry__1_n_0\,
      CO(3) => \NLW_NEXT_STATE2_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \NEXT_STATE2_carry__2_n_1\,
      CO(1) => \NEXT_STATE2_carry__2_n_2\,
      CO(0) => \NEXT_STATE2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NEXT_STATE2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \NEXT_STATE2_carry__2_i_1_n_0\,
      S(1) => \NEXT_STATE2_carry__2_i_2_n_0\,
      S(0) => \NEXT_STATE2_carry__2_i_3_n_0\
    );
\NEXT_STATE2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[30]\,
      O => \NEXT_STATE2_carry__2_i_1_n_0\
    );
\NEXT_STATE2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[29]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[28]\,
      O => \NEXT_STATE2_carry__2_i_2_n_0\
    );
\NEXT_STATE2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[27]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[26]\,
      O => \NEXT_STATE2_carry__2_i_3_n_0\
    );
NEXT_STATE2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[3]\,
      O => NEXT_STATE2_carry_i_1_n_0
    );
NEXT_STATE2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[9]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[8]\,
      O => NEXT_STATE2_carry_i_2_n_0
    );
NEXT_STATE2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[7]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[6]\,
      O => NEXT_STATE2_carry_i_3_n_0
    );
NEXT_STATE2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[5]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[4]\,
      O => NEXT_STATE2_carry_i_4_n_0
    );
NEXT_STATE2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \NETWORK0.PCi_new_reg_n_0_[3]\,
      I1 => \NETWORK0.PCi_new_reg_n_0_[2]\,
      O => NEXT_STATE2_carry_i_5_n_0
    );
\PC_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[0]\,
      Q => PC(0),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[10]\,
      Q => PC(10),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[11]\,
      Q => PC(11),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[12]\,
      Q => PC(12),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[13]\,
      Q => PC(13),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[14]\,
      Q => PC(14),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[15]\,
      Q => PC(15),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[1]\,
      Q => PC(1),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[2]\,
      Q => PC(2),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[3]\,
      Q => PC(3),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[4]\,
      Q => PC(4),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[5]\,
      Q => PC(5),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[6]\,
      Q => PC(6),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[7]\,
      Q => PC(7),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[8]\,
      Q => PC(8),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
\PC_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PCi0,
      D => \NETWORK0.PCi_new_reg_n_0_[9]\,
      Q => PC(9),
      R => \NETWORK0.PCi[30]_i_1_n_0\
    );
PCi_new0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PCi_new0_carry_n_0,
      CO(2) => PCi_new0_carry_n_1,
      CO(1) => PCi_new0_carry_n_2,
      CO(0) => PCi_new0_carry_n_3,
      CYINIT => PCi(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in62(4 downto 1),
      S(3 downto 0) => PCi(4 downto 1)
    );
\PCi_new0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => PCi_new0_carry_n_0,
      CO(3) => \PCi_new0_carry__0_n_0\,
      CO(2) => \PCi_new0_carry__0_n_1\,
      CO(1) => \PCi_new0_carry__0_n_2\,
      CO(0) => \PCi_new0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in62(8 downto 5),
      S(3 downto 0) => PCi(8 downto 5)
    );
\PCi_new0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_carry__0_n_0\,
      CO(3) => \PCi_new0_carry__1_n_0\,
      CO(2) => \PCi_new0_carry__1_n_1\,
      CO(1) => \PCi_new0_carry__1_n_2\,
      CO(0) => \PCi_new0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in62(12 downto 9),
      S(3 downto 0) => PCi(12 downto 9)
    );
\PCi_new0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_carry__1_n_0\,
      CO(3) => \PCi_new0_carry__2_n_0\,
      CO(2) => \PCi_new0_carry__2_n_1\,
      CO(1) => \PCi_new0_carry__2_n_2\,
      CO(0) => \PCi_new0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in62(16 downto 13),
      S(3 downto 0) => PCi(16 downto 13)
    );
\PCi_new0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_carry__2_n_0\,
      CO(3) => \PCi_new0_carry__3_n_0\,
      CO(2) => \PCi_new0_carry__3_n_1\,
      CO(1) => \PCi_new0_carry__3_n_2\,
      CO(0) => \PCi_new0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in62(20 downto 17),
      S(3 downto 0) => PCi(20 downto 17)
    );
\PCi_new0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_carry__3_n_0\,
      CO(3) => \PCi_new0_carry__4_n_0\,
      CO(2) => \PCi_new0_carry__4_n_1\,
      CO(1) => \PCi_new0_carry__4_n_2\,
      CO(0) => \PCi_new0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in62(24 downto 21),
      S(3 downto 0) => PCi(24 downto 21)
    );
\PCi_new0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_carry__4_n_0\,
      CO(3) => \PCi_new0_carry__5_n_0\,
      CO(2) => \PCi_new0_carry__5_n_1\,
      CO(1) => \PCi_new0_carry__5_n_2\,
      CO(0) => \PCi_new0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in62(28 downto 25),
      S(3 downto 0) => PCi(28 downto 25)
    );
\PCi_new0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_PCi_new0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \PCi_new0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_PCi_new0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in62(30 downto 29),
      S(3 downto 2) => B"00",
      S(1 downto 0) => PCi(30 downto 29)
    );
\PCi_new0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PCi_new0_inferred__0/i__carry_n_0\,
      CO(2) => \PCi_new0_inferred__0/i__carry_n_1\,
      CO(1) => \PCi_new0_inferred__0/i__carry_n_2\,
      CO(0) => \PCi_new0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 2) => B"00",
      DI(1) => PCi(1),
      DI(0) => \i__carry_i_1_n_0\,
      O(3 downto 0) => in65(3 downto 0),
      S(3 downto 2) => PCi(3 downto 2),
      S(1) => \i__carry_i_2__2_n_0\,
      S(0) => \i__carry_i_3__2_n_0\
    );
\PCi_new0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__0/i__carry_n_0\,
      CO(3) => \PCi_new0_inferred__0/i__carry__0_n_0\,
      CO(2) => \PCi_new0_inferred__0/i__carry__0_n_1\,
      CO(1) => \PCi_new0_inferred__0/i__carry__0_n_2\,
      CO(0) => \PCi_new0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in65(7 downto 4),
      S(3 downto 0) => PCi(7 downto 4)
    );
\PCi_new0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__0/i__carry__0_n_0\,
      CO(3) => \PCi_new0_inferred__0/i__carry__1_n_0\,
      CO(2) => \PCi_new0_inferred__0/i__carry__1_n_1\,
      CO(1) => \PCi_new0_inferred__0/i__carry__1_n_2\,
      CO(0) => \PCi_new0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in65(11 downto 8),
      S(3 downto 0) => PCi(11 downto 8)
    );
\PCi_new0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__0/i__carry__1_n_0\,
      CO(3) => \PCi_new0_inferred__0/i__carry__2_n_0\,
      CO(2) => \PCi_new0_inferred__0/i__carry__2_n_1\,
      CO(1) => \PCi_new0_inferred__0/i__carry__2_n_2\,
      CO(0) => \PCi_new0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in65(15 downto 12),
      S(3 downto 0) => PCi(15 downto 12)
    );
\PCi_new0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__0/i__carry__2_n_0\,
      CO(3) => \PCi_new0_inferred__0/i__carry__3_n_0\,
      CO(2) => \PCi_new0_inferred__0/i__carry__3_n_1\,
      CO(1) => \PCi_new0_inferred__0/i__carry__3_n_2\,
      CO(0) => \PCi_new0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in65(19 downto 16),
      S(3 downto 0) => PCi(19 downto 16)
    );
\PCi_new0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__0/i__carry__3_n_0\,
      CO(3) => \PCi_new0_inferred__0/i__carry__4_n_0\,
      CO(2) => \PCi_new0_inferred__0/i__carry__4_n_1\,
      CO(1) => \PCi_new0_inferred__0/i__carry__4_n_2\,
      CO(0) => \PCi_new0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in65(23 downto 20),
      S(3 downto 0) => PCi(23 downto 20)
    );
\PCi_new0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__0/i__carry__4_n_0\,
      CO(3) => \PCi_new0_inferred__0/i__carry__5_n_0\,
      CO(2) => \PCi_new0_inferred__0/i__carry__5_n_1\,
      CO(1) => \PCi_new0_inferred__0/i__carry__5_n_2\,
      CO(0) => \PCi_new0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in65(27 downto 24),
      S(3 downto 0) => PCi(27 downto 24)
    );
\PCi_new0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_PCi_new0_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \PCi_new0_inferred__0/i__carry__6_n_2\,
      CO(0) => \PCi_new0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_PCi_new0_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in65(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => PCi(30 downto 28)
    );
\PCi_new0_inferred__1/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PCi_new0_inferred__1/i___0_carry_n_0\,
      CO(2) => \PCi_new0_inferred__1/i___0_carry_n_1\,
      CO(1) => \PCi_new0_inferred__1/i___0_carry_n_2\,
      CO(0) => \PCi_new0_inferred__1/i___0_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 2) => B"00",
      DI(1) => \MEM_data_reg[15]_0\(1),
      DI(0) => \i___0_carry_i_1_n_0\,
      O(3 downto 0) => data1(3 downto 0),
      S(3 downto 2) => \MEM_data_reg[15]_0\(3 downto 2),
      S(1 downto 0) => \NETWORK0.PCi_new_reg[3]_0\(1 downto 0)
    );
\PCi_new0_inferred__1/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__1/i___0_carry_n_0\,
      CO(3) => \PCi_new0_inferred__1/i___0_carry__0_n_0\,
      CO(2) => \PCi_new0_inferred__1/i___0_carry__0_n_1\,
      CO(1) => \PCi_new0_inferred__1/i___0_carry__0_n_2\,
      CO(0) => \PCi_new0_inferred__1/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(7 downto 4),
      S(3 downto 0) => \MEM_data_reg[15]_0\(7 downto 4)
    );
\PCi_new0_inferred__1/i___0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__1/i___0_carry__0_n_0\,
      CO(3) => \PCi_new0_inferred__1/i___0_carry__1_n_0\,
      CO(2) => \PCi_new0_inferred__1/i___0_carry__1_n_1\,
      CO(1) => \PCi_new0_inferred__1/i___0_carry__1_n_2\,
      CO(0) => \PCi_new0_inferred__1/i___0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(11 downto 8),
      S(3 downto 0) => \MEM_data_reg[15]_0\(11 downto 8)
    );
\PCi_new0_inferred__1/i___0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCi_new0_inferred__1/i___0_carry__1_n_0\,
      CO(3) => \DATAuu_reg[15]\(0),
      CO(2) => \PCi_new0_inferred__1/i___0_carry__2_n_1\,
      CO(1) => \PCi_new0_inferred__1/i___0_carry__2_n_2\,
      CO(0) => \PCi_new0_inferred__1/i___0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(15 downto 12),
      S(3 downto 0) => \MEM_data_reg[15]_0\(15 downto 12)
    );
PCi_new1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PCi_new1_carry_n_0,
      CO(2) => PCi_new1_carry_n_1,
      CO(1) => PCi_new1_carry_n_2,
      CO(0) => PCi_new1_carry_n_3,
      CYINIT => \PCi_new1_carry__0_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_PCi_new1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \PCi_new1_carry__0_1\(3 downto 0)
    );
\PCi_new1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => PCi_new1_carry_n_0,
      CO(3) => \NLW_PCi_new1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => PCi_new1,
      CO(1) => \PCi_new1_carry__0_n_2\,
      CO(0) => \PCi_new1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \MEM_data_reg[15]_0\(15),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_PCi_new1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => \NETWORK0.PCi_new[16]_i_4_0\(2 downto 0)
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^f_mode_offset__0\(0),
      I1 => \MEM_data_reg[15]_0\(0),
      O => \i___0_carry_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[15]\,
      I1 => \NETWORK0.Bi_reg_n_0_[14]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(17),
      I1 => PCi(16),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^network0.di_reg[14]_0\(14),
      I2 => E(15),
      I3 => D(15),
      O => \E_reg[14]_0\(3)
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(7),
      I1 => \^q\(7),
      O => \NETWORK0.Di_reg[7]_0\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^network0.di_reg[14]_0\(12),
      I2 => \^q\(13),
      I3 => \^network0.di_reg[14]_0\(13),
      O => \E_reg[14]_0\(2)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[13]\,
      I1 => \NETWORK0.Bi_reg_n_0_[12]\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(15),
      I1 => PCi(14),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(6),
      I1 => \^q\(6),
      O => \NETWORK0.Di_reg[7]_0\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^network0.di_reg[14]_0\(10),
      I2 => \^q\(11),
      I3 => \^network0.di_reg[14]_0\(11),
      O => \E_reg[14]_0\(1)
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[10]\,
      I1 => \NETWORK0.Bi_reg_n_0_[11]\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(12),
      I1 => PCi(13),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(5),
      I1 => \^q\(5),
      O => \NETWORK0.Di_reg[7]_0\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^network0.di_reg[14]_0\(8),
      I2 => \^q\(9),
      I3 => \^network0.di_reg[14]_0\(9),
      O => \E_reg[14]_0\(0)
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(11),
      I1 => PCi(10),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(4),
      I1 => \^q\(4),
      O => \NETWORK0.Di_reg[7]_0\(0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => E(15),
      I1 => D(15),
      I2 => \^network0.di_reg[14]_0\(14),
      I3 => \^q\(14),
      O => \E_reg[15]_0\(3)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(12),
      I1 => \^q\(12),
      I2 => \^network0.di_reg[14]_0\(13),
      I3 => \^q\(13),
      O => \E_reg[15]_0\(2)
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(10),
      I1 => \^q\(10),
      I2 => \^network0.di_reg[14]_0\(11),
      I3 => \^q\(11),
      O => \E_reg[15]_0\(1)
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(8),
      I1 => \^q\(8),
      I2 => \^network0.di_reg[14]_0\(9),
      I3 => \^q\(9),
      O => \E_reg[15]_0\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(24),
      I1 => PCi(25),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(11),
      I1 => \^q\(11),
      O => \NETWORK0.Di_reg[11]_0\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(23),
      I1 => PCi(22),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(10),
      I1 => \^q\(10),
      O => \NETWORK0.Di_reg[11]_0\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(21),
      I1 => PCi(20),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(9),
      I1 => \^q\(9),
      O => \NETWORK0.Di_reg[11]_0\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(19),
      I1 => PCi(18),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(8),
      I1 => \^q\(8),
      O => \NETWORK0.Di_reg[11]_0\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(30),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(15),
      I1 => E(15),
      O => \NETWORK0.Di_reg[15]_1\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(28),
      I1 => PCi(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(14),
      I1 => \^q\(14),
      O => \NETWORK0.Di_reg[15]_1\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(27),
      I1 => PCi(26),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(13),
      I1 => \^q\(13),
      O => \NETWORK0.Di_reg[15]_1\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(12),
      I1 => \^q\(12),
      O => \NETWORK0.Di_reg[15]_1\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^f_mode_offset__0\(0),
      I1 => PCi(0),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^network0.di_reg[14]_0\(6),
      I2 => \^q\(7),
      I3 => \^network0.di_reg[14]_0\(7),
      O => \E_reg[6]_0\(3)
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[3]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(3),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(3),
      I1 => \^q\(3),
      O => \NETWORK0.Di_reg[3]_0\(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^network0.di_reg[14]_0\(4),
      I2 => \^q\(5),
      I3 => \^network0.di_reg[14]_0\(5),
      O => \E_reg[6]_0\(2)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[8]\,
      I1 => \NETWORK0.Bi_reg_n_0_[9]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(9),
      I1 => PCi(8),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^f_mode_offset__0\(0),
      I1 => PCi(0),
      I2 => PCi(1),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(2),
      I1 => \^q\(2),
      O => \NETWORK0.Di_reg[3]_0\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[7]\,
      I1 => \NETWORK0.Bi_reg_n_0_[6]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(7),
      I1 => PCi(6),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^network0.di_reg[14]_0\(2),
      I2 => \^network0.di_reg[14]_0\(3),
      I3 => \^q\(3),
      O => \E_reg[6]_0\(1)
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PCi(0),
      I1 => \^f_mode_offset__0\(0),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(1),
      I1 => \^q\(1),
      O => \NETWORK0.Di_reg[3]_0\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^network0.di_reg[14]_0\(0),
      I2 => \^q\(1),
      I3 => \^network0.di_reg[14]_0\(1),
      O => \E_reg[6]_0\(0)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[4]\,
      I1 => \NETWORK0.Bi_reg_n_0_[5]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCi(4),
      I1 => PCi(5),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(0),
      I1 => \^q\(0),
      O => \NETWORK0.Di_reg[3]_0\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(6),
      I1 => \^q\(6),
      I2 => \^network0.di_reg[14]_0\(7),
      I3 => \^q\(7),
      O => \NETWORK0.Di_reg[6]_0\(3)
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \NETWORK0.Bi_reg_n_0_[3]\,
      I1 => \NETWORK0.Bi_reg_n_0_[2]\,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCi(3),
      I1 => PCi(2),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(5),
      I1 => \^q\(5),
      I2 => \^network0.di_reg[14]_0\(4),
      I3 => \^q\(4),
      O => \NETWORK0.Di_reg[6]_0\(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^network0.di_reg[14]_0\(3),
      I2 => \^network0.di_reg[14]_0\(2),
      I3 => \^q\(2),
      O => \NETWORK0.Di_reg[6]_0\(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^network0.di_reg[14]_0\(1),
      I1 => \^q\(1),
      I2 => \^network0.di_reg[14]_0\(0),
      I3 => \^q\(0),
      O => \NETWORK0.Di_reg[6]_0\(0)
    );
\loop0[0].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IDR(0),
      O => T
    );
\loop0[1].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IDR(1),
      O => \IDR_reg[1]_0\
    );
\loop0[2].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IDR(2),
      O => \IDR_reg[2]_0\
    );
\loop0[3].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IDR(3),
      O => \IDR_reg[3]_0\
    );
\loop0[4].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IDR(4),
      O => \IDR_reg[4]_0\
    );
\loop0[5].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IDR(5),
      O => \IDR_reg[5]_0\
    );
\loop0[6].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IDR(6),
      O => \IDR_reg[6]_0\
    );
\loop0[7].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IDR(7),
      O => \IDR_reg[7]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dRISC_IOCONTROLLER is
  port (
    CPU_STOPio : out STD_LOGIC;
    INTERRUPTi : out STD_LOGIC;
    CPU_STOP_reg_0 : out STD_LOGIC;
    \DETECT_PREVu_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ISR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLKuu0_BUFG : in STD_LOGIC;
    \DETECT_PREVu_reg[0]_0\ : in STD_LOGIC;
    INTERRUPT_BLOCK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_NEXT_STATE_reg[0]_0\ : in STD_LOGIC;
    \DETECT_PREV_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dataout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \NETWORK0.DETECT_reg[7]_0\ : in STD_LOGIC;
    \NETWORK0.DETECT_reg[6]_0\ : in STD_LOGIC;
    \NETWORK0.DETECT_reg[5]_0\ : in STD_LOGIC;
    \NETWORK0.DETECT_reg[4]_0\ : in STD_LOGIC;
    \NETWORK0.DETECT_reg[3]_0\ : in STD_LOGIC;
    \NETWORK0.DETECT_reg[2]_0\ : in STD_LOGIC;
    \NETWORK0.DETECT_reg[1]_0\ : in STD_LOGIC;
    \NETWORK0.DETECT_reg[0]_0\ : in STD_LOGIC
  );
end dRISC_IOCONTROLLER;

architecture STRUCTURE of dRISC_IOCONTROLLER is
  signal \^cpu_stopio\ : STD_LOGIC;
  signal CPU_STOPu : STD_LOGIC;
  signal CPU_STOPu_i_1_n_0 : STD_LOGIC;
  signal DETECT_PREV : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \DETECT_PREV[7]_i_1_n_0\ : STD_LOGIC;
  signal \DETECT_PREV_reg_n_0_[0]\ : STD_LOGIC;
  signal \DETECT_PREV_reg_n_0_[1]\ : STD_LOGIC;
  signal \DETECT_PREV_reg_n_0_[2]\ : STD_LOGIC;
  signal \DETECT_PREV_reg_n_0_[3]\ : STD_LOGIC;
  signal \DETECT_PREV_reg_n_0_[4]\ : STD_LOGIC;
  signal \DETECT_PREV_reg_n_0_[5]\ : STD_LOGIC;
  signal \DETECT_PREV_reg_n_0_[6]\ : STD_LOGIC;
  signal \DETECT_PREV_reg_n_0_[7]\ : STD_LOGIC;
  signal \^detect_prevu_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal INTERRUPT_BLOCKu : STD_LOGIC;
  signal INTERRUPT_i_1_n_0 : STD_LOGIC;
  signal \^interrupti\ : STD_LOGIC;
  signal ISR0 : STD_LOGIC;
  signal \ISR[7]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.DETECT[7]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.DETECT[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.DETECT_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.ISRt[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[1]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[2]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[3]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[4]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[5]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[6]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[7]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[7]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt[7]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.ISRt_reg_n_0_[0]\ : STD_LOGIC;
  signal \NETWORK0.ISRt_reg_n_0_[1]\ : STD_LOGIC;
  signal \NETWORK0.ISRt_reg_n_0_[2]\ : STD_LOGIC;
  signal \NETWORK0.ISRt_reg_n_0_[3]\ : STD_LOGIC;
  signal \NETWORK0.ISRt_reg_n_0_[4]\ : STD_LOGIC;
  signal \NETWORK0.ISRt_reg_n_0_[5]\ : STD_LOGIC;
  signal \NETWORK0.ISRt_reg_n_0_[6]\ : STD_LOGIC;
  signal \NETWORK0.ISRt_reg_n_0_[7]\ : STD_LOGIC;
  signal \NETWORK0.edge[0]_i_1_n_0\ : STD_LOGIC;
  signal \NETWORK0.edge[0]_i_2_n_0\ : STD_LOGIC;
  signal \NETWORK0.edge[0]_i_3_n_0\ : STD_LOGIC;
  signal \NETWORK0.edge[0]_i_4_n_0\ : STD_LOGIC;
  signal \NETWORK0.edge[0]_i_5_n_0\ : STD_LOGIC;
  signal \NETWORK0.edge[0]_i_6_n_0\ : STD_LOGIC;
  signal \NETWORK0.edge_reg_n_0_[0]\ : STD_LOGIC;
  signal NEXT_STATE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NEXT_STATE__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal STATE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in14_in : STD_LOGIC;
  signal p_1_in22_in : STD_LOGIC;
  signal p_1_in30_in : STD_LOGIC;
  signal p_1_in38_in : STD_LOGIC;
  signal p_1_in46_in : STD_LOGIC;
  signal p_1_in54_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_NEXT_STATE[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_NEXT_STATE[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[0]\ : label is "reset:000,edge_decide:100,resync:110,wait_for_iwr:001,edge_detect_dir:011,edge_detect:010,leave:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[1]\ : label is "reset:000,edge_decide:100,resync:110,wait_for_iwr:001,edge_detect_dir:011,edge_detect:010,leave:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[2]\ : label is "reset:000,edge_decide:100,resync:110,wait_for_iwr:001,edge_detect_dir:011,edge_detect:010,leave:101";
begin
  CPU_STOPio <= \^cpu_stopio\;
  \DETECT_PREVu_reg[7]_0\(7 downto 0) <= \^detect_prevu_reg[7]_0\(7 downto 0);
  INTERRUPTi <= \^interrupti\;
CPU_STOP_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => CPU_STOPu,
      PRE => \DETECT_PREVu_reg[0]_0\,
      Q => \^cpu_stopio\
    );
CPU_STOPu_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFB0451"
    )
        port map (
      I0 => \DETECT_PREVu_reg[0]_0\,
      I1 => STATE(2),
      I2 => STATE(0),
      I3 => STATE(1),
      I4 => CPU_STOPu,
      O => CPU_STOPu_i_1_n_0
    );
CPU_STOPu_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => CPU_STOPu_i_1_n_0,
      Q => CPU_STOPu,
      R => '0'
    );
\DETECT_PREV[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \DETECT_PREV_reg[7]_0\(0),
      I1 => dataout(0),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => \NETWORK0.DETECT_reg_n_0_[0]\,
      O => DETECT_PREV(0)
    );
\DETECT_PREV[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \DETECT_PREV_reg[7]_0\(1),
      I1 => dataout(1),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => p_1_in,
      O => DETECT_PREV(1)
    );
\DETECT_PREV[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \DETECT_PREV_reg[7]_0\(2),
      I1 => dataout(2),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => p_1_in14_in,
      O => DETECT_PREV(2)
    );
\DETECT_PREV[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \DETECT_PREV_reg[7]_0\(3),
      I1 => dataout(3),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => p_1_in22_in,
      O => DETECT_PREV(3)
    );
\DETECT_PREV[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \DETECT_PREV_reg[7]_0\(4),
      I1 => dataout(4),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => p_1_in30_in,
      O => DETECT_PREV(4)
    );
\DETECT_PREV[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \DETECT_PREV_reg[7]_0\(5),
      I1 => dataout(5),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => p_1_in38_in,
      O => DETECT_PREV(5)
    );
\DETECT_PREV[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \DETECT_PREV_reg[7]_0\(6),
      I1 => dataout(6),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => p_1_in46_in,
      O => DETECT_PREV(6)
    );
\DETECT_PREV[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => \DETECT_PREVu_reg[0]_0\,
      I1 => STATE(2),
      I2 => STATE(0),
      I3 => STATE(1),
      O => \DETECT_PREV[7]_i_1_n_0\
    );
\DETECT_PREV[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \DETECT_PREV_reg[7]_0\(7),
      I1 => dataout(7),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => p_1_in54_in,
      O => DETECT_PREV(7)
    );
\DETECT_PREV_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \DETECT_PREV[7]_i_1_n_0\,
      D => DETECT_PREV(0),
      Q => \DETECT_PREV_reg_n_0_[0]\,
      R => '0'
    );
\DETECT_PREV_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \DETECT_PREV[7]_i_1_n_0\,
      D => DETECT_PREV(1),
      Q => \DETECT_PREV_reg_n_0_[1]\,
      R => '0'
    );
\DETECT_PREV_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \DETECT_PREV[7]_i_1_n_0\,
      D => DETECT_PREV(2),
      Q => \DETECT_PREV_reg_n_0_[2]\,
      R => '0'
    );
\DETECT_PREV_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \DETECT_PREV[7]_i_1_n_0\,
      D => DETECT_PREV(3),
      Q => \DETECT_PREV_reg_n_0_[3]\,
      R => '0'
    );
\DETECT_PREV_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \DETECT_PREV[7]_i_1_n_0\,
      D => DETECT_PREV(4),
      Q => \DETECT_PREV_reg_n_0_[4]\,
      R => '0'
    );
\DETECT_PREV_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \DETECT_PREV[7]_i_1_n_0\,
      D => DETECT_PREV(5),
      Q => \DETECT_PREV_reg_n_0_[5]\,
      R => '0'
    );
\DETECT_PREV_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \DETECT_PREV[7]_i_1_n_0\,
      D => DETECT_PREV(6),
      Q => \DETECT_PREV_reg_n_0_[6]\,
      R => '0'
    );
\DETECT_PREV_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \DETECT_PREV[7]_i_1_n_0\,
      D => DETECT_PREV(7),
      Q => \DETECT_PREV_reg_n_0_[7]\,
      R => '0'
    );
\DETECT_PREVu_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \DETECT_PREV_reg_n_0_[0]\,
      Q => \^detect_prevu_reg[7]_0\(0)
    );
\DETECT_PREVu_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \DETECT_PREV_reg_n_0_[1]\,
      Q => \^detect_prevu_reg[7]_0\(1)
    );
\DETECT_PREVu_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \DETECT_PREV_reg_n_0_[2]\,
      Q => \^detect_prevu_reg[7]_0\(2)
    );
\DETECT_PREVu_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \DETECT_PREV_reg_n_0_[3]\,
      Q => \^detect_prevu_reg[7]_0\(3)
    );
\DETECT_PREVu_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \DETECT_PREV_reg_n_0_[4]\,
      Q => \^detect_prevu_reg[7]_0\(4)
    );
\DETECT_PREVu_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \DETECT_PREV_reg_n_0_[5]\,
      Q => \^detect_prevu_reg[7]_0\(5)
    );
\DETECT_PREVu_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \DETECT_PREV_reg_n_0_[6]\,
      Q => \^detect_prevu_reg[7]_0\(6)
    );
\DETECT_PREVu_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \DETECT_PREV_reg_n_0_[7]\,
      Q => \^detect_prevu_reg[7]_0\(7)
    );
\FSM_sequential_NEXT_STATE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00030A0F00030AFF"
    )
        port map (
      I0 => \NETWORK0.edge_reg_n_0_[0]\,
      I1 => \FSM_sequential_NEXT_STATE_reg[0]_0\,
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => STATE(1),
      I5 => INTERRUPT_BLOCKu,
      O => \NEXT_STATE__0\(0)
    );
\FSM_sequential_NEXT_STATE[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000FFC50"
    )
        port map (
      I0 => \NETWORK0.edge_reg_n_0_[0]\,
      I1 => INTERRUPT_BLOCKu,
      I2 => STATE(2),
      I3 => STATE(0),
      I4 => STATE(1),
      O => \NEXT_STATE__0\(1)
    );
\FSM_sequential_NEXT_STATE[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A08"
    )
        port map (
      I0 => STATE(2),
      I1 => \NETWORK0.edge_reg_n_0_[0]\,
      I2 => STATE(1),
      I3 => STATE(0),
      O => \NEXT_STATE__0\(2)
    );
\FSM_sequential_NEXT_STATE_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \NEXT_STATE__0\(0),
      Q => NEXT_STATE(0)
    );
\FSM_sequential_NEXT_STATE_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \NEXT_STATE__0\(1),
      Q => NEXT_STATE(1)
    );
\FSM_sequential_NEXT_STATE_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => \NEXT_STATE__0\(2),
      Q => NEXT_STATE(2)
    );
\FSM_sequential_STATE_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => NEXT_STATE(0),
      Q => STATE(0)
    );
\FSM_sequential_STATE_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => NEXT_STATE(1),
      Q => STATE(1)
    );
\FSM_sequential_STATE_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => NEXT_STATE(2),
      Q => STATE(2)
    );
INTERRUPT_BLOCKu_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      CLR => \DETECT_PREVu_reg[0]_0\,
      D => INTERRUPT_BLOCK,
      Q => INTERRUPT_BLOCKu
    );
INTERRUPT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAA1400"
    )
        port map (
      I0 => \DETECT_PREVu_reg[0]_0\,
      I1 => STATE(0),
      I2 => STATE(1),
      I3 => STATE(2),
      I4 => \^interrupti\,
      O => INTERRUPT_i_1_n_0
    );
INTERRUPT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => INTERRUPT_i_1_n_0,
      Q => \^interrupti\,
      R => '0'
    );
\ISR[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \DETECT_PREVu_reg[0]_0\,
      I1 => STATE(0),
      I2 => STATE(1),
      I3 => STATE(2),
      O => \ISR[7]_i_1_n_0\
    );
\ISR[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1041"
    )
        port map (
      I0 => \DETECT_PREVu_reg[0]_0\,
      I1 => STATE(0),
      I2 => STATE(2),
      I3 => STATE(1),
      O => ISR0
    );
\ISR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISR0,
      D => \NETWORK0.ISRt_reg_n_0_[0]\,
      Q => ISR(0),
      R => \ISR[7]_i_1_n_0\
    );
\ISR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISR0,
      D => \NETWORK0.ISRt_reg_n_0_[1]\,
      Q => ISR(1),
      R => \ISR[7]_i_1_n_0\
    );
\ISR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISR0,
      D => \NETWORK0.ISRt_reg_n_0_[2]\,
      Q => ISR(2),
      R => \ISR[7]_i_1_n_0\
    );
\ISR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISR0,
      D => \NETWORK0.ISRt_reg_n_0_[3]\,
      Q => ISR(3),
      R => \ISR[7]_i_1_n_0\
    );
\ISR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISR0,
      D => \NETWORK0.ISRt_reg_n_0_[4]\,
      Q => ISR(4),
      R => \ISR[7]_i_1_n_0\
    );
\ISR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISR0,
      D => \NETWORK0.ISRt_reg_n_0_[5]\,
      Q => ISR(5),
      R => \ISR[7]_i_1_n_0\
    );
\ISR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISR0,
      D => \NETWORK0.ISRt_reg_n_0_[6]\,
      Q => ISR(6),
      R => \ISR[7]_i_1_n_0\
    );
\ISR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => ISR0,
      D => \NETWORK0.ISRt_reg_n_0_[7]\,
      Q => ISR(7),
      R => \ISR[7]_i_1_n_0\
    );
\NETWORK0.DETECT[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \DETECT_PREVu_reg[0]_0\,
      I1 => STATE(0),
      I2 => STATE(2),
      I3 => STATE(1),
      O => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.DETECT[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => STATE(2),
      I1 => \DETECT_PREVu_reg[0]_0\,
      I2 => STATE(1),
      I3 => STATE(0),
      O => \NETWORK0.DETECT[7]_i_2_n_0\
    );
\NETWORK0.DETECT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.DETECT[7]_i_2_n_0\,
      D => \NETWORK0.DETECT_reg[0]_0\,
      Q => \NETWORK0.DETECT_reg_n_0_[0]\,
      R => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.DETECT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.DETECT[7]_i_2_n_0\,
      D => \NETWORK0.DETECT_reg[1]_0\,
      Q => p_1_in,
      R => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.DETECT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.DETECT[7]_i_2_n_0\,
      D => \NETWORK0.DETECT_reg[2]_0\,
      Q => p_1_in14_in,
      R => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.DETECT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.DETECT[7]_i_2_n_0\,
      D => \NETWORK0.DETECT_reg[3]_0\,
      Q => p_1_in22_in,
      R => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.DETECT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.DETECT[7]_i_2_n_0\,
      D => \NETWORK0.DETECT_reg[4]_0\,
      Q => p_1_in30_in,
      R => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.DETECT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.DETECT[7]_i_2_n_0\,
      D => \NETWORK0.DETECT_reg[5]_0\,
      Q => p_1_in38_in,
      R => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.DETECT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.DETECT[7]_i_2_n_0\,
      D => \NETWORK0.DETECT_reg[6]_0\,
      Q => p_1_in46_in,
      R => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.DETECT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.DETECT[7]_i_2_n_0\,
      D => \NETWORK0.DETECT_reg[7]_0\,
      Q => p_1_in54_in,
      R => \NETWORK0.DETECT[7]_i_1_n_0\
    );
\NETWORK0.ISRt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \NETWORK0.DETECT_reg_n_0_[0]\,
      I1 => \^detect_prevu_reg[7]_0\(0),
      I2 => Q(0),
      O => \NETWORK0.ISRt[0]_i_1_n_0\
    );
\NETWORK0.ISRt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => p_1_in,
      I1 => \^detect_prevu_reg[7]_0\(1),
      I2 => Q(1),
      O => \NETWORK0.ISRt[1]_i_1_n_0\
    );
\NETWORK0.ISRt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => p_1_in14_in,
      I1 => \^detect_prevu_reg[7]_0\(2),
      I2 => Q(2),
      O => \NETWORK0.ISRt[2]_i_1_n_0\
    );
\NETWORK0.ISRt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => p_1_in22_in,
      I1 => \^detect_prevu_reg[7]_0\(3),
      I2 => Q(3),
      O => \NETWORK0.ISRt[3]_i_1_n_0\
    );
\NETWORK0.ISRt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => p_1_in30_in,
      I1 => \^detect_prevu_reg[7]_0\(4),
      I2 => Q(4),
      O => \NETWORK0.ISRt[4]_i_1_n_0\
    );
\NETWORK0.ISRt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => p_1_in38_in,
      I1 => \^detect_prevu_reg[7]_0\(5),
      I2 => Q(5),
      O => \NETWORK0.ISRt[5]_i_1_n_0\
    );
\NETWORK0.ISRt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => p_1_in46_in,
      I1 => \^detect_prevu_reg[7]_0\(6),
      I2 => Q(6),
      O => \NETWORK0.ISRt[6]_i_1_n_0\
    );
\NETWORK0.ISRt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => STATE(0),
      I1 => \DETECT_PREVu_reg[0]_0\,
      I2 => STATE(2),
      I3 => STATE(1),
      O => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.ISRt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => STATE(2),
      I1 => \DETECT_PREVu_reg[0]_0\,
      I2 => STATE(1),
      I3 => STATE(0),
      O => \NETWORK0.ISRt[7]_i_2_n_0\
    );
\NETWORK0.ISRt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => p_1_in54_in,
      I1 => \^detect_prevu_reg[7]_0\(7),
      I2 => Q(7),
      O => \NETWORK0.ISRt[7]_i_3_n_0\
    );
\NETWORK0.ISRt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.ISRt[7]_i_2_n_0\,
      D => \NETWORK0.ISRt[0]_i_1_n_0\,
      Q => \NETWORK0.ISRt_reg_n_0_[0]\,
      R => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.ISRt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.ISRt[7]_i_2_n_0\,
      D => \NETWORK0.ISRt[1]_i_1_n_0\,
      Q => \NETWORK0.ISRt_reg_n_0_[1]\,
      R => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.ISRt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.ISRt[7]_i_2_n_0\,
      D => \NETWORK0.ISRt[2]_i_1_n_0\,
      Q => \NETWORK0.ISRt_reg_n_0_[2]\,
      R => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.ISRt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.ISRt[7]_i_2_n_0\,
      D => \NETWORK0.ISRt[3]_i_1_n_0\,
      Q => \NETWORK0.ISRt_reg_n_0_[3]\,
      R => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.ISRt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.ISRt[7]_i_2_n_0\,
      D => \NETWORK0.ISRt[4]_i_1_n_0\,
      Q => \NETWORK0.ISRt_reg_n_0_[4]\,
      R => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.ISRt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.ISRt[7]_i_2_n_0\,
      D => \NETWORK0.ISRt[5]_i_1_n_0\,
      Q => \NETWORK0.ISRt_reg_n_0_[5]\,
      R => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.ISRt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.ISRt[7]_i_2_n_0\,
      D => \NETWORK0.ISRt[6]_i_1_n_0\,
      Q => \NETWORK0.ISRt_reg_n_0_[6]\,
      R => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.ISRt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => \NETWORK0.ISRt[7]_i_2_n_0\,
      D => \NETWORK0.ISRt[7]_i_3_n_0\,
      Q => \NETWORK0.ISRt_reg_n_0_[7]\,
      R => \NETWORK0.ISRt[7]_i_1_n_0\
    );
\NETWORK0.PCi_new[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cpu_stopio\,
      I1 => \DETECT_PREVu_reg[0]_0\,
      O => CPU_STOP_reg_0
    );
\NETWORK0.edge[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA0010"
    )
        port map (
      I0 => \DETECT_PREVu_reg[0]_0\,
      I1 => STATE(2),
      I2 => STATE(0),
      I3 => \NETWORK0.edge[0]_i_2_n_0\,
      I4 => \NETWORK0.edge_reg_n_0_[0]\,
      O => \NETWORK0.edge[0]_i_1_n_0\
    );
\NETWORK0.edge[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFFFFFF"
    )
        port map (
      I0 => \NETWORK0.edge[0]_i_3_n_0\,
      I1 => \NETWORK0.edge[0]_i_4_n_0\,
      I2 => \NETWORK0.edge[0]_i_5_n_0\,
      I3 => \NETWORK0.edge[0]_i_6_n_0\,
      I4 => STATE(2),
      I5 => STATE(1),
      O => \NETWORK0.edge[0]_i_2_n_0\
    );
\NETWORK0.edge[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2424FF2424FF2424"
    )
        port map (
      I0 => Q(2),
      I1 => \^detect_prevu_reg[7]_0\(2),
      I2 => p_1_in14_in,
      I3 => Q(0),
      I4 => \^detect_prevu_reg[7]_0\(0),
      I5 => \NETWORK0.DETECT_reg_n_0_[0]\,
      O => \NETWORK0.edge[0]_i_3_n_0\
    );
\NETWORK0.edge[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2424FF2424FF2424"
    )
        port map (
      I0 => Q(5),
      I1 => \^detect_prevu_reg[7]_0\(5),
      I2 => p_1_in38_in,
      I3 => Q(1),
      I4 => \^detect_prevu_reg[7]_0\(1),
      I5 => p_1_in,
      O => \NETWORK0.edge[0]_i_4_n_0\
    );
\NETWORK0.edge[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2424FF2424FF2424"
    )
        port map (
      I0 => Q(6),
      I1 => \^detect_prevu_reg[7]_0\(6),
      I2 => p_1_in46_in,
      I3 => Q(4),
      I4 => \^detect_prevu_reg[7]_0\(4),
      I5 => p_1_in30_in,
      O => \NETWORK0.edge[0]_i_5_n_0\
    );
\NETWORK0.edge[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2424FF2424FF2424"
    )
        port map (
      I0 => Q(7),
      I1 => \^detect_prevu_reg[7]_0\(7),
      I2 => p_1_in54_in,
      I3 => Q(3),
      I4 => \^detect_prevu_reg[7]_0\(3),
      I5 => p_1_in22_in,
      O => \NETWORK0.edge[0]_i_6_n_0\
    );
\NETWORK0.edge_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => \NETWORK0.edge[0]_i_1_n_0\,
      Q => \NETWORK0.edge_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dRISC_PLL is
  port (
    PLLE2_BASE_inst_0 : out STD_LOGIC;
    CLKuu0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    PLLE2_BASE_inst_1 : out STD_LOGIC;
    PLLE2_BASE_inst_2 : out STD_LOGIC;
    CLK_IBUF : in STD_LOGIC;
    wire10mhzTo10khz : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HALTu : in STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : in STD_LOGIC;
    HALTu_reg : in STD_LOGIC;
    HALTu_reg_0 : in STD_LOGIC;
    HALTu_reg_1 : in STD_LOGIC;
    HALTu_reg_2 : in STD_LOGIC
  );
end dRISC_PLL;

architecture STRUCTURE of dRISC_PLL is
  signal CLKFBIN : STD_LOGIC;
  signal CLKuu0_BUFG_inst_i_3_n_0 : STD_LOGIC;
  signal c0 : STD_LOGIC;
  signal c1 : STD_LOGIC;
  signal c2 : STD_LOGIC;
  signal c3 : STD_LOGIC;
  signal counter1 : STD_LOGIC;
  signal \counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_1\ : STD_LOGIC;
  signal \counter1_carry__0_n_2\ : STD_LOGIC;
  signal \counter1_carry__0_n_3\ : STD_LOGIC;
  signal \counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_1\ : STD_LOGIC;
  signal \counter1_carry__1_n_2\ : STD_LOGIC;
  signal \counter1_carry__1_n_3\ : STD_LOGIC;
  signal \counter1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_n_2\ : STD_LOGIC;
  signal \counter1_carry__2_n_3\ : STD_LOGIC;
  signal \counter1_carry__2_n_4\ : STD_LOGIC;
  signal counter1_carry_i_1_n_0 : STD_LOGIC;
  signal counter1_carry_i_2_n_0 : STD_LOGIC;
  signal counter1_carry_i_3_n_0 : STD_LOGIC;
  signal counter1_carry_i_4_n_0 : STD_LOGIC;
  signal counter1_carry_i_5_n_0 : STD_LOGIC;
  signal counter1_carry_i_6_n_0 : STD_LOGIC;
  signal counter1_carry_i_7_n_0 : STD_LOGIC;
  signal counter1_carry_i_8_n_0 : STD_LOGIC;
  signal counter1_carry_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal locked : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal NLW_PLLE2_BASE_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_PLLE2_BASE_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_PLLE2_BASE_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_PLLE2_BASE_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CSRuu[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DEBOUNCE0.RST_COUNT[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of PLLE2_BASE_inst : label is "PLLE2_BASE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of PLLE2_BASE_inst : label is "GND:DWE,DEN,DCLK,DI[15],DI[14],DI[13],DI[12],DI[11],DI[10],DI[9],DI[8],DI[7],DI[6],DI[5],DI[4],DI[3],DI[2],DI[1],DI[0],DADDR[6],DADDR[5],DADDR[4],DADDR[3],DADDR[2],DADDR[1],DADDR[0],CLKIN2 VCC:CLKINSEL";
  attribute box_type : string;
  attribute box_type of PLLE2_BASE_inst : label is "PRIMITIVE";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
begin
CLKuu0_BUFG_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FFFF0F000100"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => HALTu,
      I3 => c0,
      I4 => \gen_wr_a.gen_word_narrow.mem_reg_0_15\,
      I5 => CLKuu0_BUFG_inst_i_3_n_0,
      O => CLKuu0
    );
CLKuu0_BUFG_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2CCE200"
    )
        port map (
      I0 => c1,
      I1 => Q(1),
      I2 => c3,
      I3 => Q(0),
      I4 => c2,
      I5 => HALTu,
      O => CLKuu0_BUFG_inst_i_3_n_0
    );
\CSRuu[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => HALTu_reg,
      I1 => HALTu_reg_0,
      I2 => HALTu_reg_1,
      I3 => HALTu_reg_2,
      I4 => locked,
      O => E(0)
    );
\DEBOUNCE0.RST_COUNT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => HALTu_reg,
      I1 => HALTu_reg_0,
      I2 => HALTu_reg_1,
      I3 => HALTu_reg_2,
      I4 => locked,
      O => PLLE2_BASE_inst_1
    );
PLLE2_BASE_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 8,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 8.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE => 128,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 100,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 20,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 10,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.000000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => CLKFBIN,
      CLKFBOUT => CLKFBIN,
      CLKIN1 => CLK_IBUF,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => PLLE2_BASE_inst_0,
      CLKOUT1 => c1,
      CLKOUT2 => c2,
      CLKOUT3 => c3,
      CLKOUT4 => NLW_PLLE2_BASE_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_PLLE2_BASE_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_PLLE2_BASE_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_PLLE2_BASE_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PWRDWN => '0',
      RST => '0'
    );
RSTdb_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => HALTu_reg,
      I1 => HALTu_reg_0,
      I2 => HALTu_reg_1,
      I3 => HALTu_reg_2,
      I4 => locked,
      O => PLLE2_BASE_inst_2
    );
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter1_carry_n_0,
      CO(2) => counter1_carry_n_1,
      CO(1) => counter1_carry_n_2,
      CO(0) => counter1_carry_n_3,
      CYINIT => '0',
      DI(3) => counter1_carry_i_1_n_0,
      DI(2) => counter1_carry_i_2_n_0,
      DI(1) => counter1_carry_i_3_n_0,
      DI(0) => counter1_carry_i_4_n_0,
      O(3 downto 0) => NLW_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter1_carry_i_5_n_0,
      S(2) => counter1_carry_i_6_n_0,
      S(1) => counter1_carry_i_7_n_0,
      S(0) => counter1_carry_i_8_n_0
    );
\counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter1_carry_n_0,
      CO(3) => \counter1_carry__0_n_0\,
      CO(2) => \counter1_carry__0_n_1\,
      CO(1) => \counter1_carry__0_n_2\,
      CO(0) => \counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__0_i_1_n_0\,
      S(2) => \counter1_carry__0_i_2_n_0\,
      S(1) => \counter1_carry__0_i_3_n_0\,
      S(0) => \counter1_carry__0_i_4_n_0\
    );
\counter1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      O => \counter1_carry__0_i_1_n_0\
    );
\counter1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      O => \counter1_carry__0_i_2_n_0\
    );
\counter1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      O => \counter1_carry__0_i_3_n_0\
    );
\counter1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      O => \counter1_carry__0_i_4_n_0\
    );
\counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__0_n_0\,
      CO(3) => \counter1_carry__1_n_0\,
      CO(2) => \counter1_carry__1_n_1\,
      CO(1) => \counter1_carry__1_n_2\,
      CO(0) => \counter1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__1_i_1_n_0\,
      S(2) => \counter1_carry__1_i_2_n_0\,
      S(1) => \counter1_carry__1_i_3_n_0\,
      S(0) => \counter1_carry__1_i_4_n_0\
    );
\counter1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      O => \counter1_carry__1_i_1_n_0\
    );
\counter1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      O => \counter1_carry__1_i_2_n_0\
    );
\counter1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      O => \counter1_carry__1_i_3_n_0\
    );
\counter1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      O => \counter1_carry__1_i_4_n_0\
    );
\counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__1_n_0\,
      CO(3) => \NLW_counter1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => counter1,
      CO(1) => \counter1_carry__2_n_2\,
      CO(0) => \counter1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => counter_reg(31),
      DI(1 downto 0) => B"00",
      O(3) => \counter1_carry__2_n_4\,
      O(2 downto 0) => \NLW_counter1_carry__2_O_UNCONNECTED\(2 downto 0),
      S(3) => '1',
      S(2) => \counter1_carry__2_i_1_n_0\,
      S(1) => \counter1_carry__2_i_2_n_0\,
      S(0) => \counter1_carry__2_i_3_n_0\
    );
\counter1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(30),
      I1 => counter_reg(31),
      O => \counter1_carry__2_i_1_n_0\
    );
\counter1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(28),
      I1 => counter_reg(29),
      O => \counter1_carry__2_i_2_n_0\
    );
\counter1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      O => \counter1_carry__2_i_3_n_0\
    );
counter1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      O => counter1_carry_i_1_n_0
    );
counter1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      O => counter1_carry_i_2_n_0
    );
counter1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      O => counter1_carry_i_3_n_0
    );
counter1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      O => counter1_carry_i_4_n_0
    );
counter1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      O => counter1_carry_i_5_n_0
    );
counter1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      O => counter1_carry_i_6_n_0
    );
counter1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      O => counter1_carry_i_7_n_0
    );
counter1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      O => counter1_carry_i_8_n_0
    );
\counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[0]_i_1_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => \counter1_carry__2_n_4\
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 2) => counter_reg(3 downto 2),
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[0]_i_3_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[0]_i_1_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => \counter1_carry__2_n_4\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_reg(27 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_reg(31 downto 28)
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => \counter1_carry__2_n_4\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => \counter1_carry__2_n_4\
    );
state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter1_carry__2_n_4\,
      I1 => c0,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wire10mhzTo10khz,
      CE => '1',
      D => state_i_1_n_0,
      Q => c0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity iobuf_iobuf_bidir_30p is
  port (
    dataout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IOR : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    T : in STD_LOGIC;
    \loop0[1].IOBUF_inst_0\ : in STD_LOGIC;
    \loop0[2].IOBUF_inst_0\ : in STD_LOGIC;
    \loop0[3].IOBUF_inst_0\ : in STD_LOGIC;
    \loop0[4].IOBUF_inst_0\ : in STD_LOGIC;
    \loop0[5].IOBUF_inst_0\ : in STD_LOGIC;
    \loop0[6].IOBUF_inst_0\ : in STD_LOGIC;
    \loop0[7].IOBUF_inst_0\ : in STD_LOGIC
  );
end iobuf_iobuf_bidir_30p;

architecture STRUCTURE of iobuf_iobuf_bidir_30p is
  attribute box_type : string;
  attribute box_type of \loop0[0].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \loop0[1].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \loop0[2].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \loop0[3].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \loop0[4].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \loop0[5].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \loop0[6].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \loop0[7].IOBUF_inst\ : label is "PRIMITIVE";
begin
\loop0[0].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => Q(0),
      IO => IOR(0),
      O => dataout(0),
      T => T
    );
\loop0[1].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => Q(1),
      IO => IOR(1),
      O => dataout(1),
      T => \loop0[1].IOBUF_inst_0\
    );
\loop0[2].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => Q(2),
      IO => IOR(2),
      O => dataout(2),
      T => \loop0[2].IOBUF_inst_0\
    );
\loop0[3].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => Q(3),
      IO => IOR(3),
      O => dataout(3),
      T => \loop0[3].IOBUF_inst_0\
    );
\loop0[4].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => Q(4),
      IO => IOR(4),
      O => dataout(4),
      T => \loop0[4].IOBUF_inst_0\
    );
\loop0[5].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => Q(5),
      IO => IOR(5),
      O => dataout(5),
      T => \loop0[5].IOBUF_inst_0\
    );
\loop0[6].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => Q(6),
      IO => IOR(6),
      O => dataout(6),
      T => \loop0[6].IOBUF_inst_0\
    );
\loop0[7].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => Q(7),
      IO => IOR(7),
      O => dataout(7),
      T => \loop0[7].IOBUF_inst_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base : entity is 15;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base : entity is 15;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base : entity is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base : entity is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_memory_base : entity is 0;
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_base : entity is "fpga.coe.mem";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_base : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_base : entity is "false";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_base : entity is 524288;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base : entity is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base : entity is 32768;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base : entity is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base : entity is 15;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base : entity is 15;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base : entity is 15;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base : entity is 15;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base : entity is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base : entity is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base : entity is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base : entity is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base : entity is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of xpm_memory_base : entity is "true";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base : entity is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base : entity is 16;
end xpm_memory_base;

architecture STRUCTURE of xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_15_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 0;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 524288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 32767;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 1;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 1;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 1;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_1\ : label is 1;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 10;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 10;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 10;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_10\ : label is 10;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 11;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 11;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_11\ : label is 11;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 12;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 12;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 12;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_12\ : label is 12;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 13;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 13;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_13\ : label is 13;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 14;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 14;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_14\ : label is 14;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 15;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 15;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 15;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : label is 15;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 2;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 2;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 2;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_2\ : label is 2;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 3;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 3;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 3;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3\ : label is 3;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 4;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 4;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 4;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_4\ : label is 4;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 5;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 5;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 5;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_5\ : label is 5;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 6;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_6\ : label is 6;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 7;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_7\ : label is 7;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 8;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 8;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 8;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_8\ : label is 8;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 32767;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is "p0_d1";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 9;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 9;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 524288;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 32767;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 9;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_9\ : label is 9;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"4546545454654411116654546546114460446546444546446446446274117500",
      INIT_01 => X"4202011624611024611111116654546111024462741162461144624654611445",
      INIT_02 => X"8811157001211100111146541024611101001202100012012612021204460274",
      INIT_03 => X"0000000000000000000000000000000000000020202022222888000025C0C201",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(0),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_0_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_1\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"3003002320100311111131201001111011103001103003101303101131111100",
      INIT_01 => X"1121211010311110301111113131201011131011311101031110110300111102",
      INIT_02 => X"0E11131356501111111111110110301152776577615365341101374511011131",
      INIT_03 => X"000000000000000000000000000000000000000220022000088400008500A208",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(1),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(1),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_1_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_10\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000240008400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(10),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(10),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_10_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_11\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000003240008400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(11),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(11),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_11_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_12\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000003240008400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(12),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(12),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_12_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_12_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_13\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000003240008400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(13),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(13),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_13_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_14\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000003240008400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(14),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(14),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_14_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_14_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000240210400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(15),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(15),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_15_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_15_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_15_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_15_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_15_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_2\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1E7F09094F5C7F1919FD5D4F7C7D194F594F7C7D4F7C7D6F7C7D4F5F7F115C00",
      INIT_01 => X"7E7E791E7F799C3D5C191911FD5D4F5C19494F5F7F196F7F194F5B5D4F591838",
      INIT_02 => X"5E199D69083C19491919FD7D4C3D5C190C2F092D0C496F282D4D6F2B4C7D1F7F",
      INIT_03 => X"000000000000000000000000000000000000000002222220088220304D02D000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(2),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(2),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_2_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_2_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1ED72BB16DD65FF77FA13BE57ED57FE55DE57ED76DF65FE57ED76DF35DF91800",
      INIT_01 => X"18B03FF23DF7FAF75AF77FF729B36DD27FA56DD37DF72BD57FE55FF56DD77AB3",
      INIT_02 => X"4CF77BA76ED27FA57FFF29B32AF75AF76EC36FC36AA709C64BE549E72ED55BF5",
      INIT_03 => X"0000000000000000000000000000000000000000000002220C8088B24404B411",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(3),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(3),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_3_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_4\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"2DCC90125CEDC4777F8890544DCEF7446ACCC5444CCDC4444CCCC4425CF19100",
      INIT_01 => X"48AAA7722CCFF02469FFF77F2898D4617F8AC4625CFFA24477CCE2465CEFF001",
      INIT_02 => X"88F7F1320989F7027FF7A03018ACE17709AC902618EEF4634AB8A6120CCEA254",
      INIT_03 => X"000000000000000000000000000000000000000000000202208068024500C601",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(4),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(4),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_4_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_4_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_5\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"3EEFAAABE67667777F99BBEEF66777767FFEFEEFF67667767FEFFEFFF77F7700",
      INIT_01 => X"7FCFCFFEF677F7767EFFFFF7913366767FFFFEFFF777676777FEFFEFE6777322",
      INIT_02 => X"0EF77DFFF65677777FF7B9BBE77676777EFFEDFFE77765767FEDFFEFF7677777",
      INIT_03 => X"0000000000000000000000000000000000000000000000000480028245008608",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(5),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(5),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_5_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_6\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1CDD8989CDDCDDFFF71111455455774559CDDCDDCDDCDDCDD455455355791000",
      INIT_01 => X"18989FFABDDFF8BDD077777F111145507F89CDDBDDFFABDDF745535545577010",
      INIT_02 => X"4EF7F9A988B8FF89F77F31110035507708898B8988898B888103010104551355",
      INIT_03 => X"0000000000000000000000000000000000000000000002222E8000024500C400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(6),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(6),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_6_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_7\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1CDD8999CDDCDDFFF78999CDDCDDFFCDD1455455455455455455455355791000",
      INIT_01 => X"18989FFABDDF78BDD8FFFFFF8999CDD8F7014553557723557F45535545577011",
      INIT_02 => X"4CFF79A98898FF89FFFFA99988BDD8FF80010101000101000101010104551355",
      INIT_03 => X"0000000000000000000000000000000000000000000000000E80000244048401",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(7),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(7),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_7_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_7_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_8\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"E2226666222222000864662222220022262222222222222222222224220E6600",
      INIT_01 => X"6EEEE88CCAA88ECAAE888888ECEEAAAE88EEAAACAA88CCAA80AAACAAAAA88EEE",
      INIT_02 => X"0000864666660066000044666642260066666666666666666666666662226422",
      INIT_03 => X"0000000000000000000000000000000000000000000002223400003240008400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(8),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(8),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_8_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_9\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"6666666666666666666466666666666666666666666666666666666666666600",
      INIT_01 => X"E666666666666666666666666466666666666666666666666666666666666666",
      INIT_02 => X"00EE6EEEEEEEEEEEEEEEECEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE",
      INIT_03 => X"0000000000000000000000000000000000000000000002222400003240008400",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(9),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(9),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_9_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_9_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xpm_memory_spram is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLKuu0_BUFG : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end xpm_memory_spram;

architecture STRUCTURE of xpm_memory_spram is
  signal xpm_memory_base_inst_n_16 : STD_LOGIC;
  signal xpm_memory_base_inst_n_17 : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 15;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 15;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_memory_base_inst : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_memory_base_inst : label is 0;
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of xpm_memory_base_inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_memory_base_inst : label is "true";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of xpm_memory_base_inst : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of xpm_memory_base_inst : label is 15;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of xpm_memory_base_inst : label is 32767;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of xpm_memory_base_inst : label is 16;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "fpga.coe.mem";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "false";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xpm_memory_base_inst : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 524288;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 32768;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base_inst : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base_inst : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 15;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 15;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 15;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 15;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 16;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xpm_memory_base_inst : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xpm_memory_base_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_memory_base_inst : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of xpm_memory_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base_inst : label is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 16;
begin
xpm_memory_base_inst: entity work.xpm_memory_base
     port map (
      addra(14 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_0_15\(14 downto 0),
      addrb(14 downto 0) => B"000000000000000",
      clka => CLKuu0_BUFG,
      clkb => '0',
      dbiterra => xpm_memory_base_inst_n_17,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(15 downto 0) => dina(15 downto 0),
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_xpm_memory_base_inst_doutb_UNCONNECTED(15 downto 0),
      ena => '1',
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '1',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      sbiterra => xpm_memory_base_inst_n_16,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity memory is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLKuu0_BUFG : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_wr_a.gen_word_narrow.mem_reg_0_15\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end memory;

architecture STRUCTURE of memory is
begin
UMEM0: entity work.xpm_memory_spram
     port map (
      CLKuu0_BUFG => CLKuu0_BUFG,
      dina(15 downto 0) => dina(15 downto 0),
      douta(15 downto 0) => douta(15 downto 0),
      \gen_wr_a.gen_word_narrow.mem_reg_0_15\(14 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_0_15\(14 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dRISC is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    IOR : inout STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dRISC : entity is true;
end dRISC;

architecture STRUCTURE of dRISC is
  signal CLK_IBUF : STD_LOGIC;
  signal CLKuu0 : STD_LOGIC;
  signal CLKuu0_BUFG : STD_LOGIC;
  signal CLKuu0_BUFG_inst_i_2_n_0 : STD_LOGIC;
  signal CMP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CMPuu : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPU_STOP : STD_LOGIC;
  signal CPU_STOPio : STD_LOGIC;
  signal CSR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CSRuu : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \CSRuu[7]_i_10_n_0\ : STD_LOGIC;
  signal \CSRuu[7]_i_3_n_0\ : STD_LOGIC;
  signal \CSRuu[7]_i_4_n_0\ : STD_LOGIC;
  signal \CSRuu[7]_i_5_n_0\ : STD_LOGIC;
  signal \CSRuu[7]_i_6_n_0\ : STD_LOGIC;
  signal \CSRuu[7]_i_7_n_0\ : STD_LOGIC;
  signal \CSRuu[7]_i_8_n_0\ : STD_LOGIC;
  signal \CSRuu[7]_i_9_n_0\ : STD_LOGIC;
  signal D : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal DATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal DATAuu : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \DEBOUNCE0.RST_COUNT[0]_i_3_n_0\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal DRISCALU0_n_32 : STD_LOGIC;
  signal DRISCALU0_n_33 : STD_LOGIC;
  signal DRISCALU0_n_35 : STD_LOGIC;
  signal DRISCALU0_n_52 : STD_LOGIC;
  signal DRISCALU0_n_53 : STD_LOGIC;
  signal DRISCALU0_n_54 : STD_LOGIC;
  signal DRISCALU0_n_55 : STD_LOGIC;
  signal DRISCALU0_n_56 : STD_LOGIC;
  signal DRISCALU0_n_57 : STD_LOGIC;
  signal DRISCALU0_n_58 : STD_LOGIC;
  signal DRISCALU0_n_59 : STD_LOGIC;
  signal DRISCALU0_n_60 : STD_LOGIC;
  signal DRISCALU0_n_61 : STD_LOGIC;
  signal E : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \F_MODE_OFFSET__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal HALTu : STD_LOGIC;
  signal ICR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal INTERRUPT_BLOCK : STD_LOGIC;
  signal INTERRUPTi : STD_LOGIC;
  signal IOCONTROLLER0_n_10 : STD_LOGIC;
  signal IOCONTROLLER0_n_2 : STD_LOGIC;
  signal IORu : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ISR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IWR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MEM_address : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal MEM_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MEM_wren : STD_LOGIC;
  signal PLL0_n_0 : STD_LOGIC;
  signal PLL0_n_3 : STD_LOGIC;
  signal PLL0_n_4 : STD_LOGIC;
  signal PROCESSOR0_n_0 : STD_LOGIC;
  signal PROCESSOR0_n_108 : STD_LOGIC;
  signal PROCESSOR0_n_109 : STD_LOGIC;
  signal PROCESSOR0_n_110 : STD_LOGIC;
  signal PROCESSOR0_n_111 : STD_LOGIC;
  signal PROCESSOR0_n_112 : STD_LOGIC;
  signal PROCESSOR0_n_113 : STD_LOGIC;
  signal PROCESSOR0_n_114 : STD_LOGIC;
  signal PROCESSOR0_n_115 : STD_LOGIC;
  signal PROCESSOR0_n_116 : STD_LOGIC;
  signal PROCESSOR0_n_117 : STD_LOGIC;
  signal PROCESSOR0_n_118 : STD_LOGIC;
  signal PROCESSOR0_n_119 : STD_LOGIC;
  signal PROCESSOR0_n_120 : STD_LOGIC;
  signal PROCESSOR0_n_121 : STD_LOGIC;
  signal PROCESSOR0_n_122 : STD_LOGIC;
  signal PROCESSOR0_n_123 : STD_LOGIC;
  signal PROCESSOR0_n_124 : STD_LOGIC;
  signal PROCESSOR0_n_125 : STD_LOGIC;
  signal PROCESSOR0_n_126 : STD_LOGIC;
  signal PROCESSOR0_n_127 : STD_LOGIC;
  signal PROCESSOR0_n_128 : STD_LOGIC;
  signal PROCESSOR0_n_129 : STD_LOGIC;
  signal PROCESSOR0_n_130 : STD_LOGIC;
  signal PROCESSOR0_n_131 : STD_LOGIC;
  signal PROCESSOR0_n_132 : STD_LOGIC;
  signal PROCESSOR0_n_133 : STD_LOGIC;
  signal PROCESSOR0_n_134 : STD_LOGIC;
  signal PROCESSOR0_n_135 : STD_LOGIC;
  signal PROCESSOR0_n_136 : STD_LOGIC;
  signal PROCESSOR0_n_137 : STD_LOGIC;
  signal PROCESSOR0_n_138 : STD_LOGIC;
  signal PROCESSOR0_n_139 : STD_LOGIC;
  signal PROCESSOR0_n_140 : STD_LOGIC;
  signal PROCESSOR0_n_141 : STD_LOGIC;
  signal PROCESSOR0_n_142 : STD_LOGIC;
  signal PROCESSOR0_n_143 : STD_LOGIC;
  signal PROCESSOR0_n_144 : STD_LOGIC;
  signal PROCESSOR0_n_145 : STD_LOGIC;
  signal PROCESSOR0_n_146 : STD_LOGIC;
  signal PROCESSOR0_n_147 : STD_LOGIC;
  signal PROCESSOR0_n_148 : STD_LOGIC;
  signal PROCESSOR0_n_149 : STD_LOGIC;
  signal PROCESSOR0_n_150 : STD_LOGIC;
  signal PROCESSOR0_n_51 : STD_LOGIC;
  signal PROCESSOR0_n_52 : STD_LOGIC;
  signal PROCESSOR0_n_53 : STD_LOGIC;
  signal PROCESSOR0_n_54 : STD_LOGIC;
  signal PROCESSOR0_n_55 : STD_LOGIC;
  signal PROCESSOR0_n_56 : STD_LOGIC;
  signal PROCESSOR0_n_57 : STD_LOGIC;
  signal PROCESSOR0_n_58 : STD_LOGIC;
  signal PROCESSOR0_n_59 : STD_LOGIC;
  signal PROCESSOR0_n_60 : STD_LOGIC;
  signal PROCESSOR0_n_61 : STD_LOGIC;
  signal PROCESSOR0_n_62 : STD_LOGIC;
  signal PROCESSOR0_n_63 : STD_LOGIC;
  signal PROCESSOR0_n_64 : STD_LOGIC;
  signal PROCESSOR0_n_65 : STD_LOGIC;
  signal PROCESSOR0_n_66 : STD_LOGIC;
  signal PROCESSOR0_n_67 : STD_LOGIC;
  signal PROCESSOR0_n_68 : STD_LOGIC;
  signal PROCESSOR0_n_69 : STD_LOGIC;
  signal PROCESSOR0_n_70 : STD_LOGIC;
  signal PROCESSOR0_n_71 : STD_LOGIC;
  signal PROCESSOR0_n_72 : STD_LOGIC;
  signal PROCESSOR0_n_73 : STD_LOGIC;
  signal PROCESSOR0_n_74 : STD_LOGIC;
  signal PROCESSOR0_n_75 : STD_LOGIC;
  signal PROCESSOR0_n_76 : STD_LOGIC;
  signal PROCESSOR0_n_77 : STD_LOGIC;
  signal PROCESSOR0_n_78 : STD_LOGIC;
  signal PROCESSOR0_n_79 : STD_LOGIC;
  signal PROCESSOR0_n_80 : STD_LOGIC;
  signal PROCESSOR0_n_81 : STD_LOGIC;
  signal PROCESSOR0_n_91 : STD_LOGIC;
  signal PROCESSOR0_n_92 : STD_LOGIC;
  signal PROCESSOR0_n_93 : STD_LOGIC;
  signal PROCESSOR0_n_94 : STD_LOGIC;
  signal PROCESSOR0_n_98 : STD_LOGIC;
  signal PROCESSOR0_n_99 : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal RSTdb1 : STD_LOGIC;
  signal RSTdb_reg_n_0 : STD_LOGIC;
  signal T : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal data8 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dataout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal p_2_in16_in : STD_LOGIC;
  signal p_2_in24_in : STD_LOGIC;
  signal p_2_in32_in : STD_LOGIC;
  signal p_2_in40_in : STD_LOGIC;
  signal p_2_in48_in : STD_LOGIC;
  signal p_2_in8_in : STD_LOGIC;
  signal q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wire10mhzTo10khz : STD_LOGIC;
  signal \NLW_DEBOUNCE0.RST_COUNT_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \DEBOUNCE0.RST_COUNT_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \DEBOUNCE0.RST_COUNT_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \DEBOUNCE0.RST_COUNT_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \DEBOUNCE0.RST_COUNT_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \DEBOUNCE0.RST_COUNT_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \DEBOUNCE0.RST_COUNT_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \DEBOUNCE0.RST_COUNT_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \DEBOUNCE0.RST_COUNT_reg[8]_i_1\ : label is 11;
begin
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLKuu0_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLKuu0,
      O => CLKuu0_BUFG
    );
CLKuu0_BUFG_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => CSRuu(4),
      I1 => CSRuu(5),
      I2 => CSRuu(2),
      I3 => CSRuu(3),
      I4 => CSRuu(1),
      I5 => CSRuu(0),
      O => CLKuu0_BUFG_inst_i_2_n_0
    );
\CSRuu[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(21),
      I1 => \DEBOUNCE0.RST_COUNT_reg\(20),
      I2 => \DEBOUNCE0.RST_COUNT_reg\(23),
      I3 => \DEBOUNCE0.RST_COUNT_reg\(22),
      O => \CSRuu[7]_i_10_n_0\
    );
\CSRuu[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => clear
    );
\CSRuu[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(10),
      I1 => \DEBOUNCE0.RST_COUNT_reg\(11),
      I2 => \DEBOUNCE0.RST_COUNT_reg\(8),
      I3 => \DEBOUNCE0.RST_COUNT_reg\(9),
      I4 => \CSRuu[7]_i_7_n_0\,
      O => \CSRuu[7]_i_3_n_0\
    );
\CSRuu[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(2),
      I1 => \DEBOUNCE0.RST_COUNT_reg\(3),
      I2 => \DEBOUNCE0.RST_COUNT_reg\(0),
      I3 => \DEBOUNCE0.RST_COUNT_reg\(1),
      I4 => \CSRuu[7]_i_8_n_0\,
      O => \CSRuu[7]_i_4_n_0\
    );
\CSRuu[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(26),
      I1 => \DEBOUNCE0.RST_COUNT_reg\(27),
      I2 => \DEBOUNCE0.RST_COUNT_reg\(24),
      I3 => \DEBOUNCE0.RST_COUNT_reg\(25),
      I4 => \CSRuu[7]_i_9_n_0\,
      O => \CSRuu[7]_i_5_n_0\
    );
\CSRuu[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(18),
      I1 => \DEBOUNCE0.RST_COUNT_reg\(19),
      I2 => \DEBOUNCE0.RST_COUNT_reg\(16),
      I3 => \DEBOUNCE0.RST_COUNT_reg\(17),
      I4 => \CSRuu[7]_i_10_n_0\,
      O => \CSRuu[7]_i_6_n_0\
    );
\CSRuu[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(13),
      I1 => \DEBOUNCE0.RST_COUNT_reg\(12),
      I2 => \DEBOUNCE0.RST_COUNT_reg\(15),
      I3 => \DEBOUNCE0.RST_COUNT_reg\(14),
      O => \CSRuu[7]_i_7_n_0\
    );
\CSRuu[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(4),
      I1 => \DEBOUNCE0.RST_COUNT_reg\(5),
      I2 => \DEBOUNCE0.RST_COUNT_reg\(7),
      I3 => \DEBOUNCE0.RST_COUNT_reg\(6),
      O => \CSRuu[7]_i_8_n_0\
    );
\CSRuu[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(29),
      I1 => \DEBOUNCE0.RST_COUNT_reg\(28),
      I2 => \DEBOUNCE0.RST_COUNT_reg\(31),
      I3 => \DEBOUNCE0.RST_COUNT_reg\(30),
      O => \CSRuu[7]_i_9_n_0\
    );
\CSRuu_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CSR(0),
      Q => CSRuu(0)
    );
\CSRuu_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CSR(1),
      Q => CSRuu(1)
    );
\CSRuu_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CSR(2),
      Q => CSRuu(2)
    );
\CSRuu_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CSR(3),
      Q => CSRuu(3)
    );
\CSRuu_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CSR(4),
      Q => CSRuu(4)
    );
\CSRuu_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CSR(5),
      Q => CSRuu(5)
    );
\CSRuu_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CSR(6),
      Q => CSRuu(6)
    );
\CSRuu_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CSR(7),
      Q => CSRuu(7)
    );
\DEBOUNCE0.RST_COUNT[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \DEBOUNCE0.RST_COUNT_reg\(0),
      O => \DEBOUNCE0.RST_COUNT[0]_i_3_n_0\
    );
\DEBOUNCE0.RST_COUNT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_7\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(0)
    );
\DEBOUNCE0.RST_COUNT_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_0\,
      CO(2) => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_1\,
      CO(1) => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_2\,
      CO(0) => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_4\,
      O(2) => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_5\,
      O(1) => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_6\,
      O(0) => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_7\,
      S(3 downto 1) => \DEBOUNCE0.RST_COUNT_reg\(3 downto 1),
      S(0) => \DEBOUNCE0.RST_COUNT[0]_i_3_n_0\
    );
\DEBOUNCE0.RST_COUNT_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_5\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(10)
    );
\DEBOUNCE0.RST_COUNT_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_4\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(11)
    );
\DEBOUNCE0.RST_COUNT_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_7\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(12)
    );
\DEBOUNCE0.RST_COUNT_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_0\,
      CO(3) => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_0\,
      CO(2) => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_1\,
      CO(1) => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_2\,
      CO(0) => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_4\,
      O(2) => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_5\,
      O(1) => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_6\,
      O(0) => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_7\,
      S(3 downto 0) => \DEBOUNCE0.RST_COUNT_reg\(15 downto 12)
    );
\DEBOUNCE0.RST_COUNT_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_6\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(13)
    );
\DEBOUNCE0.RST_COUNT_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_5\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(14)
    );
\DEBOUNCE0.RST_COUNT_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_4\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(15)
    );
\DEBOUNCE0.RST_COUNT_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_7\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(16)
    );
\DEBOUNCE0.RST_COUNT_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DEBOUNCE0.RST_COUNT_reg[12]_i_1_n_0\,
      CO(3) => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_0\,
      CO(2) => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_1\,
      CO(1) => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_2\,
      CO(0) => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_4\,
      O(2) => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_5\,
      O(1) => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_6\,
      O(0) => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_7\,
      S(3 downto 0) => \DEBOUNCE0.RST_COUNT_reg\(19 downto 16)
    );
\DEBOUNCE0.RST_COUNT_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_6\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(17)
    );
\DEBOUNCE0.RST_COUNT_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_5\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(18)
    );
\DEBOUNCE0.RST_COUNT_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_4\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(19)
    );
\DEBOUNCE0.RST_COUNT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_6\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(1)
    );
\DEBOUNCE0.RST_COUNT_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_7\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(20)
    );
\DEBOUNCE0.RST_COUNT_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DEBOUNCE0.RST_COUNT_reg[16]_i_1_n_0\,
      CO(3) => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_0\,
      CO(2) => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_1\,
      CO(1) => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_2\,
      CO(0) => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_4\,
      O(2) => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_5\,
      O(1) => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_6\,
      O(0) => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_7\,
      S(3 downto 0) => \DEBOUNCE0.RST_COUNT_reg\(23 downto 20)
    );
\DEBOUNCE0.RST_COUNT_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_6\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(21)
    );
\DEBOUNCE0.RST_COUNT_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_5\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(22)
    );
\DEBOUNCE0.RST_COUNT_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_4\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(23)
    );
\DEBOUNCE0.RST_COUNT_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_7\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(24)
    );
\DEBOUNCE0.RST_COUNT_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DEBOUNCE0.RST_COUNT_reg[20]_i_1_n_0\,
      CO(3) => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_0\,
      CO(2) => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_1\,
      CO(1) => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_2\,
      CO(0) => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_4\,
      O(2) => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_5\,
      O(1) => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_6\,
      O(0) => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_7\,
      S(3 downto 0) => \DEBOUNCE0.RST_COUNT_reg\(27 downto 24)
    );
\DEBOUNCE0.RST_COUNT_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_6\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(25)
    );
\DEBOUNCE0.RST_COUNT_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_5\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(26)
    );
\DEBOUNCE0.RST_COUNT_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_4\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(27)
    );
\DEBOUNCE0.RST_COUNT_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_7\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(28)
    );
\DEBOUNCE0.RST_COUNT_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DEBOUNCE0.RST_COUNT_reg[24]_i_1_n_0\,
      CO(3) => \NLW_DEBOUNCE0.RST_COUNT_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_1\,
      CO(1) => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_2\,
      CO(0) => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_4\,
      O(2) => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_5\,
      O(1) => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_6\,
      O(0) => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_7\,
      S(3 downto 0) => \DEBOUNCE0.RST_COUNT_reg\(31 downto 28)
    );
\DEBOUNCE0.RST_COUNT_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_6\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(29)
    );
\DEBOUNCE0.RST_COUNT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_5\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(2)
    );
\DEBOUNCE0.RST_COUNT_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_5\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(30)
    );
\DEBOUNCE0.RST_COUNT_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[28]_i_1_n_4\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(31)
    );
\DEBOUNCE0.RST_COUNT_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_4\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(3)
    );
\DEBOUNCE0.RST_COUNT_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_7\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(4)
    );
\DEBOUNCE0.RST_COUNT_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DEBOUNCE0.RST_COUNT_reg[0]_i_2_n_0\,
      CO(3) => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_0\,
      CO(2) => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_1\,
      CO(1) => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_2\,
      CO(0) => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_4\,
      O(2) => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_5\,
      O(1) => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_6\,
      O(0) => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_7\,
      S(3 downto 0) => \DEBOUNCE0.RST_COUNT_reg\(7 downto 4)
    );
\DEBOUNCE0.RST_COUNT_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_6\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(5)
    );
\DEBOUNCE0.RST_COUNT_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_5\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(6)
    );
\DEBOUNCE0.RST_COUNT_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_4\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(7)
    );
\DEBOUNCE0.RST_COUNT_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_7\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(8)
    );
\DEBOUNCE0.RST_COUNT_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DEBOUNCE0.RST_COUNT_reg[4]_i_1_n_0\,
      CO(3) => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_0\,
      CO(2) => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_1\,
      CO(1) => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_2\,
      CO(0) => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_4\,
      O(2) => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_5\,
      O(1) => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_6\,
      O(0) => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_7\,
      S(3 downto 0) => \DEBOUNCE0.RST_COUNT_reg\(11 downto 8)
    );
\DEBOUNCE0.RST_COUNT_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => PLL0_n_3,
      CLR => clear,
      D => \DEBOUNCE0.RST_COUNT_reg[8]_i_1_n_6\,
      Q => \DEBOUNCE0.RST_COUNT_reg\(9)
    );
DRISCALU0: entity work.dRISC_ALU
     port map (
      CLKuu0_BUFG => CLKuu0_BUFG,
      \CMPLEQ1_carry__0_0\(3) => PROCESSOR0_n_115,
      \CMPLEQ1_carry__0_0\(2) => PROCESSOR0_n_116,
      \CMPLEQ1_carry__0_0\(1) => PROCESSOR0_n_117,
      \CMPLEQ1_carry__0_0\(0) => PROCESSOR0_n_118,
      \CMPLEQ1_inferred__0/i__carry__0_0\(3) => PROCESSOR0_n_59,
      \CMPLEQ1_inferred__0/i__carry__0_0\(2) => PROCESSOR0_n_60,
      \CMPLEQ1_inferred__0/i__carry__0_0\(1) => PROCESSOR0_n_61,
      \CMPLEQ1_inferred__0/i__carry__0_0\(0) => PROCESSOR0_n_62,
      \CMPLEQ1_inferred__0/i__carry__0_1\(3) => PROCESSOR0_n_51,
      \CMPLEQ1_inferred__0/i__carry__0_1\(2) => PROCESSOR0_n_52,
      \CMPLEQ1_inferred__0/i__carry__0_1\(1) => PROCESSOR0_n_53,
      \CMPLEQ1_inferred__0/i__carry__0_1\(0) => PROCESSOR0_n_54,
      \CMPuu_reg[0]_0\(3) => PROCESSOR0_n_71,
      \CMPuu_reg[0]_0\(2) => PROCESSOR0_n_72,
      \CMPuu_reg[0]_0\(1) => PROCESSOR0_n_73,
      \CMPuu_reg[0]_0\(0) => PROCESSOR0_n_74,
      \CMPuu_reg[0]_1\(3) => PROCESSOR0_n_63,
      \CMPuu_reg[0]_1\(2) => PROCESSOR0_n_64,
      \CMPuu_reg[0]_1\(1) => PROCESSOR0_n_65,
      \CMPuu_reg[0]_1\(0) => PROCESSOR0_n_66,
      \CMPuu_reg[2]_0\(2 downto 0) => CMP(2 downto 0),
      \CMPuu_reg[2]_1\(3) => PROCESSOR0_n_67,
      \CMPuu_reg[2]_1\(2) => PROCESSOR0_n_68,
      \CMPuu_reg[2]_1\(1) => PROCESSOR0_n_69,
      \CMPuu_reg[2]_1\(0) => PROCESSOR0_n_70,
      \CMPuu_reg[2]_2\(3) => PROCESSOR0_n_119,
      \CMPuu_reg[2]_2\(2) => PROCESSOR0_n_120,
      \CMPuu_reg[2]_2\(1) => PROCESSOR0_n_121,
      \CMPuu_reg[2]_2\(0) => PROCESSOR0_n_122,
      \CMPuu_reg[2]_3\(2 downto 0) => CMPuu(2 downto 0),
      CO(0) => DRISCALU0_n_32,
      CPU_STOPio => CPU_STOPio,
      D(14 downto 0) => D(14 downto 0),
      \DATAuu[0]_i_7\(3) => PROCESSOR0_n_135,
      \DATAuu[0]_i_7\(2) => PROCESSOR0_n_136,
      \DATAuu[0]_i_7\(1) => PROCESSOR0_n_137,
      \DATAuu[0]_i_7\(0) => PROCESSOR0_n_138,
      \DATAuu[12]_i_4\(3) => PROCESSOR0_n_91,
      \DATAuu[12]_i_4\(2) => PROCESSOR0_n_92,
      \DATAuu[12]_i_4\(1) => PROCESSOR0_n_93,
      \DATAuu[12]_i_4\(0) => PROCESSOR0_n_94,
      \DATAuu[12]_i_9\(3) => PROCESSOR0_n_147,
      \DATAuu[12]_i_9\(2) => PROCESSOR0_n_148,
      \DATAuu[12]_i_9\(1) => PROCESSOR0_n_149,
      \DATAuu[12]_i_9\(0) => PROCESSOR0_n_150,
      \DATAuu[4]_i_3\(3) => PROCESSOR0_n_127,
      \DATAuu[4]_i_3\(2) => PROCESSOR0_n_128,
      \DATAuu[4]_i_3\(1) => PROCESSOR0_n_129,
      \DATAuu[4]_i_3\(0) => PROCESSOR0_n_130,
      \DATAuu[4]_i_8\(3) => PROCESSOR0_n_139,
      \DATAuu[4]_i_8\(2) => PROCESSOR0_n_140,
      \DATAuu[4]_i_8\(1) => PROCESSOR0_n_141,
      \DATAuu[4]_i_8\(0) => PROCESSOR0_n_142,
      \DATAuu[8]_i_3\(3) => PROCESSOR0_n_131,
      \DATAuu[8]_i_3\(2) => PROCESSOR0_n_132,
      \DATAuu[8]_i_3\(1) => PROCESSOR0_n_133,
      \DATAuu[8]_i_3\(0) => PROCESSOR0_n_134,
      \DATAuu[8]_i_7\(3) => PROCESSOR0_n_143,
      \DATAuu[8]_i_7\(2) => PROCESSOR0_n_144,
      \DATAuu[8]_i_7\(1) => PROCESSOR0_n_145,
      \DATAuu[8]_i_7\(0) => PROCESSOR0_n_146,
      \DATAuu_reg[0]_0\ => DRISCALU0_n_52,
      \DATAuu_reg[0]_1\ => RSTdb_reg_n_0,
      \DATAuu_reg[10]_0\ => DRISCALU0_n_35,
      \DATAuu_reg[15]_0\(0) => data1(16),
      \DATAuu_reg[15]_1\(15 downto 0) => DATA(15 downto 0),
      \DATAuu_reg[15]_2\(2) => DRISCALU0_n_57,
      \DATAuu_reg[15]_2\(1) => DRISCALU0_n_58,
      \DATAuu_reg[15]_2\(0) => DRISCALU0_n_59,
      \DATAuu_reg[15]_3\(15 downto 0) => DATAuu(15 downto 0),
      \DATAuu_reg[9]_0\(3) => DRISCALU0_n_53,
      \DATAuu_reg[9]_0\(2) => DRISCALU0_n_54,
      \DATAuu_reg[9]_0\(1) => DRISCALU0_n_55,
      \DATAuu_reg[9]_0\(0) => DRISCALU0_n_56,
      DI(3) => PROCESSOR0_n_55,
      DI(2) => PROCESSOR0_n_56,
      DI(1) => PROCESSOR0_n_57,
      DI(0) => PROCESSOR0_n_58,
      \E_reg[14]\(0) => DRISCALU0_n_33,
      \F_MODE_OFFSET__0\(0) => \F_MODE_OFFSET__0\(0),
      \NETWORK0.F_MODE_OFFSET_reg[0]\(1) => DRISCALU0_n_60,
      \NETWORK0.F_MODE_OFFSET_reg[0]\(0) => DRISCALU0_n_61,
      \NETWORK0.PCi_new_reg[16]\(0) => PROCESSOR0_n_0,
      Q(14 downto 0) => E(14 downto 0),
      S(3) => PROCESSOR0_n_123,
      S(2) => PROCESSOR0_n_124,
      S(1) => PROCESSOR0_n_125,
      S(0) => PROCESSOR0_n_126,
      data0(15 downto 0) => data0(15 downto 0),
      data8(15 downto 0) => data8(15 downto 0)
    );
HALTu_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => RSTdb1,
      CLR => clear,
      D => CPU_STOP,
      Q => HALTu
    );
IOBUF0: entity work.iobuf_iobuf_bidir_30p
     port map (
      IOR(7 downto 0) => IOR(7 downto 0),
      Q(7 downto 0) => IORu(7 downto 0),
      T => T,
      dataout(7 downto 0) => dataout(7 downto 0),
      \loop0[1].IOBUF_inst_0\ => PROCESSOR0_n_81,
      \loop0[2].IOBUF_inst_0\ => PROCESSOR0_n_80,
      \loop0[3].IOBUF_inst_0\ => PROCESSOR0_n_79,
      \loop0[4].IOBUF_inst_0\ => PROCESSOR0_n_78,
      \loop0[5].IOBUF_inst_0\ => PROCESSOR0_n_77,
      \loop0[6].IOBUF_inst_0\ => PROCESSOR0_n_76,
      \loop0[7].IOBUF_inst_0\ => PROCESSOR0_n_75
    );
IOCONTROLLER0: entity work.dRISC_IOCONTROLLER
     port map (
      CLKuu0_BUFG => CLKuu0_BUFG,
      CPU_STOP_reg_0 => IOCONTROLLER0_n_2,
      CPU_STOPio => CPU_STOPio,
      \DETECT_PREV_reg[7]_0\(7 downto 0) => IWR(7 downto 0),
      \DETECT_PREVu_reg[0]_0\ => RSTdb_reg_n_0,
      \DETECT_PREVu_reg[7]_0\(7) => p_2_in48_in,
      \DETECT_PREVu_reg[7]_0\(6) => p_2_in40_in,
      \DETECT_PREVu_reg[7]_0\(5) => p_2_in32_in,
      \DETECT_PREVu_reg[7]_0\(4) => p_2_in24_in,
      \DETECT_PREVu_reg[7]_0\(3) => p_2_in16_in,
      \DETECT_PREVu_reg[7]_0\(2) => p_2_in8_in,
      \DETECT_PREVu_reg[7]_0\(1) => p_2_in,
      \DETECT_PREVu_reg[7]_0\(0) => IOCONTROLLER0_n_10,
      \FSM_sequential_NEXT_STATE_reg[0]_0\ => PROCESSOR0_n_98,
      INTERRUPT_BLOCK => INTERRUPT_BLOCK,
      INTERRUPTi => INTERRUPTi,
      ISR(7 downto 0) => ISR(7 downto 0),
      \NETWORK0.DETECT_reg[0]_0\ => PROCESSOR0_n_109,
      \NETWORK0.DETECT_reg[1]_0\ => PROCESSOR0_n_110,
      \NETWORK0.DETECT_reg[2]_0\ => PROCESSOR0_n_111,
      \NETWORK0.DETECT_reg[3]_0\ => PROCESSOR0_n_108,
      \NETWORK0.DETECT_reg[4]_0\ => PROCESSOR0_n_112,
      \NETWORK0.DETECT_reg[5]_0\ => PROCESSOR0_n_113,
      \NETWORK0.DETECT_reg[6]_0\ => PROCESSOR0_n_114,
      \NETWORK0.DETECT_reg[7]_0\ => PROCESSOR0_n_99,
      Q(7 downto 0) => ICR(7 downto 0),
      dataout(7 downto 0) => dataout(7 downto 0)
    );
PLL0: entity work.dRISC_PLL
     port map (
      CLK_IBUF => CLK_IBUF,
      CLKuu0 => CLKuu0,
      E(0) => RSTdb1,
      HALTu => HALTu,
      HALTu_reg => \CSRuu[7]_i_3_n_0\,
      HALTu_reg_0 => \CSRuu[7]_i_4_n_0\,
      HALTu_reg_1 => \CSRuu[7]_i_5_n_0\,
      HALTu_reg_2 => \CSRuu[7]_i_6_n_0\,
      PLLE2_BASE_inst_0 => PLL0_n_0,
      PLLE2_BASE_inst_1 => PLL0_n_3,
      PLLE2_BASE_inst_2 => PLL0_n_4,
      Q(1 downto 0) => CSRuu(7 downto 6),
      \gen_wr_a.gen_word_narrow.mem_reg_0_15\ => CLKuu0_BUFG_inst_i_2_n_0,
      wire10mhzTo10khz => wire10mhzTo10khz
    );
PROCESSOR0: entity work.dRISC_FSM
     port map (
      CLKuu0_BUFG => CLKuu0_BUFG,
      \CMPuu_reg[0]\(0) => DRISCALU0_n_33,
      CO(0) => DRISCALU0_n_32,
      CPU_STOP => CPU_STOP,
      CPU_STOPio => CPU_STOPio,
      \CSR_reg[7]_0\(7 downto 0) => CSR(7 downto 0),
      \DATAuu_reg[15]\(0) => PROCESSOR0_n_0,
      \DETECT_PREVu_reg[7]\ => PROCESSOR0_n_98,
      DI(3) => PROCESSOR0_n_55,
      DI(2) => PROCESSOR0_n_56,
      DI(1) => PROCESSOR0_n_57,
      DI(0) => PROCESSOR0_n_58,
      \E_reg[11]_0\(3) => PROCESSOR0_n_131,
      \E_reg[11]_0\(2) => PROCESSOR0_n_132,
      \E_reg[11]_0\(1) => PROCESSOR0_n_133,
      \E_reg[11]_0\(0) => PROCESSOR0_n_134,
      \E_reg[14]_0\(3) => PROCESSOR0_n_71,
      \E_reg[14]_0\(2) => PROCESSOR0_n_72,
      \E_reg[14]_0\(1) => PROCESSOR0_n_73,
      \E_reg[14]_0\(0) => PROCESSOR0_n_74,
      \E_reg[15]_0\(3) => PROCESSOR0_n_63,
      \E_reg[15]_0\(2) => PROCESSOR0_n_64,
      \E_reg[15]_0\(1) => PROCESSOR0_n_65,
      \E_reg[15]_0\(0) => PROCESSOR0_n_66,
      \E_reg[15]_1\(3) => PROCESSOR0_n_91,
      \E_reg[15]_1\(2) => PROCESSOR0_n_92,
      \E_reg[15]_1\(1) => PROCESSOR0_n_93,
      \E_reg[15]_1\(0) => PROCESSOR0_n_94,
      \E_reg[15]_2\(3) => PROCESSOR0_n_119,
      \E_reg[15]_2\(2) => PROCESSOR0_n_120,
      \E_reg[15]_2\(1) => PROCESSOR0_n_121,
      \E_reg[15]_2\(0) => PROCESSOR0_n_122,
      \E_reg[6]_0\(3) => PROCESSOR0_n_59,
      \E_reg[6]_0\(2) => PROCESSOR0_n_60,
      \E_reg[6]_0\(1) => PROCESSOR0_n_61,
      \E_reg[6]_0\(0) => PROCESSOR0_n_62,
      \E_reg[7]_0\(3) => PROCESSOR0_n_127,
      \E_reg[7]_0\(2) => PROCESSOR0_n_128,
      \E_reg[7]_0\(1) => PROCESSOR0_n_129,
      \E_reg[7]_0\(0) => PROCESSOR0_n_130,
      \FSM_onehot_NEXT_STATE_reg[1]_0\ => RSTdb_reg_n_0,
      \FSM_sequential_NEXT_STATE_reg[0]\(7) => p_2_in48_in,
      \FSM_sequential_NEXT_STATE_reg[0]\(6) => p_2_in40_in,
      \FSM_sequential_NEXT_STATE_reg[0]\(5) => p_2_in32_in,
      \FSM_sequential_NEXT_STATE_reg[0]\(4) => p_2_in24_in,
      \FSM_sequential_NEXT_STATE_reg[0]\(3) => p_2_in16_in,
      \FSM_sequential_NEXT_STATE_reg[0]\(2) => p_2_in8_in,
      \FSM_sequential_NEXT_STATE_reg[0]\(1) => p_2_in,
      \FSM_sequential_NEXT_STATE_reg[0]\(0) => IOCONTROLLER0_n_10,
      \F_MODE_OFFSET__0\(0) => \F_MODE_OFFSET__0\(0),
      \ICR_reg[7]_0\(7 downto 0) => ICR(7 downto 0),
      \IDR_reg[1]_0\ => PROCESSOR0_n_81,
      \IDR_reg[2]_0\ => PROCESSOR0_n_80,
      \IDR_reg[3]_0\ => PROCESSOR0_n_79,
      \IDR_reg[4]_0\ => PROCESSOR0_n_78,
      \IDR_reg[5]_0\ => PROCESSOR0_n_77,
      \IDR_reg[6]_0\ => PROCESSOR0_n_76,
      \IDR_reg[7]_0\ => PROCESSOR0_n_75,
      INTERRUPT_BLOCK => INTERRUPT_BLOCK,
      INTERRUPT_BLOCK_reg_0 => IOCONTROLLER0_n_2,
      INTERRUPTi => INTERRUPTi,
      ISR(7 downto 0) => ISR(7 downto 0),
      \IWR_reg[0]_0\ => PROCESSOR0_n_109,
      \IWR_reg[1]_0\ => PROCESSOR0_n_110,
      \IWR_reg[2]_0\ => PROCESSOR0_n_111,
      \IWR_reg[3]_0\ => PROCESSOR0_n_108,
      \IWR_reg[4]_0\ => PROCESSOR0_n_112,
      \IWR_reg[5]_0\ => PROCESSOR0_n_113,
      \IWR_reg[6]_0\ => PROCESSOR0_n_114,
      \IWR_reg[7]_0\ => PROCESSOR0_n_99,
      \IWR_reg[7]_1\(7 downto 0) => IWR(7 downto 0),
      \MCRu_reg[3]_0\(2 downto 0) => CMPuu(2 downto 0),
      \MEM_address_reg[14]_0\(14 downto 0) => MEM_address(14 downto 0),
      \MEM_data_reg[15]_0\(15 downto 0) => DATA(15 downto 0),
      \MEM_data_reg[3]_0\(2 downto 0) => CMP(2 downto 0),
      \NETWORK0.Di_reg[11]_0\(3) => PROCESSOR0_n_143,
      \NETWORK0.Di_reg[11]_0\(2) => PROCESSOR0_n_144,
      \NETWORK0.Di_reg[11]_0\(1) => PROCESSOR0_n_145,
      \NETWORK0.Di_reg[11]_0\(0) => PROCESSOR0_n_146,
      \NETWORK0.Di_reg[14]_0\(14 downto 0) => D(14 downto 0),
      \NETWORK0.Di_reg[14]_1\(3) => PROCESSOR0_n_67,
      \NETWORK0.Di_reg[14]_1\(2) => PROCESSOR0_n_68,
      \NETWORK0.Di_reg[14]_1\(1) => PROCESSOR0_n_69,
      \NETWORK0.Di_reg[14]_1\(0) => PROCESSOR0_n_70,
      \NETWORK0.Di_reg[15]_0\(15 downto 0) => DATAuu(15 downto 0),
      \NETWORK0.Di_reg[15]_1\(3) => PROCESSOR0_n_147,
      \NETWORK0.Di_reg[15]_1\(2) => PROCESSOR0_n_148,
      \NETWORK0.Di_reg[15]_1\(1) => PROCESSOR0_n_149,
      \NETWORK0.Di_reg[15]_1\(0) => PROCESSOR0_n_150,
      \NETWORK0.Di_reg[3]_0\(3) => PROCESSOR0_n_135,
      \NETWORK0.Di_reg[3]_0\(2) => PROCESSOR0_n_136,
      \NETWORK0.Di_reg[3]_0\(1) => PROCESSOR0_n_137,
      \NETWORK0.Di_reg[3]_0\(0) => PROCESSOR0_n_138,
      \NETWORK0.Di_reg[6]_0\(3) => PROCESSOR0_n_51,
      \NETWORK0.Di_reg[6]_0\(2) => PROCESSOR0_n_52,
      \NETWORK0.Di_reg[6]_0\(1) => PROCESSOR0_n_53,
      \NETWORK0.Di_reg[6]_0\(0) => PROCESSOR0_n_54,
      \NETWORK0.Di_reg[6]_1\(3) => PROCESSOR0_n_115,
      \NETWORK0.Di_reg[6]_1\(2) => PROCESSOR0_n_116,
      \NETWORK0.Di_reg[6]_1\(1) => PROCESSOR0_n_117,
      \NETWORK0.Di_reg[6]_1\(0) => PROCESSOR0_n_118,
      \NETWORK0.Di_reg[7]_0\(3) => PROCESSOR0_n_139,
      \NETWORK0.Di_reg[7]_0\(2) => PROCESSOR0_n_140,
      \NETWORK0.Di_reg[7]_0\(1) => PROCESSOR0_n_141,
      \NETWORK0.Di_reg[7]_0\(0) => PROCESSOR0_n_142,
      \NETWORK0.IORi_reg[7]_0\(7 downto 0) => IORu(7 downto 0),
      \NETWORK0.PCi_new[16]_i_4_0\(2) => DRISCALU0_n_57,
      \NETWORK0.PCi_new[16]_i_4_0\(1) => DRISCALU0_n_58,
      \NETWORK0.PCi_new[16]_i_4_0\(0) => DRISCALU0_n_59,
      \NETWORK0.PCi_new_reg[0]_0\ => DRISCALU0_n_35,
      \NETWORK0.PCi_new_reg[16]_0\(0) => data1(16),
      \NETWORK0.PCi_new_reg[3]_0\(1) => DRISCALU0_n_60,
      \NETWORK0.PCi_new_reg[3]_0\(0) => DRISCALU0_n_61,
      \PCi_new1_carry__0_0\ => DRISCALU0_n_52,
      \PCi_new1_carry__0_1\(3) => DRISCALU0_n_53,
      \PCi_new1_carry__0_1\(2) => DRISCALU0_n_54,
      \PCi_new1_carry__0_1\(1) => DRISCALU0_n_55,
      \PCi_new1_carry__0_1\(0) => DRISCALU0_n_56,
      Q(14 downto 0) => E(14 downto 0),
      S(3) => PROCESSOR0_n_123,
      S(2) => PROCESSOR0_n_124,
      S(1) => PROCESSOR0_n_125,
      S(0) => PROCESSOR0_n_126,
      T => T,
      data0(15 downto 0) => data0(15 downto 0),
      data8(15 downto 0) => data8(15 downto 0),
      dataout(7 downto 0) => dataout(7 downto 0),
      dina(15 downto 0) => MEM_data(15 downto 0),
      douta(15 downto 0) => q(15 downto 0),
      wea(0) => MEM_wren
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
RSTdb_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKuu0_BUFG,
      CE => '1',
      D => PLL0_n_4,
      PRE => clear,
      Q => RSTdb_reg_n_0
    );
UMEM0: entity work.memory
     port map (
      CLKuu0_BUFG => CLKuu0_BUFG,
      dina(15 downto 0) => MEM_data(15 downto 0),
      douta(15 downto 0) => q(15 downto 0),
      \gen_wr_a.gen_word_narrow.mem_reg_0_15\(14 downto 0) => MEM_address(14 downto 0),
      wea(0) => MEM_wren
    );
\counter_reg[0]_i_2\: unisim.vcomponents.BUFG
     port map (
      I => PLL0_n_0,
      O => wire10mhzTo10khz
    );
end STRUCTURE;
