-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Mem_types.all;



entity Mem is
    generic (memory_file : string);
  port(-- clock
       CLK        : in std_logic;
       -- reset
       RST        : in std_logic;
       -- enable
       EN         : in boolean;
       rden       : in std_logic;
       wren       : in std_logic;
       address    : in std_logic_vector(14 downto 0);
       data       : in std_logic_vector(15 downto 0);
       out_data_q : out std_logic_vector(15 downto 0));
end;

architecture structural of Mem is
  -- src\StandardEntities\Mem.hs:(46,1)-(52,37)
  signal readenable   : boolean;
  -- src\StandardEntities\Mem.hs:(46,1)-(52,37)
  signal writeenable  : boolean;
  -- src\StandardEntities\Mem.hs:(46,1)-(52,37)
  signal b            : boolean := false;
  signal result       : std_logic_vector(15 downto 0);
  -- src\StandardEntities\Mem.hs:(46,1)-(52,37)
  signal ds           : Mem_types.tup2;
  -- src\StandardEntities\Mem.hs:(46,1)-(52,37)
  signal a1           : Mem_types.tup2;
  -- src\StandardEntities\Mem.hs:(46,1)-(52,37)
  signal ct_app_arg   : boolean;
  -- src\StandardEntities\Mem.hs:(46,1)-(52,37)
  signal wrm          : Mem_types.maybe;
  -- src\StandardEntities\Mem.hs:(46,1)-(52,37)
  signal cwrm_app_arg : unsigned(14 downto 0);
  signal crdi         : signed(63 downto 0);
  signal cwri         : signed(63 downto 0);

begin
  readenable <= (std_logic_vector'(0 => rden)) = std_logic_vector'("1");

  writeenable <= (std_logic_vector'(0 => wren)) = std_logic_vector'("1");

  out_data_q <= result when b else
                std_logic_vector'(x"0000");

  -- register begin
  b_register : process(CLK)
  begin
    if rising_edge(CLK) then
      if RST =  '1'  then
        b <= false;
      elsif EN then
        b <= readenable;
      end if;
    end if;
  end process;
  -- register end

  crdi <= (signed(std_logic_vector(resize(cwrm_app_arg,64))));

  cwri <= (signed(std_logic_vector(resize(ds.tup2_sel0_unsigned,64))));

  -- blockRamFile begin
  mem_blockramfile : block
    type ramtype is array(natural range <>) of bit_vector(16-1 downto 0);

    impure function initramfromfile (RamFileName : in string) return ramtype is
      FILE RamFile : text open read_mode is RamFileName;
      variable RamFileLine : line;
      variable RAM : ramtype(0 to 32768-1);
    begin
      for i in RAM'range loop
        readline(RamFile,RamFileLine);
        read(RamFileLine,RAM(i));
      end loop;
      return RAM;
    end function;

    signal ram : ramtype(0 to 32768-1) := initramfromfile(memory_file);
    signal rd  : integer range 0 to 32768-1;
    signal wr  : integer range 0 to 32768-1;
  begin
    rd <= to_integer(crdi(31 downto 0))
    -- pragma translate_off
                  mod 32768
    -- pragma translate_on
                  ;

    wr <= to_integer(cwri(31 downto 0))
    -- pragma translate_off
                  mod 32768
    -- pragma translate_on
                  ;

    blockramfile_sync : process(CLK)
    begin
      if rising_edge(CLK) then
        if EN then
          if ct_app_arg then
            ram(wr) <= to_bitvector(ds.tup2_sel1_std_logic_vector);
          end if;
          result <= to_stdlogicvector(ram(rd));
        end if;
      end if;
    end process;
  end block;
  -- blockRamFile end

  with (wrm(31 downto 31)) select
    ds <= Mem_types.tup2'(unsigned'(0 to 14 => '-'), std_logic_vector'(0 to 15 => '-')) when "0",
          a1 when others;

  a1 <= Mem_types.tup2'(mem_types.fromSLV(wrm(30 downto 0)));

  with (wrm(31 downto 31)) select
    ct_app_arg <= false when "0",
                  true when others;

  wrm <= std_logic_vector'("1" & ((std_logic_vector(cwrm_app_arg)
          & data))) when writeenable else
         std_logic_vector'("0" & "-------------------------------");

  cwrm_app_arg <= unsigned(address);


end;

