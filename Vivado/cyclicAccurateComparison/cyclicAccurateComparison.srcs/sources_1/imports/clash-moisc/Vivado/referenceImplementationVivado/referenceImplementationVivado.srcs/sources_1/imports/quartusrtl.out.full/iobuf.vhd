 Library UNISIM;
 use UNISIM.vcomponents.all;

 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  iobuf_iobuf_bidir_30p IS 
	 PORT 
	 ( 
		 datain	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
		 dataio	:	INOUT  STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
		 dataout	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
		 oe	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '1')
	 ); 
 END iobuf_iobuf_bidir_30p;

 ARCHITECTURE RTL OF iobuf_iobuf_bidir_30p IS

	 SIGNAL  wire_ibufa_i	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
	 SIGNAL  wire_ibufa_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
	 SIGNAL  wire_obufa_i	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
	 SIGNAL  wire_obufa_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
	 SIGNAL  wire_obufa_oe	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '1');
	 
 BEGIN
    loop0 : FOR i IN 0 TO 7 GENERATE 
        IOBUF_inst : IOBUF
       generic map (
          DRIVE => 12)
       port map (
          O => dataout(i),     -- Buffer output
          IO => dataio(i),   -- Buffer inout port (connect directly to top-level port)
          I => datain(i),     -- Buffer input
          T => not oe(i)      -- 3-state enable input, high=input, low=output 
       );
       END GENERATE;
 END RTL; 
