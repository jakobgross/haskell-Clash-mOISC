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

-- IP VLNV: cs12.tf.fau.de:mOISCclash:clashMem:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY MonadmOISC_clashMem_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    EN : IN STD_LOGIC;
    rden : IN STD_LOGIC;
    wren : IN STD_LOGIC;
    address : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    out_data_q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END MonadmOISC_clashMem_0_0;

ARCHITECTURE MonadmOISC_clashMem_0_0_arch OF MonadmOISC_clashMem_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF MonadmOISC_clashMem_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Mem IS
    GENERIC (
      memory_file : STRING
    );
    PORT (
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      EN : IN STD_LOGIC;
      rden : IN STD_LOGIC;
      wren : IN STD_LOGIC;
      address : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
      data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      out_data_q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT Mem;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF MonadmOISC_clashMem_0_0_arch: ARCHITECTURE IS "Mem,Vivado 2021.2.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF MonadmOISC_clashMem_0_0_arch : ARCHITECTURE IS "MonadmOISC_clashMem_0_0,Mem,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF MonadmOISC_clashMem_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : Mem
    GENERIC MAP (
      memory_file => "D:/git/clash-moisc/Vivado/MoiscBlocksMonad/MoiscBlocksMonad.srcs/sources_1/imports/mem/iotest2.clash.bin"
    )
    PORT MAP (
      CLK => CLK,
      RST => RST,
      EN => EN,
      rden => rden,
      wren => wren,
      address => address,
      data => data,
      out_data_q => out_data_q
    );
END MonadmOISC_clashMem_0_0_arch;
