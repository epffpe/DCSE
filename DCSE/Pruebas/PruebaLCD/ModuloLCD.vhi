
-- VHDL Instantiation Created from source file ModuloLCD.vhd -- 01:58:47 02/05/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ModuloLCD
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;          
		LCD_DB : OUT std_logic_vector(7 downto 0);
		LCD_E : OUT std_logic;
		LCD_RS : OUT std_logic;
		LCD_RW : OUT std_logic
		);
	END COMPONENT;

	Inst_ModuloLCD: ModuloLCD PORT MAP(
		clk50 => ,
		rst => ,
		LCD_DB => ,
		LCD_E => ,
		LCD_RS => ,
		LCD_RW => 
	);


