
-- VHDL Instantiation Created from source file ramdump.vhd -- 18:55:19 12/07/2008
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ramdump
	PORT(
		clk50 : IN std_logic;
		rst_n : IN std_logic;
		inter : IN std_logic_vector(1 downto 0);
		hold : IN std_logic;
		up_down : IN std_logic;          
		data : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_ramdump: ramdump PORT MAP(
		clk50 => ,
		rst_n => ,
		inter => ,
		hold => ,
		up_down => ,
		data => 
	);


