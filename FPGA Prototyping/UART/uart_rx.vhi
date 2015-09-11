
-- VHDL Instantiation Created from source file uart_rx.vhd -- 20:02:33 08/19/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT uart_rx
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		rx : IN std_logic;
		s_tick : IN std_logic;          
		rx_done_tick : OUT std_logic;
		dout : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_uart_rx: uart_rx PORT MAP(
		clk => ,
		reset => ,
		rx => ,
		s_tick => ,
		rx_done_tick => ,
		dout => 
	);


