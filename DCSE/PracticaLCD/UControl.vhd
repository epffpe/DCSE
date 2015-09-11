----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:17:43 02/06/2009 
-- Design Name: 
-- Module Name:    UControl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UControl is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
           timer : in  STD_LOGIC;
           rotatory_event : in  STD_LOGIC;
           rotatory_left : in  STD_LOGIC;
           rot_press : in  STD_LOGIC;
           pb : in  STD_LOGIC_VECTOR (3 downto 0);
           modo : in  STD_LOGIC;
           addr : in  STD_LOGIC_Vector(3 downto 0);
           caracter : in  STD_LOGIC_VECTOR (7 downto 0);
-------------------------------------------------------------------------------------------------------
-- Variables de salida
-------------------------------------------------------------------------------------------------------
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           clr_timer : out  STD_LOGIC;
           tiempo : out  STD_LOGIC_VECTOR (1 downto 0);
           pb_sel : out  STD_LOGIC_VECTOR (1 downto 0);
           incrementa_pb : out  STD_LOGIC;
           addr_en : out  STD_LOGIC);
end UControl;

architecture Behavioral of UControl is


-------------------------------------------------------------------------------------------------------
-- Maquina de estado
-------------------------------------------------------------------------------------------------------
type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,
							s18,s19);--,s20,s21,s22,s23,s24,s25,s26,s27,s28);
signal state : state_type;

signal addr_hight : std_logic_vector(3 downto 0); --Parte alta de la direccion, LCD_RS=0




begin


addr_hight <= X"8";


process(clk, rst_n)
begin
	if (rst_n='0') then
		state <= s0;
		LCD_DB <= (others => '0');
		LCD_E <= '0';
		LCD_RS <= '0';
		clr_timer <= '0';
		tiempo <="00";
		pb_sel <= (others => '0');
		incrementa_pb <= '0';
		addr_en <= '0';
	elsif (clk'event and clk='1') then
		case state is
-----------------------------------------------------------------------------------------------------------
-- Power On del Display
-----------------------------------------------------------------------------------------------------------
			when s0 =>--------------------------------Pre espera
							state <= s1;
							LCD_DB <= (others => '0');
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s1 =>--------------------------------Espera 40ms 
							if (timer='0') then
									state <= s1;
								else
									state <= s2;
							end if;
							LCD_DB <= (others => '0');
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s2 => --------------------------------Function set => 0x38
							state <= s3;
							LCD_DB <= X"38";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s3 =>  --------------------------------Espera 4.1ms
							if (timer='0') then
									state <= s3;
								else
									state <= s4;
							end if;
							LCD_DB <= X"38";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s4 =>  --------------------------------Function set => 0x38
							state <= s5;
							LCD_DB <= X"38";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s5 => ----------------------------------Espera 100us 
							if (timer='0') then
									state <= s5;
								else
									state <= s6;
							end if;
							LCD_DB <= X"38";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s6 =>  --------------------------------Function set => 0x38
							state <= s7;
							LCD_DB <= X"38";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s7 => ----------------------------------Espera 40us 
							if (timer='0') then
									state <= s7;
								else
									state <= s8;
							end if;
							LCD_DB <= X"38";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
-----------------------------------------------------------------------------------------------------------
-- Power On del Display
-----------------------------------------------------------------------------------------------------------
			when s8 => ---------------------------------Entry mode set 0x06
							state <= s9;
							LCD_DB <= X"06";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s9 => ----------------------------------Espera 40us 
							if (timer='0') then
									state <= s9;
								else
									state <= s10;
							end if;
							LCD_DB <= X"06";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s10 => ---------------------------------Display ON
							state <= s11;
							LCD_DB <= X"0C";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s11 => ----------------------------------Espera 40us 
							if (timer='0') then
									state <= s11;
								else
									state <= s12;
							end if;
							LCD_DB <= X"0C";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s12 => ---------------------------------Clear Display
							state <= s13;
							LCD_DB <= X"01";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s13 => ----------------------------------Espera >1.64ms 
							if (timer='0') then
									state <= s13;
								else
									state <= s14;
							end if;
							LCD_DB <= X"01";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
-----------------------------------------------------------------------------------------------------------
-- Inicialización del display del Display
-----------------------------------------------------------------------------------------------------------
			when s14 => ---------------------------------Set Addres 0x40 + 0x80=0xC0
							state <= s15;
							LCD_DB <= X"C0";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s15 => ----------------------------------Espera >40us 
							if (timer='0') then
									state <= s15;
								else
									state <= s16;
							end if;
							LCD_DB <= X"C0";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s16 => ---------------------------------Write 0=0x30  Recuerda LCD_RS=1
							state <= s17;
							LCD_DB <= X"30";
							LCD_E <= '1';
							LCD_RS <= '1';
							clr_timer <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
			when s17 => ----------------------------------Espera >40us 
							if (timer='0') then
									state <= s17;
								else
									state <= s18;
							end if;
							LCD_DB <= X"30";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							
			when s18 => ---------------------------------Return cursor to home
							state <= s19;
							LCD_DB <= X"01";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="10";
							pb_sel <= (others => '1');
							incrementa_pb <= '1';
							addr_en <= '1';
			when s19 => ----------------------------------Espera >40us 
							if (timer='0') then
									state <= s19;
								else
									state <= s18;
							end if;
							LCD_DB <= X"01";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';







			
		end case;
	end if;
end process;






end Behavioral;

