
-- VHDL Instantiation Created from source file uart.vhd -- 01:06:30 08/20/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT uart
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		rd_uart : IN std_logic;
		wr_uart : IN std_logic;
		rx : IN std_logic;
		w_data : IN std_logic_vector(7 downto 0);          
		tx_full : OUT std_logic;
		rx_empty : OUT std_logic;
		r_data : OUT std_logic_vector(7 downto 0);
		tx : OUT std_logic
		);
	END COMPONENT;

	Inst_uart: uart PORT MAP(
		clk => ,
		reset => ,
		rd_uart => ,
		wr_uart => ,
		rx => ,
		w_data => ,
		tx_full => ,
		rx_empty => ,
		r_data => ,
		tx => 
	);


