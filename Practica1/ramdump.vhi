
-- VHDL Instantiation Created from source file ramdump.vhd -- 01:04:58 11/04/2008
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
		data : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_ramdump: ramdump PORT MAP(
		clk50 => ,
		rst_n => ,
		inter => ,
		data => 
	);


