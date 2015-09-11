
-- VHDL Instantiation Created from source file Control.vhd -- 02:31:16 02/05/2009
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
		DB : OUT std_logic_vector(7 downto 0);
		E : OUT std_logic;
		RS : OUT std_logic;
		clr : OUT std_logic;
		tiempo : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_Control: Control PORT MAP(
		clk => ,
		rst_n => ,
		tic => ,
		DB => ,
		E => ,
		RS => ,
		clr => ,
		tiempo => 
	);


