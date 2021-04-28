-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- adder.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity adder is
	port(
		in1: in std_logic_vector(31 downto 0);
		in2: in std_logic_vector(31 downto 0);
		sum: out std_logic_vector(31 downto 0)
		);
	end adder;
	
architecture adder_behavior of adder is
begin
	sum <= in1 + in2;
end adder_behavior;