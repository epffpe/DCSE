--  C:\XILINX\10.1\ISE\BIN\NT\UNWRAPPED\UCONTROLLCD.vhd
--  VHDL code created by Xilinx's StateCAD 10.1
--  Wed Feb 11 16:13:53 2009

--  This VHDL code (for use with IEEE compliant tools) was generated using: 
--  enumerated state assignment with structured code format.
--  Minimization is enabled,  implied else is enabled, 
--  and outputs are speed optimized.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ieee;
USE ieee.std_logic_unsigned.all;

ENTITY SHELL_UCONTROLLCD IS
	PORT (CLK,RESET: IN std_logic;
		lcd_data0,lcd_data1,lcd_data2,lcd_data3,lcd_e,lcd_rs,status0,status1,
			status2,status3,status4,status5,status6 : OUT std_logic);

	SIGNAL BP_lcd_data0,BP_lcd_data1,BP_lcd_data2,BP_lcd_data3,BP_lcd_e,
		BP_lcd_rs,rc,timer0,timer1,timer2,timer3,timer4,timer5,timer6,timer7,timer8,
		timer9,timer10,timer11,timer12,timer13,timer14,timer15,timer16,timer17,
		timer18,timer19: std_logic;
END;

ARCHITECTURE BEHAVIOR OF SHELL_UCONTROLLCD IS
	TYPE type_sreg IS (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16
		,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,
		s36,s37,s38,s39);
	SIGNAL sreg, next_sreg : type_sreg;
	SIGNAL next_BP_lcd_data0,next_BP_lcd_data1,next_BP_lcd_data2,
		next_BP_lcd_data3,next_BP_lcd_e,next_BP_lcd_rs,next_rc,next_status0,
		next_status1,next_status2,next_status3,next_status4,next_status5,next_status6
		,next_timer0,next_timer1,next_timer2,next_timer3,next_timer4,next_timer5,
		next_timer6,next_timer7,next_timer8,next_timer9,next_timer10,next_timer11,
		next_timer12,next_timer13,next_timer14,next_timer15,next_timer16,next_timer17
		,next_timer18,next_timer19 : std_logic;
	SIGNAL BP_lcd_data : std_logic_vector (3 DOWNTO 0);
	SIGNAL lcd_data : std_logic_vector (3 DOWNTO 0);
	SIGNAL status : std_logic_vector (6 DOWNTO 0);
	SIGNAL timer : std_logic_vector (19 DOWNTO 0);
BEGIN
	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer19 <= '0';
			ELSE
				timer19 <= next_timer19;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer18 <= '0';
			ELSE
				timer18 <= next_timer18;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer17 <= '0';
			ELSE
				timer17 <= next_timer17;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer16 <= '0';
			ELSE
				timer16 <= next_timer16;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer15 <= '0';
			ELSE
				timer15 <= next_timer15;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer14 <= '0';
			ELSE
				timer14 <= next_timer14;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer13 <= '0';
			ELSE
				timer13 <= next_timer13;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer12 <= '0';
			ELSE
				timer12 <= next_timer12;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer11 <= '0';
			ELSE
				timer11 <= next_timer11;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer10 <= '0';
			ELSE
				timer10 <= next_timer10;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer9 <= '0';
			ELSE
				timer9 <= next_timer9;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer8 <= '0';
			ELSE
				timer8 <= next_timer8;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer7 <= '0';
			ELSE
				timer7 <= next_timer7;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer6 <= '0';
			ELSE
				timer6 <= next_timer6;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer5 <= '0';
			ELSE
				timer5 <= next_timer5;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer4 <= '0';
			ELSE
				timer4 <= next_timer4;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer3 <= '0';
			ELSE
				timer3 <= next_timer3;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer2 <= '0';
			ELSE
				timer2 <= next_timer2;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer1 <= '0';
			ELSE
				timer1 <= next_timer1;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, rc)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			IF (rc='1') THEN
				timer0 <= '0';
			ELSE
				timer0 <= next_timer0;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (CLK, next_sreg, next_BP_lcd_e, next_BP_lcd_rs, next_rc, 
		next_BP_lcd_data3, next_BP_lcd_data2, next_BP_lcd_data1, next_BP_lcd_data0, 
		next_status6, next_status5, next_status4, next_status3, next_status2, 
		next_status1, next_status0)
	BEGIN
		IF CLK='1' AND CLK'event THEN
			sreg <= next_sreg;
			BP_lcd_e <= next_BP_lcd_e;
			BP_lcd_rs <= next_BP_lcd_rs;
			rc <= next_rc;
			BP_lcd_data3 <= next_BP_lcd_data3;
			BP_lcd_data2 <= next_BP_lcd_data2;
			BP_lcd_data1 <= next_BP_lcd_data1;
			BP_lcd_data0 <= next_BP_lcd_data0;
			status6 <= next_status6;
			status5 <= next_status5;
			status4 <= next_status4;
			status3 <= next_status3;
			status2 <= next_status2;
			status1 <= next_status1;
			status0 <= next_status0;
		END IF;
	END PROCESS;

	PROCESS (sreg,BP_lcd_data0,BP_lcd_data1,BP_lcd_data2,BP_lcd_data3,BP_lcd_e,
		BP_lcd_rs,rc,RESET,timer0,timer1,timer2,timer3,timer4,timer5,timer6,timer7,
		timer8,timer9,timer10,timer11,timer12,timer13,timer14,timer15,timer16,timer17
		,timer18,timer19,BP_lcd_data,status)
	BEGIN
		next_BP_lcd_data0 <= BP_lcd_data0;next_BP_lcd_data1 <= BP_lcd_data1;
			next_BP_lcd_data2 <= BP_lcd_data2;next_BP_lcd_data3 <= BP_lcd_data3;
			next_BP_lcd_e <= BP_lcd_e;next_BP_lcd_rs <= BP_lcd_rs;next_rc <= rc;

		BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
			BP_lcd_data1, BP_lcd_data0)));

		next_status0 <= '0'; next_status1 <= '0'; next_status2 <= '0'; next_status3
			 <= '0'; next_status4 <= '0'; next_status5 <= '0'; next_status6 <= '0'; 
		status<=std_logic_vector'("0000000"); 

		next_sreg<=s0;

		IF ( RESET='0' ) THEN
			next_sreg<=s0;
			next_BP_lcd_rs<='0';
			next_BP_lcd_e<='0';
			next_rc<='1';

			BP_lcd_data <= (std_logic_vector'("0000"));
			status <= (std_logic_vector'("0000000"));
		ELSE
			CASE sreg IS
				WHEN s0 =>
					next_sreg<=s1;
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
					ELSE next_BP_lcd_e<='0';
					END IF;

					BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
						BP_lcd_data1, BP_lcd_data0)));
					status <= (std_logic_vector'("0000001"));
				WHEN s1 =>
					IF ( timer0='0' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='1' AND timer5='1' AND timer6='0' AND timer7='1' AND timer8='1' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='1' AND timer13='1' 
						AND timer14='1' AND timer15='0' AND timer16='1' AND timer17='1' AND 
						timer18='0' AND timer19='1' ) THEN
						next_sreg<=s2;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0000010"));
					 ELSE
						next_sreg<=s1;
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0000001"));
					END IF;
				WHEN s2 =>
					next_sreg<=s3;
					next_BP_lcd_e<='1';
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					status <= (std_logic_vector'("0000011"));
					BP_lcd_data <= (std_logic_vector'("0011"));
				WHEN s3 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s4;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0000100"));
					 ELSE
						next_sreg<=s3;
						next_BP_lcd_e<='1';
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0000011"));
						BP_lcd_data <= (std_logic_vector'("0011"));
					END IF;
				WHEN s4 =>
					IF ( timer0='0' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='1' AND timer5='0' AND timer6='0' AND timer7='1' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='1' AND timer13='0' 
						AND timer14='1' AND timer15='1' AND timer16='1' AND timer17='1' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s5;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0000101"));
					 ELSE
						next_sreg<=s4;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0000100"));
					END IF;
				WHEN s5 =>
					next_sreg<=s6;
					next_BP_lcd_e<='1';
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					status <= (std_logic_vector'("0000110"));
					BP_lcd_data <= (std_logic_vector'("0011"));
				WHEN s6 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s7;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0000111"));
					 ELSE
						next_sreg<=s6;
						next_BP_lcd_e<='1';
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0000110"));
						BP_lcd_data <= (std_logic_vector'("0011"));
					END IF;
				WHEN s7 =>
					IF ( timer0='0' AND timer1='0' AND timer2='0' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='1' AND timer8='1' AND 
						timer9='1' AND timer10='0' AND timer11='0' AND timer12='1' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s8;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0001000"));
					 ELSE
						next_sreg<=s7;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0000111"));
					END IF;
				WHEN s8 =>
					next_sreg<=s9;
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					status <= (std_logic_vector'("0001000"));
					IF ( TRUE) THEN next_BP_lcd_e<='1';
					ELSE next_BP_lcd_e<='0';
					END IF;

					BP_lcd_data <= (std_logic_vector'("0011"));
				WHEN s9 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s10;

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0001010"));
						IF ( FALSE) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

					 ELSE
						next_sreg<=s9;
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0001000"));
						IF ( TRUE) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (std_logic_vector'("0011"));
					END IF;
				WHEN s10 =>
					IF ( timer0='0' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='1' AND timer5='0' AND timer6='1' AND timer7='1' AND timer8='1' AND 
						timer9='1' AND timer10='1' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s11;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0001011"));
					 ELSE
						next_sreg<=s10;

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0001010"));
						IF ( FALSE) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

					END IF;
				WHEN s11 =>
					next_sreg<=s12;
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					status <= (std_logic_vector'("0001100"));
					IF ( TRUE) THEN next_BP_lcd_e<='1';
					ELSE next_BP_lcd_e<='0';
					END IF;

					BP_lcd_data <= (std_logic_vector'("0010"));
				WHEN s12 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s13;

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0001101"));
						IF ( FALSE) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

					 ELSE
						next_sreg<=s12;
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0001100"));
						IF ( TRUE) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (std_logic_vector'("0010"));
					END IF;
				WHEN s13 =>
					IF ( timer0='0' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='1' AND timer5='0' AND timer6='1' AND timer7='1' AND timer8='1' AND 
						timer9='1' AND timer10='1' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s14;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0001110"));
					 ELSE
						next_sreg<=s13;

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0001101"));
						IF ( FALSE) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

					END IF;
				WHEN s14 =>
					next_sreg<=s15;
					next_BP_lcd_e<='1';
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					status <= (std_logic_vector'("0001111"));
					BP_lcd_data <= (std_logic_vector'("0010"));
				WHEN s15 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s16;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010000"));
					 ELSE
						next_sreg<=s15;
						next_BP_lcd_e<='1';
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0001111"));
						BP_lcd_data <= (std_logic_vector'("0010"));
					END IF;
				WHEN s16 =>
					IF ( timer0='1' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s17;
						next_BP_lcd_e<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0010001"));
						BP_lcd_data <= (std_logic_vector'("1000"));
					 ELSE
						next_sreg<=s16;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010000"));
					END IF;
				WHEN s17 =>
					IF ( timer0='1' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s18;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010010"));
					 ELSE
						next_sreg<=s17;
						next_BP_lcd_e<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0010001"));
						BP_lcd_data <= (std_logic_vector'("1000"));
					END IF;
				WHEN s18 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='0' AND 
						timer4='1' AND timer5='1' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='1' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s19;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010011"));
					 ELSE
						next_sreg<=s18;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010010"));
					END IF;
				WHEN s19 =>
					next_sreg<=s20;
					next_BP_lcd_e<='1';
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					status <= (std_logic_vector'("0010100"));
					BP_lcd_data <= (std_logic_vector'("0000"));
				WHEN s20 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s21;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010101"));
					 ELSE
						next_sreg<=s20;
						next_BP_lcd_e<='1';
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0010100"));
						BP_lcd_data <= (std_logic_vector'("0000"));
					END IF;
				WHEN s21 =>
					IF ( timer0='1' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s22;
						next_BP_lcd_e<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0010110"));
						BP_lcd_data <= (std_logic_vector'("1111"));
					 ELSE
						next_sreg<=s21;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010101"));
					END IF;
				WHEN s22 =>
					IF ( timer0='1' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s23;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010111"));
					 ELSE
						next_sreg<=s22;
						next_BP_lcd_e<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0010110"));
						BP_lcd_data <= (std_logic_vector'("1111"));
					END IF;
				WHEN s23 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='0' AND 
						timer4='1' AND timer5='1' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='1' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s24;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0011000"));
					 ELSE
						next_sreg<=s23;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0010111"));
					END IF;
				WHEN s24 =>
					next_sreg<=s25;
					next_BP_lcd_e<='1';
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					status <= (std_logic_vector'("0011001"));
					BP_lcd_data <= (std_logic_vector'("0000"));
				WHEN s25 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s26;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0011010"));
					 ELSE
						next_sreg<=s25;
						next_BP_lcd_e<='1';
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0011001"));
						BP_lcd_data <= (std_logic_vector'("0000"));
					END IF;
				WHEN s26 =>
					IF ( timer0='1' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s27;
						next_BP_lcd_e<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0011011"));
						BP_lcd_data <= (std_logic_vector'("0001"));
					 ELSE
						next_sreg<=s26;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0011010"));
					END IF;
				WHEN s27 =>
					IF ( timer0='1' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s28;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0011100"));
					 ELSE
						next_sreg<=s27;
						next_BP_lcd_e<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0011011"));
						BP_lcd_data <= (std_logic_vector'("0001"));
					END IF;
				WHEN s28 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='0' AND 
						timer4='1' AND timer5='1' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='1' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s29;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0011101"));
					 ELSE
						next_sreg<=s28;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0011100"));
					END IF;
				WHEN s29 =>
					next_sreg<=s30;
					next_BP_lcd_e<='1';
					next_rc<='0';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					status <= (std_logic_vector'("0011110"));
					BP_lcd_data <= (std_logic_vector'("0000"));
				WHEN s30 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s31;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0011111"));
					 ELSE
						next_sreg<=s30;
						next_BP_lcd_e<='1';
						next_rc<='0';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0011110"));
						BP_lcd_data <= (std_logic_vector'("0000"));
					END IF;
				WHEN s31 =>
					IF ( timer0='1' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s32;
						next_BP_lcd_e<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0100000"));
						BP_lcd_data <= (std_logic_vector'("0110"));
					 ELSE
						next_sreg<=s31;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0011111"));
					END IF;
				WHEN s32 =>
					IF ( timer0='1' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s33;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0100001"));
					 ELSE
						next_sreg<=s32;
						next_BP_lcd_e<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						status <= (std_logic_vector'("0100000"));
						BP_lcd_data <= (std_logic_vector'("0110"));
					END IF;
				WHEN s33 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='0' AND 
						timer4='1' AND timer5='1' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='1' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s34;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0100010"));
					 ELSE
						next_sreg<=s33;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0100001"));
					END IF;
				WHEN s34 =>
					next_sreg<=s35;
					next_BP_lcd_e<='1';
					next_BP_lcd_rs<='1';
					next_rc<='0';

					status <= (std_logic_vector'("0100011"));
					BP_lcd_data <= (std_logic_vector'("0011"));
				WHEN s35 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s36;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0100100"));
					 ELSE
						next_sreg<=s35;
						next_BP_lcd_e<='1';
						next_BP_lcd_rs<='1';
						next_rc<='0';

						status <= (std_logic_vector'("0100011"));
						BP_lcd_data <= (std_logic_vector'("0011"));
					END IF;
				WHEN s36 =>
					IF ( timer0='1' AND timer1='0' AND timer2='0' AND timer3='0' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s37;
						next_BP_lcd_e<='1';
						next_BP_lcd_rs<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						status <= (std_logic_vector'("0100101"));
						BP_lcd_data <= (std_logic_vector'("1000"));
					 ELSE
						next_sreg<=s36;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0100100"));
					END IF;
				WHEN s37 =>
					IF ( timer0='1' AND timer1='0' AND timer2='1' AND timer3='1' AND 
						timer4='0' AND timer5='0' AND timer6='1' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='0' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s38;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0100110"));
					 ELSE
						next_sreg<=s37;
						next_BP_lcd_e<='1';
						next_BP_lcd_rs<='1';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						status <= (std_logic_vector'("0100101"));
						BP_lcd_data <= (std_logic_vector'("1000"));
					END IF;
				WHEN s38 =>
					IF ( timer0='0' AND timer1='0' AND timer2='1' AND timer3='0' AND 
						timer4='1' AND timer5='1' AND timer6='0' AND timer7='0' AND timer8='0' AND 
						timer9='0' AND timer10='0' AND timer11='1' AND timer12='0' AND timer13='0' 
						AND timer14='0' AND timer15='0' AND timer16='0' AND timer17='0' AND 
						timer18='0' AND timer19='0' ) THEN
						next_sreg<=s39;
						next_rc<='1';

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
						ELSE next_BP_lcd_e<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0100111"));
					 ELSE
						next_sreg<=s38;
						next_BP_lcd_e<='0';

						IF (( rc='1' )) THEN next_rc<='1';
						ELSE next_rc<='0';
						END IF;

						IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
						ELSE next_BP_lcd_rs<='0';
						END IF;

						BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
							BP_lcd_data1, BP_lcd_data0)));
						status <= (std_logic_vector'("0100110"));
					END IF;
				WHEN s39 =>
					next_sreg<=s39;
					next_rc<='1';

					IF (( BP_lcd_rs='1' )) THEN next_BP_lcd_rs<='1';
					ELSE next_BP_lcd_rs<='0';
					END IF;

					IF (( BP_lcd_e='1' )) THEN next_BP_lcd_e<='1';
					ELSE next_BP_lcd_e<='0';
					END IF;

					BP_lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, 
						BP_lcd_data1, BP_lcd_data0)));
					status <= (std_logic_vector'("0100111"));
				WHEN OTHERS =>
			END CASE;
		END IF;

		next_BP_lcd_data3 <= BP_lcd_data(3);
		next_BP_lcd_data2 <= BP_lcd_data(2);
		next_BP_lcd_data1 <= BP_lcd_data(1);
		next_BP_lcd_data0 <= BP_lcd_data(0);
		next_status6 <= status(6);
		next_status5 <= status(5);
		next_status4 <= status(4);
		next_status3 <= status(3);
		next_status2 <= status(2);
		next_status1 <= status(1);
		next_status0 <= status(0);
	END PROCESS;

	PROCESS (timer0,timer1,timer2,timer3,timer4,timer5,timer6,timer7,timer8,
		timer9,timer10,timer11,timer12,timer13,timer14,timer15,timer16,timer17,
		timer18,timer19,timer)
	BEGIN
		timer <= (( std_logic_vector'(timer19, timer18, timer17, timer16, timer15, 
			timer14, timer13, timer12, timer11, timer10, timer9, timer8, timer7, timer6, 
			timer5, timer4, timer3, timer2, timer1, timer0)) +std_logic_vector'(
			"00000000000000000001"));
		next_timer0 <= timer(0);
		next_timer1 <= timer(1);
		next_timer2 <= timer(2);
		next_timer3 <= timer(3);
		next_timer4 <= timer(4);
		next_timer5 <= timer(5);
		next_timer6 <= timer(6);
		next_timer7 <= timer(7);
		next_timer8 <= timer(8);
		next_timer9 <= timer(9);
		next_timer10 <= timer(10);
		next_timer11 <= timer(11);
		next_timer12 <= timer(12);
		next_timer13 <= timer(13);
		next_timer14 <= timer(14);
		next_timer15 <= timer(15);
		next_timer16 <= timer(16);
		next_timer17 <= timer(17);
		next_timer18 <= timer(18);
		next_timer19 <= timer(19);
	END PROCESS;

	PROCESS (BP_lcd_e)
	BEGIN
		IF (( BP_lcd_e='1' )) THEN lcd_e<='1';
		ELSE lcd_e<='0';
		END IF;
	END PROCESS;

	PROCESS (BP_lcd_rs)
	BEGIN
		IF (( BP_lcd_rs='1' )) THEN lcd_rs<='1';
		ELSE lcd_rs<='0';
		END IF;
	END PROCESS;

	PROCESS (BP_lcd_data0,BP_lcd_data1,BP_lcd_data2,BP_lcd_data3,lcd_data)
	BEGIN
		lcd_data <= (( std_logic_vector'(BP_lcd_data3, BP_lcd_data2, BP_lcd_data1, 
			BP_lcd_data0)));
		lcd_data0 <= lcd_data(0);
		lcd_data1 <= lcd_data(1);
		lcd_data2 <= lcd_data(2);
		lcd_data3 <= lcd_data(3);
	END PROCESS;
END BEHAVIOR;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ieee;
USE ieee.std_logic_unsigned.all;

ENTITY UCONTROLLCD IS
	PORT (lcd_data : OUT std_logic_vector (3 DOWNTO 0);
		status : OUT std_logic_vector (6 DOWNTO 0);
		CLK,RESET: IN std_logic;
		lcd_e,lcd_rs : OUT std_logic);
END;

ARCHITECTURE BEHAVIOR OF UCONTROLLCD IS
	COMPONENT SHELL_UCONTROLLCD
		PORT (CLK,RESET: IN std_logic;
			lcd_data0,lcd_data1,lcd_data2,lcd_data3,lcd_e,lcd_rs,status0,status1,
				status2,status3,status4,status5,status6 : OUT std_logic);
	END COMPONENT;
BEGIN
	SHELL1_UCONTROLLCD : SHELL_UCONTROLLCD PORT MAP (CLK=>CLK,RESET=>RESET,
		lcd_data0=>lcd_data(0),lcd_data1=>lcd_data(1),lcd_data2=>lcd_data(2),
		lcd_data3=>lcd_data(3),lcd_e=>lcd_e,lcd_rs=>lcd_rs,status0=>status(0),status1
		=>status(1),status2=>status(2),status3=>status(3),status4=>status(4),status5
		=>status(5),status6=>status(6));
END BEHAVIOR;
