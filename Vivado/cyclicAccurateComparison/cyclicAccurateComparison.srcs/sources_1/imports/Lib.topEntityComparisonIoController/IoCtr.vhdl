-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.IoCtr_types.all;

entity IoCtr is
  port(-- clock
       CLK             : in IoCtr_types.clk_xilinxsystem;
       -- reset
       RST             : in IoCtr_types.rst_xilinxsystem;
       -- enable
       EN              : in IoCtr_types.en_xilinxsystem;
       INTERRUPT_BLOCK : in std_logic;
       IOR_in          : in std_logic_vector(7 downto 0);
       IWR_in          : in std_logic_vector(7 downto 0);
       ICR_in          : in std_logic_vector(7 downto 0);
       out_ISR         : out std_logic_vector(7 downto 0);
       out_INTERRUPT   : out std_logic;
       out_CPU_STOP    : out std_logic);
end;

architecture structural of IoCtr is
  -- src\Lib\IoController.hs:(54,1)-(59,26)
  signal eta                    : IoCtr_types.fsm2ioctr;
  -- src\Lib\IoController.hs:(54,1)-(59,26)
  signal cds_app_arg            : IoCtr_types.tup3 := ( tup3_sel0_ioctrstate => ioctrstate'(reset_ioctr)
, tup3_sel1_ioctrlregisters => ( ioctrlregisters_sel0_isr_t => std_logic_vector'(x"00")
, ioctrlregisters_sel1_detect => std_logic_vector'(x"00")
, ioctrlregisters_sel2_detect_prev => std_logic_vector'(x"00")
, ioctrlregisters_sel3_edge => false )
, tup3_sel2_ioctr2fsm => ( ioctr2fsm_sel0_isr => std_logic_vector'(x"00")
, ioctr2fsm_sel1_interrupt => false
, ioctr2fsm_sel2_cpu_stop => true ) );
  signal ccase_alt              : IoCtr_types.tup2;
  -- src\Lib\IoController.hs:(62,1)-(67,61)
  signal state                  : IoCtr_types.ioctrstate;
  -- src\Lib\IoController.hs:(62,1)-(67,61)
  signal outputbuffer           : IoCtr_types.ioctr2fsm;
  signal ccase_alt_0            : IoCtr_types.ioctrstate;
  -- src\Lib\IoController.hs:(62,1)-(67,61)
  signal isr_new                : std_logic_vector(7 downto 0);
  signal capp_arg               : IoCtr_types.ioctrstate;
  -- src\Lib\IoController.hs:(62,1)-(67,61)
  signal registers              : IoCtr_types.ioctrlregisters;
  signal capp_arg_0             : std_logic_vector(7 downto 0);
  signal ccase_alt_1            : IoCtr_types.ioctrstate;
  -- src\Lib\IoController.hs:(62,1)-(67,61)
  signal outputbuffer_0         : IoCtr_types.ioctr2fsm;
  signal result                 : IoCtr_types.ioctr2fsm;
  signal capp_arg_1             : std_logic_vector(0 downto 0);
  signal capp_arg_2             : std_logic_vector(0 downto 0);
  signal ccase_alt_selection_2  : boolean;
  signal capp_arg_selection_res : boolean;
  signal ccase_alt_selection_5  : boolean;
  signal capp_arg_selection_2   : boolean;
  signal capp_arg_selection_5   : boolean;
  signal r_out                  : IoCtr_types.tup3_0;

begin
  eta <= ( fsm2ioctr_sel0_iwr => IWR_in
         , fsm2ioctr_sel1_icr => ICR_in
         , fsm2ioctr_sel2_interrupt_block_0 => (std_logic_vector'(0 => INTERRUPT_BLOCK)) = std_logic_vector'("1") );

  -- register begin
  cds_app_arg_register : process(CLK)
  begin
    if rising_edge(CLK) then
      if RST =  '1'  then
        cds_app_arg <= ( tup3_sel0_ioctrstate => ioctrstate'(reset_ioctr)
  , tup3_sel1_ioctrlregisters => ( ioctrlregisters_sel0_isr_t => std_logic_vector'(x"00")
  , ioctrlregisters_sel1_detect => std_logic_vector'(x"00")
  , ioctrlregisters_sel2_detect_prev => std_logic_vector'(x"00")
  , ioctrlregisters_sel3_edge => false )
  , tup3_sel2_ioctr2fsm => ( ioctr2fsm_sel0_isr => std_logic_vector'(x"00")
  , ioctr2fsm_sel1_interrupt => false
  , ioctr2fsm_sel2_cpu_stop => true ) );
      elsif EN then
        cds_app_arg <= ccase_alt.tup2_sel0_tup3;
      end if;
    end if;
  end process;
  -- register end

  with (state) select
    ccase_alt <= ( tup2_sel0_tup3 => ( tup3_sel0_ioctrstate => ioctrstate'(wait_for_iwr)
                 , tup3_sel1_ioctrlregisters => ( ioctrlregisters_sel0_isr_t => std_logic_vector'(x"00")
                 , ioctrlregisters_sel1_detect => std_logic_vector'(x"00")
                 , ioctrlregisters_sel2_detect_prev => std_logic_vector'(x"00")
                 , ioctrlregisters_sel3_edge => false )
                 , tup3_sel2_ioctr2fsm => ( ioctr2fsm_sel0_isr => std_logic_vector'(x"00")
                 , ioctr2fsm_sel1_interrupt => false
                 , ioctr2fsm_sel2_cpu_stop => true ) )
                 , tup2_sel1_ioctr2fsm => ( ioctr2fsm_sel0_isr => std_logic_vector'(x"00")
                 , ioctr2fsm_sel1_interrupt => false
                 , ioctr2fsm_sel2_cpu_stop => true ) ) when ioctrstate'(reset_ioctr),
                 ( tup2_sel0_tup3 => ( tup3_sel0_ioctrstate => ccase_alt_1
                 , tup3_sel1_ioctrlregisters => ( ioctrlregisters_sel0_isr_t => registers.ioctrlregisters_sel0_isr_t
                 , ioctrlregisters_sel1_detect => capp_arg_0
                 , ioctrlregisters_sel2_detect_prev => capp_arg_0
                 , ioctrlregisters_sel3_edge => registers.ioctrlregisters_sel3_edge )
                 , tup3_sel2_ioctr2fsm => ( ioctr2fsm_sel0_isr => outputbuffer_0.ioctr2fsm_sel0_isr
                 , ioctr2fsm_sel1_interrupt => false
                 , ioctr2fsm_sel2_cpu_stop => true ) )
                 , tup2_sel1_ioctr2fsm => ( ioctr2fsm_sel0_isr => outputbuffer_0.ioctr2fsm_sel0_isr
                 , ioctr2fsm_sel1_interrupt => false
                 , ioctr2fsm_sel2_cpu_stop => true ) ) when ioctrstate'(wait_for_iwr),
                 ( tup2_sel0_tup3 => ( tup3_sel0_ioctrstate => capp_arg
                 , tup3_sel1_ioctrlregisters => ( ioctrlregisters_sel0_isr_t => registers.ioctrlregisters_sel0_isr_t
                 , ioctrlregisters_sel1_detect => registers.ioctrlregisters_sel1_detect
                 , ioctrlregisters_sel2_detect_prev => registers.ioctrlregisters_sel2_detect_prev
                 , ioctrlregisters_sel3_edge => false )
                 , tup3_sel2_ioctr2fsm => ( ioctr2fsm_sel0_isr => outputbuffer_0.ioctr2fsm_sel0_isr
                 , ioctr2fsm_sel1_interrupt => false
                 , ioctr2fsm_sel2_cpu_stop => false ) )
                 , tup2_sel1_ioctr2fsm => ( ioctr2fsm_sel0_isr => outputbuffer_0.ioctr2fsm_sel0_isr
                 , ioctr2fsm_sel1_interrupt => false
                 , ioctr2fsm_sel2_cpu_stop => false ) ) when ioctrstate'(edge_detect),
                 ( tup2_sel0_tup3 => ( tup3_sel0_ioctrstate => ioctrstate'(edge_decide)
                 , tup3_sel1_ioctrlregisters => ( ioctrlregisters_sel0_isr_t => isr_new
                 , ioctrlregisters_sel1_detect => registers.ioctrlregisters_sel1_detect
                 , ioctrlregisters_sel2_detect_prev => registers.ioctrlregisters_sel2_detect_prev
                 , ioctrlregisters_sel3_edge => isr_new > std_logic_vector'(x"00") )
                 , tup3_sel2_ioctr2fsm => ( ioctr2fsm_sel0_isr => outputbuffer_0.ioctr2fsm_sel0_isr
                 , ioctr2fsm_sel1_interrupt => false
                 , ioctr2fsm_sel2_cpu_stop => false ) )
                 , tup2_sel1_ioctr2fsm => ( ioctr2fsm_sel0_isr => outputbuffer_0.ioctr2fsm_sel0_isr
                 , ioctr2fsm_sel1_interrupt => false
                 , ioctr2fsm_sel2_cpu_stop => false ) ) when ioctrstate'(edge_detect_dir),
                 ( tup2_sel0_tup3 => ( tup3_sel0_ioctrstate => ccase_alt_0
                 , tup3_sel1_ioctrlregisters => ( ioctrlregisters_sel0_isr_t => registers.ioctrlregisters_sel0_isr_t
                 , ioctrlregisters_sel1_detect => registers.ioctrlregisters_sel1_detect
                 , ioctrlregisters_sel2_detect_prev => registers.ioctrlregisters_sel1_detect
                 , ioctrlregisters_sel3_edge => registers.ioctrlregisters_sel3_edge )
                 , tup3_sel2_ioctr2fsm => ( ioctr2fsm_sel0_isr => outputbuffer_0.ioctr2fsm_sel0_isr
                 , ioctr2fsm_sel1_interrupt => outputbuffer_0.ioctr2fsm_sel1_interrupt
                 , ioctr2fsm_sel2_cpu_stop => false ) )
                 , tup2_sel1_ioctr2fsm => ( ioctr2fsm_sel0_isr => outputbuffer_0.ioctr2fsm_sel0_isr
                 , ioctr2fsm_sel1_interrupt => outputbuffer_0.ioctr2fsm_sel1_interrupt
                 , ioctr2fsm_sel2_cpu_stop => false ) ) when ioctrstate'(edge_decide),
                 ( tup2_sel0_tup3 => ( tup3_sel0_ioctrstate => ioctrstate'(resync)
                 , tup3_sel1_ioctrlregisters => registers
                 , tup3_sel2_ioctr2fsm => outputbuffer )
                 , tup2_sel1_ioctr2fsm => outputbuffer ) when ioctrstate'(leave),
                 ( tup2_sel0_tup3 => ( tup3_sel0_ioctrstate => ioctrstate'(reset_ioctr)
                 , tup3_sel1_ioctrlregisters => registers
                 , tup3_sel2_ioctr2fsm => outputbuffer )
                 , tup2_sel1_ioctr2fsm => outputbuffer ) when others;

  state <= cds_app_arg.tup3_sel0_ioctrstate;

  outputbuffer <= ( ioctr2fsm_sel0_isr => registers.ioctrlregisters_sel0_isr_t
                  , ioctr2fsm_sel1_interrupt => true
                  , ioctr2fsm_sel2_cpu_stop => true );

  ccase_alt_selection_2 <= registers.ioctrlregisters_sel3_edge;

  ccase_alt_0 <= ioctrstate'(leave) when ccase_alt_selection_2 else
                 ioctrstate'(edge_detect);

  isr_new <= ((registers.ioctrlregisters_sel1_detect and (not registers.ioctrlregisters_sel2_detect_prev)) and eta.fsm2ioctr_sel1_icr) or (((not registers.ioctrlregisters_sel1_detect) and registers.ioctrlregisters_sel2_detect_prev) and (not eta.fsm2ioctr_sel1_icr));

  capp_arg_selection_res <= capp_arg_0 = registers.ioctrlregisters_sel2_detect_prev;

  capp_arg <= ioctrstate'(edge_detect) when capp_arg_selection_res else
              ioctrstate'(edge_detect_dir);

  registers <= cds_app_arg.tup3_sel1_ioctrlregisters;

  capp_arg_0 <= IOR_in and eta.fsm2ioctr_sel0_iwr;

  ccase_alt_selection_5 <= eta.fsm2ioctr_sel2_interrupt_block_0;

  ccase_alt_1 <= ioctrstate'(edge_detect) when ccase_alt_selection_5 else
                 ioctrstate'(wait_for_iwr);

  outputbuffer_0 <= cds_app_arg.tup3_sel2_ioctr2fsm;

  result <= ccase_alt.tup2_sel1_ioctr2fsm;

  capp_arg_selection_2 <= result.ioctr2fsm_sel1_interrupt;

  capp_arg_1 <= std_logic_vector'("1") when capp_arg_selection_2 else
                std_logic_vector'("0");

  capp_arg_selection_5 <= result.ioctr2fsm_sel2_cpu_stop;

  capp_arg_2 <= std_logic_vector'("1") when capp_arg_selection_5 else
                std_logic_vector'("0");

  r_out <= ( tup3_0_sel0_std_logic_vector => result.ioctr2fsm_sel0_isr
           , tup3_0_sel1_std_logic_0 => capp_arg_1(0)
           , tup3_0_sel2_std_logic_1 => capp_arg_2(0) );

  out_ISR <= r_out.tup3_0_sel0_std_logic_vector;

  out_INTERRUPT <= r_out.tup3_0_sel1_std_logic_0;

  out_CPU_STOP <= r_out.tup3_0_sel2_std_logic_1;


end;

