-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FSM_types.all;

entity FSM is
  port(-- clock
       CLK                        : in FSM_types.clk_xilinxsystem;
       -- reset
       RST                        : in FSM_types.rst_xilinxsystem;
       -- enable
       EN                         : in FSM_types.en_xilinxsystem;
       in_mem_data_rd             : in std_logic_vector(15 downto 0);
       in_ioctr_isr               : in std_logic_vector(7 downto 0);
       in_ioctr_interrupt         : in boolean;
       in_ioctr_cpu_stop          : in boolean;
       in_alu_data_res            : in signed(15 downto 0);
       in_alu_cmp                 : in std_logic_vector(1 downto 0);
       in_alu_overflow            : in boolean;
       in_iobuf_data              : in std_logic_vector(7 downto 0);
       out_mem_address            : out std_logic_vector(15 downto 0);
       out_mem_data_wr            : out std_logic_vector(15 downto 0);
       out_mem_wren               : out boolean;
       out_mem_rden               : out boolean;
       out_ioctr_iwr              : out std_logic_vector(7 downto 0);
       out_ioctr_icr              : out std_logic_vector(7 downto 0);
       out_ioctr_interrupt_block  : out boolean;
       out_alu_mcr                : out std_logic_vector(3 downto 0);
       out_alu_mem_a              : out signed(15 downto 0);
       out_alu_mem_b              : out signed(15 downto 0);
       out_alu_mem_mem_b          : out signed(15 downto 0);
       out_alu_pc                 : out std_logic_vector(15 downto 0);
       out_iobuf_dataout          : out std_logic_vector(7 downto 0);
       out_iobuf_oe               : out std_logic_vector(7 downto 0);
       out_clock_speed            : out std_logic_vector(7 downto 0);
       out_status_status          : out std_logic_vector(7 downto 0);
       out_status_cpu_stop_status : out boolean);
end;

architecture structural of FSM is
  -- src\CyclicAccurate\Fsm.hs:(246,1)-(250,40)
  signal cds_app_arg                               : FSM_types.fsminternalstate := ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
, fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => std_logic_vector'(x"0000")
, fsmregisters_sel1_pci_new => std_logic_vector'(x"0000")
, fsmregisters_sel2_pcinewp => std_logic_vector'(x"0000")
, fsmregisters_sel3_ai => std_logic_vector'(x"0000")
, fsmregisters_sel4_bi => std_logic_vector'(x"0000")
, fsmregisters_sel5_ci => std_logic_vector'(x"0000")
, fsmregisters_sel6_di => std_logic_vector'(x"0000")
, fsmregisters_sel7_ei => std_logic_vector'(x"0000")
, fsmregisters_sel8_fi => std_logic_vector'(x"0000")
, fsmregisters_sel9_mcri => instruction'(pcs)
, fsmregisters_sel10_chri => std_logic_vector'(x"00")
, fsmregisters_sel11_iwri => std_logic_vector'(x"00")
, fsmregisters_sel12_icri => std_logic_vector'(x"00")
, fsmregisters_sel13_csri => std_logic_vector'(x"00")
, fsmregisters_sel14_isri => std_logic_vector'(x"00")
, fsmregisters_sel15_idri => std_logic_vector'(x"00")
, fsmregisters_sel16_iori => std_logic_vector'(x"00")
, fsmregisters_sel17_isri_new => std_logic_vector'(x"00")
, fsmregisters_sel18_alu_data_i => to_signed(0,16)
, fsmregisters_sel19_f_mode_offset => to_unsigned(0,16)
, fsmregisters_sel20_f_mode => false )
, fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0000")
, fsm2mem_sel1_data_wr => std_logic_vector'(x"0000")
, fsm2mem_sel2_wren => false
, fsm2mem_sel3_rden => false )
, fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => std_logic_vector'(x"00")
, fsm2ioctr_sel1_icr => std_logic_vector'(x"00")
, fsm2ioctr_sel2_interrupt_block => false )
, fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => instruction'(pcs)
, fsm2alu_sel1_mem_a => to_signed(0,16)
, fsm2alu_sel2_mem_b => to_signed(0,16)
, fsm2alu_sel3_mem_mem_b => to_signed(0,16)
, fsm2alu_sel4_pc_0 => std_logic_vector'(x"0000") )
, fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => std_logic_vector'(x"00")
, fsm2iobuf_sel1_oe => std_logic_vector'(x"00") )
, fsmoutput_sel4_clockspeedoutput => std_logic_vector'(x"00")
, fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => std_logic_vector'(x"00")
, fsm2computerstatus_sel1_cpu_stop_status => false ) ) );
  signal result                                    : FSM_types.tup2;
  signal result_0                                  : std_logic_vector(3 downto 0);
  signal ccase_alt                                 : FSM_types.fsmstate;
  signal ccase_scrut                               : signed(63 downto 0);
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal internalregisters                         : FSM_types.fsmregisters;
  signal result_1                                  : FSM_types.tup3;
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal cds_app_arg_0                             : FSM_types.fsmstate;
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal chr_new                                   : std_logic_vector(7 downto 0);
  signal result_2                                  : FSM_types.fsmregisters;
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal cinternalregisters_case_alt               : FSM_types.fsmregisters;
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal cinternalregisters_app_arg                : std_logic_vector(7 downto 0);
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal internalregisters_0                       : std_logic_vector(15 downto 0);
  signal ccase_alt_0                               : FSM_types.fsmstate;
  signal ccase_alt_1                               : FSM_types.fsmstate;
  signal capp_arg                                  : unsigned(15 downto 0);
  signal capp_arg_0                                : unsigned(15 downto 0);
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal coutputregisters_case_alt                 : signed(15 downto 0);
  signal capp_arg_1                                : FSM_types.fsmstate;
  signal capp_arg_2                                : std_logic_vector(15 downto 0);
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal coutputregisters_app_arg                  : std_logic_vector(15 downto 0);
  signal ccase_alt_2                               : FSM_types.fsmstate;
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal cinternalregisters_case_alt_0             : std_logic_vector(15 downto 0);
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal coutputregisters_app_arg_0                : std_logic_vector(15 downto 0);
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal coutputregisters_app_arg_1                : std_logic_vector(15 downto 0);
  signal ccase_alt_3                               : FSM_types.fsmstate;
  signal ccase_alt_4                               : FSM_types.fsmstate;
  signal ccase_alt_5                               : FSM_types.fsmstate;
  signal result_3                                  : FSM_types.fsmregisters;
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal cdi_cached_case_alt                       : unsigned(15 downto 0);
  signal ccase_alt_6                               : FSM_types.fsmstate;
  signal ccase_alt_7                               : FSM_types.fsmstate;
  signal result_4                                  : FSM_types.fsmregisters;
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal cinternalregisters_app_arg_0              : std_logic_vector(7 downto 0);
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal alu_result                                : std_logic_vector(15 downto 0);
  -- src\CyclicAccurate\Fsm.hs:(258,1)-(263,63)
  signal cai_cached_case_alt                       : unsigned(15 downto 0);
  signal cencodecompareresultout                   : std_logic_vector(2 downto 0);
  signal cdecodeinstructionout                     : FSM_types.instruction;
  signal cdecodeinstructionout_app_arg             : std_logic_vector(15 downto 0);
  signal r_in                                      : FSM_types.fsminput;
  signal result_selection_1                        : FSM_types.fsmstate;
  signal result_selection_5                        : boolean;
  signal cdtt_rhs_2                                : FSM_types.instruction;
  signal cinternalregisters_case_alt_selection_2   : std_logic_vector(15 downto 0);
  signal ccase_alt_selection_res                   : boolean;
  signal ccase_alt_selection_res_0                 : boolean;
  signal capp_arg_selection_res                    : boolean;
  signal ccase_alt_selection_5                     : FSM_types.instruction;
  signal cinternalregisters_case_alt_selection_res : boolean;
  signal ccase_alt_selection_9                     : boolean;
  signal ccase_alt_selection_12                    : std_logic_vector(7 downto 0);
  signal ccase_alt_selection_16                    : std_logic_vector(7 downto 0);
  signal cencodecompareresultout_selection_2       : FSM_types.compareresult;
  signal cdecodeinstructionout_app_arg_selection_1 : FSM_types.fsmstate;
  signal r_out                                     : FSM_types.fsmoutput;
  signal out_mem                                   : FSM_types.fsm2mem;
  signal out_ioctr                                 : FSM_types.fsm2ioctr;
  signal out_alu                                   : FSM_types.fsm2alu;
  signal out_alu_mcr_0                             : FSM_types.instruction;
  signal out_iobuf                                 : FSM_types.fsm2iobuf;
  signal out_status                                : FSM_types.fsm2computerstatus;

begin
  r_in <= ( fsminput_sel0_meminput => in_mem_data_rd
          , fsminput_sel1_ioctrinput => ( ioctr2fsm_sel0_isr => in_ioctr_isr
          , ioctr2fsm_sel1_interrupt => in_ioctr_interrupt
          , ioctr2fsm_sel2_cpu_stop => in_ioctr_cpu_stop )
          , fsminput_sel2_aluinput => ( alu2fsm_sel0_data_res => in_alu_data_res
          , alu2fsm_sel1_cmp => FSM_types.compareresult'(FSM_types.fromSLV(in_alu_cmp))
          , alu2fsm_sel2_overflow => in_alu_overflow )
          , fsminput_sel3_iobufinput => in_iobuf_data );

  -- register begin
  cds_app_arg_register : process(CLK)
  begin
    if rising_edge(CLK) then
      if RST =  '1'  then
        cds_app_arg <= ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
  , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => std_logic_vector'(x"0000")
  , fsmregisters_sel1_pci_new => std_logic_vector'(x"0000")
  , fsmregisters_sel2_pcinewp => std_logic_vector'(x"0000")
  , fsmregisters_sel3_ai => std_logic_vector'(x"0000")
  , fsmregisters_sel4_bi => std_logic_vector'(x"0000")
  , fsmregisters_sel5_ci => std_logic_vector'(x"0000")
  , fsmregisters_sel6_di => std_logic_vector'(x"0000")
  , fsmregisters_sel7_ei => std_logic_vector'(x"0000")
  , fsmregisters_sel8_fi => std_logic_vector'(x"0000")
  , fsmregisters_sel9_mcri => instruction'(pcs)
  , fsmregisters_sel10_chri => std_logic_vector'(x"00")
  , fsmregisters_sel11_iwri => std_logic_vector'(x"00")
  , fsmregisters_sel12_icri => std_logic_vector'(x"00")
  , fsmregisters_sel13_csri => std_logic_vector'(x"00")
  , fsmregisters_sel14_isri => std_logic_vector'(x"00")
  , fsmregisters_sel15_idri => std_logic_vector'(x"00")
  , fsmregisters_sel16_iori => std_logic_vector'(x"00")
  , fsmregisters_sel17_isri_new => std_logic_vector'(x"00")
  , fsmregisters_sel18_alu_data_i => to_signed(0,16)
  , fsmregisters_sel19_f_mode_offset => to_unsigned(0,16)
  , fsmregisters_sel20_f_mode => false )
  , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0000")
  , fsm2mem_sel1_data_wr => std_logic_vector'(x"0000")
  , fsm2mem_sel2_wren => false
  , fsm2mem_sel3_rden => false )
  , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => std_logic_vector'(x"00")
  , fsm2ioctr_sel1_icr => std_logic_vector'(x"00")
  , fsm2ioctr_sel2_interrupt_block => false )
  , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => instruction'(pcs)
  , fsm2alu_sel1_mem_a => to_signed(0,16)
  , fsm2alu_sel2_mem_b => to_signed(0,16)
  , fsm2alu_sel3_mem_mem_b => to_signed(0,16)
  , fsm2alu_sel4_pc_0 => std_logic_vector'(x"0000") )
  , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => std_logic_vector'(x"00")
  , fsm2iobuf_sel1_oe => std_logic_vector'(x"00") )
  , fsmoutput_sel4_clockspeedoutput => std_logic_vector'(x"00")
  , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => std_logic_vector'(x"00")
  , fsm2computerstatus_sel1_cpu_stop_status => false ) ) );
      elsif EN then
        cds_app_arg <= result.tup2_sel0_fsminternalstate;
      end if;
    end if;
  end process;
  -- register end

  r_out <= result.tup2_sel1_fsmoutput;

  result_selection_1 <= cds_app_arg.fsminternalstate_sel0_cyclestate;

  with (result_selection_1) select
    result <= ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => ccase_alt_6
              , fsminternalstate_sel1_internalregisters_2 => result_4
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => result_4.fsmregisters_sel11_iwri
              , fsm2ioctr_sel1_icr => result_4.fsmregisters_sel12_icri
              , fsm2ioctr_sel2_interrupt_block => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel2_interrupt_block )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => result_4.fsmregisters_sel16_iori
              , fsm2iobuf_sel1_oe => result_4.fsmregisters_sel15_idri )
              , fsmoutput_sel4_clockspeedoutput => result_4.fsmregisters_sel13_csri
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => result_4.fsmregisters_sel10_chri
              , fsm2computerstatus_sel1_cpu_stop_status => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput.fsm2computerstatus_sel1_cpu_stop_status ) ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => result_4.fsmregisters_sel11_iwri
              , fsm2ioctr_sel1_icr => result_4.fsmregisters_sel12_icri
              , fsm2ioctr_sel2_interrupt_block => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel2_interrupt_block )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => result_4.fsmregisters_sel16_iori
              , fsm2iobuf_sel1_oe => result_4.fsmregisters_sel15_idri )
              , fsmoutput_sel4_clockspeedoutput => result_4.fsmregisters_sel13_csri
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => result_4.fsmregisters_sel10_chri
              , fsm2computerstatus_sel1_cpu_stop_status => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput.fsm2computerstatus_sel1_cpu_stop_status ) ) ) when fsmstate'(tta_memr_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => ccase_alt_4
              , fsminternalstate_sel1_internalregisters_2 => result_3
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => result_3.fsmregisters_sel11_iwri
              , fsm2ioctr_sel1_icr => result_3.fsmregisters_sel12_icri
              , fsm2ioctr_sel2_interrupt_block => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel2_interrupt_block )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => result_3.fsmregisters_sel16_iori
              , fsm2iobuf_sel1_oe => result_3.fsmregisters_sel15_idri )
              , fsmoutput_sel4_clockspeedoutput => result_3.fsmregisters_sel13_csri
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => result_3.fsmregisters_sel10_chri
              , fsm2computerstatus_sel1_cpu_stop_status => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput.fsm2computerstatus_sel1_cpu_stop_status ) ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => result_3.fsmregisters_sel11_iwri
              , fsm2ioctr_sel1_icr => result_3.fsmregisters_sel12_icri
              , fsm2ioctr_sel2_interrupt_block => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel2_interrupt_block )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => result_3.fsmregisters_sel16_iori
              , fsm2iobuf_sel1_oe => result_3.fsmregisters_sel15_idri )
              , fsmoutput_sel4_clockspeedoutput => result_3.fsmregisters_sel13_csri
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => result_3.fsmregisters_sel10_chri
              , fsm2computerstatus_sel1_cpu_stop_status => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput.fsm2computerstatus_sel1_cpu_stop_status ) ) ) when fsmstate'(tta_mem_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(fetch_a)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cdecodeinstructionout
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cdecodeinstructionout
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cdecodeinstructionout
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_0_save_mcr),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(fetch_0_save_mcr)
              , fsminternalstate_sel1_internalregisters_2 => cds_app_arg.fsminternalstate_sel1_internalregisters_2
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_mcr),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(iwr_reset)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(isr_update),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => std_logic_vector'(x"00")
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel2_interrupt_block )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel2_interrupt_block )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(iwr_reset),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
              , fsminternalstate_sel1_internalregisters_2 => cds_app_arg.fsminternalstate_sel1_internalregisters_2
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel0_iwr
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => true )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel0_iwr
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => true )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(iwr_int_set),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => ccase_alt_3
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => r_in.fsminput_sel1_ioctrinput.ioctr2fsm_sel0_isr
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel0_iwr
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => false )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel0_iwr
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => false )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(wait_for_interrupt),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(isr_update)
              , fsminternalstate_sel1_internalregisters_2 => cds_app_arg.fsminternalstate_sel1_internalregisters_2
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0005")
              , fsm2mem_sel1_data_wr => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"00")) & std_logic_vector'(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new))
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel0_iwr
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => false )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0005")
              , fsm2mem_sel1_data_wr => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"00")) & std_logic_vector'(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new))
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel0_iwr
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => false )
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(isr_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(fetch_b_save_a)
              , fsminternalstate_sel1_internalregisters_2 => cds_app_arg.fsminternalstate_sel1_internalregisters_2
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => coutputregisters_app_arg_0
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => coutputregisters_app_arg_0
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_a),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsm2mem_sel1_data_wr => alu_result
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsm2mem_sel1_data_wr => alu_result
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(tta_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => ccase_alt_2
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cinternalregisters_case_alt_0
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsm2mem_sel1_data_wr => std_logic_vector(r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res)
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsm2mem_sel1_data_wr => std_logic_vector(r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res)
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(leq_pc_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(tta_mem_write_back)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => std_logic_vector(unsigned(coutputregisters_app_arg_0) + unsigned(std_logic_vector'(x"0003")))
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsm2mem_sel1_data_wr => coutputregisters_app_arg
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsm2mem_sel1_data_wr => coutputregisters_app_arg
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(mem_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(tta_memr_write_back)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => std_logic_vector(unsigned(coutputregisters_app_arg_0) + unsigned(std_logic_vector'(x"0003")))
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsm2mem_sel1_data_wr => coutputregisters_app_arg
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsm2mem_sel1_data_wr => coutputregisters_app_arg
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(memr_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => capp_arg_2
              , fsmregisters_sel2_pcinewp => alu_result
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(pcs_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => std_logic_vector'(x"0000")
              , fsmregisters_sel1_pci_new => std_logic_vector'(x"0000")
              , fsmregisters_sel2_pcinewp => std_logic_vector'(x"0000")
              , fsmregisters_sel3_ai => std_logic_vector'(x"0000")
              , fsmregisters_sel4_bi => std_logic_vector'(x"0000")
              , fsmregisters_sel5_ci => std_logic_vector'(x"0000")
              , fsmregisters_sel6_di => std_logic_vector'(x"0000")
              , fsmregisters_sel7_ei => std_logic_vector'(x"0000")
              , fsmregisters_sel8_fi => std_logic_vector'(x"0000")
              , fsmregisters_sel9_mcri => instruction'(pcs)
              , fsmregisters_sel10_chri => std_logic_vector'(x"00")
              , fsmregisters_sel11_iwri => std_logic_vector'(x"00")
              , fsmregisters_sel12_icri => std_logic_vector'(x"00")
              , fsmregisters_sel13_csri => std_logic_vector'(x"00")
              , fsmregisters_sel14_isri => std_logic_vector'(x"00")
              , fsmregisters_sel15_idri => std_logic_vector'(x"00")
              , fsmregisters_sel16_iori => std_logic_vector'(x"00")
              , fsmregisters_sel17_isri_new => std_logic_vector'(x"00")
              , fsmregisters_sel18_alu_data_i => to_signed(0,16)
              , fsmregisters_sel19_f_mode_offset => to_unsigned(0,16)
              , fsmregisters_sel20_f_mode => false )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0000")
              , fsm2mem_sel1_data_wr => std_logic_vector'(x"0000")
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => std_logic_vector'(x"00")
              , fsm2ioctr_sel1_icr => std_logic_vector'(x"00")
              , fsm2ioctr_sel2_interrupt_block => false )
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => instruction'(pcs)
              , fsm2alu_sel1_mem_a => to_signed(0,16)
              , fsm2alu_sel2_mem_b => to_signed(0,16)
              , fsm2alu_sel3_mem_mem_b => to_signed(0,16)
              , fsm2alu_sel4_pc_0 => std_logic_vector'(x"0000") )
              , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => std_logic_vector'(x"00")
              , fsm2iobuf_sel1_oe => std_logic_vector'(x"00") )
              , fsmoutput_sel4_clockspeedoutput => std_logic_vector'(x"00")
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => std_logic_vector'(x"00")
              , fsm2computerstatus_sel1_cpu_stop_status => false ) ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0000")
              , fsm2mem_sel1_data_wr => std_logic_vector'(x"0000")
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => std_logic_vector'(x"00")
              , fsm2ioctr_sel1_icr => std_logic_vector'(x"00")
              , fsm2ioctr_sel2_interrupt_block => false )
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => instruction'(pcs)
              , fsm2alu_sel1_mem_a => to_signed(0,16)
              , fsm2alu_sel2_mem_b => to_signed(0,16)
              , fsm2alu_sel3_mem_mem_b => to_signed(0,16)
              , fsm2alu_sel4_pc_0 => std_logic_vector'(x"0000") )
              , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => std_logic_vector'(x"00")
              , fsm2iobuf_sel1_oe => std_logic_vector'(x"00") )
              , fsmoutput_sel4_clockspeedoutput => std_logic_vector'(x"00")
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => std_logic_vector'(x"00")
              , fsm2computerstatus_sel1_cpu_stop_status => false ) ) ) when fsmstate'(reset),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => capp_arg_1
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0007")
              , fsm2mem_sel1_data_wr => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"00")) & std_logic_vector'(r_in.fsminput_sel3_iobufinput))
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel0_iwr
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => false )
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel0_mcr
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0007")
              , fsm2mem_sel1_data_wr => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"00")) & std_logic_vector'(r_in.fsminput_sel3_iobufinput))
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel0_iwr
              , fsm2ioctr_sel1_icr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel1_icr
              , fsm2ioctr_sel2_interrupt_block => false )
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel0_mcr
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(cpu_cycle_start),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(fetch_c_save_b)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => r_in.fsminput_sel0_meminput
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector(unsigned(coutputregisters_app_arg_0) + unsigned(std_logic_vector'(x"0001")))
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector(unsigned(coutputregisters_app_arg_0) + unsigned(std_logic_vector'(x"0001")))
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_b_save_a),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(fetch_d_save_c)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => r_in.fsminput_sel0_meminput
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector(unsigned(coutputregisters_app_arg_0) + unsigned(std_logic_vector'(x"0002")))
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector(unsigned(coutputregisters_app_arg_0) + unsigned(std_logic_vector'(x"0002")))
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_c_save_b),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(fetch_e_save_d)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => r_in.fsminput_sel0_meminput
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_d_save_c),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(fetch_f_save_e)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => r_in.fsminput_sel0_meminput
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel0_mcr
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => coutputregisters_case_alt
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel0_mcr
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => coutputregisters_case_alt
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_e_save_d),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(fetch_0_save_f)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => r_in.fsminput_sel0_meminput
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel0_mcr
              , fsm2alu_sel1_mem_a => coutputregisters_case_alt
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => true )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel0_mcr
              , fsm2alu_sel1_mem_a => coutputregisters_case_alt
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_f_save_e),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => ccase_alt_0
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => r_in.fsminput_sel0_meminput
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0000")
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel0_mcr
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => coutputregisters_case_alt
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0000")
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel0_mcr
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => coutputregisters_case_alt
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(fetch_0_save_f),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
              , fsminternalstate_sel1_internalregisters_2 => result_2
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => result_2.fsmregisters_sel9_mcri
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => ( fsm2alu_sel0_mcr => result_2.fsmregisters_sel9_mcri
              , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
              , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
              , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
              , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 )
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(bootstrap_ctrl),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => result_1.tup3_sel0_fsmstate
              , fsminternalstate_sel1_internalregisters_2 => internalregisters
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => internalregisters.fsmregisters_sel11_iwri
              , fsm2ioctr_sel1_icr => internalregisters.fsmregisters_sel12_icri
              , fsm2ioctr_sel2_interrupt_block => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel2_interrupt_block )
              , fsmoutput_sel2_aluoutput => result_1.tup3_sel2_fsm2alu
              , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => internalregisters.fsmregisters_sel16_iori
              , fsm2iobuf_sel1_oe => internalregisters.fsmregisters_sel15_idri )
              , fsmoutput_sel4_clockspeedoutput => internalregisters.fsmregisters_sel13_csri
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => internalregisters.fsmregisters_sel10_chri
              , fsm2computerstatus_sel1_cpu_stop_status => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput.fsm2computerstatus_sel1_cpu_stop_status ) ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput
              , fsmoutput_sel1_ioctroutput => ( fsm2ioctr_sel0_iwr => internalregisters.fsmregisters_sel11_iwri
              , fsm2ioctr_sel1_icr => internalregisters.fsmregisters_sel12_icri
              , fsm2ioctr_sel2_interrupt_block => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput.fsm2ioctr_sel2_interrupt_block )
              , fsmoutput_sel2_aluoutput => result_1.tup3_sel2_fsm2alu
              , fsmoutput_sel3_iobufoutput => ( fsm2iobuf_sel0_dataout => internalregisters.fsmregisters_sel16_iori
              , fsm2iobuf_sel1_oe => internalregisters.fsmregisters_sel15_idri )
              , fsmoutput_sel4_clockspeedoutput => internalregisters.fsmregisters_sel13_csri
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => internalregisters.fsmregisters_sel10_chri
              , fsm2computerstatus_sel1_cpu_stop_status => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput.fsm2computerstatus_sel1_cpu_stop_status ) ) ) when fsmstate'(tta_ctrl),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => ccase_alt
              , fsminternalstate_sel1_internalregisters_2 => cds_app_arg.fsminternalstate_sel1_internalregisters_2
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(exec_ctrl),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_cycle_start)
              , fsminternalstate_sel1_internalregisters_2 => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
              , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
              , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
              , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
              , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
              , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
              , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
              , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
              , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
              , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
              , fsmregisters_sel10_chri => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"0")) & std_logic_vector'(result_0))
              , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
              , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
              , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
              , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
              , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
              , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
              , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
              , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
              , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
              , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0001")
              , fsm2mem_sel1_data_wr => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"000")) & std_logic_vector'(result_0))
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0001")
              , fsm2mem_sel1_data_wr => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"000")) & std_logic_vector'(result_0))
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when fsmstate'(leq_flags_write_back),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(cpu_halt)
              , fsminternalstate_sel1_internalregisters_2 => cds_app_arg.fsminternalstate_sel1_internalregisters_2
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput.fsm2computerstatus_sel0_status
              , fsm2computerstatus_sel1_cpu_stop_status => true ) ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel0_address
              , fsm2mem_sel1_data_wr => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel0_memoutput.fsm2mem_sel1_data_wr
              , fsm2mem_sel2_wren => false
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => ( fsm2computerstatus_sel0_status => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput.fsm2computerstatus_sel0_status
              , fsm2computerstatus_sel1_cpu_stop_status => true ) ) ) when fsmstate'(cpu_halt),
              ( tup2_sel0_fsminternalstate => ( fsminternalstate_sel0_cyclestate => fsmstate'(iwr_int_set)
              , fsminternalstate_sel1_internalregisters_2 => cds_app_arg.fsminternalstate_sel1_internalregisters_2
              , fsminternalstate_sel2_outputregisters => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0002")
              , fsm2mem_sel1_data_wr => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"00")) & std_logic_vector'(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri))
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) )
              , tup2_sel1_fsmoutput => ( fsmoutput_sel0_memoutput => ( fsm2mem_sel0_address => std_logic_vector'(x"0002")
              , fsm2mem_sel1_data_wr => std_logic_vector'(std_logic_vector'(std_logic_vector'(x"00")) & std_logic_vector'(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri))
              , fsm2mem_sel2_wren => true
              , fsm2mem_sel3_rden => false )
              , fsmoutput_sel1_ioctroutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel1_ioctroutput
              , fsmoutput_sel2_aluoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput
              , fsmoutput_sel3_iobufoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel3_iobufoutput
              , fsmoutput_sel4_clockspeedoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel4_clockspeedoutput
              , fsmoutput_sel5_computerstatusoutput => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel5_computerstatusoutput ) ) when others;

  result_selection_5 <= r_in.fsminput_sel2_aluinput.alu2fsm_sel2_overflow;

  result_0 <= std_logic_vector'(std_logic_vector'(cencodecompareresultout) & std_logic_vector'(std_logic_vector'("1"))) when result_selection_5 else
              std_logic_vector'(std_logic_vector'(cencodecompareresultout) & std_logic_vector'(std_logic_vector'("0")));

  with (ccase_scrut) select
    ccase_alt <= fsmstate'(mem_write_back) when x"000000000000000A",
                 fsmstate'(memr_write_back) when x"000000000000000B",
                 fsmstate'(pcs_write_back) when x"000000000000000C",
                 fsmstate'(leq_pc_write_back) when others;

  cdtt_rhs_2 <= cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri;

  ccase_scrut <= signed(std_logic_vector(resize(unsigned(FSM_types.toSLV(cdtt_rhs_2)),64)));

  internalregisters <= result_1.tup3_sel1_fsmregisters;

  with (capp_arg) select
    result_1 <= ( tup3_sel0_fsmstate => fsmstate'(tta_write_back)
                , tup3_sel1_fsmregisters => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cdecodeinstructionout
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
                , tup3_sel2_fsm2alu => ( fsm2alu_sel0_mcr => instruction'(movleq)
                , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
                , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
                , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
                , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 ) ) when x"0000",
                ( tup3_sel0_fsmstate => cds_app_arg_0
                , tup3_sel1_fsmregisters => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => chr_new
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
                , tup3_sel2_fsm2alu => ( fsm2alu_sel0_mcr => instruction'(movleq)
                , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
                , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
                , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
                , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 ) ) when x"0001",
                ( tup3_sel0_fsmstate => fsmstate'(iwr_int_trigger)
                , tup3_sel1_fsmregisters => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => chr_new
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
                , tup3_sel2_fsm2alu => ( fsm2alu_sel0_mcr => instruction'(movleq)
                , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
                , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
                , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
                , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 ) ) when x"0002",
                ( tup3_sel0_fsmstate => fsmstate'(tta_write_back)
                , tup3_sel1_fsmregisters => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => chr_new
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
                , tup3_sel2_fsm2alu => ( fsm2alu_sel0_mcr => instruction'(movleq)
                , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
                , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
                , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
                , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 ) ) when x"0003",
                ( tup3_sel0_fsmstate => fsmstate'(tta_write_back)
                , tup3_sel1_fsmregisters => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => chr_new
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
                , tup3_sel2_fsm2alu => ( fsm2alu_sel0_mcr => instruction'(movleq)
                , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
                , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
                , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
                , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 ) ) when x"0004",
                ( tup3_sel0_fsmstate => fsmstate'(cpu_cycle_start)
                , tup3_sel1_fsmregisters => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => std_logic_vector'(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci)
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
                , tup3_sel2_fsm2alu => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput ) when x"0005",
                ( tup3_sel0_fsmstate => fsmstate'(tta_write_back)
                , tup3_sel1_fsmregisters => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => chr_new
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori and chr_new
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
                , tup3_sel2_fsm2alu => ( fsm2alu_sel0_mcr => instruction'(movleq)
                , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
                , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
                , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
                , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 ) ) when x"0006",
                ( tup3_sel0_fsmstate => fsmstate'(tta_write_back)
                , tup3_sel1_fsmregisters => ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri and chr_new
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode )
                , tup3_sel2_fsm2alu => ( fsm2alu_sel0_mcr => instruction'(movleq)
                , fsm2alu_sel1_mem_a => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel1_mem_a
                , fsm2alu_sel2_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel2_mem_b
                , fsm2alu_sel3_mem_mem_b => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel3_mem_mem_b
                , fsm2alu_sel4_pc_0 => cds_app_arg.fsminternalstate_sel2_outputregisters.fsmoutput_sel2_aluoutput.fsm2alu_sel4_pc_0 ) ) when x"0007",
                FSM_types.tup3'( fsmstate'val(0)
              , FSM_types.fsmregisters'( std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , instruction'val(0)
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , signed'(0 to 15 => '-')
              , unsigned'(0 to 15 => '-')
              , true )
              , FSM_types.fsm2alu'( instruction'val(0)
              , signed'(0 to 15 => '-')
              , signed'(0 to 15 => '-')
              , signed'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-') ) ) when others;

  with (chr_new) select
    cds_app_arg_0 <= fsmstate'(cpu_halt) when x"FF",
                     fsmstate'(tta_write_back) when others;

  chr_new <= std_logic_vector(resize(unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei),8));

  with (capp_arg_0) select
    result_2 <= cinternalregisters_case_alt when x"0000",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => internalregisters_0
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cinternalregisters_app_arg
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0001",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => internalregisters_0
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cinternalregisters_app_arg
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0002",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => internalregisters_0
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cinternalregisters_app_arg
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0003",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => internalregisters_0
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cinternalregisters_app_arg
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0004",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => internalregisters_0
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cinternalregisters_app_arg
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0005",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => internalregisters_0
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cinternalregisters_app_arg
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori and cinternalregisters_app_arg
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0006",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => internalregisters_0
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri and cinternalregisters_app_arg
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0007",
                FSM_types.fsmregisters'( std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , std_logic_vector'(0 to 15 => '-')
              , instruction'val(0)
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , std_logic_vector'(0 to 7 => '-')
              , signed'(0 to 15 => '-')
              , unsigned'(0 to 15 => '-')
              , true ) when others;

  cinternalregisters_case_alt_selection_2 <= cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai;

  with (cinternalregisters_case_alt_selection_2) select
    cinternalregisters_case_alt <= ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                                   , fsmregisters_sel1_pci_new => internalregisters_0
                                   , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                                   , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                                   , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                                   , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                                   , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                                   , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                                   , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                                   , fsmregisters_sel9_mcri => cdecodeinstructionout
                                   , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                                   , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                                   , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                                   , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                                   , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                                   , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                                   , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                                   , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                                   , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                                   , fsmregisters_sel19_f_mode_offset => to_unsigned(1,16)
                                   , fsmregisters_sel20_f_mode => true ) when x"0000",
                                   ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                                   , fsmregisters_sel1_pci_new => internalregisters_0
                                   , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                                   , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                                   , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                                   , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                                   , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                                   , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                                   , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                                   , fsmregisters_sel9_mcri => cdecodeinstructionout
                                   , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                                   , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                                   , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                                   , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                                   , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                                   , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                                   , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                                   , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                                   , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                                   , fsmregisters_sel19_f_mode_offset => to_unsigned(0,16)
                                   , fsmregisters_sel20_f_mode => false ) when others;

  cinternalregisters_app_arg <= std_logic_vector(resize(unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai),8));

  internalregisters_0 <= std_logic_vector(unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci) + unsigned(std_logic_vector'(x"0001")));

  ccase_alt_selection_res <= capp_arg_0 < to_unsigned(8,16);

  ccase_alt_0 <= fsmstate'(bootstrap_ctrl) when ccase_alt_selection_res else
                 ccase_alt_1;

  ccase_alt_selection_res_0 <= capp_arg < to_unsigned(8,16);

  ccase_alt_1 <= fsmstate'(tta_ctrl) when ccase_alt_selection_res_0 else
                 fsmstate'(exec_ctrl);

  capp_arg <= unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi);

  capp_arg_0 <= unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci);

  coutputregisters_case_alt <= signed(r_in.fsminput_sel0_meminput);

  capp_arg_selection_res <= (not cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode) or (cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new < std_logic_vector'(x"0008"));

  capp_arg_1 <= fsmstate'(fetch_a) when capp_arg_selection_res else
                fsmstate'(fetch_mcr);

  with (alu_result) select
    capp_arg_2 <= cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci when x"0000",
                  alu_result when others;

  coutputregisters_app_arg <= std_logic_vector(r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res);

  ccase_alt_selection_5 <= cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri;

  with (ccase_alt_selection_5) select
    ccase_alt_2 <= fsmstate'(cpu_cycle_start) when instruction'(movleq),
                   fsmstate'(cpu_cycle_start) when instruction'(shlleq),
                   fsmstate'(cpu_cycle_start) when instruction'(shrleq),
                   fsmstate'(cpu_cycle_start) when instruction'(orleq),
                   fsmstate'(cpu_cycle_start) when instruction'(andleq),
                   fsmstate'(cpu_cycle_start) when instruction'(xorleq),
                   fsmstate'(cpu_cycle_start) when instruction'(xnorleq),
                   fsmstate'(cpu_cycle_start) when instruction'(pc),
                   fsmstate'(leq_flags_write_back) when others;

  cinternalregisters_case_alt_selection_res <= r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res <= to_signed(0,16);

  cinternalregisters_case_alt_0 <= cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci when cinternalregisters_case_alt_selection_res else
                                   std_logic_vector(unsigned((std_logic_vector(unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci) + unsigned(std_logic_vector'(x"0003"))))) + unsigned(coutputregisters_app_arg_1));

  coutputregisters_app_arg_0 <= std_logic_vector(unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci) + unsigned(coutputregisters_app_arg_1));

  coutputregisters_app_arg_1 <= std_logic_vector(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset);

  ccase_alt_selection_9 <= r_in.fsminput_sel1_ioctrinput.ioctr2fsm_sel1_interrupt;

  ccase_alt_3 <= fsmstate'(isr_write_back) when ccase_alt_selection_9 else
                 fsmstate'(wait_for_interrupt);

  ccase_alt_selection_12 <= result_3.fsmregisters_sel10_chri;

  with (ccase_alt_selection_12) select
    ccase_alt_4 <= fsmstate'(cpu_halt) when x"FF",
                   ccase_alt_5 when others;

  with (cdi_cached_case_alt) select
    ccase_alt_5 <= fsmstate'(iwr_int_trigger) when x"0002",
                   fsmstate'(cpu_cycle_start) when others;

  with (cdi_cached_case_alt) select
    result_3 <= ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cinternalregisters_app_arg_0
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0001",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cinternalregisters_app_arg_0
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0002",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cinternalregisters_app_arg_0
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0003",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cinternalregisters_app_arg_0
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0004",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cinternalregisters_app_arg_0
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0006",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cinternalregisters_app_arg_0
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0007",
                cds_app_arg.fsminternalstate_sel1_internalregisters_2 when others;

  cdi_cached_case_alt <= unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di);

  ccase_alt_selection_16 <= result_4.fsmregisters_sel10_chri;

  with (ccase_alt_selection_16) select
    ccase_alt_6 <= fsmstate'(cpu_halt) when x"FF",
                   ccase_alt_7 when others;

  with (cai_cached_case_alt) select
    ccase_alt_7 <= fsmstate'(iwr_int_trigger) when x"0002",
                   fsmstate'(cpu_cycle_start) when others;

  with (cai_cached_case_alt) select
    result_4 <= ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cinternalregisters_app_arg_0
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0001",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cinternalregisters_app_arg_0
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0002",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cinternalregisters_app_arg_0
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0003",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cinternalregisters_app_arg_0
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0004",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cinternalregisters_app_arg_0
                , fsmregisters_sel16_iori => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel16_iori
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0006",
                ( fsmregisters_sel0_pci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel0_pci
                , fsmregisters_sel1_pci_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel1_pci_new
                , fsmregisters_sel2_pcinewp => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel2_pcinewp
                , fsmregisters_sel3_ai => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai
                , fsmregisters_sel4_bi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel4_bi
                , fsmregisters_sel5_ci => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel5_ci
                , fsmregisters_sel6_di => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel6_di
                , fsmregisters_sel7_ei => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei
                , fsmregisters_sel8_fi => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel8_fi
                , fsmregisters_sel9_mcri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel9_mcri
                , fsmregisters_sel10_chri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel10_chri
                , fsmregisters_sel11_iwri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel11_iwri
                , fsmregisters_sel12_icri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel12_icri
                , fsmregisters_sel13_csri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel13_csri
                , fsmregisters_sel14_isri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel14_isri
                , fsmregisters_sel15_idri => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel15_idri
                , fsmregisters_sel16_iori => cinternalregisters_app_arg_0
                , fsmregisters_sel17_isri_new => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel17_isri_new
                , fsmregisters_sel18_alu_data_i => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel18_alu_data_i
                , fsmregisters_sel19_f_mode_offset => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel19_f_mode_offset
                , fsmregisters_sel20_f_mode => cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel20_f_mode ) when x"0007",
                cds_app_arg.fsminternalstate_sel1_internalregisters_2 when others;

  cinternalregisters_app_arg_0 <= std_logic_vector(resize(unsigned(alu_result),8));

  alu_result <= std_logic_vector(r_in.fsminput_sel2_aluinput.alu2fsm_sel0_data_res);

  cai_cached_case_alt <= unsigned(cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai);

  cencodecompareresultout_selection_2 <= r_in.fsminput_sel2_aluinput.alu2fsm_sel1_cmp;

  with (cencodecompareresultout_selection_2) select
    cencodecompareresultout <= std_logic_vector'("001") when compareresult'(cmp_b_bigger),
                               std_logic_vector'("010") when compareresult'(cmp_a_bigger),
                               std_logic_vector'("100") when compareresult'(cmp_ab_equal),
                               std_logic_vector'("000") when others;

  with (cdecodeinstructionout_app_arg) select
    cdecodeinstructionout <= instruction'(subleq) when x"00FF",
                             instruction'(movleq) when x"00EE",
                             instruction'(pc) when x"0033",
                             instruction'(mem) when x"0022",
                             instruction'(memr) when x"0011",
                             instruction'(pcs) when x"0000",
                             instruction'(addleq) when x"00CC",
                             instruction'(shlleq) when x"0099",
                             instruction'(shrleq) when x"0088",
                             instruction'(orleq) when x"0077",
                             instruction'(andleq) when x"0066",
                             instruction'(xorleq) when x"0055",
                             instruction'(xnorleq) when x"0044",
                             instruction'val(0) when others;

  cdecodeinstructionout_app_arg_selection_1 <= cds_app_arg.fsminternalstate_sel0_cyclestate;

  with (cdecodeinstructionout_app_arg_selection_1) select
    cdecodeinstructionout_app_arg <= r_in.fsminput_sel0_meminput when fsmstate'(fetch_0_save_mcr),
                                     cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel3_ai when fsmstate'(bootstrap_ctrl),
                                     cds_app_arg.fsminternalstate_sel1_internalregisters_2.fsmregisters_sel7_ei when others;

  out_mem <= r_out.fsmoutput_sel0_memoutput;

  out_ioctr <= r_out.fsmoutput_sel1_ioctroutput;

  out_alu <= r_out.fsmoutput_sel2_aluoutput;

  out_iobuf <= r_out.fsmoutput_sel3_iobufoutput;

  out_clock_speed <= r_out.fsmoutput_sel4_clockspeedoutput;

  out_status <= r_out.fsmoutput_sel5_computerstatusoutput;

  out_mem_address <= out_mem.fsm2mem_sel0_address;

  out_mem_data_wr <= out_mem.fsm2mem_sel1_data_wr;

  out_mem_wren <= out_mem.fsm2mem_sel2_wren;

  out_mem_rden <= out_mem.fsm2mem_sel3_rden;

  out_ioctr_iwr <= out_ioctr.fsm2ioctr_sel0_iwr;

  out_ioctr_icr <= out_ioctr.fsm2ioctr_sel1_icr;

  out_ioctr_interrupt_block <= out_ioctr.fsm2ioctr_sel2_interrupt_block;

  out_alu_mcr_0 <= out_alu.fsm2alu_sel0_mcr;

  out_alu_mem_a <= out_alu.fsm2alu_sel1_mem_a;

  out_alu_mem_b <= out_alu.fsm2alu_sel2_mem_b;

  out_alu_mem_mem_b <= out_alu.fsm2alu_sel3_mem_mem_b;

  out_alu_pc <= out_alu.fsm2alu_sel4_pc_0;

  out_alu_mcr <= FSM_types.toSLV(FSM_types.instruction'(out_alu_mcr_0));

  out_iobuf_dataout <= out_iobuf.fsm2iobuf_sel0_dataout;

  out_iobuf_oe <= out_iobuf.fsm2iobuf_sel1_oe;

  out_status_status <= out_status.fsm2computerstatus_sel0_status;

  out_status_cpu_stop_status <= out_status.fsm2computerstatus_sel1_cpu_stop_status;


end;

