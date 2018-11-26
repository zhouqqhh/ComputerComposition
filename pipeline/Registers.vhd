library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity Registers is
	port (
	--out
			--work on failing edge
			clk: in std_logic;
			rst: in std_logic;
			
			--write signal 1: write			
			read_regs1: in std_logic_vector(2 downto 0);
			read_regs2: in std_logic_vector(2 downto 0);

			reg_wb_signal: in std_logic;
			reg_wb_place: in std_logic_vector(2 downto 0);
			reg_wb_alu_result: in std_logic_vector(15 downto 0);
			reg_wb_mem_data: in std_logic_vector(15 downto 0);
			reg_wb_data_chooser: in std_logic;
			
			sp_wb_signal: in std_logic;
			t_wb_signal: in std_logic;
			ih_wb_signal: in std_logic;
			
			t_wb_data: in std_logic;
			
		--out
			read_data1: out std_logic_vector(15 downto 0);
			read_data2: out std_logic_vector(15 downto 0);
			sp_out: out std_logic_vector(15 downto 0);
			t_out: out std_logic;
			ih_out: out std_logic_vector(15 downto 0)
	);
end Registers;

architecture Behavioral of Registers is
	component mux_1bit is
		port (
			input0: in std_logic_vector(15 downto 0);
			input1: in std_logic_vector(15 downto 0);
			sel: in std_logic;
			output: out std_logic_vector(15 downto 0)
		);
	end component mux_1bit;
	
	type regsdef is array(7 downto 0) of std_logic_vector(15 downto 0);
	signal regs_data : regsdef;
	signal input_data: std_logic_vector(15 downto 0);
	signal sp, ih: std_logic_vector(15 downto 0);
	signal t: std_logic;
begin
	--read logic
	read_data1 <= regs_data(conv_integer(unsigned(read_regs1)));
	read_data2 <= regs_data(conv_integer(unsigned(read_regs2)));
	sp_out <= sp;
	t_out <= t;
	ih_out <= ih;
	
	input_data_chooser: mux_1bit
		port map(
			input0=>reg_wb_alu_result,
			input1=>reg_wb_mem_data,
			sel=>reg_wb_data_chooser,
			
			output=>input_data
		);
	
	--write process
	process(clk, rst)
	begin
		if rst = '0' then
			regs_data(0) <= (others=>'0');
			regs_data(1) <= (others=>'0');
			regs_data(2) <= (others=>'0');
			regs_data(3) <= (others=>'0');
			regs_data(4) <= (others=>'0');
			regs_data(5) <= (others=>'0');
			regs_data(6) <= (others=>'0');
			regs_data(7) <= (others=>'0');
			t <= '0';
			sp <= (others=>'0');
			ih <= (others=>'0');
		elsif falling_edge(clk) then
			if reg_wb_signal = '1' then
				regs_data(conv_integer(unsigned(reg_wb_place))) <= input_data;
			end if;
			if sp_wb_signal = '1' then
				sp <= input_data;
			end if;
			if t_wb_signal = '1' then
				t <= t_wb_data;
			end if;
			if ih_wb_signal = '1' then
				ih <= input_data;
			end if;
		end if;
	end process;
end Behavioral;

