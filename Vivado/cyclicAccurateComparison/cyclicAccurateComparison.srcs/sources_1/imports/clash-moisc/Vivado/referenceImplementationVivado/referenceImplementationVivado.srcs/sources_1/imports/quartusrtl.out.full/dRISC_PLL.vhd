LIBRARY ieee;
USE ieee.std_logic_1164.all;

Library UNISIM;
use UNISIM.vcomponents.all;

ENTITY dRISC_PLL IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC ;
		c2		: OUT STD_LOGIC ;
		c3		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
END dRISC_PLL;


ARCHITECTURE SYN OF drisc_pll IS

    SIGNAL self_refrence : std_logic;
    SIGNAL wire10mhzTo10khz: std_logic;
    SIGnal state: std_logic := '0';
    SIGNAL counter : integer := 0;

BEGIN
frequency_divider : process(wire10mhzTo10khz)
begin
    if rising_edge(wire10mhzTo10khz) then
        if(counter < 500)then
        -- Change State every 500 Clock Cycles so we get from 10MhZ to 10Khz
          counter <= counter+1;
        else
            state <= not state;
            counter <= 0;
        end if;
    end if;
    c0 <= state;   
end process;

PLLE2_BASE_inst : PLLE2_BASE
   generic map (
      BANDWIDTH => "OPTIMIZED",  -- OPTIMIZED, HIGH, LOW
      CLKFBOUT_MULT => 8,        -- Multiply value for all CLKOUT, (2-64)
      -- after mult its 1000 MHZ
      -- device is rated for 800 to 1600 MHZ
      CLKFBOUT_PHASE => 0.0,     -- Phase offset in degrees of CLKFB, (-360.000-360.000).
      CLKIN1_PERIOD => 8.0,      -- Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      -- since we have a period of 8 that euqals 125 MHZ
      -- CLKOUT0_DIVIDE - CLKOUT5_DIVIDE: Divide amount for each CLKOUT (1-128)
      CLKOUT3_DIVIDE => 10,     -- should be 100 MHZ
      CLKOUT2_DIVIDE => 20,     -- should be 50 MHZ
      CLKOUT1_DIVIDE => 100,    -- should be 10 MHZ
      CLKOUT0_DIVIDE => 128,    -- also 10 MHZ - will use ashift register to get to 10 KHZ
      -- CLKOUT0_DUTY_CYCLE - CLKOUT5_DUTY_CYCLE: Duty cycle for each CLKOUT (0.001-0.999).
      CLKOUT0_DUTY_CYCLE => 0.5,
      CLKOUT1_DUTY_CYCLE => 0.5,
      CLKOUT2_DUTY_CYCLE => 0.5,
      CLKOUT3_DUTY_CYCLE => 0.5,
      -- CLKOUT0_PHASE - CLKOUT5_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
      CLKOUT0_PHASE => 0.0,
      CLKOUT1_PHASE => 0.0,
      CLKOUT2_PHASE => 0.0,
      CLKOUT3_PHASE => 0.0,
      DIVCLK_DIVIDE => 1,        -- Master division value, (1-56)
      REF_JITTER1 => 0.0,        -- Reference input jitter in UI, (0.000-0.999).
      STARTUP_WAIT => "FALSE"    -- Delay DONE until PLL Locks, ("TRUE"/"FALSE")
   )
   port map (
      -- Clock Outputs: 1-bit (each) output: User configurable clock outputs
      CLKOUT0 => wire10mhzTo10khz,   -- 1-bit output: CLKOUT0
      CLKOUT1 => c1,   -- 1-bit output: CLKOUT1
      CLKOUT2 => c2,   -- 1-bit output: CLKOUT2
      CLKOUT3 => c3,   -- 1-bit output: CLKOUT3
      CLKOUT4 => open,   -- 1-bit output: CLKOUT4
      CLKOUT5 => open,   -- 1-bit output: CLKOUT5
      -- Feedback Clocks: 1-bit (each) output: Clock feedback ports
      CLKFBOUT => self_refrence, -- 1-bit output: Feedback clock
      LOCKED => locked,     -- 1-bit output: LOCK
      CLKIN1 => inclk0,     -- 1-bit input: Input clock
      -- Control Ports: 1-bit (each) input: PLL control ports
      PWRDWN => '0',     -- 1-bit input: Power-down
      RST => '0',           -- 1-bit input: Reset
      -- Feedback Clocks: 1-bit (each) input: Clock feedback ports
      CLKFBIN => self_refrence    -- 1-bit input: Feedback clock
   );




END SYN;