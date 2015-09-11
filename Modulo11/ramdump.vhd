-- Fichero: registro
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
         tick : out std_logic );
end ramdump;

architecture compor of ramdump is
    
    component clkscale
      port(clk, rst_n : in std_logic;
         divsel : in std_logic_vector(3 downto 0);
         clkout : out std_logic );
    end component;
    
    component reader
        port(clk, rst_n : in std_logic;
         divsel : in std_logic_vector(1 downto 0);
         persel : in std_logic_vector(1 downto 0);
         data   : out std_logic_vector(7 downto 0));
     end component;
     
     component tickgen
         port(clk, rst_n : in std_logic;
               tick : out std_logic );
      end component;
    
    begin
       divisor1: clkscale port map(clk =>clk50,
                                   rst_n =>rst_n,
                                   sel =>,
                                   ep =>,
                                   sp => ); 
    
end compor;