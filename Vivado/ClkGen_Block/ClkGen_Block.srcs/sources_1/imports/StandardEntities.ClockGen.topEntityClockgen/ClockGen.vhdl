-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.ClockGen_types.all;

entity ClockGen is
  port(csr_in      : in std_logic_vector(7 downto 0);
       cpu_stop_in : in std_logic;
       -- clock
       clock10khz  : in std_logic;
       -- clock
       clock1mhz   : in std_logic;
       -- clock
       clock50mhz  : in std_logic;
       -- clock
       clock100mhz : in std_logic;
       -- clock
       clkOut      : out std_logic);
end;

architecture structural of ClockGen is


begin

  clksel: process(clock10khz, clock1mhz, clock50mhz, clock100mhz, csr_in, cpu_stop_in)
  	begin
  		case csr_in is
  			when "00000000" =>
  					clkOut <= clock10khz and not cpu_stop_in;

  			when "01000000" =>
  					clkOut <= clock1mhz and not cpu_stop_in;

  			when "10000000" =>
  					clkOut <= clock50mhz and not cpu_stop_in;

  			when "11000000" =>
  					clkOut <= clock100mhz and not cpu_stop_in;

  			when others =>
  					clkOut <= cpu_stop_in and not cpu_stop_in;
  		end case;
  end process;



end;

