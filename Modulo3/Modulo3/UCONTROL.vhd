--  C:\XILINX\10.1\ISE\BIN\NT\UNWRAPPED\UCONTROL.vhd
--  VHDL code created by Xilinx's StateCAD 10.1
--  Tue Feb 10 20:32:32 2009

--  This VHDL code (for use with Xilinx XST) was generated using: 
--  enumerated state assignment with structured code format.
--  Minimization is enabled,  implied else is enabled, 
--  and outputs are speed optimized.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ieee;
USE ieee.std_logic_unsigned.all;

ENTITY SHELL_UCONTROL IS
	PORT (CLK,RESET: IN std_logic;
		LCD_DB0,LCD_DB1,LCD_DB2,LCD_DB3,LCD_E,LCD_RS,status0,status1,status2,
			status3,status4,status5,status6,status7 : OUT std_logic);
END;

ARCHITECTURE BEHAVIOR OF SHELL_UCONTROL IS
	TYPE type_sreg IS (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s11);
	SIGNAL sreg, next_sreg : type_sreg;
	SIGNAL next_LCD_DB0,next_LCD_DB1,next_LCD_DB2,next_LCD_DB3,next_LCD_E,
		next_LCD_RS,next_status0,next_status1,next_status2,next_status3,next_status4,
		next_status5,next_status6,next_status7,next_timer0,next_timer1,next_timer2,
		next_timer3,next_timer4,next_timer5,next_timer6,next_timer7,next_timer8,
		next_timer9,next_timer10,next_timer11,next_timer12,next_timer13,next_timer14,
		next_timer15,next_timer16,next_timer17,next_timer18,next_timer19 : std_logic;
	SIGNAL LCD_DB : std_logic_vector (3 DOWNTO 0);
	SIGNAL status : std_logic_vector (7 DOWNTO 0);
	SIGNAL timer : std_logic_vector (19 DOWNTO 0);

	SIGNAL timer0,timer1,timer2,timer3,timer4,timer5,timer6,timer7,timer8,timer9
		,timer10,timer11,timer12,timer13,timer14,timer15,timer16,timer17,timer18,
		timer19: std_logic;
BEGIN
	PROCESS (CLK, next_sreg, next_LCD_E, next_LCD_RS, next_LCD_DB3, next_LCD_DB2
		, next_LCD_DB1, next_LCD_DB0, next_status7, next_status6, next_status5, 
		next_status4, next_status3, next_status2, next_status1, next_status0, 
		next_timer19, next_timer18, next_timer17, next_timer16, next_timer15, 
		next_timer14, next_timer13, next_timer12, next_timer11, next_timer10, 
		next_timer9, next_timer8, next_timer7, next_timer6, next_timer5, next_timer4,
		 next_timer3, next_timer2, next_timer1, next_timer0)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			sreg <= next_sreg;
			LCD_E <= next_LCD_E;
			LCD_RS <= next_LCD_RS;
			LCD_DB3 <= next_LCD_DB3;
			LCD_DB2 <= next_LCD_DB2;
			LCD_DB1 <= next_LCD_DB1;
			LCD_DB0 <= next_LCD_DB0;
			status7 <= next_status7;
			status6 <= next_status6;
			status5 <= next_status5;
			status4 <= next_status4;
			status3 <= next_status3;
			status2 <= next_status2;
			status1 <= next_status1;
			status0 <= next_status0;
			timer19 <= next_timer19;
			timer18 <= next_timer18;
			timer17 <= next_timer17;
			timer16 <= next_timer16;
			timer15 <= next_timer15;
			timer14 <= next_timer14;
			timer13 <= next_timer13;
			timer12 <= next_timer12;
			timer11 <= next_timer11;
			timer10 <= next_timer10;
			timer9 <= next_timer9;
			timer8 <= next_timer8;
			timer7 <= next_timer7;
			timer6 <= next_timer6;
			timer5 <= next_timer5;
			timer4 <= next_timer4;
			timer3 <= next_timer3;
			timer2 <= next_timer2;
			timer1 <= next_timer1;
			timer0 <= next_timer0;
		END IF;
	END PROCESS;

	PROCESS (sreg,RESET,timer0,timer1,timer2,timer3,timer4,timer5,timer6,timer7,
		timer8,timer9,timer10,timer11,timer12,timer13,timer14,timer15,timer16,timer17
		,timer18,timer19,LCD_DB,status,timer)
	BEGIN
		next_LCD_DB0 <= '0'; next_LCD_DB1 <= '0'; next_LCD_DB2 <= '0'; next_LCD_DB3
			 <= '0'; next_LCD_E <= '0'; next_LCD_RS <= '1'; next_status0 <= '0'; 
			next_status1 <= '0'; next_status2 <= '0'; next_status3 <= '0'; next_status4 
			<= '0'; next_status5 <= '0'; next_status6 <= '0'; next_status7 <= '0'; 
			next_timer0 <= '0'; next_timer1 <= '0'; next_timer2 <= '0'; next_timer3 <= 
			'0'; next_timer4 <= '0'; next_timer5 <= '0'; next_timer6 <= '0'; next_timer7 
			<= '0'; next_timer8 <= '0'; next_timer9 <= '0'; next_timer10 <= '0'; 
			next_timer11 <= '0'; next_timer12 <= '0'; next_timer13 <= '0'; next_timer14 
			<= '0'; next_timer15 <= '0'; next_timer16 <= '0'; next_timer17 <= '0'; 
			next_timer18 <= '0'; next_timer19 <= '0'; 
		LCD_DB<=std_logic_vector'("0000"); status<=std_logic_vector'("00000000"); 
			timer<=std_logic_vector'("00000000000000000000"); 

		next_sreg<=s0;

		IF ( RESET='1' ) THEN
			next_sreg<=s0;
			next_LCD_RS<='0';
			next_LCD_E<='0';

			status <= (std_logic_vector'("00000000"));
			timer <= (std_logic_vector'("00000000000000000000"));
			LCD_DB <= (std_logic_vector'("0000"));
		ELSE
			CASE sreg IS
				WHEN s0 =>
					next_sreg<=s1;
					next_LCD_RS<='0';
					next_LCD_E<='0';

					LCD_DB <= (std_logic_vector'("0000"));
					status <= (std_logic_vector'("00000001"));
					timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
						timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
						 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
						"00000000000000000001"));
				WHEN s1 =>
					IF ( timer0='1' AND timer1='0' AND timer2='1' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s11;
						next_LCD_RS<='0';
						next_LCD_E<='0';

						LCD_DB <= (std_logic_vector'("0000"));
						status <= (std_logic_vector'("00000001"));
						timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
							timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
							 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
							"00000000000000000001"));
					 ELSE
						next_sreg<=s1;
						next_LCD_RS<='0';
						next_LCD_E<='0';

						LCD_DB <= (std_logic_vector'("0000"));
						status <= (std_logic_vector'("00000001"));
						timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
							timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
							 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
							"00000000000000000001"));
					END IF;
				WHEN s2 =>
					next_sreg<=s3;
					next_LCD_RS<='0';
					next_LCD_E<='0';

					LCD_DB <= (std_logic_vector'("0000"));
					status <= (std_logic_vector'("00000011"));
					timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
						timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
						 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
						"00000000000000000001"));
				WHEN s3 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s4;
						next_LCD_RS<='0';
						next_LCD_E<='1';

						timer <= (std_logic_vector'("00000000000000000000"));
						status <= (std_logic_vector'("00000100"));
						LCD_DB <= (std_logic_vector'("0011"));
					 ELSE
						next_sreg<=s3;
						next_LCD_RS<='0';
						next_LCD_E<='0';

						LCD_DB <= (std_logic_vector'("0000"));
						status <= (std_logic_vector'("00000011"));
						timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
							timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
							 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
							"00000000000000000001"));
					END IF;
				WHEN s4 =>
					next_sreg<=s5;
					next_LCD_RS<='0';
					next_LCD_E<='0';

					LCD_DB <= (std_logic_vector'("0000"));
					status <= (std_logic_vector'("00000101"));
					timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
						timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
						 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
						"00000000000000000001"));
				WHEN s5 =>
					IF ( timer0='1' AND timer1='1' AND timer2='0' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s6;
						next_LCD_RS<='0';
						next_LCD_E<='1';

						timer <= (std_logic_vector'("00000000000000000000"));
						status <= (std_logic_vector'("00000110"));
						LCD_DB <= (std_logic_vector'("0011"));
					 ELSE
						next_sreg<=s5;
						next_LCD_RS<='0';
						next_LCD_E<='0';

						LCD_DB <= (std_logic_vector'("0000"));
						status <= (std_logic_vector'("00000101"));
						timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
							timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
							 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
							"00000000000000000001"));
					END IF;
				WHEN s6 =>
					next_sreg<=s7;
					next_LCD_RS<='0';
					next_LCD_E<='0';

					LCD_DB <= (std_logic_vector'("0000"));
					status <= (std_logic_vector'("00000111"));
					timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
						timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
						 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
						"00000000000000000001"));
				WHEN s7 =>
					IF ( timer0='0' AND timer1='1' AND timer2='0' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s8;
						next_LCD_E<='1';
						next_LCD_RS<='1';

						timer <= (std_logic_vector'("00000000000000000000"));
						status <= (std_logic_vector'("00001000"));
						LCD_DB <= (std_logic_vector'("0010"));
					 ELSE
						next_sreg<=s7;
						next_LCD_RS<='0';
						next_LCD_E<='0';

						LCD_DB <= (std_logic_vector'("0000"));
						status <= (std_logic_vector'("00000111"));
						timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
							timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
							 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
							"00000000000000000001"));
					END IF;
				WHEN s8 =>
					next_sreg<=s9;
					next_LCD_RS<='0';
					next_LCD_E<='0';

					LCD_DB <= (std_logic_vector'("0000"));
					status <= (std_logic_vector'("00001001"));
					timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
						timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
						 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
						"00000000000000000001"));
				WHEN s9 =>
					next_sreg<=s0;
					next_LCD_RS<='0';
					next_LCD_E<='0';

					status <= (std_logic_vector'("00000000"));
					timer <= (std_logic_vector'("00000000000000000000"));
					LCD_DB <= (std_logic_vector'("0000"));
				WHEN s11 =>
					IF ( timer0='1' AND timer1='1' AND timer2='1' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s2;
						next_LCD_RS<='0';
						next_LCD_E<='1';

						timer <= (std_logic_vector'("00000000000000000000"));
						status <= (std_logic_vector'("00000010"));
						LCD_DB <= (std_logic_vector'("0011"));
					 ELSE
						next_sreg<=s11;
						next_LCD_RS<='0';
						next_LCD_E<='0';

						LCD_DB <= (std_logic_vector'("0000"));
						status <= (std_logic_vector'("00000001"));
						timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, 
							timer15, timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7,
							 timer6, timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
							"00000000000000000001"));
					END IF;
				WHEN OTHERS =>
			END CASE;
		END IF;

		next_LCD_DB3 <= LCD_DB(3);
		next_LCD_DB2 <= LCD_DB(2);
		next_LCD_DB1 <= LCD_DB(1);
		next_LCD_DB0 <= LCD_DB(0);
		next_status7 <= status(7);
		next_status6 <= status(6);
		next_status5 <= status(5);
		next_status4 <= status(4);
		next_status3 <= status(3);
		next_status2 <= status(2);
		next_status1 <= status(1);
		next_status0 <= status(0);
		next_timer19 <= timer(19);
		next_timer18 <= timer(18);
		next_timer17 <= timer(17);
		next_timer16 <= timer(16);
		next_timer15 <= timer(15);
		next_timer14 <= timer(14);
		next_timer13 <= timer(13);
		next_timer12 <= timer(12);
		next_timer11 <= timer(11);
		next_timer10 <= timer(10);
		next_timer9 <= timer(9);
		next_timer8 <= timer(8);
		next_timer7 <= timer(7);
		next_timer6 <= timer(6);
		next_timer5 <= timer(5);
		next_timer4 <= timer(4);
		next_timer3 <= timer(3);
		next_timer2 <= timer(2);
		next_timer1 <= timer(1);
		next_timer0 <= timer(0);
	END PROCESS;
END BEHAVIOR;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ieee;
USE ieee.std_logic_unsigned.all;

ENTITY UCONTROL IS
	PORT (LCD_DB : OUT std_logic_vector (3 DOWNTO 0);
		status : OUT std_logic_vector (7 DOWNTO 0);
		CLK,RESET: IN std_logic;
		LCD_E,LCD_RS : OUT std_logic);
END;

ARCHITECTURE BEHAVIOR OF UCONTROL IS
	COMPONENT SHELL_UCONTROL
		PORT (CLK,RESET: IN std_logic;
			LCD_DB0,LCD_DB1,LCD_DB2,LCD_DB3,LCD_E,LCD_RS,status0,status1,status2,
				status3,status4,status5,status6,status7 : OUT std_logic);
	END COMPONENT;
BEGIN
	SHELL1_UCONTROL : SHELL_UCONTROL PORT MAP (
	CLK=>CLK,
	RESET=>RESET,
	LCD_DB0=>LCD_DB(0),
	LCD_DB1=>LCD_DB(1),
	LCD_DB2=>LCD_DB(2),
	LCD_DB3=>LCD_DB(3),
	LCD_E=>LCD_E,
	LCD_RS=>LCD_RS,
	status0=>status(0),
	status1=>status(1),
	status2=>status(2),
	status3=>status(3),
	status4=>status(4),
	status5=>status(5),
	status6=>status(6),
	status7=>status(7));
END BEHAVIOR;
