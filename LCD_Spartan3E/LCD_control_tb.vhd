--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:45:50 09/08/2009
-- Design Name:   
-- Module Name:   D:/Designs/DCSE/LCD_Spartan3E/LCD_control_tb.vhd
-- Project Name:  LCD_Spartan3E
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LCD_Control
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY LCD_control_tb IS
END LCD_control_tb;
 
ARCHITECTURE behavior OF LCD_control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LCD_Control
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         sw : IN  std_logic_vector(1 downto 0);
         btn_tick : IN  std_logic_vector(3 downto 0);
         press_tick : IN  std_logic;
         keyboard_tick : IN  std_logic;
         rotary_tick : IN  std_logic;
         rotary_izq : IN  std_logic;
         kb_data : IN  std_logic_vector(7 downto 0);
         lcd_db : OUT  std_logic_vector(3 downto 0);
         lcd_e : OUT  std_logic;
         lcd_rs : OUT  std_logic;
         lcd_rw : OUT  std_logic;
         leds : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal sw : std_logic_vector(1 downto 0) := (others => '0');
   signal btn_tick : std_logic_vector(3 downto 0) := (others => '0');
   signal press_tick : std_logic := '0';
   signal keyboard_tick : std_logic := '0';
   signal rotary_tick : std_logic := '0';
   signal rotary_izq : std_logic := '0';
   signal kb_data : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal lcd_db : std_logic_vector(3 downto 0);
   signal lcd_e : std_logic;
   signal lcd_rs : std_logic;
   signal lcd_rw : std_logic;
   signal leds : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LCD_Control PORT MAP (
          clk => clk,
          rst => rst,
          sw => sw,
          btn_tick => btn_tick,
          press_tick => press_tick,
          keyboard_tick => keyboard_tick,
          rotary_tick => rotary_tick,
          rotary_izq => rotary_izq,
          kb_data => kb_data,
          lcd_db => lcd_db,
          lcd_e => lcd_e,
          lcd_rs => lcd_rs,
          lcd_rw => lcd_rw,
          leds => leds
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	rst <= '1', '0' after clk_period;
   -- Stimulus process
   stim_proc: process
   begin	
		
      
      wait for 40ms;	

      wait until falling_edge(clk);
		btn_tick <= "1000";	-- boton norte
		wait until falling_edge(clk);
		btn_tick <= "0000";

      wait;
   end process;

END;
