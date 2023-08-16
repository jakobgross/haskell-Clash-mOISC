---------------------------------------------------------------------------
-- dRISC 816 - Cyclone 10 LP FPGA Implementation
---------------------------------------------------------------------------
-- Module: top level (dRISC)
-- Author: Marco Crepaldi
-- Organization: Istituto Italiano di Tecnologia, Electronic Design Lab
-- Date: 22 April 2020
---------------------------------------------------------------------------

library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.dRISC_DEFINITIONS.all;
Library xpm;
use xpm.vcomponents.all;


entity dRISC is
	port(	CLK: in std_logic;
			RST: in std_logic;
			IOR: inout std_logic_vector(REG_WIDTH-1 downto 0) 
			);
end dRISC;

architecture BEHAVIOURAL of dRISC is

-- Intel RAM memory replaced by xilinx mem


component dRISC_FSM is
port (CLK: in std_logic;
		RST: in std_logic;
		PC: out std_logic_vector(MEMORY_WIDTH-1 downto 0);
	   MCR: out std_logic_vector(REG_WIDTH-1 downto 0);
	   CHR: out std_logic_vector(REG_WIDTH-1 downto 0);
	   IWR: out std_logic_vector(REG_WIDTH-1 downto 0);
	   ICR: out std_logic_vector(REG_WIDTH-1 downto 0);
	   CSR: out std_logic_vector(REG_WIDTH-1 downto 0);
	   ISR: out std_logic_vector(REG_WIDTH-1 downto 0);
		ISRin: in std_logic_vector(REG_WIDTH-1 downto 0);
	   IOR: out std_logic_vector(REG_WIDTH-1 downto 0);
		IORin: in std_logic_vector(REG_WIDTH-1 downto 0);
	   IDR: out std_logic_vector(REG_WIDTH-1 downto 0);
	
	   ALU_DATA: in signed(MEMORY_WIDTH-1 downto 0);
		CMP: in std_logic_vector(CMP_WIDTH-1 downto 0);		
		A: out std_logic_vector(MEMORY_WIDTH-1 downto 0); 
		B: out std_logic_vector(MEMORY_WIDTH-1 downto 0);
		C: out std_logic_vector(MEMORY_WIDTH-1 downto 0);
		D: out signed(MEMORY_WIDTH-1 downto 0);
		E: out signed(MEMORY_WIDTH-1 downto 0); 
		F: out signed(MEMORY_WIDTH-1 downto 0);
		INTERRUPT_BLOCK: out std_logic;
		INTERRUPT: in std_logic;
		CPU_STOP: out std_logic;
		OVERFLOW: in std_logic;
		CPU_STOPin: in std_logic;

		MEM_address		:OUT STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
		MEM_data		:OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		MEM_rden		:OUT STD_LOGIC  := '1';
		MEM_wren		:OUT STD_LOGIC ;
		MEM_q		: IN STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
end component;

component dRISC_ALU is

 port( MEM_A: in signed(MEMORY_WIDTH-1 downto 0); --E
		 MEM_B: in signed(MEMORY_WIDTH-1 downto 0); --D
		 MEM_MEM_B: in signed(MEMORY_WIDTH-1 downto 0); --F
		 
		 PC: in std_logic_vector(MEMORY_WIDTH-1 downto 0);
		 DATA: out signed(MEMORY_WIDTH-1 downto 0);
		 MCR: in std_logic_vector(REG_WIDTH-1 downto 0);
		 OVERFLOW: out std_logic;
		 CMP: out std_logic_vector(CMP_WIDTH-1 downto 0);		 
		 CPU_STOPin: in std_logic;
		 
		 CLK: in std_logic;
		 RST: in std_logic);
		 
end component;

component dRISC_IOCONTROLLER is
	port(	CLK: in std_logic;
			RST: in std_logic;
			INTERRUPT_BLOCK: in std_logic;
			IOR: in std_logic_vector(REG_WIDTH-1 downto 0); --inout
			IWR: in std_logic_vector(REG_WIDTH-1 downto 0);
			ICR: in std_logic_vector(REG_WIDTH-1 downto 0);
			ISR: out std_logic_vector(REG_WIDTH-1 downto 0);
			INTERRUPT: out std_logic;
			CPU_STOP: out std_logic
			);
end component;

-- Intel Bidirectional Buffer -- replaced with Xilinx IO Buffer
component  iobuf_iobuf_bidir_30p IS 
	 PORT 
	 ( 
		 datain	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 dataio	:	INOUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 dataout	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 oe	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0)
	 ); 
end component;


 
component dRISC_PLL IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC ;
		c2		: OUT STD_LOGIC ;
		c3		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
end component;

signal CLKu: std_logic;
signal CLKu0: std_logic;
signal CLKuu0: std_logic;
signal PLLo0: std_logic;
signal PLLo1: std_logic;
signal PLLo2: std_logic;
signal PLLo3: std_logic;
signal RSTu: std_logic;
signal PCu: std_logic_vector(MEMORY_WIDTH-1 downto 0);
signal MCRu: std_logic_vector(REG_WIDTH-1 downto 0);
signal IWRu: std_logic_vector(REG_WIDTH-1 downto 0);
signal IWRuu: std_logic_vector(REG_WIDTH-1 downto 0);
signal ICRu: std_logic_vector(REG_WIDTH-1 downto 0);
signal ICRuu: std_logic_vector(REG_WIDTH-1 downto 0);
signal CSRu: std_logic_vector(REG_WIDTH-1 downto 0);
signal CSRuu: std_logic_vector(REG_WIDTH-1 downto 0);
signal ISRi: std_logic_vector(REG_WIDTH-1 downto 0);
signal IORu: std_logic_vector(REG_WIDTH-1 downto 0);
signal IORuu: std_logic_vector(REG_WIDTH-1 downto 0);
signal IORi: std_logic_vector(REG_WIDTH-1 downto 0);
signal IORii: std_logic_vector(REG_WIDTH-1 downto 0);

signal CMPu: std_logic_vector(CMP_WIDTH-1 downto 0);
signal IDRu: std_logic_vector(REG_WIDTH-1 downto 0);
signal IDRuu: std_logic_vector(REG_WIDTH-1 downto 0);
signal Eu: signed(MEMORY_WIDTH-1 downto 0);
signal Du: signed(MEMORY_WIDTH-1 downto 0);
signal Fu: signed(MEMORY_WIDTH-1 downto 0);
signal DATAu: signed(MEMORY_WIDTH-1 downto 0);
signal INTERRUPT_BLOCKu: std_logic;
signal INTERRUPTi: std_logic;
signal CPU_STOPu: std_logic :='0';
signal CPU_STOPio: std_logic;
signal LOCKu: std_logic;
signal HALTu: std_logic := '0';
signal OVERFLOWu: std_logic;

signal MEM_addressu		: STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
signal MEM_datau		: STD_LOGIC_VECTOR (15 DOWNTO 0);
signal MEM_rdenu		: STD_LOGIC := '1';
signal MEM_wrenu		: STD_LOGIC;
signal MEM_qu		: STD_LOGIC_VECTOR (15 DOWNTO 0);
signal RSTdb : std_logic := '0';

begin

-- This process blocks the clocks when the CPU is halted and selects
-- the PLL output to be used based on the values of CSR
CLKSEL0: process(PLLo0, PLLo1, PLLo2, PLLo3, CSRuu, HALTu) 
	begin
	
		case CSRuu is
			when SPEED_10kHz => 
			
					CLKuu0 <= PLLo0 and not HALTu;
					
					
			when SPEED_1MHz => 
			
					CLKuu0 <= PLLo1 and not HALTu;
					
					
			when SPEED_50MHz => 
			
					CLKuu0 <= PLLo2 and not HALTu;
					
					
			when SPEED_100MHz => 
			
					CLKuu0 <= PLLo3 and not HALTu;
					
					
			when others => 
			
					CLKuu0 <= PLLo0 and not HALTu;
					
					
		end case;

end process;

CLKu0 <= CLKuu0;
CLKu <= CLKuu0;

RSTu <= not RST;

-- Debouncer for reset. The counter introduced sequential delay to hold reset for a sufficient time
-- to enable RTL simulation
DEBOUNCE0: process(CLKu, RSTu, CPU_STOPu, CSRu)
   variable RST_COUNT: Integer := 0;
	begin
	
		if RSTu = '1' then
			
			RST_COUNT := 0;
			RSTdb <= '1';
			HALTu <= '0';
			CSRuu <= (others => '0');
			
		elsif CLK'event and CLK = '1' then
		
			if LOCKu = '1' and RST_COUNT = RST_COUNT_MAX then
			
				RSTdb <= '0';
				HALTu <= CPU_STOPu;
				CSRuu <= CSRu;
				
			else
			
				RSTdb <= '1';
				
				if LOCKu = '1' then
				
					RST_COUNT := RST_COUNT + 1;
				
				end if;
				
			end if;
			
		end if;
		
	end process;

PLL0: dRISC_PLL port map( -- replaced with xilinx pll
                inclk0 => CLK, 
				c0 => PLLo0, 
				c1 => PLLo1, 
				c2 => PLLo2, 
				c3 => PLLo3, 
				locked => LOCKu);

DRISCALU0: dRISC_ALU port map(	MEM_A => Eu, 
				MEM_B => Du, 
				MEM_MEM_B => Fu, 
				PC => PCu, 
				DATA => DATAu, 
				MCR => MCRu, 
				OVERFLOW => OVERFLOWu,
				CMP => CMPu,
				CPU_STOPin => CPU_STOPio, 
				CLK => CLKu, 
				RST => RSTdb);
										
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

PROCESSOR0: dRISC_FSM port map(	CLK => CLKu, 
				RST => RSTdb, 
				PC => PCu,
				MCR => MCRu, 
				CHR => open, 
				IWR => IWRu, 
				ICR => ICRu, 
				CSR => CSRu, 
				ISR => open, 
				ISRin => ISRi,
				IOR => IORu, 
				IORin => IORii, 
				IDR => IDRu,
				ALU_DATA => DATAu, 
				CMP => CMPu,
				A => open, 
				B => open, 
				C => open, 
				D => Du, 
				E => Eu, 
				F => Fu, 
				INTERRUPT_BLOCK => 
				INTERRUPT_BLOCKu,
				INTERRUPT => INTERRUPTi, 
				CPU_STOPin => CPU_STOPio,
				CPU_STOP => CPU_STOPu, 
				OVERFLOW => OVERFLOWu,
				MEM_address => MEM_addressu, 
				MEM_data => MEM_datau, 
				MEM_rden => MEM_rdenu, 
				MEM_wren => MEM_wrenu, 
				MEM_q => MEM_qu);

IOBUF0: 	iobuf_iobuf_bidir_30p port map(	datain => IORuu, 
						dataio => IOR, 
						dataout => IORi, 
						oe => IDRuu);

IORii <= IORi;
IORuu <= IORu;
IDRuu <= IDRu;
IWRuu <= IWRu;
ICRuu <= ICRu;

IOCONTROLLER0: dRISC_IOCONTROLLER port map(	CLK => CLKu0, 
						RST => RSTdb, 
						INTERRUPT_BLOCK => INTERRUPT_BLOCKu, 
						IOR => IORii, 
						IWR => IWRuu, 
						ICR => ICRuu, 
						ISR => ISRi, 
						INTERRUPT => INTERRUPTi, 
						CPU_STOP => CPU_STOPio);

end BEHAVIOURAL;
