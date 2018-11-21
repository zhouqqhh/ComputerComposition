library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFtoID is
	port (
		--new instruction
		instruction_in: in std_logic_vector(15 downto 0);
		clk: in std_logic;
		rst: in std_logic;
		
		instruction_out: out std_logic_vector(15 downto 0)
	);
end IFtoID;

architecture Behavioral of IFtoID is
	signal instruction: std_logic_vector(15 downto 0);
begin
	instruction_out <= instruction;
	
	process(clk, rst)
	begin
		if rst = '0' then
			instruction <= (others => '0');
		elsif rising_edge(clk) then
			instruction <= instruction_in;
		end if;
	end process;
end Behavioral;

