-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- IF_ID.vhd
-- DONE

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity IF_ID is
	port(
		clock: in std_logic;
		PC_in: in std_logic_vector(31 downto 0);
		inst_in: in std_logic_vector(31 downto 0);
		PC_out: out std_logic_vector(31 downto 0);
		inst_out: out std_logic_vector(31 downto 0)
		);
	end IF_ID;
	
architecture IF_ID_behavior of IF_ID is
begin
process(clock)
	if(clock = '1' and clock'event) then
		PC_out 		<= PC_in;
		inst_out 	<= inst_in;
end process;
end IF_ID_behavior;