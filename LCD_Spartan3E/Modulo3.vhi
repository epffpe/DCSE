
-- VHDL Instantiation Created from source file Modulo3.vhd -- 04:16:53 09/09/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Modulo3
	PORT(
		clk : IN std_logic;
		modo : IN std_logic_vector(2 downto 0);
		pb : IN std_logic_vector(3 downto 0);
		rot_press : IN std_logic;
		rot_a : IN std_logic;
		rot_b : IN std_logic;
		ps2c : IN std_logic;
		ps2d : IN std_logic;
		rx : IN std_logic;          
		tx : OUT std_logic;
		lcd_db : OUT std_logic_vector(3 downto 0);
		lcd_e : OUT std_logic;
		lcd_rs : OUT std_logic;
		lcd_rw : OUT std_logic;
		lcd_CE0 : OUT std_logic;
		leds : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Modulo3: Modulo3 PORT MAP(
		clk => ,
		modo => ,
		pb => ,
		rot_press => ,
		rot_a => ,
		rot_b => ,
		ps2c => ,
		ps2d => ,
		rx => ,
		tx => ,
		lcd_db => ,
		lcd_e => ,
		lcd_rs => ,
		lcd_rw => ,
		lcd_CE0 => ,
		leds => 
	);


