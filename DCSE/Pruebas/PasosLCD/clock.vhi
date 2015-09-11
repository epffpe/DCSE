
-- VHDL Instantiation Created from source file clock.vhd -- 18:38:27 02/07/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT clock
	PORT(
		U1_CLKIN_IN : IN std_logic;
		U1_RST_IN : IN std_logic;          
		U1_CLKDV_OUT : OUT std_logic;
		U1_CLKIN_IBUFG_OUT : OUT std_logic;
		U1_CLK0_OUT : OUT std_logic;
		U2_CLKDV_OUT : OUT std_logic;
		U2_CLK0_OUT : OUT std_logic;
		U2_LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;

	Inst_clock: clock PORT MAP(
		U1_CLKIN_IN => ,
		U1_RST_IN => ,
		U1_CLKDV_OUT => ,
		U1_CLKIN_IBUFG_OUT => ,
		U1_CLK0_OUT => ,
		U2_CLKDV_OUT => ,
		U2_CLK0_OUT => ,
		U2_LOCKED_OUT => 
	);


