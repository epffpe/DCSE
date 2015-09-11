
-- VHDL Instantiation Created from source file LCD_Control.vhd -- 20:22:38 08/22/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT LCD_Control
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		sw : IN std_logic;
		btn_tick : IN std_logic_vector(3 downto 0);
		press_tick : IN std_logic;
		keyboard_tick : IN std_logic;
		rotary_tick : IN std_logic;
		rotary_izq : IN std_logic;
		kb_data : IN std_logic_vector(7 downto 0);          
		lcd_db : OUT std_logic_vector(3 downto 0);
		lcd_e : OUT std_logic;
		lcd_rs : OUT std_logic;
		lcd_rw : OUT std_logic;
		leds : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_LCD_Control: LCD_Control PORT MAP(
		clk => ,
		rst => ,
		sw => ,
		btn_tick => ,
		press_tick => ,
		keyboard_tick => ,
		rotary_tick => ,
		rotary_izq => ,
		kb_data => ,
		lcd_db => ,
		lcd_e => ,
		lcd_rs => ,
		lcd_rw => ,
		leds => 
	);


