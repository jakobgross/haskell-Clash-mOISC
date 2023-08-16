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
  -- src\Lib\Alu.hs:73:1-23
  signal cresult_app_arg                : ALU_types.instruction;
  signal result                         : ALU_types.alu2fsm;
  -- src\Lib\Alu.hs:90:1-3
  signal pc_in                          : signed(15 downto 0);
  -- src\Lib\Alu.hs:90:1-3
  signal mem_mem_b_in                   : std_logic_vector(15 downto 0);
  signal capp_arg                       : signed(15 downto 0);
  signal capp_arg_0                     : signed(15 downto 0);
  -- src\Lib\Alu.hs:90:1-3
  signal wild2                          : signed(63 downto 0);
  -- src\Lib\Alu.hs:90:1-3
  signal cwild2_app_arg                 : signed(63 downto 0);
  signal capp_arg_1                     : std_logic;
  -- src\Lib\Alu.hs:90:1-3
  signal data                           : signed(15 downto 0);
  -- src\Lib\Alu.hs:90:1-3
  signal cmpleq                         : ALU_types.compareresult;
  signal capp_arg_2                     : std_logic;
  signal capp_arg_3                     : std_logic;
  signal capp_arg_4                     : std_logic;
  signal capp_arg_5                     : std_logic;
  signal capp_arg_6                     : std_logic_vector(15 downto 0);
  signal capp_arg_7                     : std_logic;
  -- src\Lib\Alu.hs:90:1-3
  signal data_0                         : signed(15 downto 0);
  -- src\Lib\Alu.hs:90:1-3
  signal ccmpleq_case_alt               : ALU_types.compareresult;
  signal ccase_alt                      : std_logic;
  signal ccase_alt_0                    : std_logic_vector(2 downto 0);
  -- src\Lib\Alu.hs:73:1-23
  signal result_0                       : ALU_types.alu2fsm := ( alu2fsm_sel0_data_res => to_signed(0,16)
, alu2fsm_sel1_cmp => compareresult'(cmp_none)
, alu2fsm_sel2_overflow => false );
  signal cshi                           : signed(63 downto 0);
  signal cshi_0                         : signed(63 downto 0);
  signal cbv                            : std_logic_vector(15 downto 0);
  signal cmpleq_selection_res           : boolean;
  signal cbv_0                          : std_logic_vector(15 downto 0);
  signal cbv_1                          : std_logic_vector(15 downto 0);
  signal ccmpleq_case_alt_selection_res : boolean;
  signal ccase_alt_selection_1          : boolean;
  signal ccase_alt_selection_4          : ALU_types.compareresult;
  signal r_out                          : ALU_types.tup3;

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

  with (cresult_app_arg) select
    result <= ( alu2fsm_sel0_data_res => data_0
              , alu2fsm_sel1_cmp => cmpleq
              , alu2fsm_sel2_overflow => ((((not capp_arg_7) and capp_arg_5) and capp_arg_4) or ((capp_arg_7 and capp_arg_3) and capp_arg_2)) = ('1') ) when instruction'(subleq),
              ( alu2fsm_sel0_data_res => mem_a
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
              ( alu2fsm_sel0_data_res => mem_a or mem_b
              , alu2fsm_sel1_cmp => compareresult'(cmp_none)
              , alu2fsm_sel2_overflow => false ) when instruction'(orleq),
              ( alu2fsm_sel0_data_res => mem_a and mem_b
              , alu2fsm_sel1_cmp => compareresult'(cmp_none)
              , alu2fsm_sel2_overflow => false ) when instruction'(andleq),
              ( alu2fsm_sel0_data_res => mem_a xor mem_b
              , alu2fsm_sel1_cmp => compareresult'(cmp_none)
              , alu2fsm_sel2_overflow => false ) when instruction'(xorleq),
              ( alu2fsm_sel0_data_res => (not mem_a) xor mem_b
              , alu2fsm_sel1_cmp => compareresult'(cmp_none)
              , alu2fsm_sel2_overflow => false ) when instruction'(xnorleq),
              ( alu2fsm_sel0_data_res => pc_in
              , alu2fsm_sel1_cmp => compareresult'(cmp_none)
              , alu2fsm_sel2_overflow => false ) when instruction'(pc_0),
              ( alu2fsm_sel0_data_res => mem_a
              , alu2fsm_sel1_cmp => compareresult'(cmp_none)
              , alu2fsm_sel2_overflow => false ) when instruction'(mem),
              ( alu2fsm_sel0_data_res => signed(mem_mem_b_in)
              , alu2fsm_sel1_cmp => compareresult'(cmp_none)
              , alu2fsm_sel2_overflow => false ) when instruction'(memr),
              ( alu2fsm_sel0_data_res => mem_b
              , alu2fsm_sel1_cmp => compareresult'(cmp_none)
              , alu2fsm_sel2_overflow => false ) when others;

  pc_in <= signed(pc);

  mem_mem_b_in <= std_logic_vector(mem_mem_b);

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
    capp_arg <= shift_right(mem_b,sh)
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
    capp_arg_0 <= shift_left(mem_b,sh_0)
        -- pragma translate_off
        when (wild2 >= 0) else (others => 'X')
        -- pragma translate_on
        ;
  end block;

  wild2 <= cwild2_app_arg;

  cwild2_app_arg <= signed(std_logic_vector(resize(unsigned(capp_arg_6),64)));

  cbv <= (std_logic_vector(data));

  capp_arg_1 <=  cbv(cbv'high) ;

  data <= mem_a + mem_b;

  cmpleq_selection_res <= mem_a > mem_b;

  cmpleq <= compareresult'(cmp_a_bigger) when cmpleq_selection_res else
            ccmpleq_case_alt;

  capp_arg_2 <= not capp_arg_4;

  capp_arg_3 <= not capp_arg_5;

  cbv_0 <= (std_logic_vector(mem_b));

  capp_arg_4 <=  cbv_0(cbv_0'high) ;

  capp_arg_5 <=  capp_arg_6(capp_arg_6'high) ;

  capp_arg_6 <= std_logic_vector(mem_a);

  cbv_1 <= (std_logic_vector(data_0));

  capp_arg_7 <=  cbv_1(cbv_1'high) ;

  data_0 <= mem_b - mem_a;

  ccmpleq_case_alt_selection_res <= mem_a = mem_b;

  ccmpleq_case_alt <= compareresult'(cmp_ab_equal) when ccmpleq_case_alt_selection_res else
                      compareresult'(cmp_b_bigger);

  ccase_alt_selection_1 <= result_0.alu2fsm_sel2_overflow;

  ccase_alt <= '1' when ccase_alt_selection_1 else
               '0';

  ccase_alt_selection_4 <= result_0.alu2fsm_sel1_cmp;

  with (ccase_alt_selection_4) select
    ccase_alt_0 <= std_logic_vector'("001") when compareresult'(cmp_b_bigger),
                   std_logic_vector'("010") when compareresult'(cmp_a_bigger),
                   std_logic_vector'("100") when compareresult'(cmp_ab_equal),
                   std_logic_vector'("000") when others;

  r_out <= ( tup3_sel0_std_logic => ccase_alt
           , tup3_sel1_std_logic_vector => ccase_alt_0
           , tup3_sel2_signed => result_0.alu2fsm_sel0_data_res );

  -- register begin
  result_0_register : process(clk)
  begin
    if rising_edge(clk) then
      if rst =  '1'  then
        result_0 <= ( alu2fsm_sel0_data_res => to_signed(0,16)
  , alu2fsm_sel1_cmp => compareresult'(cmp_none)
  , alu2fsm_sel2_overflow => false );
      elsif en then
        result_0 <= result;
      end if;
    end if;
  end process;
  -- register end

  out_overflow <= r_out.tup3_sel0_std_logic;

  out_cmp <= r_out.tup3_sel1_std_logic_vector;

  out_data <= r_out.tup3_sel2_signed;


end;

