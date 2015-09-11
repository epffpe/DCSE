
-- VHDL Instantiation Created from source file divisorRAM.vhd -- 17:00:27 12/07/2008
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT divisorRAM
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		persel : IN std_logic_vector(1 downto 0);          
		clkRAM : OUT std_logic
		);
	END COMPONENT;

	Inst_divisorRAM: divisorRAM PORT MAP(
		clk => ,
		rst_n => ,
		persel => ,
		clkRAM => 
	);


