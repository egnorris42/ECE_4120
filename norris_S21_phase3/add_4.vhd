-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- add_4.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity add_4 is
	port(
		input: in std_logic_vector(31 downto 0);
		sum: out std_logic_vector(31 downto 0) := (others => '0')
		);
	end add_4;
	
architecture add_4_behavior of add_4 is
shared variable numFour: integer := 4;
	begin
		sum <= input + numFour;
end add_4_behavior;
