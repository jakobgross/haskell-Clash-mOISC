----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2022 17:13:08
-- Design Name: 
-- Module Name: tb_compare - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.dRISC_DEFINITIONS.all;
use std.textio.all;
Library xpm; 
use xpm.vcomponents.all;
use work.ALU_types;
use work.ALU;

use work.FSM_types;
use work.FSM;

use work.Mem_types;
use work.Mem;

use work.IoCtr;
use work.IoCtr_types;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_compare is
--  Port ( );
end tb_compare;


architecture Behavioral of tb_compare is


    -- Simulation constants 
    constant T : time := 8 ns;
    -- Simulation Signals
    signal CLK, RST : std_logic; 
    signal inOutBuffer : std_logic_vector(7 downto 0);
    
    
    signal CLKu: std_logic := '0';
    signal CLKu0: std_logic := '0';
    signal CLKuu0: std_logic := '0';
    signal PLLo0: std_logic := '0';
    signal PLLo1: std_logic := '0';
    signal PLLo2: std_logic := '0';
    signal PLLo3: std_logic := '0';
    signal RSTu: std_logic := '0';
    
    
    signal IWRuu: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal ICRuu: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal CSRuu: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    
    signal IORuu: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal IORi: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal IORii: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    
    -- Outputs of reference IO Controller
    signal INTERRUPTi_reference: std_logic :='0';
    signal CPU_STOPio_reference: std_logic :='0';
    signal ISRi_reference: std_logic_vector(REG_WIDTH-1 downto 0):= (others => '0');
    
    -- Outputs of Clash IO Controller
    signal INTERRUPTi_clash: std_logic :='0';
    signal CPU_STOPio_clash: std_logic :='0';
    signal ISRi_clash: std_logic_vector(REG_WIDTH-1 downto 0):= (others => '0');
    
    -- Outputs of Reference Fsm
    signal PCu_reference: std_logic_vector(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal MCRu_reference: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal IWRu_reference: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal ICRu_reference: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal CSRu_reference: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal IORu_reference: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal IDRu_reference: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal Eu_reference: signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal Du_reference: signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal Fu_reference: signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal INTERRUPT_BLOCKu_reference: std_logic :='0';
    signal CPU_STOPu_reference: std_logic :='0';
    signal MEM_addressu_reference		: STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
    signal MEM_datau_reference		: STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
    signal MEM_rdenu_reference		: STD_LOGIC := '1';
    signal MEM_wrenu_reference		: STD_LOGIC :='0';
    
    signal PCu_clash: std_logic_vector(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal MCRu_clash: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal IWRu_clash: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal ICRu_clash: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal CSRu_clash: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal IORu_clash: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal IDRu_clash: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    signal Eu_clash: signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal Du_clash: signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal Fu_clash: signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal INTERRUPT_BLOCKu_clash: std_logic :='0';
    signal CPU_STOPu_clash: std_logic :='0';
    signal MEM_addressu_clash		: STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
    signal MEM_datau_clash		: STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
    signal MEM_rdenu_clash		: STD_LOGIC := '1';
    signal MEM_wrenu_clash		: STD_LOGIC :='0';
    
    
    -- Outputs of Reference ALU
    signal CMPu_reference: std_logic_vector(CMP_WIDTH-1 downto 0) := (others => '0');
    signal DATAu_reference: signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal OVERFLOWu_reference: std_logic := '0';
    
    -- Outputs of Clash ALU
    signal CMPu_clash: std_logic_vector(CMP_WIDTH-1 downto 0) := (others => '0');
    signal DATAu_clash: signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
    signal OVERFLOWu_clash: std_logic :='0';
    
    signal IDRuu: std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
    
    signal LOCKu: std_logic :='0';
    signal HALTu: std_logic := '0';
    
    signal MEM_qu_reference : STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
    signal MEM_qu_clash     : STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
    
    signal RSTdb : std_logic := '0';
    
    component dRISC_FSM is
    port (CLK: in std_logic := '0';
            RST: in std_logic := '0';
            PC: out std_logic_vector(MEMORY_WIDTH-1 downto 0) := (others => '0');
           MCR: out std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
           CHR: out std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
           IWR: out std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
           ICR: out std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
           CSR: out std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
           ISR: out std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
            ISRin: in std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
           IOR: out std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
            IORin: in std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
           IDR: out std_logic_vector(REG_WIDTH-1 downto 0) := (others => '0');
        
           ALU_DATA: in signed(MEMORY_WIDTH-1 downto 0) := (others => '0');
            CMP: in std_logic_vector(CMP_WIDTH-1 downto 0) := (others => '0');		
            A: out std_logic_vector(MEMORY_WIDTH-1 downto 0); 
            B: out std_logic_vector(MEMORY_WIDTH-1 downto 0);
            C: out std_logic_vector(MEMORY_WIDTH-1 downto 0);
            D: out signed(MEMORY_WIDTH-1 downto 0);
            E: out signed(MEMORY_WIDTH-1 downto 0); 
            F: out signed(MEMORY_WIDTH-1 downto 0);
            INTERRUPT_BLOCK: out std_logic;
            INTERRUPT: in std_logic := '0';
            CPU_STOP: out std_logic;
            OVERFLOW: in std_logic := '0';
            CPU_STOPin: in std_logic := '0';
    
            MEM_address		:OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            MEM_data		:OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            MEM_rden		:OUT STD_LOGIC  := '1';
            MEM_wren		:OUT STD_LOGIC ;
            MEM_q		: IN STD_LOGIC_VECTOR (15 DOWNTO 0)
            );
    end component;
    
    
    component FSM is
      port(-- clock
           CLK                        : in FSM_types.clk_xilinxsystem;
           -- reset
           RST                        : in FSM_types.rst_xilinxsystem;
           -- enable
           EN                         : in boolean;
           in_mem_data_rd             : in std_logic_vector(15 downto 0);
           in_ioctr_isr               : in std_logic_vector(7 downto 0);
           in_ioctr_interrupt         : in std_logic;
           in_ioctr_cpu_stop          : in std_logic;
           in_alu_data_res            : in signed(15 downto 0);
           in_alu_cmp                 : in std_logic_vector(2 downto 0);
           in_alu_overflow            : in std_logic;
           in_iobuf_data              : in std_logic_vector(7 downto 0);
           out_mem_address            : out std_logic_vector(15 downto 0);
           out_mem_data_wr            : out std_logic_vector(15 downto 0);
           out_mem_wren               : out std_logic;
           out_mem_rden               : out std_logic;
           out_ioctr_iwr              : out std_logic_vector(7 downto 0);
           out_ioctr_icr              : out std_logic_vector(7 downto 0);
           out_ioctr_interrupt_block  : out std_logic;
           out_alu_mcr                : out std_logic_vector(7 downto 0);
           out_alu_mem_a              : out signed(15 downto 0);
           out_alu_mem_b              : out signed(15 downto 0);
           out_alu_mem_mem_b          : out signed(15 downto 0);
           out_alu_pc                 : out std_logic_vector(15 downto 0);
           out_iobuf_dataout          : out std_logic_vector(7 downto 0);
           out_iobuf_oe               : out std_logic_vector(7 downto 0);
           out_clock_speed            : out std_logic_vector(7 downto 0);
           out_status_status          : out std_logic_vector(7 downto 0);
           out_status_cpu_stop_status : out std_logic);
    end component;
    
    -- Reference Memory
    component memory 
        PORT
        (
            address		: IN STD_LOGIC_VECTOR (14 DOWNTO 0) := (others => '0');
            clock		: IN STD_LOGIC  := '1';
            data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0');
            rden		: IN STD_LOGIC  := '1';
            wren		: IN STD_LOGIC  := '0';
            q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) := (others => '0')
        );
    end component;
    
    -- Clash signal
    component Mem
    port(-- clock
       CLK        : in Mem_types.clk_xilinxsystem;
       -- reset
       RST        : in Mem_types.rst_xilinxsystem;
       -- enable
       EN         : in Mem_types.en_xilinxsystem;
       rden       : in std_logic;
       wren       : in std_logic;
       address    : in std_logic_vector(14 downto 0);
       data       : in std_logic_vector(15 downto 0);
       out_data_q : out std_logic_vector(15 downto 0));
   end component;
    
    -- Reference ALU
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
    
    -- clash ALU
    component ALU is
        port(-- clock
           clk          : in std_logic;
           -- reset
           rst          : in std_logic;
           -- enable
           en           : in boolean;
           mcr          : in std_logic_vector(7 downto 0);
           pc           : in std_logic_vector(15 downto 0);
           mem_a        : in signed(15 downto 0);
           mem_b        : in signed(15 downto 0);
           mem_mem_b    : in signed(15 downto 0);
           out_overflow : out std_logic;
           out_cmp      : out std_logic_vector(2 downto 0);
           out_data     : out signed(15 downto 0));
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
        
    component IoCtr is
      port(-- clock
           CLK             : in IoCtr_types.clk_xilinxsystem;
           -- reset
           RST             : in IoCtr_types.rst_xilinxsystem;
           -- enable
           EN              : in IoCtr_types.en_xilinxsystem;
           INTERRUPT_BLOCK : in std_logic;
           IOR_in          : in std_logic_vector(7 downto 0);
           IWR_in          : in std_logic_vector(7 downto 0);
           ICR_in          : in std_logic_vector(7 downto 0);
           out_ISR         : out std_logic_vector(7 downto 0);
           out_INTERRUPT   : out std_logic;
           out_CPU_STOP    : out std_logic);
   end component; 
   
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
    
    
begin
CLKu0 <= CLKuu0;
CLKu <= CLKuu0;
RSTu <= not RST;
IORii <= IORi;
IORuu <= IORu_reference;
IDRuu <= IDRu_reference;
IWRuu <= IWRu_reference;
ICRuu <= ICRu_reference;

RST <= '1';

CLKGEN: process
begin
    CLK <= '0';
    wait for T /2;
    CLK <= '1';
    wait for T/2;
end process;
 

Compare : process (CLKu)
    -- TODO nur on Cycle Change
    begin
        -- Compare ALU signals
        assert CMPu_clash = CMPu_reference report "CMP clash: 0x" & to_hstring(CMPu_clash) & " != 0x" & to_hstring(CMPu_reference);
        assert DATAu_clash = DATAu_reference or CMPu_reference = "XXXXXXXXXXXXXXXX" report "DATA clash: 0x" &  to_hstring(DATAu_clash) & " != 0x" & to_hstring(DATAu_reference);
        assert OVERFLOWu_clash = OVERFLOWu_reference report "OVR clash: " & std_logic'image(OVERFLOWu_clash) & " != " & std_logic'image(OVERFLOWu_reference);
    
        -- Compare FSM signals
        assert PCu_reference = PCu_clash report " PCu_clash: 0x" & to_hstring( PCu_clash) & " != 0x" & to_hstring(PCu_reference); 
        assert MCRu_reference = MCRu_clash report " MCRu_clash: 0x" & to_hstring( MCRu_clash) & " != 0x" & to_hstring(MCRu_reference); 
        assert IWRu_reference = IWRu_clash report " IWRu_clash: 0x" & to_hstring( IWRu_clash) & " != 0x" & to_hstring(IWRu_reference); 
        assert ICRu_reference = ICRu_clash report " ICRu_clash: 0x" & to_hstring( ICRu_clash) & " != 0x" & to_hstring(ICRu_reference); 
        assert CSRu_reference = CSRu_clash report " CSRu_clash: 0x" & to_hstring( CSRu_clash) & " != 0x" & to_hstring(CSRu_reference); 
        assert IORu_reference = IORu_clash report " IORu_clash: 0x" & to_hstring( IORu_clash) & " != 0x" & to_hstring(IORu_reference); 
        assert IDRu_reference = IDRu_clash report " IDRu_clash: 0x" & to_hstring( IDRu_clash) & " != 0x" & to_hstring(IDRu_reference); 
        assert Eu_reference  = Eu_clash report " Eu_clash: 0x" & to_hstring( Eu_clash) & " != 0x" & to_hstring(Eu_reference); 
        assert Du_reference  = Du_clash report " Du_clash: 0x" & to_hstring( Du_clash) & " != 0x" & to_hstring(Du_reference); 
        assert Fu_reference= Fu_clash report " Fu_clash: 0x" & to_hstring( Fu_clash) & " != 0x" & to_hstring(Fu_reference); 
        assert INTERRUPT_BLOCKu_reference = INTERRUPT_BLOCKu_clash report " INTERRUPT_BLOCKu_clash: 0x" & std_logic'image( INTERRUPT_BLOCKu_clash) & " != 0x" & std_logic'image(INTERRUPT_BLOCKu_reference); 
        assert CPU_STOPu_reference = CPU_STOPu_clash report " CPU_STOPu_clash: 0x" & std_logic'image( CPU_STOPu_clash) & " != 0x" & std_logic'image(CPU_STOPu_reference); 
        assert MEM_addressu_reference  = MEM_addressu_clash report " MEM_addressu_clash: 0x" & to_hstring( MEM_addressu_clash) & " != 0x" & to_hstring(MEM_addressu_reference); 
        assert MEM_datau_reference = MEM_datau_clash report " MEM_datau_clash: 0x" & to_hstring( MEM_datau_clash) & " != 0x" & to_hstring(MEM_datau_reference); 
        assert MEM_rdenu_reference = MEM_rdenu_clash report " MEM_rdenu_clash: 0x" & std_logic'image( MEM_rdenu_clash) & " != 0x" & std_logic'image(MEM_rdenu_reference); 
        assert MEM_wrenu_reference = MEM_wrenu_clash report " MEM_wrenu_clash: 0x" & std_logic'image( MEM_wrenu_clash) & " != 0x" & std_logic'image(MEM_wrenu_reference); 
    
        -- Compare Mem Signals
        assert MEM_qu_reference = MEM_qu_clash report " MEM_wrenu_clash: 0x" & to_hstring( MEM_qu_clash) & " != 0x" & to_hstring( MEM_qu_reference); 
    
        -- Compare IoController Signals
        assert INTERRUPTi_reference = INTERRUPTi_clash report "INTERRUPTi_clash: 0x" & std_logic'image( INTERRUPTi_clash) & " != 0x" & std_logic'image(INTERRUPTi_reference); 
        assert CPU_STOPio_reference = CPU_STOPio_clash report "CPU_STOPio_clash: 0x" & std_logic'image( CPU_STOPio_clash) & " != 0x" & std_logic'image(CPU_STOPio_reference); 
        assert ISRi_reference = ISRi_clash report " ISRi_clash: 0x" & to_hstring( ISRi_clash) & " != 0x" & to_hstring(ISRi_reference);
    end process;


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

DEBOUNCE0: process(CLKu, RSTu, CPU_STOPu_reference, CSRu_reference)
   variable RST_COUNT: Integer := 0;
	begin
	
		if RSTu = '1' then
			
			RST_COUNT := 0;
			RSTdb <= '1';
			HALTu <= '0';
			CSRuu <= (others => '0');
			
		elsif CLKu'event and CLKu = '1' then
		
			if LOCKu = '1' and RST_COUNT = RST_COUNT_MAX then
			
				RSTdb <= '0';
				HALTu <= CPU_STOPu_reference;
				CSRuu <= CSRu_reference;
				
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

DRISCALU0: dRISC_ALU port map(	MEM_A => Eu_reference, 
				MEM_B => Du_reference, 
				MEM_MEM_B => Fu_reference, 
				PC => PCu_reference, 
				DATA => DATAu_reference, 
				MCR => MCRu_reference, 
				OVERFLOW => OVERFLOWu_reference,
				CMP => CMPu_reference,
				CPU_STOPin => CPU_STOPio_reference, 
				CLK => CLKu, 
				RST => RSTdb);

CLASHALU0: ALU port map (
                clk => CLKu,
                   -- reset
                rst => RSTdb,
                   -- enable
                en => True,
                mcr => MCRu_reference,
                pc => PCu_reference,
                mem_a  => Eu_reference,
                mem_b => Du_reference,
                mem_mem_b => Fu_reference,
                out_overflow => OVERFLOWu_clash,
                out_cmp => CMPu_clash,
                out_data => DATAu_clash);

PROCESSOR0: dRISC_FSM port map(	CLK => CLKu, 
				RST => RSTdb, 
				PC => PCu_reference,
				MCR => MCRu_reference, 
				CHR => open, 
				IWR => IWRu_reference, 
				ICR => ICRu_reference, 
				CSR => CSRu_reference, 
				ISR => open, 
				ISRin => ISRi_reference,
				IOR => IORu_reference, 
				IORin => IORii, 
				IDR => IDRu_reference,
				ALU_DATA => DATAu_reference, 
				CMP => CMPu_reference,
				A => open, 
				B => open, 
				C => open, 
				D => Du_reference, 
				E => Eu_reference, 
				F => Fu_reference, 
				INTERRUPT_BLOCK => 
				INTERRUPT_BLOCKu_reference,
				INTERRUPT => INTERRUPTi_reference, 
				CPU_STOPin => CPU_STOPio_reference,
				CPU_STOP => CPU_STOPu_reference, 
				OVERFLOW => OVERFLOWu_reference,
				MEM_address => MEM_addressu_reference, 
				MEM_data => MEM_datau_reference, 
				MEM_rden => MEM_rdenu_reference, 
				MEM_wren => MEM_wrenu_reference, 
				MEM_q => MEM_qu_reference);


				
CLASHPROCESSOR : FSM port map
                (
                CLK => CLKu, 
				RST => RSTdb,
				EN => ?? CPU_STOPio_reference,
				in_mem_data_rd => MEM_qu_reference,
				in_ioctr_isr => ISRi_reference,
				in_ioctr_interrupt => INTERRUPTi_reference,
				in_ioctr_cpu_stop => CPU_STOPio_reference,
				in_alu_data_res => DATAu_reference,
				in_alu_cmp => CMPu_reference,
				in_alu_overflow => OVERFLOWu_reference,
				in_iobuf_data => IORii,
				
				out_mem_address => MEM_addressu_clash,
				out_mem_data_wr => MEM_datau_clash,
				out_mem_wren => MEM_wrenu_clash,
				out_mem_rden => MEM_rdenu_clash,
				out_ioctr_iwr => IWRu_clash,
				out_ioctr_icr => ICRu_clash,
				out_ioctr_interrupt_block => INTERRUPT_BLOCKu_clash,
				out_alu_mcr => MCRu_clash,
				out_alu_mem_a => Eu_clash,
				out_alu_mem_b => Du_clash,
				out_alu_mem_mem_b => Fu_clash,
				out_alu_pc => PCu_clash,
				out_iobuf_dataout => IORu_clash,
				out_iobuf_oe => IDRu_clash,
				out_clock_speed => CSRu_clash,
				out_status_status => open,
				out_status_cpu_stop_status => CPU_STOPu_clash
                );

IOBUF0: iobuf_iobuf_bidir_30p port map(	datain => IORuu, 
						dataio => inOutBuffer, 
						dataout => IORi, 
						oe => IDRuu);

IOCONTROLLER0: dRISC_IOCONTROLLER port map(	CLK => CLKu0, 
                    RST => RSTdb, 
                    INTERRUPT_BLOCK => INTERRUPT_BLOCKu_reference, 
                    IOR => IORii, 
                    IWR => IWRuu, 
                    ICR => ICRuu, 
                    ISR => ISRi_reference, 
                    INTERRUPT => INTERRUPTi_reference, 
                    CPU_STOP => CPU_STOPio_reference);
                    
IOCONTROLLER_CLASH: IoCtr port map
      (-- clock
           CLK => CLKu0,
           -- reset
           RST => RSTdb,
           -- enable
           EN => True,
           INTERRUPT_BLOCK => INTERRUPT_BLOCKu_reference,
           IOR_in => IORii,
           IWR_in => IWRuu,
           ICR_in => ICRuu,
           out_ISR => ISRi_clash,
           out_INTERRUPT => INTERRUPTi_clash,
           out_CPU_STOP => CPU_STOPio_clash);                    

UMEM0: memory port map(	address => MEM_addressu_reference(14 downto 0), 
			clock => CLKu, 
			data => MEM_datau_reference, 
			rden => MEM_rdenu_reference, 
			wren => MEM_wrenu_reference, 
			q => MEM_qu_reference); 
			
CLASHMEM : Mem port map(
    CLK => CLKu,
    EN => True,
    RST => '0',
    data => MEM_datau_reference,
    address => MEM_addressu_reference(14 downto 0), 
    rden => MEM_rdenu_reference, 
    wren => MEM_wrenu_reference,
    out_data_q => MEM_qu_clash
);

end Behavioral;


