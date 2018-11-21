library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity Registers is
	port (
			--work on failing edge
			clk: in std_logic;
			rst: in std_logic;
			
			--write signal 1: write			
			reg_wb_signal: in std_logic;
			read_regs1: in std_logic_vector(2 downto 0);
			read_regs2: in std_logic_vector(2 downto 0);
			reg_wb_place: in std_logic_vector(2 downto 0);
			reg_wb_data: in std_logic_vector(15 downto 0);
			read_data1: out std_logic_vector(15 downto 0);
			read_data2: out std_logic_vector(15 downto 0)	
	);
end Registers;

architecture Behavioral of Registers is
	type regsdef is array(7 downto 0) of std_logic_vector(15 downto 0);
	signal regs_data : regsdef;
begin
	--read logic
	read_data1 <= regs_data(conv_integer(unsigned(read_regs1)));
	read_data2 <= regs_data(conv_integer(unsigned(read_regs2)));

	--write process
	process(clk, rst)
	begin
		if rst = '0' then
			regs_data(0) <= (others=>'0');
		elsif falling_edge(clk) and reg_wb_signal = '1' then
			regs_data(conv_integer(unsigned(reg_wb_place))) <= reg_wb_data;
		end if;
	end process;
end Behavioral;

