
-- VHDL Instantiation Created from source file UControl.vhd -- 18:42:03 02/07/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UControl
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		siguiente : IN std_logic;          
		LCD_DB : OUT std_logic_vector(7 downto 0);
		LCD_E : OUT std_logic;
		LCD_RS : OUT std_logic;
		status : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_UControl: UControl PORT MAP(
		clk => ,
		rst_n => ,
		siguiente => ,
		LCD_DB => ,
		LCD_E => ,
		LCD_RS => ,
		status => 
	);


