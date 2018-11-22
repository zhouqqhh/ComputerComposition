library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2bit is
	port (
		input0: in std_logic_vector(15 downto 0);
		input1: in std_logic_vector(15 downto 0);
		input2: in std_logic_vector(15 downto 0);
		input3: in std_logic_vector(15 downto 0);
		sel: in std_logic_vector(1 downto 0);
		output: out std_logic_vector(15 downto 0)
	);
end mux_2bit;

architecture Behavioral of mux_2bit is

begin
		with sel select output <=
			input0 when "00",
			input1 when "01",
			input2 when "10",
			input3 when "11",
			input0 when others;
end Behavioral;

