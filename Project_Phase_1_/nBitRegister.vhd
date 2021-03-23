-- Elizabeth Norris
-- ECE 4120 - Project Phase 1
-- 03/21/2021
-- nBitRegister.vhd
-- Taken from Mega Function Slides

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY regn IS 
	GENERIC ( N : INTEGER := 8 );
	PORT ( D: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	Resetn, Clock: IN STD_LOGIC; 
	Q: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END regn;

ARCHITECTURE Behavior OF regn IS 
BEGIN

	PROCESS ( Resetn, Clock )
	BEGIN
	
		IF Resetn= '0' THEN 
			Q <= (OTHERS => '0');
			
		ELSIF Clock'EVENTAND Clock = '1' then
			Q <= D;
		
		END IF;
	
	END PROCESS;
	
END Behavior;