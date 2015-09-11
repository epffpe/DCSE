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
    
    component reader
        port(clk, rst_n : in std_logic;
         persel : in std_logic_vector(1 downto 0);
         data   : out std_logic_vector(7 downto 0));
     end component;
     
     component tickgen
         port(clk, rst_n : in std_logic;
               tick : out std_logic );
      end component;
----------------------------------------------------- 

signal clk390 : std_logic;
signal clk10 : std_logic;
constant divsel : std_logic_vector(3 downto 0) :="0111";

   
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
												tick => clk10
											);
		
		
		Inst_reader: reader PORT MAP(
												clk => clk10,
												rst_n => rst_n,
												persel => inter,
												data => data
											);
			


    
	 
	 
	 
end compor;