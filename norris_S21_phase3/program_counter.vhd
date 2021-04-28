-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- program_counter.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity program_counter is
	port(
		clock: in std_logic;
		next_address: in std_logic_vector(31 downto 0);
		current_address: out std_logic_vector(31 downto 0)
		);
	end program_counter;
	
architecture program_counter_behavior of program_counter is
begin
	process(clock)
	if (clock = '0' and clock'event) then
		current_address <= next_address
	end if;
	end process;
end program_counter_behavior;