
-- VHDL Instantiation Created from source file Direccion.vhd -- 21:07:42 02/05/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Direccion
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		addr_control : IN std_logic_vector(1 downto 0);          
		addr : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Direccion: Direccion PORT MAP(
		clk => ,
		rst_n => ,
		addr_control => ,
		addr => 
	);


