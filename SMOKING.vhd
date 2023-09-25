--Fermin Covarrubias Ramos
--Ariel Gonzales Diaz

LIBRARY IEEE;
 USE IEEE.STD_LOGIC_1164.ALL;
 USE IEEE.STD_LOGIC_ARITH.ALL;
 USE IEEE.STD_LOGIC_UNSIGNED.ALL;
 
 ENTITY SMOKING IS
 PORT(
 clk50MHz : IN STD_LOGIC;
 clk : OUT STD_LOGIC;
 smoke : IN STD_LOGIC;
 buzzer : OUT STD_LOGIC;
 reset :  IN STD_LOGIC; 
 count : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
 rst : IN STD_LOGIC
 );
 END SMOKING;
 
  ARCHITECTURE Behavioral OF SMOKING IS
  SIGNAL clk_temp : STD_LOGIC_VECTOR (25 DOWNTO 0) := "00000000000000000000000000";
  ALIAS clk_new : STD_LOGIC IS clk_temp(20);
  TYPE state IS (one, two, three);
  SIGNAL pr_state, nx_state : state;
  BEGIN
  
  CLOCK_DIVIDER : PROCESS (clk50MHz, rst)
	BEGIN
	IF rst = '1' THEN
			clk_temp <= "00000000000000000000000000";
		ELSIF clk50MHz'EVENT AND clk50MHZ = '1' THEN
			clk_temp <= clk_temp + '1';
		END IF;
	END PROCESS CLOCK_DIVIDER;
	
	clk <= clk_new;
	
	PROCESS (reset, clk_new)
	BEGIN
		IF (reset = '1') THEN
			pr_state <= one;
		ELSIF clk_new'EVENT AND clk_new = '1' THEN
			pr_State <= nx_state;
		END IF;
	END PROCESS;
	
	PROCESS (pr_state, smoke)
	BEGIN
		CASE pr_state IS		
				WHEN one => 
				count <= "0001";
					IF smoke ='0' THEN	
						buzzer <= '0';
					END IF;
					IF smoke = '1' THEN
						buzzer <= '1';
						nx_state <= two;
					END IF;
						
					
				WHEN two => 
				count <= "0010";
					IF smoke ='0' THEN	
						buzzer <= '0';
					ELSIF smoke = '1' THEN
						buzzer <= '1';
						nx_state <= two;
					END IF;
					nx_state <= three;
				
				WHEN three =>  
				count <= "0011";
				nx_state <= one;
					
				END CASE;
			END PROCESS;
			
	END Behavioral;