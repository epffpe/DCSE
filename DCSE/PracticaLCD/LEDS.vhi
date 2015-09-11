
-- VHDL Instantiation Created from source file LEDS.vhd -- 00:18:03 02/07/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT LEDS
	PORT(
		clk : IN std_logic;
		rotatory_event : IN std_logic;
		rotatory_left : IN std_logic;
		rotatory_press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo : IN std_logic;          
		leds : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_LEDS: LEDS PORT MAP(
		clk => ,
		rotatory_event => ,
		rotatory_left => ,
		rotatory_press => ,
		pb => ,
		modo => ,
		leds => 
	);


