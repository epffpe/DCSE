
-- VHDL Instantiation Created from source file fifo.vhd -- 20:04:37 08/19/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT fifo
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		rd : IN std_logic;
		wr : IN std_logic;
		w_data : IN std_logic_vector(7 downto 0);          
		empty : OUT std_logic;
		full : OUT std_logic;
		r_data : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_fifo: fifo PORT MAP(
		clk => ,
		reset => ,
		rd => ,
		wr => ,
		w_data => ,
		empty => ,
		full => ,
		r_data => 
	);


