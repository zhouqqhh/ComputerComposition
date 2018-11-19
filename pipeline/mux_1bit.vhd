library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_1bit is
	port (
		input0: in std_logic_vector(15 downto 0);
		input1: in std_logic_vector(15 downto 0);
		sel: in std_logic;
		output: out std_logic_vector(15 downto 0);
	);
end mux_1bit;

architecture Behavioral of mux_1bit is
begin
		with sel select output <=
			input0 when '0',
			input1 when '1';
end Behavioral;

