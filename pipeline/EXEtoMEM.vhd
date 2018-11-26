library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.UTILS.ALL;

entity EXEtoMEM is
	port(
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

		--Memory
		mem_wb_signal_in: in std_logic;
		mem_wb_data_chooser_in: in std_logic;
		mem_read_signal_in: in std_logic;

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

		--Memory
		mem_wb_signal_out: out std_logic;
		mem_wb_data_chooser_out: out std_logic;
		mem_read_signal_out: out std_logic
	);
end EXEtoMEM;

architecture Behavioral of EXEtoMEM is
	signal EXEtoMEM_ALUResult: std_logic_vector(15 downto 0);
	signal EXEtoMEM_mem_ReadData: std_logic_vector(15 downto 0);
	signal EXEtoMEM_write_RegData: std_logic_vector(15 downto 0);
	signal EXEtoMEM_write_Register: std_logic_vector(2 downto 0);
	signal reg_wb_signal: std_logic;
	signal reg_wb_place: std_logic_vector(2 downto 0);

	signal alu_result: std_logic_vector(15 downto 0);

	--control signal
	signal EXEtoMEM_reg_wb_signal: std_logic;
	signal EXEtoMEM_reg_wb_place: std_logic_vector(2 downto 0);
	signal EXEtoMEM_reg_wb_data_chooser: std_logic;

	signal EXEtoMEM_sp_wb_signal: std_logic;
	signal EXEtoMEM_t_wb_signal: std_logic;
	signal EXEtoMEM_ih_wb_signal: std_logic;

	--alu
	signal EXEtoMEM_alu_result: std_logic_vector(15 downto 0);

	--Memory
	signal EXEtoMEM_mem_wb_signal: std_logic;
	signal EXEtoMEM_mem_wb_data_chooser: std_logic;
	signal EXEtoMEM_mem_read_signal: std_logic;
begin
	reg_wb_signal_out <= reg_wb_signal;
	reg_wb_place_out <= reg_wb_place;

	alu_result_out <= alu_result;

	process(clk, rst)
	begin
		if rst = '0' then
			--control signal
			reg_wb_signal_out <= '0';
			reg_wb_place_out <= (others=>'0');
			reg_wb_data_chooser_out <= '0';

			sp_wb_signal_out <= '0';
			t_wb_signal_out <= '0';
			ih_wb_signal_out <= '0';

			--alu
			alu_result_out <= (others=>'0');

			--Memory
			mem_wb_signal_out <= '0';
			mem_wb_data_chooser_out <= '0';
			mem_read_signal_out <= '0';


			--control signal
			EXEtoMEM_reg_wb_signal <= '0';
			EXEtoMEM_reg_wb_place <= (others=>'0');
			EXEtoMEM_reg_wb_data_chooser <= '0';

			EXEtoMEM_sp_wb_signal <= '0';
			EXEtoMEM_t_wb_signal <= '0';
			EXEtoMEM_ih_wb_signal <= '0';

			--alu
			EXEtoMEM_alu_result <= (others=>'0');

			--Memory
			EXEtoMEM_mem_wb_signal <= '0';
			EXEtoMEM_mem_wb_data_chooser <= '0';
			EXEtoMEM_mem_read_signal <= '0';

		elsif rising_edge(clk) then
			--control signal
			reg_wb_signal_out <= EXEtoMEM_reg_wb_signal;
			reg_wb_place_out <= EXEtoMEM_reg_wb_place;
			reg_wb_data_chooser_out <= EXEtoMEM_reg_wb_data_chooser;

			sp_wb_signal_out <= EXEtoMEM_sp_wb_signal;
			t_wb_signal_out <= EXEtoMEM_t_wb_signal;
			ih_wb_signal_out <= EXEtoMEM_ih_wb_signal;

			--alu
			alu_result_out <= EXEtoMEM_alu_result;

			--Memory
			mem_wb_signal_out <= EXEtoMEM_mem_wb_signal;
			mem_wb_data_chooser_out <= EXEtoMEM_mem_wb_data_chooser;
			mem_read_signal_out <= EXEtoMEM_mem_read_signal;


			--control signal
			EXEtoMEM_reg_wb_signal <= reg_wb_signal_in;
			EXEtoMEM_reg_wb_place <= reg_wb_place_in;
			EXEtoMEM_reg_wb_data_chooser <= reg_wb_data_chooser_in;

			EXEtoMEM_sp_wb_signal <= sp_wb_signal_in;
			EXEtoMEM_t_wb_signal <= t_wb_signal_in;
			EXEtoMEM_ih_wb_signal <= ih_wb_signal_in;

			--alu
			EXEtoMEM_alu_result <= alu_result_in;

			--Memory
			EXEtoMEM_mem_wb_signal <= mem_wb_signal_in;
			EXEtoMEM_mem_wb_data_chooser <= mem_wb_data_chooser_in;
			EXEtoMEM_mem_read_signal <= mem_read_signal_in;
		end if;
	end process;

end Behavioral;
