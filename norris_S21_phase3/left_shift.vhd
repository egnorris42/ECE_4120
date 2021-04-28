-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- left_shift.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity left_shift is
	port(
		input: in std_logic_vector(31 downto 0);
		output: out std_logic_vector(31 donwto 0);
		);
	end left_shift;
	
architecture left_shift_behavior of left_shift is
begin
	output <= shift_left(signed(input), 2);
end left_shift_behavior;