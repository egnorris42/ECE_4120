-- Elizabeth Norris
-- ECE 4120 - Project Phase 1
-- 03/21/2021
-- Main.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 

entity Proj_Phase1 is
	port(clock: in std_logic;
	output: out std_logic_vector(31 downto 0));
	
end Proj_Phase1;

architecture main of Proj_Phase1 is
	
	--Components-------------------------------------------------------------------------------

	component PC is 
		port(clock: in std_logic;
			input_next_address: in std_logic_vector(31 downto 0) := (others => '0');
			output_address: out std_logic_vector(31 downto 0) := (others => '0'));
		end component;
		
	component Adder is
		port(input: in std_logic_vector(31 downto 0);
			sum: out std_logic_vector(31 downto 0) := (others => '0'));
		end component;
		
	component InstructionMemory IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	END component;
	
	--Signals----------------------------------------------------------------------------------
	
	-- Starting with the beginning of the PC
	signal adder_output: std_logic_vector(31 downto 0);
	signal PC_output: std_logic_vector(31 downto 0);
	signal PC_output_small: std_logic_vector(7 downto 0) := PC_output(7 downto 0);

	
	--Connections------------------------------------------------------------------------------
	begin
	-- Starting with the PC
	U1: PC port map(clock, adder_output, PC_output); 
	U2: Adder port map(PC_output, adder_output);
	U3: InstructionMemory port map(PC_output_small, clock, x"00000000", '1', output);


end main;		