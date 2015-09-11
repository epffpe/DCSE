
-- VHDL Instantiation Created from source file ps2_rx.vhd -- 02:44:59 09/09/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ps2_rx
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		ps2d : IN std_logic;
		ps2c : IN std_logic;
		rx_en : IN std_logic;          
		rx_done_tick : OUT std_logic;
		dout : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_ps2_rx: ps2_rx PORT MAP(
		clk => ,
		reset => ,
		ps2d => ,
		ps2c => ,
		rx_en => ,
		rx_done_tick => ,
		dout => 
	);


