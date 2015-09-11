
-- VHDL Instantiation Created from source file DatosLCD.vhd -- 22:53:09 02/06/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DatosLCD
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		pb_sel : IN std_logic_vector(1 downto 0);
		incrementa : IN std_logic;          
		caracteres_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_DatosLCD: DatosLCD PORT MAP(
		clk => ,
		rst_n => ,
		pb_sel => ,
		incrementa => ,
		caracteres_out => 
	);


