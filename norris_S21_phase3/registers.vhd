-- Elizabeth Norris
-- ECE 4120 - Project Phase 3
-- 04/29/2021
-- registers.vhd

library ieee, lcdf_vhdl;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity registers is
	port(
		ReadReg1, ReadReg2: in std_logic_vector(4 downto 0); 
		ReadData1, ReadData2: out std_logic_vector(31 downto 0);
		clock: in std_logic;
		regWrite: in std_logic; --write enable flag
		writeRegister: in std_logic_vector(4 downto 0);
		writeData: in std_logic_vector(31 downto 0));
		);
	end registers;
	
architecture registers_behavior of registers is

type RegisterArray is array(0 to 31) of std_logic_vector(31 downto 0);
	signal RegisterNumber : RegisterArray := (
	x"00000000", -- 0
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000", -- 10
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000", -- 20
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000", -- 30
	x"00000000",
   x"00000000"	-- 31
	);
	
begin

ReadData1 <= RegisterNumber(to_integer(unsigned(ReadReg1)));
ReadData2 <= RegisterNumber(to_integer(unsigned(ReadReg2)));

process(clock)
begin
	if(clock='1' and clock'event and regWrite='1') then
		RegisterNumber(to_integer(unsigned(writeRegister))) <= writeData;
	end if;
end process;

end registers_behavior;