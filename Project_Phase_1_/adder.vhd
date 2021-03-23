-- Elizabeth Norris
-- ECE 4120 - Project Phase 1
-- 03/21/2021
-- adder.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Adder is
	port(input: in std_logic_vector(31 downto 0);
		sum: out std_logic_vector(31 downto 0) := (others => '0'));
	end Adder;
	
architecture Adder_behavior of Adder is
shared variable numFour: integer := 4;
	begin
		
		-- need to check that this is correct syntax
		sum <= input + numFour;

end Adder_behavior;
