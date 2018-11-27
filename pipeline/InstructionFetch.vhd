library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity InstructionFetch is
	port (
	--in
		clk: in std_logic;
		rst: in std_logic;

		pc: in std_logic_vector(15 downto 0);
	--out
		instruction: out std_logic_vector(15 downto 0)
	);
end InstructionFetch;

architecture Behavioral of InstructionFetch is
	type memdef is array(15 downto 0) of std_logic_vector(15 downto 0);
	signal memory : memdef;
begin
	instruction <= memory(conv_integer(pc));
	memory_init:process(rst, clk)
		begin
			if rst = '0' then
				memory(0) <= "0000100000000000"; --NOP
				memory(1) <= "0100000100000001";
				memory(2) <= "0100001000000010";
				memory(3) <= "0100001100000011";
				memory(4) <= "0100010000000100";
				memory(5) <= "0100010100000101";
				memory(6) <= "0100011000000110";
			end if;
		end process;

end Behavioral;
