
-- VHDL Instantiation Created from source file Interfaz.vhd -- 00:34:34 02/07/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Interfaz
	PORT(
		clk : IN std_logic;
		rotatory_in : IN std_logic_vector(1 downto 0);
		rotatory_press_in : IN std_logic;
		pb_in : IN std_logic_vector(3 downto 0);
		modo_in : IN std_logic;          
		rst_n : OUT std_logic;
		rotatory_event : OUT std_logic;
		rotatory_left : OUT std_logic;
		rot_press_out : OUT std_logic;
		modo_out : OUT std_logic;
		pb_out : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Interfaz: Interfaz PORT MAP(
		clk => ,
		rotatory_in => ,
		rotatory_press_in => ,
		pb_in => ,
		modo_in => ,
		rst_n => ,
		rotatory_event => ,
		rotatory_left => ,
		rot_press_out => ,
		modo_out => ,
		pb_out => 
	);


