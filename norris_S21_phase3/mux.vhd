-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- mux.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity mux is
	port(
		in1: in std_logic_vector(31 downto 0);
		in2: in std_logic_vector(31 downto 0);
		control: in std_logic;
		result: out std_logic_vector(31 downto 0)
		);
	end mux;
	
architecture mux_behavior of mux is
 begin
	result <= in1 when (control = '0') else in2;
end mux_behavior;