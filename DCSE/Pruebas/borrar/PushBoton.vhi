
-- VHDL Instantiation Created from source file PushBoton.vhd -- 00:59:53 02/07/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PushBoton
	PORT(
		clk : IN std_logic;
		pb : IN std_logic;          
		event_pb : OUT std_logic
		);
	END COMPONENT;

	Inst_PushBoton: PushBoton PORT MAP(
		clk => ,
		pb => ,
		event_pb => 
	);


