--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2.1 (win64) Build 3414424 Sun Dec 19 10:57:22 MST 2021
--Date        : Thu Aug 25 13:02:05 2022
--Host        : JKatana running 64-bit major release  (build 9200)
--Command     : generate_target MonadmOISC.bd
--Design      : MonadmOISC
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MonadmOISC is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of MonadmOISC : entity is "MonadmOISC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MonadmOISC,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=6,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of MonadmOISC : entity is "MonadmOISC.hwdef";
end MonadmOISC;

architecture STRUCTURE of MonadmOISC is
  component MonadmOISC_clashFsmMonad_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    in_mem_data_rd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_ioctr_isr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_ioctr_interrupt : in STD_LOGIC;
    in_ioctr_cpu_stop : in STD_LOGIC;
    in_alu_data_res : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_alu_cmp : in STD_LOGIC_VECTOR ( 2 downto 0 );
    in_alu_overflow : in STD_LOGIC;
    in_iobuf_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_mem_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_mem_data_wr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_mem_wren : out STD_LOGIC;
    out_mem_rden : out STD_LOGIC;
    out_ioctr_iwr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_ioctr_icr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_ioctr_interrupt_block : out STD_LOGIC;
    out_alu_mcr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_alu_mem_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_alu_mem_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_alu_mem_mem_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_alu_pc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_iobuf_dataout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_iobuf_oe : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_clock_speed : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_status_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_status_cpu_stop_status : out STD_LOGIC
  );
  end component MonadmOISC_clashFsmMonad_0_0;
  component MonadmOISC_clashMem_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    rden : in STD_LOGIC;
    wren : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 14 downto 0 );
    data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_data_q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component MonadmOISC_clashMem_0_0;
  component MonadmOISC_clashAlu_0_0 is
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
  end component MonadmOISC_clashAlu_0_0;
  component MonadmOISC_clashClockGen_0_0 is
  port (
    csr_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cpu_stop_in : in STD_LOGIC;
    clock10khz : in STD_LOGIC;
    clock1mhz : in STD_LOGIC;
    clock50mhz : in STD_LOGIC;
    clock100mhz : in STD_LOGIC;
    clkOut : out STD_LOGIC
  );
  end component MonadmOISC_clashClockGen_0_0;
  component MonadmOISC_clashIoBuffer_0_0 is
  port (
    fsm_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dir : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outside_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    to_fsm : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component MonadmOISC_clashIoBuffer_0_0;
  component MonadmOISC_clashIoCtr_0_0 is
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
  end component MonadmOISC_clashIoCtr_0_0;
  signal EN_0_1 : STD_LOGIC;
  signal Net : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RST_0_1 : STD_LOGIC;
  signal clashAlu_0_out_cmp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clashAlu_0_out_data : STD_LOGIC;
  signal clashAlu_0_out_overflow : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clashClockGen_0_clkOut : STD_LOGIC;
  signal clashFsmMonad_0_out_alu_mcr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashFsmMonad_0_out_alu_mem_a : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clashFsmMonad_0_out_alu_mem_b : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clashFsmMonad_0_out_alu_mem_mem_b : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clashFsmMonad_0_out_alu_pc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clashFsmMonad_0_out_clock_speed : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashFsmMonad_0_out_iobuf_dataout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashFsmMonad_0_out_iobuf_oe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashFsmMonad_0_out_ioctr_icr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashFsmMonad_0_out_ioctr_interrupt_block : STD_LOGIC;
  signal clashFsmMonad_0_out_ioctr_iwr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashFsmMonad_0_out_mem_address : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clashFsmMonad_0_out_mem_data_wr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clashFsmMonad_0_out_mem_rden : STD_LOGIC;
  signal clashFsmMonad_0_out_mem_wren : STD_LOGIC;
  signal clashFsmMonad_0_out_status_cpu_stop_status : STD_LOGIC;
  signal clashFsmMonad_0_out_status_status : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashIoBuffer_0_to_fsm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashIoCtr_0_out_CPU_STOP : STD_LOGIC;
  signal clashIoCtr_0_out_INTERRUPT : STD_LOGIC;
  signal clashIoCtr_0_out_ISR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clashMem_0_out_data_q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clock100mhz_0_1 : STD_LOGIC;
  signal clock10khz_0_1 : STD_LOGIC;
  signal clock1mhz_0_1 : STD_LOGIC;
  signal clock50mhz_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of RST_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RST_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  EN_0_1 <= EN_0;
  RST_0_1 <= RST_0;
  clock100mhz_0_1 <= clock100mhz_0;
  clock10khz_0_1 <= clock10khz_0;
  clock1mhz_0_1 <= clock1mhz_0;
  clock50mhz_0_1 <= clock50mhz_0;
  out_status_status_0(7 downto 0) <= clashFsmMonad_0_out_status_status(7 downto 0);
clashAlu_0: component MonadmOISC_clashAlu_0_0
     port map (
      in_mcr(3 downto 0) => clashFsmMonad_0_out_alu_mcr(3 downto 0),
      in_mem_a(15 downto 0) => clashFsmMonad_0_out_alu_mem_a(15 downto 0),
      in_mem_b(15 downto 0) => clashFsmMonad_0_out_alu_mem_b(15 downto 0),
      in_mem_mem_b(15 downto 0) => clashFsmMonad_0_out_alu_mem_mem_b(15 downto 0),
      in_pc(15 downto 0) => clashFsmMonad_0_out_alu_pc(15 downto 0),
      out_cmp(1 downto 0) => clashAlu_0_out_cmp(1 downto 0),
      out_data => clashAlu_0_out_data,
      out_overflow(15 downto 0) => clashAlu_0_out_overflow(15 downto 0)
    );
clashClockGen_0: component MonadmOISC_clashClockGen_0_0
     port map (
      clkOut => clashClockGen_0_clkOut,
      clock100mhz => clock100mhz_0_1,
      clock10khz => clock10khz_0_1,
      clock1mhz => clock1mhz_0_1,
      clock50mhz => clock50mhz_0_1,
      cpu_stop_in => clashFsmMonad_0_out_status_cpu_stop_status,
      csr_in(7 downto 0) => clashFsmMonad_0_out_clock_speed(7 downto 0)
    );
clashFsmMonad_0: component MonadmOISC_clashFsmMonad_0_0
     port map (
      CLK => clashClockGen_0_clkOut,
      EN => EN_0_1,
      RST => RST_0_1,
      in_alu_cmp(2) => '0',
      in_alu_cmp(1 downto 0) => clashAlu_0_out_cmp(1 downto 0),
      in_alu_data_res(15) => clashAlu_0_out_data,
      in_alu_data_res(14) => clashAlu_0_out_data,
      in_alu_data_res(13) => clashAlu_0_out_data,
      in_alu_data_res(12) => clashAlu_0_out_data,
      in_alu_data_res(11) => clashAlu_0_out_data,
      in_alu_data_res(10) => clashAlu_0_out_data,
      in_alu_data_res(9) => clashAlu_0_out_data,
      in_alu_data_res(8) => clashAlu_0_out_data,
      in_alu_data_res(7) => clashAlu_0_out_data,
      in_alu_data_res(6) => clashAlu_0_out_data,
      in_alu_data_res(5) => clashAlu_0_out_data,
      in_alu_data_res(4) => clashAlu_0_out_data,
      in_alu_data_res(3) => clashAlu_0_out_data,
      in_alu_data_res(2) => clashAlu_0_out_data,
      in_alu_data_res(1) => clashAlu_0_out_data,
      in_alu_data_res(0) => clashAlu_0_out_data,
      in_alu_overflow => clashAlu_0_out_overflow(0),
      in_iobuf_data(7 downto 0) => clashIoBuffer_0_to_fsm(7 downto 0),
      in_ioctr_cpu_stop => clashIoCtr_0_out_CPU_STOP,
      in_ioctr_interrupt => clashIoCtr_0_out_INTERRUPT,
      in_ioctr_isr(7 downto 0) => clashIoCtr_0_out_ISR(7 downto 0),
      in_mem_data_rd(15 downto 0) => clashMem_0_out_data_q(15 downto 0),
      out_alu_mcr(7 downto 0) => clashFsmMonad_0_out_alu_mcr(7 downto 0),
      out_alu_mem_a(15 downto 0) => clashFsmMonad_0_out_alu_mem_a(15 downto 0),
      out_alu_mem_b(15 downto 0) => clashFsmMonad_0_out_alu_mem_b(15 downto 0),
      out_alu_mem_mem_b(15 downto 0) => clashFsmMonad_0_out_alu_mem_mem_b(15 downto 0),
      out_alu_pc(15 downto 0) => clashFsmMonad_0_out_alu_pc(15 downto 0),
      out_clock_speed(7 downto 0) => clashFsmMonad_0_out_clock_speed(7 downto 0),
      out_iobuf_dataout(7 downto 0) => clashFsmMonad_0_out_iobuf_dataout(7 downto 0),
      out_iobuf_oe(7 downto 0) => clashFsmMonad_0_out_iobuf_oe(7 downto 0),
      out_ioctr_icr(7 downto 0) => clashFsmMonad_0_out_ioctr_icr(7 downto 0),
      out_ioctr_interrupt_block => clashFsmMonad_0_out_ioctr_interrupt_block,
      out_ioctr_iwr(7 downto 0) => clashFsmMonad_0_out_ioctr_iwr(7 downto 0),
      out_mem_address(15 downto 0) => clashFsmMonad_0_out_mem_address(15 downto 0),
      out_mem_data_wr(15 downto 0) => clashFsmMonad_0_out_mem_data_wr(15 downto 0),
      out_mem_rden => clashFsmMonad_0_out_mem_rden,
      out_mem_wren => clashFsmMonad_0_out_mem_wren,
      out_status_cpu_stop_status => clashFsmMonad_0_out_status_cpu_stop_status,
      out_status_status(7 downto 0) => clashFsmMonad_0_out_status_status(7 downto 0)
    );
clashIoBuffer_0: component MonadmOISC_clashIoBuffer_0_0
     port map (
      dir(7 downto 0) => clashFsmMonad_0_out_iobuf_oe(7 downto 0),
      fsm_in(7 downto 0) => clashFsmMonad_0_out_iobuf_dataout(7 downto 0),
      outside_io(7 downto 0) => outside_io_0(7 downto 0),
      to_fsm(7 downto 0) => clashIoBuffer_0_to_fsm(7 downto 0)
    );
clashIoCtr_0: component MonadmOISC_clashIoCtr_0_0
     port map (
      CLK => clashClockGen_0_clkOut,
      EN => EN_0_1,
      ICR_in(7 downto 0) => clashFsmMonad_0_out_ioctr_icr(7 downto 0),
      INTERRUPT_BLOCK => clashFsmMonad_0_out_ioctr_interrupt_block,
      IOR_in(7 downto 0) => clashIoBuffer_0_to_fsm(7 downto 0),
      IWR_in(7 downto 0) => clashFsmMonad_0_out_ioctr_iwr(7 downto 0),
      RST => RST_0_1,
      out_CPU_STOP => clashIoCtr_0_out_CPU_STOP,
      out_INTERRUPT => clashIoCtr_0_out_INTERRUPT,
      out_ISR(7 downto 0) => clashIoCtr_0_out_ISR(7 downto 0)
    );
clashMem_0: component MonadmOISC_clashMem_0_0
     port map (
      CLK => clashClockGen_0_clkOut,
      EN => EN_0_1,
      RST => RST_0_1,
      address(14 downto 0) => clashFsmMonad_0_out_mem_address(14 downto 0),
      data(15 downto 0) => clashFsmMonad_0_out_mem_data_wr(15 downto 0),
      out_data_q(15 downto 0) => clashMem_0_out_data_q(15 downto 0),
      rden => clashFsmMonad_0_out_mem_rden,
      wren => clashFsmMonad_0_out_mem_wren
    );
end STRUCTURE;
