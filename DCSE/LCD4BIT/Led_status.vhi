
-- VHDL Instantiation Created from source file Led_status.vhd -- 06:40:29 02/07/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Led_status
	PORT(
		clk : IN std_logic;
		status : IN std_logic_vector(7 downto 0);          
		leds : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Led_status: Led_status PORT MAP(
		clk => ,
		status => ,
		leds => 
	);


