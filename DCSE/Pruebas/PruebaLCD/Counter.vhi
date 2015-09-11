
-- VHDL Instantiation Created from source file Counter.vhd -- 01:57:48 02/05/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Counter
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;
		tiempo : IN std_logic_vector(1 downto 0);          
		tic : OUT std_logic
		);
	END COMPONENT;

	Inst_Counter: Counter PORT MAP(
		clk => ,
		clr => ,
		tiempo => ,
		tic => 
	);


