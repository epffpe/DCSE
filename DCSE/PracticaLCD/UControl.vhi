
-- VHDL Instantiation Created from source file UControl.vhd -- 22:56:43 02/06/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UControl
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		timer : IN std_logic;
		rotatory_event : IN std_logic;
		rotatory_left : IN std_logic;
		rot_press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo : IN std_logic;
		addr : IN std_logic;
		caracter : IN std_logic_vector(7 downto 0);          
		LCD_DB : OUT std_logic_vector(7 downto 0);
		LCD_E : OUT std_logic;
		LCD_RS : OUT std_logic;
		clr_timer : OUT std_logic;
		tiempo : OUT std_logic_vector(1 downto 0);
		pb_sel : OUT std_logic_vector(1 downto 0);
		incrementa_pb : OUT std_logic;
		addr_en : OUT std_logic
		);
	END COMPONENT;

	Inst_UControl: UControl PORT MAP(
		clk => ,
		rst_n => ,
		timer => ,
		rotatory_event => ,
		rotatory_left => ,
		rot_press => ,
		pb => ,
		modo => ,
		addr => ,
		caracter => ,
		LCD_DB => ,
		LCD_E => ,
		LCD_RS => ,
		clr_timer => ,
		tiempo => ,
		pb_sel => ,
		incrementa_pb => ,
		addr_en => 
	);


