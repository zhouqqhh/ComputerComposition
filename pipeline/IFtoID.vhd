library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFtoID is
	port (
	--in
		instruction_in: in std_logic_vector(15 downto 0);
		pc_in: in std_logic_vector(15 downto 0);
		clk: in std_logic;
		rst: in std_logic;
		buble_maker_signal: in std_logic;
		slot_signal_in: in std_logic;
		--int
		int_instruction: in std_logic_vector(15 downto 0);
		int_signal: in std_logic;
		
	--out
		instruction_out: out std_logic_vector(15 downto 0);
		pc_out: out std_logic_vector(15 downto 0);
		slot_signal_out: out std_logic
	);
end IFtoID;

architecture Behavioral of IFtoID is
	signal instruction, pc: std_logic_vector(15 downto 0);
	signal slot_signal: std_logic;
begin

	instruction_out <= instruction;
	slot_signal_out <= slot_signal;
	pc_out <= pc;
	process(clk, rst)
	begin
		if rst = '0' then
			instruction <= (others => '0');
			pc <= (others=>'0');
			slot_signal <= '0';
		elsif rising_edge(clk) and buble_maker_signal = '0' then
			if int_signal = '0' then
				instruction <= instruction_in;
				pc <= pc_in;
				slot_signal <= slot_signal_in;
			else
				instruction <= int_instruction;
			end if;
		end if;
	end process;
end Behavioral;

