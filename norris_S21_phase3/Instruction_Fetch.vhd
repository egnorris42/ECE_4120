-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- Instruction_Fetch.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Instruction_Fetch is
	port(
		clock_in: in std_logic;
		mux0_in: in std_logic_vector(31 downto 0);
		mux1_in: in std_logic_vector(31 downto 0);
		PCSrc_in: in std_logic;
		add_4_out: out std_logic_vector(31 downto 0);
		instruction_memory_out: out std_logic_vector(31 downto 0);
		);
end Instruction_Fetch;

architecture Instruction_Fetch_Arch of Instruction_Fetch is
	
	--Components-------------------------------------------------------------------------------

	component mux is
	port(
		in1: in std_logic_vector(31 downto 0);
		in2: in std_logic_vector(31 downto 0);
		control: in std_logic;
		result: out std_logic_vector(31 downto 0)		
		);
	end component;
	
	component program_counter is 
	port(
		clock: in std_logic;
		next_address: in std_logic_vector(31 downto 0);
		current_address: out std_logic_vector(31 downto 0)		
		);
	end component;
		
	component add_4 is
	port(
		input: in std_logic_vector(31 downto 0);
		sum: out std_logic_vector(31 downto 0) := (others => '0')		
		);
	end component;
		
	component InstructionMemory is -- ////////////////////////////////////
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	END component;
	
	component IF_ID is
	port(
		clock: in std_logic;
		PC_in: in std_logic_vector(31 downto 0);
		inst_in: in std_logic_vector(31 downto 0);
		PC_out: out std_logic_vector(31 downto 0);
		inst_out: out std_logic_vector(31 downto 0)		
		);
	end component;
	
	
	--Signals----------------------------------------------------------------------------------
	
	-- Starting with the beginning of the PC
	signal mux_out: std_logic_vector(31 downto 0);
	signal program_counter_out: std_logic_vector(31 downto 0);
	signal IM_out: std_logic_vector(31 downto 0);
	signal add_out: std_logic_vector(31 downto 0);
	
	--Connections------------------------------------------------------------------------------
	begin
	-- Starting with the PC
	U1: mux port map(mux0_in, mux1_in, PCSrc_in, mux_out); --
	U2: program_counter port map(clock_in, mux_out, program_counter_out);--
	U3: add_4 port map(program_counter_out, add_out); --
	U4: instruction_memory port map(program_counter_out, clock_in,__,__, IM_out);
	U5: IF_ID port map(clock_in, add_out, IM_out, add_4_out, instruction_memory_out); --


end Instruction_Fetch_Arch;		