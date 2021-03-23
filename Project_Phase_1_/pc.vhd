-- Elizabeth Norris
-- ECE 4120 - Project Phase 1
-- 03/21/2021
-- pc.vhd
-- DONE

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 

entity PC is
	port(clock: in std_logic;
		input_next_address: in std_logic_vector(31 downto 0) := (others => '0');
		output_address: out std_logic_vector(31 downto 0) := (others => '0'));
	end PC;
	
architecture PC_behavior of PC is

	begin
	
		process(clock)
		begin
		
			-- On rising clock edge:
			if (clock = '0' and clock'event) then
				output_address <= input_next_address;
			end if;
		
		end process;

end PC_behavior;
