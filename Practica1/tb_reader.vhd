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
 
ENTITY tb_reader IS
END tb_reader;
 
ARCHITECTURE behavior OF tb_reader IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reader
    PORT(
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         persel : IN  std_logic_vector(1 downto 0);
         data : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal persel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reader PORT MAP (
          clk => clk,
          rst_n => rst_n,
          persel => persel,
          data => data
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
      --rst_n <= '0';
      wait for 500ms;	
		rst_n <= '1';

      persel <="01" after 1000ms, "10" after 3000ms; 

      wait;
   end process;

END;
