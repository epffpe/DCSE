
-- VHDL Instantiation Created from source file LEDS.vhd -- 04:38:50 02/06/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT LEDS
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		rotatory_event : IN std_logic;
		rotatory_left : IN std_logic;
		rotatory_press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);          
		leds : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_LEDS: LEDS PORT MAP(
		clk => ,
		rst_n => ,
		rotatory_event => ,
		rotatory_left => ,
		rotatory_press => ,
		pb => ,
		leds => 
	);


