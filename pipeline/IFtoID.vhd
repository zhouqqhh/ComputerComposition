library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFtoID is
	port (
		input: in std_logic_vector(15 downto 0);
		clk: in std_logic;
		output7_0: out std_logic_vector(15 downto 0);
		output10_0: out std_logic_vector(15 downto 0);
		output10_8: out std_logic_vector(15 downto 0);
		output7_5: out std_logic_vector(15 downto 0);
		output4_0: out std_logic_vector(15 downto 0);
		output3_0: out std_logic_vector(15 downto 0);
		output4_2: out std_logic_vector(15 downto 0)
	);
end IFtoID;

architecture Behavioral of IFtoID is
signal IFtoID_data: std_logic_vector(15 downto 0);
signal output: std_logic_vector(15 downto 0);
begin
	output7_0 <= output(7 downto 0);
	output10_0 <= output(10 downto 0);
	output10_8 <= output(10 downto 8);
	output7_5 <= output(7 downto 5);
	output4_0 <= output(4 downto 0);
	output3_0 <= output(3 downto 0);
	output4_2 <= output(4 downto 2);
	process(clk)
	begin
		if rising_edge(clk) then
			output <= IFtoID_data;
			IFtoID_data <= input;
		end if;
	end process;
end Behavioral;

