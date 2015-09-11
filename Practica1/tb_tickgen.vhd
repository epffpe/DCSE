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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY tb_tickgen IS
END tb_tickgen;
 
ARCHITECTURE behavior OF tb_tickgen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tickgen
    PORT(
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         tick : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';

 	--Outputs
   signal tick : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2.56us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tickgen PORT MAP (
          clk => clk,
          rst_n => rst_n,
          tick => tick
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 4us;	
		rst_n <= '1';
      wait;
   end process;

END;
