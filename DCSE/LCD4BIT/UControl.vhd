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
           LCD_DB : out  STD_LOGIC_VECTOR (3 downto 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           clr_timer : out  STD_LOGIC;
           tiempo : out  STD_LOGIC_VECTOR (1 downto 0);
           pb_sel : out  STD_LOGIC_VECTOR (1 downto 0);
           incrementa_pb : out  STD_LOGIC;
           addr_en : out  STD_LOGIC;
			  status : out std_logic_vector (7 downto 0));
end UControl;

architecture Behavioral of UControl is


-------------------------------------------------------------------------------------------------------
-- Maquina de estado
-------------------------------------------------------------------------------------------------------
type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,--s12,
							s13,s14,s15,s16,s17,
							s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,
							s35,s36,s37,s38);
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
		status <=X"00";
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
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"00";
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
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"01";
			when s2 => --------------------------------Function set => 0x3
							state <= s3;
							LCD_DB <= X"3";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"02";
			when s3 =>  --------------------------------Espera 4.1ms
							if (timer='0') then
									state <= s3;
								else
									state <= s4;
							end if;
							LCD_DB <= X"3";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"03";
			when s4 =>  --------------------------------wrie => 0x3
							state <= s5;
							LCD_DB <= X"3";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"04";
			when s5 => ----------------------------------Espera 100us 
							if (timer='0') then
									state <= s5;
								else
									state <= s6;
							end if;
							LCD_DB <= X"3";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"05";
			when s6 =>  --------------------------------Write => 0x3
							state <= s7;
							LCD_DB <= X"3";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"06";
			when s7 => ----------------------------------Espera 40us 
							if (timer='0') then
									state <= s7;
								else
									state <= s8;
							end if;
							LCD_DB <= X"3";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"07";

			when s8 =>  --------------------------------Write => 0x2
							state <= s9;
							LCD_DB <= X"2";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"08";
			when s9 => ----------------------------------Espera 40us 
							if (timer='0') then
									state <= s9;
								else
									state <= s10;
							end if;
							LCD_DB <= X"2";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"09";












-----------------------------------------------------------------------------------------------------------
-- Configuracion del Display
-----------------------------------------------------------------------------------------------------------
			when s10 =>  --------------------------------Write => 0x2
							state <= s11;
							LCD_DB <= X"2";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"0A";
			when s11 =>  --------------------------------Write => 0x2
							state <= s13;
							LCD_DB <= X"2";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"0B";
			when s13 =>  --------------------------------Write => 0x8
							state <= s14;
							LCD_DB <= X"8";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"0C";
			when s14 => ----------------------------------Espera 40us 
							if (timer='0') then
									state <= s14;
								else
									state <= s15;
							end if;
							LCD_DB <= X"8";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"0D";
			when s15 => ---------------------------------Entry mode set 0x06
							state <= s16;
							LCD_DB <= X"0";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"0E";
			when s16 => ---------------------------------Entry mode set 0x06
							state <= s17;
							LCD_DB <= X"0";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"0F";
			when s17 => ---------------------------------Entry mode set 0x06
							state <= s18;
							LCD_DB <= X"6";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"10";							
							
			when s18 => ----------------------------------Espera 40us 
							if (timer='0') then
									state <= s18;
								else
									state <= s19;
							end if;
							LCD_DB <= X"6";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"11";
			when s19 => ---------------------------------Display ON
							state <= s20;
							LCD_DB <= X"0";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"12";
			when s20 => ---------------------------------Display ON
							state <= s21;
							LCD_DB <= X"0";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"13";							
			when s21 => ---------------------------------Display ON
							state <= s22;
							LCD_DB <= X"C";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"14";							
			when s22 => ----------------------------------Espera 40us 
							if (timer='0') then
									state <= s22;
								else
									state <= s23;
							end if;
							LCD_DB <= X"C";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"15";
			when s23 => ---------------------------------Clear Display
							state <= s24;
							LCD_DB <= X"0";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"16";
			when s24 => ---------------------------------Clear Display
							state <= s25;
							LCD_DB <= X"0";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"17";
			when s25 => ---------------------------------Clear Display
							state <= s26;
							LCD_DB <= X"1";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"18";
							
			when s26 => ----------------------------------Espera >1.64ms 
							if (timer='0') then
									state <= s26;
								else
									state <= s27;
							end if;
							LCD_DB <= X"1";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"19";
-----------------------------------------------------------------------------------------------------------
-- Inicialización del display del Display
-----------------------------------------------------------------------------------------------------------
			when s27 => ---------------------------------Return home
							state <= s28;
							LCD_DB <= X"0";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"1A";
			when s28 => ---------------------------------Return home
							state <= s29;
							LCD_DB <= X"0";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"1B";
			when s29 => ---------------------------------Return home
							state <= s30;
							LCD_DB <= X"2";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"1C";
							
			when s30 => ----------------------------------Espera >40us 
							if (timer='0') then
									state <= s30;
								else
									state <= s31;
							end if;
							LCD_DB <= X"2";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"1D";
			when s31 => ---------------------------------Set Addres 0x40 + 0x80=0xC0
							state <= s32;
							LCD_DB <= X"8";
							LCD_E <= '1';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"1E";
			when s32 => ---------------------------------Set Addres 0x40 + 0x80=0xC0
							state <= s33;
							LCD_DB <= X"8";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"1F";
			when s33 => ---------------------------------Set Addres 0x40 + 0x80=0xC0
							state <= s34;
							LCD_DB <= X"2";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '1';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"20";
							
			when s34 => ----------------------------------Espera >40us 
							if (timer='0') then
									state <= s34;
								else
									state <= s35;
							end if;
							LCD_DB <= X"2";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"21";							
					
			when s35 => ---------------------------------Write 0=0x30  Recuerda LCD_RS=1
							state <= s36;
							LCD_DB <= X"3";
							LCD_E <= '1';
							LCD_RS <= '1';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"22";
			when s36 => ---------------------------------Write 0=0x30  Recuerda LCD_RS=1
							state <= s37;
							LCD_DB <= X"3";
							LCD_E <= '0';
							LCD_RS <= '1';
							clr_timer <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"23";
			when s37 => ---------------------------------Write 0=0x30  Recuerda LCD_RS=1
							state <= s38;
							LCD_DB <= X"0";
							LCD_E <= '1';
							LCD_RS <= '1';
							clr_timer <= '1';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_en <= '0';
							status <=X"24";
																					
			when s38 => ----------------------------------Espera >40us 
							if (timer='0') then
									state <= s38;
								else
									state <= s38;
							end if;
							LCD_DB <= X"0";
							LCD_E <= '0';
							LCD_RS <= '0';
							clr_timer <= '0';
							tiempo<="01";
							pb_sel <= (others => '1');
							incrementa_pb <= '1';
							addr_en <= '1';
							status <=X"25";
							
--			when s18 => ---------------------------------Return cursor to home
--							state <= s19;
--							LCD_DB <= X"01";
--							LCD_E <= '1';
--							LCD_RS <= '0';
--							clr_timer <= '1';
--							tiempo<="10";
--							pb_sel <= (others => '1');
--							incrementa_pb <= '1';
--							addr_en <= '1';
--							status <=X"00";
--			when s19 => ----------------------------------Espera >40us 
--							if (timer='0') then
--									state <= s19;
--								else
--									state <= s18;
--							end if;
--							LCD_DB <= X"01";
--							LCD_E <= '0';
--							LCD_RS <= '0';
--							clr_timer <= '0';
--							tiempo<="10";
--							pb_sel <= (others => '0');
--							incrementa_pb <= '0';
--							addr_en <= '0';
--							status <=X"00";
--
--
--
--



			
		end case;
	end if;
end process;






end Behavioral;

