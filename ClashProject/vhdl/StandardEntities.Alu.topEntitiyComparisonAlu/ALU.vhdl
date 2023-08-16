-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.ALU_types.all;

entity ALU is
  port(-- clock
       clk          : in ALU_types.clk_xilinxsystem;
       -- reset
       rst          : in ALU_types.rst_xilinxsystem;
       -- enable
       en           : in ALU_types.en_xilinxsystem;
       mcr          : in std_logic_vector(7 downto 0);
       pc           : in std_logic_vector(15 downto 0);
       mem_a        : in signed(15 downto 0);
       mem_b        : in signed(15 downto 0);
       mem_mem_b    : in signed(15 downto 0);
       out_overflow : out std_logic;
       out_cmp      : out std_logic_vector(2 downto 0);
       out_data     : out signed(15 downto 0));
end;

architecture structural of ALU is
  -- src\StandardEntities\Alu.hs:77:1-23
  signal cresult_app_arg         : ALU_types.instruction;
  -- src\StandardEntities\Alu.hs:77:1-23
  signal cresult_app_arg_0       : ALU_types.alu2fsm;
  signal ccase_alt               : std_logic;
  signal ccase_alt_0             : std_logic_vector(2 downto 0);
  -- src\StandardEntities\Alu.hs:77:1-23
  signal result                  : ALU_types.alu2fsm := ( alu2fsm_sel0_data_res => to_signed(0,16)
, alu2fsm_sel1_cmp => compareresult'(cmp_none)
, alu2fsm_sel2_overflow => false );
  signal cresult_app_arg_fun_arg : ALU_types.fsm2alu;
  signal ccase_alt_selection_1   : boolean;
  signal ccase_alt_selection_4   : ALU_types.compareresult;
  signal r_out                   : ALU_types.tup3;

begin
  with (mcr) select
    cresult_app_arg <= instruction'(subleq) when x"FF",
                       instruction'(movleq) when x"EE",
                       instruction'(pc_0) when x"33",
                       instruction'(mem) when x"22",
                       instruction'(memr) when x"11",
                       instruction'(pcs) when x"00",
                       instruction'(addleq) when x"CC",
                       instruction'(shlleq) when x"99",
                       instruction'(shrleq) when x"88",
                       instruction'(orleq) when x"77",
                       instruction'(andleq) when x"66",
                       instruction'(xorleq) when x"55",
                       instruction'(xnorleq) when x"44",
                       instruction'val(0) when others;

  cresult_app_arg_fun_arg <= ( fsm2alu_sel0_mcr => cresult_app_arg
                             , fsm2alu_sel1_mem_a => signed(pc)
                             , fsm2alu_sel2_mem_b => mem_a
                             , fsm2alu_sel3_mem_mem_b => mem_b
                             , fsm2alu_sel4_pc => std_logic_vector(mem_mem_b) );

  standardentities_alu_topentitiycomparisonalu_alu_cresult_app_arg_0 : entity standardentities_alu_topentitiycomparisonalu_alu
    port map
      ( result => cresult_app_arg_0
      , eta    => cresult_app_arg_fun_arg );

  ccase_alt_selection_1 <= result.alu2fsm_sel2_overflow;

  ccase_alt <= '1' when ccase_alt_selection_1 else
               '0';

  ccase_alt_selection_4 <= result.alu2fsm_sel1_cmp;

  with (ccase_alt_selection_4) select
    ccase_alt_0 <= std_logic_vector'("001") when compareresult'(cmp_b_bigger),
                   std_logic_vector'("010") when compareresult'(cmp_a_bigger),
                   std_logic_vector'("100") when compareresult'(cmp_ab_equal),
                   std_logic_vector'("000") when others;

  r_out <= ( tup3_sel0_std_logic => ccase_alt
           , tup3_sel1_std_logic_vector => ccase_alt_0
           , tup3_sel2_signed => result.alu2fsm_sel0_data_res );

  -- register begin
  result_register : process(clk)
  begin
    if rising_edge(clk) then
      if rst =  '1'  then
        result <= ( alu2fsm_sel0_data_res => to_signed(0,16)
  , alu2fsm_sel1_cmp => compareresult'(cmp_none)
  , alu2fsm_sel2_overflow => false );
      elsif en then
        result <= cresult_app_arg_0;
      end if;
    end if;
  end process;
  -- register end

  out_overflow <= r_out.tup3_sel0_std_logic;

  out_cmp <= r_out.tup3_sel1_std_logic_vector;

  out_data <= r_out.tup3_sel2_signed;


end;

