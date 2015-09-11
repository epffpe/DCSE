
-- VHDL Instantiation Created from source file DEBOUNCER.vhd -- 16:26:21 02/05/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DEBOUNCER
	PORT(
		clk10ms : IN std_logic;
		rst_n : IN std_logic;
		hold_in : IN std_logic;          
		hold_out : OUT std_logic
		);
	END COMPONENT;

	Inst_DEBOUNCER: DEBOUNCER PORT MAP(
		clk10ms => ,
		rst_n => ,
		hold_in => ,
		hold_out => 
	);


