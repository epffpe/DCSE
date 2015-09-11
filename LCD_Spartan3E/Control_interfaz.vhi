
-- VHDL Instantiation Created from source file Control_interfaz.vhd -- 18:52:11 09/08/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_interfaz
	PORT(
		clk : IN std_logic;
		sw : IN std_logic_vector(2 downto 0);
		btn : IN std_logic_vector(3 downto 0);
		rotary_a : IN std_logic;
		rotary_b : IN std_logic;
		rotary_press : IN std_logic;          
		reset : OUT std_logic;
		btn_level : OUT std_logic_vector(4 downto 0);
		btn_tick : OUT std_logic_vector(3 downto 0);
		sw_level : OUT std_logic_vector(2 downto 0);
		press_tick : OUT std_logic;
		rotary_tick : OUT std_logic;
		rotary_izq : OUT std_logic
		);
	END COMPONENT;

	Inst_Control_interfaz: Control_interfaz PORT MAP(
		clk => ,
		sw => ,
		btn => ,
		rotary_a => ,
		rotary_b => ,
		rotary_press => ,
		reset => ,
		btn_level => ,
		btn_tick => ,
		sw_level => ,
		press_tick => ,
		rotary_tick => ,
		rotary_izq => 
	);


