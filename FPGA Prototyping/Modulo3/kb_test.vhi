
-- VHDL Instantiation Created from source file kb_test.vhd -- 05:32:35 08/22/2009
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
		tx : OUT std_logic
		);
	END COMPONENT;

	Inst_kb_test: kb_test PORT MAP(
		clk => ,
		reset => ,
		ps2d => ,
		ps2c => ,
		tx => 
	);


