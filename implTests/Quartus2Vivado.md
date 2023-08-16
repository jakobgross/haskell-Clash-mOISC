# Allgemein
In der Simulation muss getestet werden, dass alle Signale welche zum lesen, schreiben oder initialisieren benötigt werden, auch initalisiert werden.

# PLL

### Quartus
```vhdl
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

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

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (4 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC ;
	SIGNAL sub_wire4	: STD_LOGIC ;
	SIGNAL sub_wire5	: STD_LOGIC ;
	SIGNAL sub_wire6	: STD_LOGIC ;
	SIGNAL sub_wire7	: STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL sub_wire8_bv	: BIT_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire8	: STD_LOGIC_VECTOR (0 DOWNTO 0);



	COMPONENT altpll
	GENERIC (
		bandwidth_type		: STRING;
		clk0_divide_by		: NATURAL;
		clk0_duty_cycle		: NATURAL;
		clk0_multiply_by		: NATURAL;
		clk0_phase_shift		: STRING;
		clk1_divide_by		: NATURAL;
		clk1_duty_cycle		: NATURAL;
		clk1_multiply_by		: NATURAL;
		clk1_phase_shift		: STRING;
		clk2_divide_by		: NATURAL;
		clk2_duty_cycle		: NATURAL;
		clk2_multiply_by		: NATURAL;
		clk2_phase_shift		: STRING;
		clk3_divide_by		: NATURAL;
		clk3_duty_cycle		: NATURAL;
		clk3_multiply_by		: NATURAL;
		clk3_phase_shift		: STRING;
		compensate_clock		: STRING;
		inclk0_input_frequency		: NATURAL;
		intended_device_family		: STRING;
		lpm_hint		: STRING;
		lpm_type		: STRING;
		operation_mode		: STRING;
		pll_type		: STRING;
		port_activeclock		: STRING;
		port_areset		: STRING;
		port_clkbad0		: STRING;
		port_clkbad1		: STRING;
		port_clkloss		: STRING;
		port_clkswitch		: STRING;
		port_configupdate		: STRING;
		port_fbin		: STRING;
		port_inclk0		: STRING;
		port_inclk1		: STRING;
		port_locked		: STRING;
		port_pfdena		: STRING;
		port_phasecounterselect		: STRING;
		port_phasedone		: STRING;
		port_phasestep		: STRING;
		port_phaseupdown		: STRING;
		port_pllena		: STRING;
		port_scanaclr		: STRING;
		port_scanclk		: STRING;
		port_scanclkena		: STRING;
		port_scandata		: STRING;
		port_scandataout		: STRING;
		port_scandone		: STRING;
		port_scanread		: STRING;
		port_scanwrite		: STRING;
		port_clk0		: STRING;
		port_clk1		: STRING;
		port_clk2		: STRING;
		port_clk3		: STRING;
		port_clk4		: STRING;
		port_clk5		: STRING;
		port_clkena0		: STRING;
		port_clkena1		: STRING;
		port_clkena2		: STRING;
		port_clkena3		: STRING;
		port_clkena4		: STRING;
		port_clkena5		: STRING;
		port_extclk0		: STRING;
		port_extclk1		: STRING;
		port_extclk2		: STRING;
		port_extclk3		: STRING;
		self_reset_on_loss_lock		: STRING;
		width_clock		: NATURAL
	);
	PORT (
			inclk	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			clk	: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
			locked	: OUT STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	sub_wire8_bv(0 DOWNTO 0) <= "0";
	sub_wire8    <= To_stdlogicvector(sub_wire8_bv);
	sub_wire4    <= sub_wire0(3);
	sub_wire3    <= sub_wire0(2);
	sub_wire2    <= sub_wire0(1);
	sub_wire1    <= sub_wire0(0);
	c0    <= sub_wire1;
	c1    <= sub_wire2;
	c2    <= sub_wire3;
	c3    <= sub_wire4;
	locked    <= sub_wire5;
	sub_wire6    <= inclk0;
	sub_wire7    <= sub_wire8(0 DOWNTO 0) & sub_wire6;

	altpll_component : altpll
	GENERIC MAP (
		bandwidth_type => "AUTO",
		clk0_divide_by => 5000,
		clk0_duty_cycle => 50,
		clk0_multiply_by => 1,
		clk0_phase_shift => "0",
		clk1_divide_by => 50,
		clk1_duty_cycle => 50,
		clk1_multiply_by => 1,
		clk1_phase_shift => "0",
		clk2_divide_by => 1,
		clk2_duty_cycle => 50,
		clk2_multiply_by => 1,
		clk2_phase_shift => "0",
		clk3_divide_by => 1,
		clk3_duty_cycle => 50,
		clk3_multiply_by => 2,
		clk3_phase_shift => "0",
		compensate_clock => "CLK0",
		inclk0_input_frequency => 20000,
		intended_device_family => "Cyclone 10 LP",
		lpm_hint => "CBX_MODULE_PREFIX=dRISC_PLL",
		lpm_type => "altpll",
		operation_mode => "SOURCE_SYNCHRONOUS",
		pll_type => "AUTO",
		port_activeclock => "PORT_UNUSED",
		port_areset => "PORT_UNUSED",
		port_clkbad0 => "PORT_UNUSED",
		port_clkbad1 => "PORT_UNUSED",
		port_clkloss => "PORT_UNUSED",
		port_clkswitch => "PORT_UNUSED",
		port_configupdate => "PORT_UNUSED",
		port_fbin => "PORT_UNUSED",
		port_inclk0 => "PORT_USED",
		port_inclk1 => "PORT_UNUSED",
		port_locked => "PORT_USED",
		port_pfdena => "PORT_UNUSED",
		port_phasecounterselect => "PORT_UNUSED",
		port_phasedone => "PORT_UNUSED",
		port_phasestep => "PORT_UNUSED",
		port_phaseupdown => "PORT_UNUSED",
		port_pllena => "PORT_UNUSED",
		port_scanaclr => "PORT_UNUSED",
		port_scanclk => "PORT_UNUSED",
		port_scanclkena => "PORT_UNUSED",
		port_scandata => "PORT_UNUSED",
		port_scandataout => "PORT_UNUSED",
		port_scandone => "PORT_UNUSED",
		port_scanread => "PORT_UNUSED",
		port_scanwrite => "PORT_UNUSED",
		port_clk0 => "PORT_USED",
		port_clk1 => "PORT_USED",
		port_clk2 => "PORT_USED",
		port_clk3 => "PORT_USED",
		port_clk4 => "PORT_UNUSED",
		port_clk5 => "PORT_UNUSED",
		port_clkena0 => "PORT_UNUSED",
		port_clkena1 => "PORT_UNUSED",
		port_clkena2 => "PORT_UNUSED",
		port_clkena3 => "PORT_UNUSED",
		port_clkena4 => "PORT_UNUSED",
		port_clkena5 => "PORT_UNUSED",
		port_extclk0 => "PORT_UNUSED",
		port_extclk1 => "PORT_UNUSED",
		port_extclk2 => "PORT_UNUSED",
		port_extclk3 => "PORT_UNUSED",
		self_reset_on_loss_lock => "OFF",
		width_clock => 5
	)
	PORT MAP (
		inclk => sub_wire7,
		clk => sub_wire0,
		locked => sub_wire5
	);



END SYN;
```

### Vivado HLS


```vhdl
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
```

# Memory

## Quartus
```vhdl
q    <= sub_wire0(15 DOWNTO 0);

	altsyncram_component : altsyncram
	GENERIC MAP (
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		init_file => "fpga.mif",
		intended_device_family => "Cyclone 10 LP",
		lpm_hint => "ENABLE_RUNTIME_MOD=YES,INSTANCE_NAME=NONE",
		lpm_type => "altsyncram",
		numwords_a => 32768,
		operation_mode => "SINGLE_PORT",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "CLOCK0",
		power_up_uninitialized => "FALSE",
		read_during_write_mode_port_a => "NEW_DATA_NO_NBE_READ",
		widthad_a => 15,
		width_a => 16,
		width_byteena_a => 1
	)
	PORT MAP (
		address_a => address,
		clock0 => clock,
		data_a => data,
		rden_a => rden,
		wren_a => wren,
		q_a => sub_wire0
	);
```

## Vivado HLS

```vhdl
UMEM0 : xpm_memory_spram
   generic map (
      ADDR_WIDTH_A => 15,              -- DECIMAL
      AUTO_SLEEP_TIME => 0,           -- 0 means no sleep mode
      BYTE_WRITE_WIDTH_A => 16,       --to enable word-wide writes on port A, specify the same value as for WRITE_DATA_WIDTH_A.  
      CASCADE_HEIGHT => 0,            -- DECIMAL
      ECC_MODE => "no_ecc",           -- String
      MEMORY_INIT_FILE => "sine.coe.mem",     -- String
      MEMORY_INIT_PARAM => "0",       -- String
      MEMORY_OPTIMIZATION => "true",  -- String
      MEMORY_PRIMITIVE => "block",     -- String
      MEMORY_SIZE => 524288,            -- DECIMAL
      MESSAGE_CONTROL => 0,           -- DECIMAL
      READ_DATA_WIDTH_A => 16,        -- DECIMAL
      READ_LATENCY_A => 1,            -- Minimal Value for BRAM
      READ_RESET_VALUE_A => "0",      -- String
      RST_MODE_A => "SYNC",           -- String
      SIM_ASSERT_CHK => 0,            -- DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      USE_MEM_INIT => 1,              -- DECIMAL
      USE_MEM_INIT_MMI => 0,          -- DECIMAL
      WAKEUP_TIME => "disable_sleep", -- String
      WRITE_DATA_WIDTH_A => 16,       -- DECIMAL
      WRITE_MODE_A => "read_first",   -- String
      WRITE_PROTECT => 1              -- DECIMAL
   )
   port map (
      dbiterra => open,             -- 1-bit output: Status signal to indicate double bit error occurrence
                                        -- on the data output of port A.
      douta => MEM_qu,                  -- READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
      sbiterra => open,             -- 1-bit output: Status signal to indicate single bit error occurrence
                                        -- on the data output of port A.
      addra => MEM_addressu(14 downto 0),                   -- ADDR_WIDTH_A-bit input: Address for port A write and read operations.
      clka => CLKu,                     -- 1-bit input: Clock signal for port A.
      dina => MEM_datau,                     -- WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
      ena => '1',                       -- 1-bit input: Memory enable signal for port A. Must be high on clock
                                        -- cycles when read or write operations are initiated. Pipelined
                                        -- internally.
      injectdbiterra => '0', -- 1-bit input: Controls double bit error injection on input data when
                                        -- ECC enabled (Error injection capability is not available in
                                        -- "decode_only" mode).
      injectsbiterra => '0', -- 1-bit input: Controls single bit error injection on input data when
                                        -- ECC enabled (Error injection capability is not available in
                                        -- "decode_only" mode).
      regcea => '1',                 -- 1-bit input: Clock Enable for the last register stage on the output
                                        -- data path.
      rsta => '0',                     -- 1-bit input: Reset signal for the final port A output register
                                        -- stage. Synchronously resets output port douta to the value specified
                                        -- by parameter READ_RESET_VALUE_A.
      sleep => '0',                   -- 1-bit input: sleep signal to enable the dynamic power saving feature.
      wea(0) => MEM_wrenu    -- WRITE_DATA_WIDTH_A/BYTE_WRITE_WIDTH_A-bit input: Write enable vector
                                        -- for port A input data port dina. 1 bit wide when word-wide writes
                                        -- are used. In byte-wide write configurations, each bit controls the
                                        -- writing one byte of dina to address addra. For example, to
                                        -- synchronously write only bits [15-8] of dina when WRITE_DATA_WIDTH_A
                                        -- is 32, wea would be 4'b0010.
   );
```

# IO-Buffer

## Quartus
```vhdl
ARCHITECTURE RTL OF iobuf_iobuf_bidir_30p IS

	 SIGNAL  wire_ibufa_i	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_ibufa_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_obufa_i	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_obufa_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_obufa_oe	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 COMPONENT  cyclone10lp_io_ibuf
	 GENERIC 
	 (
		bus_hold	:	STRING := "false";
		differential_mode	:	STRING := "false";
		simulate_z_as	:	STRING := "Z";
		lpm_type	:	STRING := "cyclone10lp_io_ibuf"
	 );
	 PORT
	 ( 
		i	:	IN STD_LOGIC := '0';
		ibar	:	IN STD_LOGIC := '0';
		o	:	OUT STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  cyclone10lp_io_obuf
	 GENERIC 
	 (
		bus_hold	:	STRING := "false";
		open_drain_output	:	STRING := "false";
		lpm_type	:	STRING := "cyclone10lp_io_obuf"
	 );
	 PORT
	 ( 
		i	:	IN STD_LOGIC := '0';
		o	:	OUT STD_LOGIC;
		obar	:	OUT STD_LOGIC;
		oe	:	IN STD_LOGIC := '1';
		seriesterminationcontrol	:	IN STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0')
	 ); 
	 END COMPONENT;
 BEGIN

	dataio <= wire_obufa_o;
	dataout <= wire_ibufa_o;
	wire_ibufa_i <= dataio;
	loop0 : FOR i IN 0 TO 7 GENERATE 
	  ibufa :  cyclone10lp_io_ibuf
	  GENERIC MAP (
		bus_hold => "false",
		differential_mode => "false"
	  )
	  PORT MAP ( 
		i => wire_ibufa_i(i),
		o => wire_ibufa_o(i)
	  );
	END GENERATE loop0;
	wire_obufa_i <= datain;
	wire_obufa_oe <= oe;
	loop1 : FOR i IN 0 TO 7 GENERATE 
	  obufa :  cyclone10lp_io_obuf
	  GENERIC MAP (
		bus_hold => "false",
		open_drain_output => "false"
	  )
	  PORT MAP ( 
		i => wire_obufa_i(i),
		o => wire_obufa_o(i),
		oe => wire_obufa_oe(i)
	  );
	END GENERATE loop1;

 END RTL; --iobuf_iobuf_bidir_30p
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY iobuf IS
	PORT
	(
		datain		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		oe		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		dataio		: INOUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		dataout		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END iobuf;


ARCHITECTURE RTL OF iobuf IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (7 DOWNTO 0);



	COMPONENT iobuf_iobuf_bidir_30p
	PORT (
			datain	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			oe	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			dataout	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			dataio	: INOUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	dataout    <= sub_wire0(7 DOWNTO 0);

	iobuf_iobuf_bidir_30p_component : iobuf_iobuf_bidir_30p
	PORT MAP (
		datain => datain,
		oe => oe,
		dataout => sub_wire0,
		dataio => dataio
	);



END RTL;
```

### Xilinx

```vhdl
ARCHITECTURE RTL OF iobuf_iobuf_bidir_30p IS
 BEGIN
    loop0 : FOR i IN 0 TO 7 GENERATE 
        IOBUF_inst : IOBUF
       generic map (
          DRIVE => 12,
          IOSTANDARD => "DEFAULT",
          SLEW => "SLOW")
       port map (
          O => dataout(i),     -- Buffer output
          IO => dataio(i),   -- Buffer inout port (connect directly to top-level port)
          I => datain(i),     -- Buffer input
          T => oe(i)      -- 3-state enable input, high=input, low=output 
       );
       END GENERATE;
END RTL;
```