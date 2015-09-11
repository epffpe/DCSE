
-- VHDL Instantiation Created from source file uart_tx.vhd -- 20:10:24 08/19/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT uart_tx
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		tx_start : IN std_logic;
		s_tick : IN std_logic;
		din : IN std_logic_vector(7 downto 0);          
		tx_done_tick : OUT std_logic;
		tx : OUT std_logic
		);
	END COMPONENT;

	Inst_uart_tx: uart_tx PORT MAP(
		clk => ,
		reset => ,
		tx_start => ,
		s_tick => ,
		din => ,
		tx_done_tick => ,
		tx => 
	);


