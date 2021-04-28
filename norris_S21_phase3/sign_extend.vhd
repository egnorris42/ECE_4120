-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- sign_extend.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sign_extend is
	port(
		input: in std_logic_vector(15 donwto 0);
		output: out std_logic_vector(31 downto 0)
		);
	end sign_extend;
	
architecture sign_extend_behavior of sign_extend is
begin
	output <= std_logic_vector(resize(signed(input),output'length));
end sign_extend_behavior;