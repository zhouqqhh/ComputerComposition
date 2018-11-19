library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Compare is
	port (
		number1: in std_logic_vector(15 downto 0);
		number2: in std_logic_vector(15 downto 0);
		output: out std_logic
	);
end Compare;

architecture Behavioral of Compare is

begin
	output <= (number1 = number2);
end Behavioral;

