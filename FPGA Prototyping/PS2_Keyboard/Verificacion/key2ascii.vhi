
-- VHDL Instantiation Created from source file key2ascii.vhd -- 04:57:46 08/22/2009
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT key2ascii
	PORT(
		key_code : IN std_logic_vector(7 downto 0);          
		ascii_code : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_key2ascii: key2ascii PORT MAP(
		key_code => ,
		ascii_code => 
	);


