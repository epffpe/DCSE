
-- VHDL Instantiation Created from source file DISPLAY.vhd -- 18:56:23 12/07/2008
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DISPLAY
	PORT(
		clk50 : IN std_logic;
		rst_n : IN std_logic;
		data : IN std_logic_vector(7 downto 0);          
		digit_out : OUT std_logic_vector(3 downto 0);
		seg_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_DISPLAY: DISPLAY PORT MAP(
		clk50 => ,
		rst_n => ,
		data => ,
		digit_out => ,
		seg_out => 
	);


