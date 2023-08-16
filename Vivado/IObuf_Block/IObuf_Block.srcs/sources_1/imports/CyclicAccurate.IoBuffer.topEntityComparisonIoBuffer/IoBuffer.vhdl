-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.IoBuffer_types.all;
library UNISIM;
use UNISIM.vcomponents.all;

entity IoBuffer is
  port(fsm_in     : in std_logic_vector(7 downto 0);
       dir        : in std_logic_vector(7 downto 0);
       outside_io : inout std_logic_vector(7 downto 0);
       to_fsm     : out std_logic_vector(7 downto 0));
end;

architecture structural of IoBuffer is


begin

  myblackbox : FOR i IN 0 TO 7 GENERATE
    IOBUF_inst : IOBUF
      generic map (DRIVE => 12)
      port map (
        O => to_fsm(i),     -- Buffer output
        IO => outside_io(i),   -- Buffer inout port (connect directly to top-level port)
        I => fsm_in(i),     -- Buffer input
        T => not dir(i)      -- 3-state enable input, high=input, low=output
      );
  END GENERATE;



end;

