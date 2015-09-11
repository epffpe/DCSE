
-- VHDL Instantiation Created from source file Interfaz.vhd -- 18:40:18 02/05/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Interfaz
	PORT(
		clk : IN std_logic;
		rotatory_in : IN std_logic_vector(1 downto 0);
		rotatory_press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo_in : IN std_logic;          
		rst : OUT std_logic;
		rotatory_event : OUT std_logic;
		rotatory_left : OUT std_logic;
		press_out : OUT std_logic;
		pb_out : OUT std_logic_vector(3 downto 0);
		modo_out : OUT std_logic
		);
	END COMPONENT;

	Inst_Interfaz: Interfaz PORT MAP(
		clk => ,
		rotatory_in => ,
		rotatory_press => ,
		pb => ,
		modo_in => ,
		rst => ,
		rotatory_event => ,
		rotatory_left => ,
		press_out => ,
		pb_out => ,
		modo_out => 
	);


