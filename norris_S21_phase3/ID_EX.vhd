-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- ID_EX.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ID_EX is
	port(
		clock: 			in std_logic;
		-- IN
		-- Control Signals
		-- WB
		MemToReg_in:	 in std_logic;
		RegWrite_in:	 in std_logic;
		-- M
		BranchAND_in:	 in std_logic; -- ???????????????????????
		BranchM4_in:	 in std_logic; -- ???????????????????????
		MemRead_in:		 in std_logic;
		MemWrite_in:	 in std_logic;
		-- EX
		RegDst_in:		 in std_logic;
		ALU_src_in:		 in std_logic;
		ALUop_in:		 in std_logic_vector(1 downto 0); --????????????????????????????
		--
		PC_in:			 in std_logic_vector(31 downto 0);
		ReadData1_in:	 in std_logic_vector(31 downto 0);
		ReadData2_in:	 in std_logic_vector(31 downto 0);
		SgnEx_in:		 in std_logic_vector(31 downto 0);
		WriteRT_in:		 in std_logic_vector(4 downto 0);
		WriteRD_in:		 in std_logic_vector(4 downto 0);
		-- OUT
		RegDst_in:		 out std_logic;
		BranchM4_out: 	 out std_logic;
		RegWrite_out: 	 out std_logic;
		ALU_src_out: 	 out std_logic;
		MemRead_out: 	 out std_logic;
		MemWrite_out:	 out std_logic;
		MemToReg_out:	 out std_logic;
		BranchAND_out:	 out std_logic;
		ALUop_out:		 out std_logic_vector(1 downto 0); --????????????????????????????
		--
		PC_out:			 out std_logic_vector(31 downto 0);
		ReadData1_out:	 out std_logic_vector(31 downto 0);
		ReadData2_out:	 out std_logic_vector(31 downto 0);
		SgnEx_out:		 out std_logic_vector(31 downto 0);
		WriteRT_out:	 out std_logic_vector(4 downto 0);
		WriteRD_out:	 out std_logic_vector(4 downto 0);
		);
	end ID_EX;
	
architecture ID_EX_behavior of ID_EX is
process(clock)
	if clock = '1' and clock'event then
		RegDst_in		<=	RegDst_in;
		BranchM4_out	<=	BranchM4_in;
		RegWrite_out	<=	RegWrite_in;
		ALU_src_out		<=	ALU_src_in;
		MemRead_out		<=	MemRead_in;
		MemWrite_out	<=	MemWrite_in;
		MemToReg_out	<=	MemToReg_in;
		BranchAND_out	<=	BranchAND_in;
		ALUop_out		<=	ALUop_in;
		PC_out 			<= PC_in;
		ReadData1_out 	<= ReadData1_in;
		ReadData2_out 	<= ReadData2_in;
		SgnEx_out 		<= SgnEx_in;
		WriteRT_out 	<= WriteRT_in;
		WriteRD_out 	<= WriteRD_in;	
	end if;
end process;
end ID_EX_behavior;