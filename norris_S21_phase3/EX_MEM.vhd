-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- EX_MEM.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity EX_MEM is
	port(
		clock:		in std_logic;
		-- INPUT
		-- Control
		-- WB
		MemToReg_in:	 in std_logic;
		RegWrite_in:	 in std_logic;
		-- M
		BranchM4_in:	 in std_logic;
		MemRead_in:		 in std_logic;
		MemWrite_in:	 in std_logic;
		BranchAND_in:	 in std_logic;
		-- 
		JumpAdr_in:		 in std_logic_vector(31 downto 0);
		ALURes_in:		 in std_logic_vector(31 downto 0);
		ALUzero_in:		 in std_logic;
		ReadData2_in:	 in std_logic_vector(31 downto 0);
		WriteReg_in: 	 in std_logic_vector(4 downto 0);
		-- OUTPUT
		RegWrite_out:	 out std_logic;
		MemToReg_out:	 out std_logic;
		BranchM4_out:	 out std_logic;
		MemRead_out:	 out std_logic;
		MemWrite_out:	 out std_logic;
		BranchAND_out:	 out std_logic;
		-- 
		JumpAdr_out:	 out std_logic_vector(31 downto 0);
		ALURes_out:		 out std_logic_vector(31 downto 0);
		ALUzero_out:	 out std_logic;
		ReadData2_out:	 out std_logic_vector(31 downto 0);
		WriteReg_out: 	 out std_logic_vector(4 downto 0);
		);
	end EX_MEM;
	
architecture EX_MEM_behavior of EX_MEM is
begin
process(clock)
	if clock = '1' and clock'event then
		RegWrite_out	<= RegWrite_in;
		MemToReg_out	<= MemToReg_in;
		BranchM4_out	<= BranchM4_in;
		MemRead_out		<= MemRead_in;
		MemWrite_out	<= MemWrite_in;
		BranchAND_out	<= BranchAND_in;
		JumpAdr_out		<= JumpAdr_in;
		ALURes_out		<= ALURes_in;
		ALUzero_out		<= ALUzero_in;
		ReadData2_out	<= ReadData2_in;
		WriteReg_out	<= WriteReg_in;
	end if;
end process;
end EX_MEM_behavior;