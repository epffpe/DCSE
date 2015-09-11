
-- VHDL Instantiation Created from source file Direccion.vhd -- 22:53:56 02/06/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Direccion
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		addr_en : IN std_logic;
		rotatory_left : IN std_logic;          
		addr : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Direccion: Direccion PORT MAP(
		clk => ,
		rst_n => ,
		addr_en => ,
		rotatory_left => ,
		addr => 
	);


