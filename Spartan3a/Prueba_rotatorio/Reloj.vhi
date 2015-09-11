
-- VHDL Instantiation Created from source file Reloj.vhd -- 23:50:56 05/11/2008
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Reloj
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKDV_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;

	Inst_Reloj: Reloj PORT MAP(
		CLKIN_IN => ,
		RST_IN => ,
		CLKDV_OUT => ,
		CLKIN_IBUFG_OUT => ,
		CLK0_OUT => 
	);


