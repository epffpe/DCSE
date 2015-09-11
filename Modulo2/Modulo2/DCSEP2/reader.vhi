
-- VHDL Instantiation Created from source file reader.vhd -- 16:58:10 12/07/2008
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reader
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		hold_in : IN std_logic;
		up_down : IN std_logic;          
		DO : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_reader: reader PORT MAP(
		clk => ,
		rst_n => ,
		hold_in => ,
		up_down => ,
		DO => 
	);


