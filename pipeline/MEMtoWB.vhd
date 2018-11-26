library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.utils.all;

entity MEMtoWB is
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
		mem_data_in: in std_logic_vector(15 downto 0);
	
	--out
		--control signal
		reg_wb_control_out: out reg_wb_control;
		reg_other_control_out: out reg_other_control;
		
		t_wb_data_out: out std_logic;
		
		--alu
		alu_result_out, mem_data_out: out std_logic_vector(15 downto 0)
	);
end MEMtoWB;

architecture Behavioral of MEMtoWB is
	signal reg_wb_control_signal: reg_wb_control;
	signal reg_other_control_signal: reg_other_control;
	
	signal t_wb_data: std_logic;
	
	signal alu_result, mem_data: std_logic_vector(15 downto 0);
begin
	--out
	reg_wb_control_out <= reg_wb_control_signal;
	
	reg_other_control_out <= reg_other_control_signal;
	
	t_wb_data_out <= t_wb_data;
	
	alu_result_out <= alu_result;
	mem_data_out <= mem_data;
	
	process(rst, clk)
	begin
		if rst = '0' then
			reg_wb_control_signal <= zero_reg_wb_control;
			reg_other_control_signal <= zero_reg_other_control;
			
			alu_result <= (others=>'0');
			mem_data <= (others=>'0');
		elsif rising_edge(clk) then
			reg_wb_control_signal <= reg_wb_control_in;
			reg_other_control_signal <= reg_other_control_in;
			
			t_wb_data <= t_wb_data_in;
			
			alu_result <= alu_result_in;
			mem_data <= mem_data_in;
		end if;
	end process;

end Behavioral;

