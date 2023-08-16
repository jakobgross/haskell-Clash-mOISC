-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
-- Date        : Thu Aug 25 15:11:41 2022
-- Host        : JKatana running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/git/clash-moisc/Vivado/MoiscBlocks/MoiscBlocks.gen/sources_1/bd/mOISC/ip/mOISC_clashIoBuffer_0_0/mOISC_clashIoBuffer_0_0_sim_netlist.vhdl
-- Design      : mOISC_clashIoBuffer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mOISC_clashIoBuffer_0_0_IoBuffer is
  port (
    to_fsm : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outside_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    fsm_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dir : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mOISC_clashIoBuffer_0_0_IoBuffer : entity is "IoBuffer";
end mOISC_clashIoBuffer_0_0_IoBuffer;

architecture STRUCTURE of mOISC_clashIoBuffer_0_0_IoBuffer is
  signal T : STD_LOGIC;
  signal \myblackbox[1].IOBUF_inst_i_1_n_0\ : STD_LOGIC;
  signal \myblackbox[2].IOBUF_inst_i_1_n_0\ : STD_LOGIC;
  signal \myblackbox[3].IOBUF_inst_i_1_n_0\ : STD_LOGIC;
  signal \myblackbox[4].IOBUF_inst_i_1_n_0\ : STD_LOGIC;
  signal \myblackbox[5].IOBUF_inst_i_1_n_0\ : STD_LOGIC;
  signal \myblackbox[6].IOBUF_inst_i_1_n_0\ : STD_LOGIC;
  signal \myblackbox[7].IOBUF_inst_i_1_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \myblackbox[0].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \myblackbox[1].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \myblackbox[2].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \myblackbox[3].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \myblackbox[4].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \myblackbox[5].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \myblackbox[6].IOBUF_inst\ : label is "PRIMITIVE";
  attribute box_type of \myblackbox[7].IOBUF_inst\ : label is "PRIMITIVE";
begin
\myblackbox[0].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fsm_in(0),
      IO => outside_io(0),
      O => to_fsm(0),
      T => T
    );
\myblackbox[0].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir(0),
      O => T
    );
\myblackbox[1].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fsm_in(1),
      IO => outside_io(1),
      O => to_fsm(1),
      T => \myblackbox[1].IOBUF_inst_i_1_n_0\
    );
\myblackbox[1].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir(1),
      O => \myblackbox[1].IOBUF_inst_i_1_n_0\
    );
\myblackbox[2].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fsm_in(2),
      IO => outside_io(2),
      O => to_fsm(2),
      T => \myblackbox[2].IOBUF_inst_i_1_n_0\
    );
\myblackbox[2].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir(2),
      O => \myblackbox[2].IOBUF_inst_i_1_n_0\
    );
\myblackbox[3].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fsm_in(3),
      IO => outside_io(3),
      O => to_fsm(3),
      T => \myblackbox[3].IOBUF_inst_i_1_n_0\
    );
\myblackbox[3].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir(3),
      O => \myblackbox[3].IOBUF_inst_i_1_n_0\
    );
\myblackbox[4].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fsm_in(4),
      IO => outside_io(4),
      O => to_fsm(4),
      T => \myblackbox[4].IOBUF_inst_i_1_n_0\
    );
\myblackbox[4].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir(4),
      O => \myblackbox[4].IOBUF_inst_i_1_n_0\
    );
\myblackbox[5].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fsm_in(5),
      IO => outside_io(5),
      O => to_fsm(5),
      T => \myblackbox[5].IOBUF_inst_i_1_n_0\
    );
\myblackbox[5].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir(5),
      O => \myblackbox[5].IOBUF_inst_i_1_n_0\
    );
\myblackbox[6].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fsm_in(6),
      IO => outside_io(6),
      O => to_fsm(6),
      T => \myblackbox[6].IOBUF_inst_i_1_n_0\
    );
\myblackbox[6].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir(6),
      O => \myblackbox[6].IOBUF_inst_i_1_n_0\
    );
\myblackbox[7].IOBUF_inst\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fsm_in(7),
      IO => outside_io(7),
      O => to_fsm(7),
      T => \myblackbox[7].IOBUF_inst_i_1_n_0\
    );
\myblackbox[7].IOBUF_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir(7),
      O => \myblackbox[7].IOBUF_inst_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mOISC_clashIoBuffer_0_0 is
  port (
    fsm_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dir : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outside_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    to_fsm : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mOISC_clashIoBuffer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mOISC_clashIoBuffer_0_0 : entity is "mOISC_clashIoBuffer_0_0,IoBuffer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mOISC_clashIoBuffer_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of mOISC_clashIoBuffer_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of mOISC_clashIoBuffer_0_0 : entity is "IoBuffer,Vivado 2021.2.1";
end mOISC_clashIoBuffer_0_0;

architecture STRUCTURE of mOISC_clashIoBuffer_0_0 is
begin
U0: entity work.mOISC_clashIoBuffer_0_0_IoBuffer
     port map (
      dir(7 downto 0) => dir(7 downto 0),
      fsm_in(7 downto 0) => fsm_in(7 downto 0),
      outside_io(7 downto 0) => outside_io(7 downto 0),
      to_fsm(7 downto 0) => to_fsm(7 downto 0)
    );
end STRUCTURE;
