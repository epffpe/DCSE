
-- VHDL Instantiation Created from source file kcpsm3.vhd -- 02:07:01 09/30/2008
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT kcpsm3
	PORT(
		instruction : IN std_logic_vector(17 downto 0);
		in_port : IN std_logic_vector(7 downto 0);
		interrupt : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;          
		address : OUT std_logic_vector(9 downto 0);
		port_id : OUT std_logic_vector(7 downto 0);
		write_strobe : OUT std_logic;
		out_port : OUT std_logic_vector(7 downto 0);
		read_strobe : OUT std_logic;
		interrupt_ack : OUT std_logic
		);
	END COMPONENT;

	Inst_kcpsm3: kcpsm3 PORT MAP(
		address => ,
		instruction => ,
		port_id => ,
		write_strobe => ,
		out_port => ,
		read_strobe => ,
		in_port => ,
		interrupt => ,
		interrupt_ack => ,
		reset => ,
		clk => 
	);


