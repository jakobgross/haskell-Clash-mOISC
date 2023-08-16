-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.ALU_types.all;

entity ALU is
  port(in_mcr       : in std_logic_vector(3 downto 0);
       in_pc        : in signed(15 downto 0);
       in_mem_a     : in signed(15 downto 0);
       in_mem_b     : in signed(15 downto 0);
       in_mem_mem_b : in std_logic_vector(15 downto 0);
       out_overflow : out signed(15 downto 0);
       out_cmp      : out std_logic_vector(1 downto 0);
       out_data     : out boolean);
end;

architecture structural of ALU is
  signal capp_arg                       : signed(15 downto 0);
  signal capp_arg_0                     : signed(15 downto 0);
  -- src\StandardEntities\Alu.hs:89:1-3
  signal wild2                          : signed(63 downto 0);
  -- src\StandardEntities\Alu.hs:89:1-3
  signal cwild2_app_arg                 : signed(63 downto 0);
  signal capp_arg_1                     : std_logic;
  -- src\StandardEntities\Alu.hs:89:1-3
  signal data                           : signed(15 downto 0);
  -- src\StandardEntities\Alu.hs:89:1-3
  signal cmpleq                         : ALU_types.compareresult;
  signal capp_arg_2                     : std_logic;
  signal capp_arg_3                     : std_logic;
  signal capp_arg_4                     : std_logic;
  signal capp_arg_5                     : std_logic;
  signal capp_arg_6                     : std_logic_vector(15 downto 0);
  signal capp_arg_7                     : std_logic;
  -- src\StandardEntities\Alu.hs:89:1-3
  signal data_0                         : signed(15 downto 0);
  -- src\StandardEntities\Alu.hs:89:1-3
  signal ccmpleq_case_alt               : ALU_types.compareresult;
  signal r_in                           : ALU_types.fsm2alu;
  signal r_out_selection_1              : ALU_types.instruction;
  signal cshi                           : signed(63 downto 0);
  signal cshi_0                         : signed(63 downto 0);
  signal cbv                            : std_logic_vector(15 downto 0);
  signal cmpleq_selection_res           : boolean;
  signal cbv_0                          : std_logic_vector(15 downto 0);
  signal cbv_1                          : std_logic_vector(15 downto 0);
  signal ccmpleq_case_alt_selection_res : boolean;
  signal r_out                          : ALU_types.alu2fsm;
  signal out_cmp_0                      : ALU_types.compareresult;

begin
  r_in <= ( fsm2alu_sel0_mcr => ALU_types.instruction'(ALU_types.fromSLV(in_mcr))
          , fsm2alu_sel1_mem_a => in_pc
          , fsm2alu_sel2_mem_b => in_mem_a
          , fsm2alu_sel3_mem_mem_b => in_mem_b
          , fsm2alu_sel4_pc => in_mem_mem_b );

  r_out_selection_1 <= r_in.fsm2alu_sel0_mcr;

  with (r_out_selection_1) select
    r_out <= ( alu2fsm_sel0_data_res => data_0
             , alu2fsm_sel1_cmp => cmpleq
             , alu2fsm_sel2_overflow => ((((not capp_arg_7) and capp_arg_5) and capp_arg_4) or ((capp_arg_7 and capp_arg_3) and capp_arg_2)) = ('1') ) when instruction'(subleq),
             ( alu2fsm_sel0_data_res => r_in.fsm2alu_sel1_mem_a
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(movleq),
             ( alu2fsm_sel0_data_res => data
             , alu2fsm_sel1_cmp => cmpleq
             , alu2fsm_sel2_overflow => ((((not capp_arg_1) and capp_arg_3) and capp_arg_4) or ((capp_arg_1 and capp_arg_5) and capp_arg_2)) = ('1') ) when instruction'(addleq),
             ( alu2fsm_sel0_data_res => capp_arg_0
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(shlleq),
             ( alu2fsm_sel0_data_res => capp_arg
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(shrleq),
             ( alu2fsm_sel0_data_res => r_in.fsm2alu_sel1_mem_a or r_in.fsm2alu_sel2_mem_b
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(orleq),
             ( alu2fsm_sel0_data_res => r_in.fsm2alu_sel1_mem_a and r_in.fsm2alu_sel2_mem_b
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(andleq),
             ( alu2fsm_sel0_data_res => r_in.fsm2alu_sel1_mem_a xor r_in.fsm2alu_sel2_mem_b
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(xorleq),
             ( alu2fsm_sel0_data_res => (not r_in.fsm2alu_sel1_mem_a) xor r_in.fsm2alu_sel2_mem_b
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(xnorleq),
             ( alu2fsm_sel0_data_res => signed(r_in.fsm2alu_sel4_pc)
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(pc_0),
             ( alu2fsm_sel0_data_res => r_in.fsm2alu_sel1_mem_a
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(mem),
             ( alu2fsm_sel0_data_res => r_in.fsm2alu_sel3_mem_mem_b
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when instruction'(memr),
             ( alu2fsm_sel0_data_res => r_in.fsm2alu_sel2_mem_b
             , alu2fsm_sel1_cmp => compareresult'(cmp_none)
             , alu2fsm_sel2_overflow => false ) when others;

  cshi <= wild2;

  capp_arg_shiftr : block
    signal sh : natural;
  begin
    sh <=
        -- pragma translate_off
        natural'high when (cshi(64-1 downto 31) /= 0) else
        -- pragma translate_on
        to_integer(cshi
        -- pragma translate_off
        (30 downto 0)
        -- pragma translate_on
        );
    capp_arg <= shift_right(r_in.fsm2alu_sel2_mem_b,sh)
        -- pragma translate_off
        when (wild2 >= 0) else (others => 'X')
        -- pragma translate_on
        ;
  end block;

  cshi_0 <= wild2;

  capp_arg_0_shiftl : block
    signal sh_0 : natural;
  begin
    sh_0 <=
        -- pragma translate_off
        natural'high when (cshi_0(64-1 downto 31) /= 0) else
        -- pragma translate_on
        to_integer(cshi_0
        -- pragma translate_off
        (30 downto 0)
        -- pragma translate_on
        );
    capp_arg_0 <= shift_left(r_in.fsm2alu_sel2_mem_b,sh_0)
        -- pragma translate_off
        when (wild2 >= 0) else (others => 'X')
        -- pragma translate_on
        ;
  end block;

  wild2 <= cwild2_app_arg;

  cwild2_app_arg <= signed(std_logic_vector(resize(unsigned(capp_arg_6),64)));

  cbv <= (std_logic_vector(data));

  capp_arg_1 <=  cbv(cbv'high) ;

  data <= r_in.fsm2alu_sel1_mem_a + r_in.fsm2alu_sel2_mem_b;

  cmpleq_selection_res <= r_in.fsm2alu_sel1_mem_a > r_in.fsm2alu_sel2_mem_b;

  cmpleq <= compareresult'(cmp_a_bigger) when cmpleq_selection_res else
            ccmpleq_case_alt;

  capp_arg_2 <= not capp_arg_4;

  capp_arg_3 <= not capp_arg_5;

  cbv_0 <= (std_logic_vector(r_in.fsm2alu_sel2_mem_b));

  capp_arg_4 <=  cbv_0(cbv_0'high) ;

  capp_arg_5 <=  capp_arg_6(capp_arg_6'high) ;

  capp_arg_6 <= std_logic_vector(r_in.fsm2alu_sel1_mem_a);

  cbv_1 <= (std_logic_vector(data_0));

  capp_arg_7 <=  cbv_1(cbv_1'high) ;

  data_0 <= r_in.fsm2alu_sel2_mem_b - r_in.fsm2alu_sel1_mem_a;

  ccmpleq_case_alt_selection_res <= r_in.fsm2alu_sel1_mem_a = r_in.fsm2alu_sel2_mem_b;

  ccmpleq_case_alt <= compareresult'(cmp_ab_equal) when ccmpleq_case_alt_selection_res else
                      compareresult'(cmp_b_bigger);

  out_overflow <= r_out.alu2fsm_sel0_data_res;

  out_cmp_0 <= r_out.alu2fsm_sel1_cmp;

  out_data <= r_out.alu2fsm_sel2_overflow;

  out_cmp <= ALU_types.toSLV(ALU_types.compareresult'(out_cmp_0));


end;

