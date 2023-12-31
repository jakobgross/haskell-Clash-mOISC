-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: cs12.tf.fau.de:mOISCclash:clashFsmMonad:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY MonadmOISC_clashFsmMonad_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    EN : IN STD_LOGIC;
    in_mem_data_rd : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in_ioctr_isr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    in_ioctr_interrupt : IN STD_LOGIC;
    in_ioctr_cpu_stop : IN STD_LOGIC;
    in_alu_data_res : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in_alu_cmp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    in_alu_overflow : IN STD_LOGIC;
    in_iobuf_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    out_mem_address : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    out_mem_data_wr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    out_mem_wren : OUT STD_LOGIC;
    out_mem_rden : OUT STD_LOGIC;
    out_ioctr_iwr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    out_ioctr_icr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    out_ioctr_interrupt_block : OUT STD_LOGIC;
    out_alu_mcr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    out_alu_mem_a : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    out_alu_mem_b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    out_alu_mem_mem_b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    out_alu_pc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    out_iobuf_dataout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    out_iobuf_oe : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    out_clock_speed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    out_status_status : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    out_status_cpu_stop_status : OUT STD_LOGIC
  );
END MonadmOISC_clashFsmMonad_0_0;

ARCHITECTURE MonadmOISC_clashFsmMonad_0_0_arch OF MonadmOISC_clashFsmMonad_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF MonadmOISC_clashFsmMonad_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT FSM IS
    PORT (
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      EN : IN STD_LOGIC;
      in_mem_data_rd : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      in_ioctr_isr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      in_ioctr_interrupt : IN STD_LOGIC;
      in_ioctr_cpu_stop : IN STD_LOGIC;
      in_alu_data_res : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      in_alu_cmp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      in_alu_overflow : IN STD_LOGIC;
      in_iobuf_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_mem_address : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      out_mem_data_wr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      out_mem_wren : OUT STD_LOGIC;
      out_mem_rden : OUT STD_LOGIC;
      out_ioctr_iwr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_ioctr_icr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_ioctr_interrupt_block : OUT STD_LOGIC;
      out_alu_mcr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_alu_mem_a : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      out_alu_mem_b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      out_alu_mem_mem_b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      out_alu_pc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      out_iobuf_dataout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_iobuf_oe : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_clock_speed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_status_status : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      out_status_cpu_stop_status : OUT STD_LOGIC
    );
  END COMPONENT FSM;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF MonadmOISC_clashFsmMonad_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_ioctr_interrupt: SIGNAL IS "XIL_INTERFACENAME in_ioctr_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF in_ioctr_interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 in_ioctr_interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : FSM
    PORT MAP (
      CLK => CLK,
      RST => RST,
      EN => EN,
      in_mem_data_rd => in_mem_data_rd,
      in_ioctr_isr => in_ioctr_isr,
      in_ioctr_interrupt => in_ioctr_interrupt,
      in_ioctr_cpu_stop => in_ioctr_cpu_stop,
      in_alu_data_res => in_alu_data_res,
      in_alu_cmp => in_alu_cmp,
      in_alu_overflow => in_alu_overflow,
      in_iobuf_data => in_iobuf_data,
      out_mem_address => out_mem_address,
      out_mem_data_wr => out_mem_data_wr,
      out_mem_wren => out_mem_wren,
      out_mem_rden => out_mem_rden,
      out_ioctr_iwr => out_ioctr_iwr,
      out_ioctr_icr => out_ioctr_icr,
      out_ioctr_interrupt_block => out_ioctr_interrupt_block,
      out_alu_mcr => out_alu_mcr,
      out_alu_mem_a => out_alu_mem_a,
      out_alu_mem_b => out_alu_mem_b,
      out_alu_mem_mem_b => out_alu_mem_mem_b,
      out_alu_pc => out_alu_pc,
      out_iobuf_dataout => out_iobuf_dataout,
      out_iobuf_oe => out_iobuf_oe,
      out_clock_speed => out_clock_speed,
      out_status_status => out_status_status,
      out_status_cpu_stop_status => out_status_cpu_stop_status
    );
END MonadmOISC_clashFsmMonad_0_0_arch;
