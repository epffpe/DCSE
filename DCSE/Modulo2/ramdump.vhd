------------------------------------------------------------------------------
-- Fichero: RAMDUMP
-- Modulo: 
-- Autor: Eugenio Peñate Fariñas <epf.supersonic@gmail.com>
-- Fecha: 14/10/2008
-- Descripción:
--        
-- Modificaciones:
--    Quien:
--    Fecha:
--    Motivo:
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity ramdump is
    port(clk50, rst_n : in std_logic;
         inter : in std_logic_vector(1 downto 0);
			hold : in  STD_LOGIC;
			up_down : in  STD_LOGIC;
         data : out std_logic_vector(7 downto 0) );
end ramdump;

architecture compor of ramdump is
------------------------------------------------------    
	COMPONENT clkscale
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		divsel : IN std_logic_vector(3 downto 0);          
		clkout : OUT std_logic
		);
	END COMPONENT;
    
	COMPONENT reader
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		hold_in : IN std_logic;
		up_down : IN std_logic;          
		DO : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
     
     component tickgen
         port(clk, rst_n : in std_logic;
               tick : out std_logic );
      end component;
		
	COMPONENT divisorRAM
	PORT(
		clk : IN std_logic;
		rst_n : IN std_logic;
		persel : IN std_logic_vector(1 downto 0);          
		clkRAM : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT divDEBOUNCER
	PORT(
		clk390 : IN std_logic;
		rst_n : IN std_logic;          
		clk10ms : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT DEBOUNCER
	PORT(
		clk10ms : IN std_logic;
		rst_n : IN std_logic;
		hold_in : IN std_logic;          
		hold_out : OUT std_logic
		);
	END COMPONENT;
----------------------------------------------------- 

signal clk390 : std_logic;
signal clk10  : std_logic;
signal clk100 : std_logic;
constant divsel : std_logic_vector(3 downto 0) :="0111";
signal clkRAM : std_logic;
signal hold_int : std_logic;

   
begin
		Inst_clkscale: clkscale PORT MAP(
			clk => clk50,
			rst_n => rst_n,
			divsel => divsel,
			clkout => clk390
		);

											  
											  
		Inst_tickgen: tickgen PORT MAP(
			clk => clk390,
			rst_n => rst_n,
			tick => clk100
		);
			
		Inst_divisorRAM: divisorRAM PORT MAP(
			clk => clk100,
			rst_n => rst_n,
			persel => inter,
			clkRAM => clkRAM
		);	

		Inst_divDEBOUNCER: divDEBOUNCER PORT MAP(
			clk390 => clk390,
			rst_n => rst_n,
			clk10ms => clk10
		);
		
		
		Inst_DEBOUNCER: DEBOUNCER PORT MAP(
			clk10ms => clk10,
			rst_n => rst_n,
			hold_in => hold,
			hold_out => hold_int
		);



		Inst_reader: reader PORT MAP(
			clk => clkRAM,
			rst_n => rst_n,
			hold_in => hold_int,
			up_down => up_down,
			DO => data
		);
			


    
	 
	 
	 
end compor;