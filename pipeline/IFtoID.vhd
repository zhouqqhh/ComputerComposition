library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFtoID is
	port (
		input: in std_logic_vector(15 downto 0);
		clk: in std_logic;
		output: out std_logic_vector(15 downto 0)
	);
end IFtoID;

architecture Behavioral of IFtoID is
signal IFtoID_data: std_logic_vector(15 downto 0);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			output <= IFtoID_data;
			IFtoID_data <= input;
		end if;
	end process;
end Behavioral;

