-- Elizabeth Norris
-- ECE 4120 - Project Phase 1
-- 03/21/2021
-- Testbench.vhd

library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity Testbench is
end Testbench;

architecture Test of Testbench is

	signal clock: std_logic;
	signal memoryInput: std_logic_vector(31 downto 0);
	signal instructionOutput: std_logic_vector(31 downto 0);
	
	begin
	
	DUT: Proj_Phase1 port map(clock, instructionIn, instructionOut);

	clock <= not clock after X sec; -- Need to change
	
	memoryInput <= instructionIn;-- would like to implemet .mif file? But wasn't sure how
	
	instructionOutput <= instructionOut;-- Also unsure how to attach this?
	
end Test;