
-- VHDL Instantiation Created from source file debounce.vhd -- 18:57:05 09/08/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT debounce
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		sw : IN std_logic;          
		db_level : OUT std_logic;
		db_tick : OUT std_logic
		);
	END COMPONENT;

	Inst_debounce: debounce PORT MAP(
		clk => ,
		reset => ,
		sw => ,
		db_level => ,
		db_tick => 
	);


