-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- Instruction_Decode.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Instruction_Decode is
	port(
		clock_in: in std_logic;
		instruction_in: in std_logic_vector(31 downto 0);
		RegWrite_in: in std_logic;
		control: out std_logic_vector(31 downto 0);
		read_data1_out: out std_logic_vector(31 downto 0);
		read_data2_out: out std_logic_vector(31 downto 0);
		sign_ex_out: out std_logic_vector(31 downto 0);
		mux0: out std_logic_vector(4 downto 0);
		mux1: out std_logic_vector(4 downto 0)
		);
end Instruction_Decode;

architecture Instruction_Decode_Arch of Instruction_Decode is
	
	--Components-------------------------------------------------------------------------------

	component control is
	port(
		
		);
	end component;
		
	component registers is
	port(
		clock: 			in std_logic;
		regWrite: 		in std_logic;
		ReadReg1: 		in std_logic_vector(4 downto 0); 
		ReadReg2: 		in std_logic_vector(4 downto 0);
		writeRegister: 	in std_logic_vector(4 downto 0);
		writeData: 		in std_logic_vector(31 downto 0));	 
		ReadData1:		out std_logic_vector(31 downto 0);
		ReadData2: 		out std_logic_vector(31 downto 0);	
		);
	end component;
	
	component sign_extend is 
	port(
		input: in std_logic_vector(15 donwto 0);
		output: out std_logic_vector(31 downto 0)	
		);
	end component;
	
	--Signals----------------------------------------------------------------------------------
	
	-- Starting with the beginning of the PC
	signal mux_out: std_logic_vector(31 downto 0);
	signal program_counter_out: std_logic_vector(31 downto 0);
	
	--Connections------------------------------------------------------------------------------
	begin
	-- Starting with the PC
	U1: control port map(); 
	U2: registers port map();
	U3: sign_extend port map(program_counter_out, add_4_out);


end Instruction_Decode_Arch;		