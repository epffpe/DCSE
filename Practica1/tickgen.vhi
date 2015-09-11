
-- VHDL Instantiation Created from source file tickgen.vhd -- 23:40:23 11/03/2008
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT tickgen
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;          
		tick : OUT std_logic
		);
	END COMPONENT;

	Inst_tickgen: tickgen PORT MAP(
		clk => ,
		rst_n => ,
		tick => 
	);


