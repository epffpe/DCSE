
-- VHDL Instantiation Created from source file kb_test.vhd -- 19:05:18 09/08/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT kb_test
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		ps2d : IN std_logic;
		ps2c : IN std_logic;
		sw : IN std_logic;
		rx : IN std_logic;          
		kb_tick : OUT std_logic;
		codigo_ascii : OUT std_logic_vector(7 downto 0);
		tx : OUT std_logic
		);
	END COMPONENT;

	Inst_kb_test: kb_test PORT MAP(
		clk => ,
		reset => ,
		ps2d => ,
		ps2c => ,
		sw => ,
		rx => ,
		kb_tick => ,
		codigo_ascii => ,
		tx => 
	);


