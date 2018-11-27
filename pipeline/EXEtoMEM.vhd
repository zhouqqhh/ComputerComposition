library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.UTILS.ALL;

entity EXEtoMEM is
	port (
		--in
			clk: in std_logic;
			rst: in std_logic;
			
			--control signal
			reg_wb_control_in: in reg_wb_control;
			reg_other_control_in: in reg_other_control;
			
			t_wb_data_in: in std_logic;
			
			--alu
			alu_result_in: in std_logic_vector(15 downto 0);
			
			--mem
			mem_control_signal_in: in mem_control;
			
			rx_in, ry_in: in std_logic_vector(15 downto 0);
			
		--out
			--control signal
			reg_wb_control_out: out reg_wb_control;
			reg_other_control_out: out reg_other_control;
			
			t_wb_data_out: out std_logic;
			
			--alu
			alu_result_out: out std_logic_vector(15 downto 0);
			
			--mem
			mem_control_signal_out: out mem_control;
			rx_out, ry_out: out std_logic_vector(15 downto 0)
	);
end EXEtoMEM;

architecture Behavioral of EXEtoMEM is
	signal reg_wb_control_signal: reg_wb_control;
	signal reg_other_control_signal: reg_other_control;
	
	signal t_wb_data: std_logic;
	signal alu_result: std_logic_vector(15 downto 0);
	signal mem_control_signal: mem_control;
	signal rx, ry: std_logic_vector(15 downto 0);
	
begin
	reg_wb_control_out <= reg_wb_control_signal;	
	reg_other_control_out <= reg_other_control_signal;
	
	t_wb_data_out <= t_wb_data;
	alu_result_out <= alu_result;
	
	mem_control_signal_out <= mem_control_signal;
	
	rx_out <= rx;
	ry_out <= ry;
	
	process(clk, rst)
	begin
		if rst = '0' then
			reg_wb_control_signal <= zero_reg_wb_control;
			reg_other_control_signal <= zero_reg_other_control;
			
			t_wb_data <= '0';
			alu_result <= (others=>'0');
			
			mem_control_signal <= zero_mem_control;
			
			rx <= (others=>'0');
			ry <= (others=>'0');
		elsif rising_edge(clk) then
			reg_wb_control_signal <= reg_wb_control_in;
			reg_other_control_signal <= reg_other_control_in;
			
			t_wb_data <= t_wb_data_in;
			alu_result <= alu_result_in;
			
			mem_control_signal <= mem_control_signal_in;
			
			rx <= rx_in;
			ry <= ry_in;
		end if;
	end process;

end Behavioral;
