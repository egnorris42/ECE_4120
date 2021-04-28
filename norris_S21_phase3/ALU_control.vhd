-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- ALU_control.vhd
//////////////////////////////////////////////////////////////////
library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ALU_control is
	port(
		ALU_func: std_logic_vector(5 downto 0);
		ALU_op: in std_logic_vector(1 downto 0);
		ALU_inst: out std_logic_vector(3 downto 0)
		);
	end ALU_control;

	-- 0000 AND
	-- 0001 OR
	-- 0010 add
	-- 0110 subtract
	-- 0111 set-on-less-than
	-- 1100 NOR
	
architecture ALU_control_behavior of ALU_control is
signal ALU_and: std_logic_vector(3 downto 0) := "0000";
signal ALU_or: std_logic_vector(3 downto 0) := "0001";
signal ALU_add: std_logic_vector(3 downto 0) := "0010";
signal ALU_sub: std_logic_vector(3 downto 0) := "0110";
signal ALU_slt: std_logic_vector(3 downto 0) := "0111";
--signal ALU_nor: std_logic_vector(3 downto 0) := "1100";


begin
	
	ALU_inst <= ALU_and when(ALU_op="10" and ALU_funct="100100") else
				ALU_or  when(ALU_op="10" and ALU_funct="100101") else
				ALU_add when((ALU_op="00") or (ALU_op="10" and ALU_funct="100000")) else
				ALU_sub when((ALU_op="01") or (ALU_op="10" and ALU_funct="100010")) else
				ALU_slt when(ALU_op="10" and ALU_funct="101010") else
				"0000";

end ALU_control_behavior;