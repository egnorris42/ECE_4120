-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- MEM_WB.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity MEM_WB is
	port(
		clock:		in std_logic;
		-- INPUT
		-- Control
		-- WB
		MemToReg_in:	 in std_logic;
		RegWrite_in:	 in std_logic;
		--
		ReadData_in:	 in std_logic_vector(31 downto 0);
		ALURes_in:		 in std_logic_vector(31 downto 0);
		WriteReg_in:	 in std_logic_vector(4 downto 0);
		-- OUTPUT
		MemToReg_out:	 out std_logic;
		RegWrite_out:	 out std_logic;
		--
		ReadData_out:	 out std_logic_vector(31 downto 0);
		ALURes_out:		 out std_logic_vector(31 downto 0);
		WriteReg_out:	 out std_logic_vector(4 downto 0);
		);
	end MEM_WB;
	
architecture MEM_WB_behavior of MEM_WB is
begin
process(clock)
	if clock = '1' and clock'event then
		MemToReg_out <= MemToReg_in;
		RegWrite_out <= RegWrite_in;
		ReadData_out <= ReadData_in;
		ALURes_out	 <= ALURes_in;
		WriteReg_out <= WriteReg_in;
	end if;
end process;
end MEM_WB_behavior;