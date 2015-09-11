
-- VHDL Instantiation Created from source file Control.vhd -- 19:15:39 02/05/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		tic : IN std_logic;
		rotatory_event : IN std_logic;
		rotatory_left : IN std_logic;
		press : IN std_logic;
		pb : IN std_logic_vector(3 downto 0);
		modo : IN std_logic;
		addr : IN std_logic_vector(3 downto 0);
		caracter : IN std_logic_vector(7 downto 0);          
		DB : OUT std_logic_vector(7 downto 0);
		E : OUT std_logic;
		RS : OUT std_logic;
		clr : OUT std_logic;
		tiempo : OUT std_logic_vector(1 downto 0);
		pb_sel : OUT std_logic_vector(1 downto 0);
		pb_control : OUT std_logic_vector(3 downto 0);
		addr_control : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_Control: Control PORT MAP(
		clk => ,
		rst_n => ,
		tic => ,
		rotatory_event => ,
		rotatory_left => ,
		press => ,
		pb => ,
		modo => ,
		addr => ,
		caracter => ,
		DB => ,
		E => ,
		RS => ,
		clr => ,
		tiempo => ,
		pb_sel => ,
		pb_control => ,
		addr_control => 
	);


