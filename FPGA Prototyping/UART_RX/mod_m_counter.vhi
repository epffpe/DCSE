
-- VHDL Instantiation Created from source file mod_m_counter.vhd -- 05:57:19 08/23/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mod_m_counter
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		max_tick : OUT std_logic;
		q : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_mod_m_counter: mod_m_counter PORT MAP(
		clk => ,
		reset => ,
		max_tick => ,
		q => 
	);


