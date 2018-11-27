library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.utils.all;

entity PC_write is
	port (
	--in
		clk: in std_logic;
		rst: in std_logic;

		--control signal
		jump_control_signal: in jump_control;
		
		--data
		last_pc, id_pc, immi, rx: in std_logic_vector(15 downto 0);
		t: in std_logic;

	--out
		pc_out: out std_logic_vector(15 downto 0)
	);
end PC_write;

architecture Behavioral of PC_write is
	component mux_1bit is
		port (
			input0: in std_logic_vector(15 downto 0);
			input1: in std_logic_vector(15 downto 0);
			sel: in std_logic;
			output: out std_logic_vector(15 downto 0)
		);
	end component mux_1bit;

	component Compare is
		port (
			number1: in std_logic_vector(15 downto 0);
			number2: in std_logic_vector(15 downto 0);
			output: out std_logic
		);
	end component Compare;

	component mux1_2bit is
		port (
			input0: in std_logic;
			input1: in std_logic;
			input2: in std_logic;
			input3: in std_logic;
			sel: in std_logic_vector(1 downto 0);
			output: out std_logic
		);
	end component mux1_2bit;

	component mux_3bit is
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
	end component mux_3bit;

	signal pc: std_logic_vector(15 downto 0);
	signal pc_cand, pc_one, pc_immi, pc_b_result: std_logic_vector(15 downto 0);
	signal rx_zero, rx_not_zero, t_zero, t_not_zero, b_com_choose_result: std_logic;
	signal b_signal_final: std_logic_vector(2 downto 0);
begin
	--out
	pc_out <= pc;

	--internal calculate
	pc_one <= last_pc + 1;
	pc_immi <= id_pc + immi;

	rx_zero_comparator: Compare
		port map(
		--in
			number1=>rx,
			number2=>(others=>'0'),
		--out
			output=>rx_zero
		);
	rx_not_zero <= not rx_zero;

	t_zero <= not t;
	t_not_zero <= t;

	comparator_result_chooser: mux1_2bit
		port map(
		--in
			input0=>rx_zero,
			input1=>rx_not_zero,
			input2=>t_zero,
			input3=>t_not_zero,
			sel=>jump_control_signal.B_com_chooser,
		--out
			output=>b_com_choose_result
		);
		
	b_signal_final <= jump_control_signal.b_signal & b_com_choose_result;
	
	pc_b_result_chooser: mux_3bit
		port map(
			input0=>pc_one,
			input1=>pc_one,
			input2=>pc_immi,
			input3=>pc_immi,
			input4=>pc_one,
			input5=>pc_immi,
			input6=>pc_one,
			input7=>pc_immi,
			sel=>b_signal_final,
			output=>pc_b_result
		);
	jr_chooser: mux_1bit
		port map(
			input0=>pc_b_result,
			input1=>rx,
			sel=>jump_control_signal.jr_signal,
			output=>pc_cand
		);

	process(clk, rst)
	begin
		if rst = '0' then
			pc <= (others=>'0');
		elsif rising_edge(clk) then
			pc <= pc_cand;
		end if;
	end process;

end Behavioral;
