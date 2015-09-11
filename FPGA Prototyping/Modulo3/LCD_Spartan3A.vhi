
-- VHDL Instantiation Created from source file LCD_Spartan3A.vhd -- 20:22:56 08/22/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT LCD_Spartan3A
	PORT(
		clk : IN std_logic;
		modo : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		rot_press : IN std_logic;
		rot_a : IN std_logic;
		rot_b : IN std_logic;
		ps2c : IN std_logic;
		ps2d : IN std_logic;          
		tx : OUT std_logic;
		lcd_db : OUT std_logic_vector(7 downto 0);
		lcd_e : OUT std_logic;
		lcd_rs : OUT std_logic;
		lcd_rw : OUT std_logic;
		leds : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_LCD_Spartan3A: LCD_Spartan3A PORT MAP(
		clk => ,
		modo => ,
		pb => ,
		rot_press => ,
		rot_a => ,
		rot_b => ,
		ps2c => ,
		ps2d => ,
		tx => ,
		lcd_db => ,
		lcd_e => ,
		lcd_rs => ,
		lcd_rw => ,
		leds => 
	);


