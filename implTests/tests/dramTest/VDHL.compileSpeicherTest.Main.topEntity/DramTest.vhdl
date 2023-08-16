-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.DramTest_types.all;

entity DramTest is
  port(-- clock
       CLK    : in DramTest_types.clk_Dom;
       -- reset
       RST    : in DramTest_types.rst_Dom;
       -- enable
       EN     : in DramTest_types.en_Dom;
       OUTPUT : out unsigned(7 downto 0));
end;

architecture structural of DramTest is
  -- ..\tests\dramTestVivado\compileSpeicherTest.hs:44:1-9
  signal \c$ds1_app_arg\            : DramTest_types.Tup3 := ( Tup3_sel0_State => State'(Waiting)
, Tup3_sel1_unsigned_0 => to_unsigned(125000000,32)
, Tup3_sel2_unsigned_1 => to_unsigned(0,8) );
  -- ..\tests\dramTestVivado\compileSpeicherTest.hs:15:1-8
  signal b                          : boolean := false;
  -- ..\tests\dramTestVivado\compileSpeicherTest.hs:15:1-8
  signal t                          : unsigned(7 downto 0);
  signal result                     : unsigned(7 downto 0);
  -- ..\tests\dramTestVivado\compileSpeicherTest.hs:15:1-8
  signal \c$t_app_arg\              : std_logic_vector(7 downto 0);
  signal \c$case_alt\               : DramTest_types.Tup2;
  -- ..\tests\dramTestVivado\compileSpeicherTest.hs:27:1-8
  signal s                          : DramTest_types.State;
  signal \c$case_alt_0\             : DramTest_types.Tup2;
  signal \c$app_arg\                : unsigned(7 downto 0);
  -- ..\tests\dramTestVivado\compileSpeicherTest.hs:27:1-8
  signal c                          : unsigned(31 downto 0);
  -- ..\tests\dramTestVivado\compileSpeicherTest.hs:27:1-8
  signal r                          : unsigned(7 downto 0);
  signal \c$rdI\                    : signed(63 downto 0);
  signal \c$wrI\                    : signed(63 downto 0);
  signal \c$case_alt_selection_res\ : boolean;
  signal \c$app_arg_selection_res\  : boolean;

begin
  -- register begin
  cds1_app_arg_register : process(CLK,RST)
  begin
    if RST =  '1'  then
      \c$ds1_app_arg\ <= ( Tup3_sel0_State => State'(Waiting)
  , Tup3_sel1_unsigned_0 => to_unsigned(125000000,32)
  , Tup3_sel2_unsigned_1 => to_unsigned(0,8) );
    elsif rising_edge(CLK) then
      if EN then
        \c$ds1_app_arg\ <= \c$case_alt\.Tup2_sel0_Tup3;
      end if;
    end if;
  end process;
  -- register end

  -- register begin
  b_register : process(CLK,RST)
  begin
    if RST =  '1'  then
      b <= false;
    elsif rising_edge(CLK) then
      if EN then
        b <= true;
      end if;
    end if;
  end process;
  -- register end

  t <= unsigned(\c$t_app_arg\);

  result <= t when b else
            to_unsigned(0,8);

  \c$rdI\ <= (signed(std_logic_vector(resize((\c$case_alt\.Tup2_sel1_Tup2_0.Tup2_0_sel0_unsigned_0),64))));

  \c$wrI\ <= (signed(std_logic_vector(resize((unsigned'(0 to 7 => '-')),64))));

  -- blockRamFile begin
  DramTest_blockRamFile : block
    type RamType is array(natural range <>) of bit_vector(8-1 downto 0);

    impure function InitRamFromFile (RamFileName : in string) return RamType is
      FILE RamFile : text open read_mode is RamFileName;
      variable RamFileLine : line;
      variable RAM : RamType(0 to 254-1);
    begin
      for i in RAM'range loop
        readline(RamFile,RamFileLine);
        read(RamFileLine,RAM(i));
      end loop;
      return RAM;
    end function;

    signal RAM : RamType(0 to 254-1) := InitRamFromFile("memory.bin");
    signal rd  : integer range 0 to 254-1;
    signal wr  : integer range 0 to 254-1;
  begin
    rd <= to_integer(\c$rdI\(31 downto 0))
    -- pragma translate_off
                  mod 254
    -- pragma translate_on
                  ;

    wr <= to_integer(\c$wrI\(31 downto 0))
    -- pragma translate_off
                  mod 254
    -- pragma translate_on
                  ;

    blockRamFile_sync : process(CLK)
    begin
      if rising_edge(CLK) then
        if false and EN then
          RAM(wr) <= to_bitvector((std_logic_vector'(0 to 7 => '-')));
        end if;
        if EN then
          \c$t_app_arg\ <= to_stdlogicvector(RAM(rd));
        end if;
      end if;
    end process;
  end block;
  -- blockRamFile end

  with (s) select
    \c$case_alt\ <= \c$case_alt_0\ when State'(Waiting),
                    ( Tup2_sel0_Tup3 => ( Tup3_sel0_State => State'(Waiting)
                    , Tup3_sel1_unsigned_0 => c
                    , Tup3_sel2_unsigned_1 => \c$app_arg\ )
                    , Tup2_sel1_Tup2_0 => ( Tup2_0_sel0_unsigned_0 => r
                    , Tup2_0_sel1_unsigned_1 => result ) ) when others;

  s <= \c$ds1_app_arg\.Tup3_sel0_State;

  \c$case_alt_selection_res\ <= c > to_unsigned(0,32);

  \c$case_alt_0\ <= ( Tup2_sel0_Tup3 => ( Tup3_sel0_State => State'(Waiting)
                    , Tup3_sel1_unsigned_0 => c - to_unsigned(1,32)
                    , Tup3_sel2_unsigned_1 => r )
                    , Tup2_sel1_Tup2_0 => ( Tup2_0_sel0_unsigned_0 => r
                    , Tup2_0_sel1_unsigned_1 => result ) ) when \c$case_alt_selection_res\ else
                    ( Tup2_sel0_Tup3 => ( Tup3_sel0_State => State'(ReadRequest)
                    , Tup3_sel1_unsigned_0 => to_unsigned(125000000,32)
                    , Tup3_sel2_unsigned_1 => r )
                    , Tup2_sel1_Tup2_0 => ( Tup2_0_sel0_unsigned_0 => r
                    , Tup2_0_sel1_unsigned_1 => result ) );

  \c$app_arg_selection_res\ <= r < to_unsigned(200,8);

  \c$app_arg\ <= r + to_unsigned(1,8) when \c$app_arg_selection_res\ else
                 to_unsigned(0,8);

  c <= \c$ds1_app_arg\.Tup3_sel1_unsigned_0;

  r <= \c$ds1_app_arg\.Tup3_sel2_unsigned_1;

  OUTPUT <= \c$case_alt\.Tup2_sel1_Tup2_0.Tup2_0_sel1_unsigned_1;


end;

