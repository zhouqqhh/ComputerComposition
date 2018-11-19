library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add is
	port (
		src1: in std_logic_vector(15 downto 0);
		src2: in std_logic_vector(15 downto 0);
		output: out std_logic_vector(15 downto 0)
	);
end add;

architecture Behavioral of add is
begin
	output <= src1 + src2;
end Behavioral;

