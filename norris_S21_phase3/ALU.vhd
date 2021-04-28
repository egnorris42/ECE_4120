-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- ALU.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ALU is
	port(
		in1: in std_logic_vector(31 downto 0);
		in2: in std_logic_vector(31 downto 0);
		control: in std_logic_vector(3 downto 0);
		zero: out std_logic;
		result: out std_logic_vector(31 downto 0)
		);
	end ALU;
	

	-- 0000 AND
	-- 0001 OR
	-- 0010 add
	-- 0110 subtract
	-- 0111 set-on-less-than
	-- 1100 NOR
		
architecture ALU_behavior of ALU is
begin
	process(control)
	case control is
		when "0000" => result <= in1 and in2;
		when "0001" => result <= in1 or in2;
		when "0010" => result <= in1 + in2;
		when "0110" => result <= in1 - in2;
		when "0111" => 
			if (signed(in1) < signed(in2)) then
				result <= x"00000001";
			else
				result <= x"00000000";
			end if;
		when "1100" => result <= in1 nor in2;
		when others => result <= x"11111111";
	end case;
	end process;
	zero <= '1' when result = x"00000000" else '0';
	
end ALU_behavior;