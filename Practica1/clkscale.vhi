
-- VHDL Instantiation Created from source file clkscale.vhd -- 23:48:11 11/03/2008
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT clkscale
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		divsel : IN std_logic_vector(3 downto 0);          
		clkout : OUT std_logic
		);
	END COMPONENT;

	Inst_clkscale: clkscale PORT MAP(
		clk => ,
		rst_n => ,
		divsel => ,
		clkout => 
	);


