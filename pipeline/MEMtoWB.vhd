library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MEMtoWB is
	port (
	--in
		clk: in std_logic;
		rst: in std_logic;

		--control signal
		reg_wb_signal_in: in std_logic;
		reg_wb_place_in: in std_logic_vector(2 downto 0);
		reg_wb_data_chooser_in: in std_logic;
		sp_wb_signal_in: in std_logic;
		t_wb_signal_in: in std_logic;
		ih_wb_signal_in: in std_logic;

		--alu
		alu_result_in: in std_logic_vector(15 downto 0);

		--mem
		mem_data_in: in std_logic_vector(15 downto 0);

	--out
		--control signal
		reg_wb_signal_out: out std_logic;
		reg_wb_place_out: out std_logic_vector(2 downto 0);
		reg_wb_data_chooser_out: out std_logic;
		sp_wb_signal_out: out std_logic;
		t_wb_signal_out: out std_logic;
		ih_wb_signal_out: out std_logic;

		--alu
		alu_result_out: out std_logic_vector(15 downto 0);

		--mem
		mem_data_out: out std_logic_vector(15 downto 0)
	);
end MEMtoWB;

architecture Behavioral of MEMtoWB is
	--control signal
	signal MEMtoWB_reg_wb_signal: std_logic;
	signal MEMtoWB_reg_wb_place: std_logic_vector(2 downto 0);
	signal MEMtoWB_reg_wb_data_chooser: std_logic;
	signal MEMtoWB_sp_wb_signal: std_logic;
	signal MEMtoWB_t_wb_signal: std_logic;
	signal MEMtoWB_ih_wb_signal: std_logic;

	--alu
	signal MEMtoWB_alu_result: std_logic_vector(15 downto 0);

	--mem
	signal MEMtoWB_mem_data: std_logic_vector(15 downto 0);
begin
	--control signal
	reg_wb_signal_out <= MEMtoWB_reg_wb_signal;
	reg_wb_place_out <= MEMtoWB_reg_wb_place;
	reg_wb_data_chooser_out <= MEMtoWB_reg_wb_data_chooser;
	sp_wb_signal_out <= MEMtoWB_sp_wb_signal;
	t_wb_signal_out <= MEMtoWB_t_wb_signal;
	ih_wb_signal_out <= MEMtoWB_ih_wb_signal;

	--alu
	alu_result_out <= MEMtoWB_alu_result;

	--mem
	mem_data_out <= MEMtoWB_mem_data;
	process(rst, clk)
	begin
		if rst = '0' then
			--control signal
			MEMtoWB_reg_wb_signal <= '0';
			MEMtoWB_reg_wb_place <= "000";
			MEMtoWB_reg_wb_data_chooser <= '0';
			MEMtoWB_sp_wb_signal <= '0';
			MEMtoWB_t_wb_signal <= '0';
			MEMtoWB_ih_wb_signal <= '0';

			--alu
			MEMtoWB_alu_result <= (others=>'0');

			--mem
			MEMtoWB_mem_data <= (others=>'0');
		elsif rising_edge(clk) then
			--control signal
			MEMtoWB_reg_wb_signal <= reg_wb_signal_in;
			MEMtoWB_reg_wb_place <= reg_wb_place_in;
			MEMtoWB_reg_wb_data_chooser <= reg_wb_data_chooser_in;
			MEMtoWB_sp_wb_signal <= sp_wb_signal_in;
			MEMtoWB_t_wb_signal <= t_wb_signal_in;
			MEMtoWB_ih_wb_signal <= ih_wb_signal_in;

			--alu
			MEMtoWB_alu_result <= alu_result_in;

			--mem
			MEMtoWB_mem_data <= mem_data_in;
		end if;
	end process;

end Behavioral;
