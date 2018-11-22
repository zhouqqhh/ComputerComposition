library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_3bit is
	port (
		input0: in std_logic_vector(15 downto 0);
		input1: in std_logic_vector(15 downto 0);
		input2: in std_logic_vector(15 downto 0);
		input3: in std_logic_vector(15 downto 0);
		input4: in std_logic_vector(15 downto 0);
		input5: in std_logic_vector(15 downto 0);
		input6: in std_logic_vector(15 downto 0);
		input7: in std_logic_vector(15 downto 0);
		sel: in std_logic_vector(2 downto 0);
		output: out std_logic_vector(15 downto 0)
	);
end mux_3bit;

architecture Behavioral of mux_3bit is

begin
		with sel select output <=
			input0 when "000",
			input1 when "001",
			input2 when "010",
			input3 when "011",
			input4 when "100",
			input5 when "101",
			input6 when "110",
			input7 when "111",
			input0 when others;
end Behavioral;

