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
 
ENTITY tb_ramdump IS
END tb_ramdump;
 
ARCHITECTURE behavior OF tb_ramdump IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ramdump
    PORT(
         clk50 : IN  std_logic;
         rst_n : IN  std_logic;
         inter : IN  std_logic_vector(1 downto 0);
         data : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk50 : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal inter : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk50_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ramdump PORT MAP (
          clk50 => clk50,
          rst_n => rst_n,
          inter => inter,
          data => data
        );

   -- Clock process definitions
   clk50_process :process
   begin
		clk50 <= '0';
		wait for clk50_period/2;
		clk50 <= '1';
		wait for clk50_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst_n <= '0';
      wait for 100ns;	
		rst_n <= '1';
      wait for clk50_period*10;

      inter <= "01" after 501ms, "10" after 2501ms; 

      wait;
   end process;

END;
