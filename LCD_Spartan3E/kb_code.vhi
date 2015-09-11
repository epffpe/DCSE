
-- VHDL Instantiation Created from source file kb_code.vhd -- 19:06:31 09/08/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT kb_code
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		ps2d : IN std_logic;
		ps2c : IN std_logic;
		rd_key_code : IN std_logic;          
		key_code : OUT std_logic_vector(7 downto 0);
		kb_buf_empty : OUT std_logic
		);
	END COMPONENT;

	Inst_kb_code: kb_code PORT MAP(
		clk => ,
		reset => ,
		ps2d => ,
		ps2c => ,
		rd_key_code => ,
		key_code => ,
		kb_buf_empty => 
	);


