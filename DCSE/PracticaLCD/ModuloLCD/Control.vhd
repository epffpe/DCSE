----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:20:46 02/04/2009 
-- Design Name: 
-- Module Name:    Control - Behavioral 
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

entity Control is
    Port ( clk : in  STD_LOGIC;
           rst_n : in  STD_LOGIC;
			  tic : in  STD_LOGIC;------------------------timer------------------
			  rotatory_event : in  STD_LOGIC;--------------interfaz----------------------------
           rotatory_left : in  STD_LOGIC;
           press : in  STD_LOGIC;
           pb : in  STD_LOGIC_VECTOR (3 downto 0);
			  modo : in std_logic;-------------------------------------------------------------
			  addr : in std_logic_vector (3 downto 0);------Direccion de escritura en LCD-------
			  caracter : in std_logic_vector (7 downto 0);----Caracter a escribir-------------- 
------------------------------------------------------------------------------------------------------------
-- Variables de la maquina de estado------------------------------------------------------------------------
           DB : out  STD_LOGIC_VECTOR (7 downto 0);------------LCD--------------------
           E : out  STD_LOGIC;
           RS : out  STD_LOGIC;-------------------------------------------------------
			  clr : out STD_LOGIC;--------------Clear Tiemer-----------------------
			  tiempo : out  STD_LOGIC_VECTOR (1 downto 0);--Selector de tiempos----
			  pb_sel : out std_logic_vector(1 downto 0);
			  incrementa_pb : out std_logic;
			  addr_control : out std_logic_vector(1 downto 0)
			  );
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------			  
end Control;

architecture Behavioral of Control is

type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,
							s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28);
signal state : state_type;

signal addr_hight : std_logic_vector(3 downto 0); --Parte alta de la direccion, RS=0

begin
addr_hight <= X"8";

process(clk, rst_n)
begin
	if (rst_n='0') then
		state <= s0;
		DB <= (others => '0');
		E <= '0';
		RS <= '0';
		clr <= '0';
		tiempo<="00";
		pb_sel <= (others => '0');
		incrementa_pb <= '0';
		addr_control <= (others => '0');
	elsif (clk'event and clk='1') then
		case state is
-----------------------------------------------------------------------------------------------------------
-- Power On del Display
-----------------------------------------------------------------------------------------------------------
			when s0 =>--------------------------------Pre espera
							state <= s1;
							DB <= (others => '0');
							E <= '0';
							RS <= '0';
							clr <= '1';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s1 =>--------------------------------Espera 40ms 
							if (tic='0') then
									state <= s1;
								else
									state <= s2;
							end if;
							DB <= (others => '0');
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="11";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s2 => --------------------------------Function set => 0x38
							state <= s3;
							DB <= X"38";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s3 =>  --------------------------------Espera 4.1ms
							if (tic='0') then
									state <= s3;
								else
									state <= s4;
							end if;
							DB <= X"38";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s4 =>  --------------------------------Function set => 0x38
							state <= s5;
							DB <= X"38";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s5 => ----------------------------------Espera 100us 
							if (tic='0') then
									state <= s5;
								else
									state <= s6;
							end if;
							DB <= X"38";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="01";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s6 =>  --------------------------------Function set => 0x38
							state <= s7;
							DB <= X"38";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s7 => ----------------------------------Espera 40us 
							if (tic='0') then
									state <= s7;
								else
									state <= s8;
							end if;
							DB <= X"38";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
-----------------------------------------------------------------------------------------------------------
-- Power On del Display
-----------------------------------------------------------------------------------------------------------
			when s8 => ---------------------------------Entry mode set 0x06
							state <= s9;
							DB <= X"06";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s9 => ----------------------------------Espera 40us 
							if (tic='0') then
									state <= s9;
								else
									state <= s10;
							end if;
							DB <= X"06";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s10 => ---------------------------------Display ON
							state <= s11;
							DB <= X"0C";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s11 => ----------------------------------Espera 40us 
							if (tic='0') then
									state <= s11;
								else
									state <= s12;
							end if;
							DB <= X"0C";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s12 => ---------------------------------Clear Display
							state <= s13;
							DB <= X"01";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s13 => ----------------------------------Espera >1.64ms 
							if (tic='0') then
									state <= s13;
								else
									state <= s14;
							end if;
							DB <= X"01";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
-----------------------------------------------------------------------------------------------------------
-- Inicialización del display del Display
-----------------------------------------------------------------------------------------------------------
			when s14 => ---------------------------------Set Addres 0x40 + 0x80=0xC0
							state <= s15;
							DB <= X"C0";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s15 => ----------------------------------Espera >40us 
							if (tic='0') then
									state <= s15;
								else
									state <= s16;
							end if;
							DB <= X"C0";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s16 => ---------------------------------Write 0=0x30  Recuerda RS=1
							state <= s17;
							DB <= X"30";
							E <= '1';
							RS <= '1';
							clr <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s17 => ----------------------------------Espera >40us 
							if (tic='0') then
									state <= s17;
								else
									state <= s18;
							end if;
							DB <= X"30";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
							
			when s18 => ---------------------------------Return cursor to home
							state <= s19;
							DB <= X"01";
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s19 => ----------------------------------Espera >40us 
							if (tic='0') then
									state <= s19;
								else
									state <= s20;
							end if;
							DB <= X"01";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
-----------------------------------------------------------------------------------------------------------
-- Falta inicialización del displayInicialización del display del Display
-----------------------------------------------------------------------------------------------------------
			when s20 => ---------------------------------Seleccion de modo
							if (modo='0') then
								state <= s21;
							else
								state <= s20;
							end if;
							DB <= X"FF";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s21 => ----------------------------------Seleccion del boton
							case (pb & rotatory_event & press) is 
								when X"0" &  '0'  &    '1' => state <= s22;
								when X"0" &  '1'  &    '0' => state <= s24;
								when "0001"& '0'  &    '0' => state <= s27;
								when "0010"& '0'  &    '0' => state <= s27;
								when "0100"& '0'  &    '0' => state <= s27;
								when "1000"& '0'  &    '0' => state <= s27;
								when others => state <= s20;
								
							end case;
							DB <= X"01";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="10";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');	
-----------------------------------------------------------------------------------------------------------
-- Se pulsa el boton rotatory press
-----------------------------------------------------------------------------------------------------------
			when s22 => ---------------------------------Write espacio en blanco=0x20  Recuerda RS=1
							state <= s23;
							DB <= X"20";
							E <= '1';
							RS <= '1';
							clr <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
			when s23 => ----------------------------------Espera >40us 
							if (tic='0') then
									state <= s23;
								else
									state <= s20;
							end if;
							DB <= X"20";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');

-----------------------------------------------------------------------------------------------------------
-- Se gira el rotatory
-----------------------------------------------------------------------------------------------------------
			when s24 => ---------------------------------Determina la direccion de giro
							state <= s25;
							DB <= addr_hight & addr;
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							if (rotatory_left='1') then
								addr_control <= "10";
							else
								addr_control <= "11";
							end if;
			when s25 => ---------------------------------Se actualiza la direccion en LCD
							state <= s26;
							DB <= addr_hight & addr;
							E <= '1';
							RS <= '0';
							clr <= '1';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0'; 
							addr_control <= (others => '0');
			when s26 => ----------------------------------Espera >40us 
							if (tic='0') then
									state <= s26;
								else
									state <= s20;
							end if;
							DB <= X"20";
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							pb_sel <= (others => '0');
							incrementa_pb <= '0';
							addr_control <= (others => '0');
-----------------------------------------------------------------------------------------------------------
-- Se pulsa un boton
-----------------------------------------------------------------------------------------------------------							
			when s27 => ---------------------------------Escribe con el boton correspondiente
							state <= s28;
							DB <= caracter;
							E <= '1';
							RS <= '1';
							clr <= '1';
							tiempo<="00";
							case (pb & rotatory_event & press) is
								when "0001"=> pb_sel <= "00";
								when "0010"=> pb_sel <= "01";
								when "0100"=> pb_sel <= "10";
								--when "1000"=> pb_sel <= "11";
								when others => pb_sel <= "11";
								
							end case;
							incrementa_pb <= '1';
							addr_control <= (others => '0');
			when s28 => ----------------------------------Espera >40us 
							if (tic='0') then
									state <= s28;
								else
									state <= s20;
							end if;
							DB <= caracter;
							E <= '0';
							RS <= '0';
							clr <= '0';
							tiempo<="00";
							case (pb & rotatory_event & press) is
								when "0001"=> pb_sel <= "00";
								when "0010"=> pb_sel <= "01";
								when "0100"=> pb_sel <= "10";
								--when "1000"=> pb_sel <= "11";
								when others => pb_sel <= "11";
								
							end case;
							incrementa_pb <= '1';
							addr_control <= (others => '0');




							
		end case;
			
	end if;
end process;



end Behavioral;

