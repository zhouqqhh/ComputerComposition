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
		
		--alu
		alu_result_in: in std_logic_vector(15 downto 0);
	
	--out
		--control signal
		reg_wb_signal_out: out std_logic;
		reg_wb_place_out: out std_logic_vector(2 downto 0);
		
		--alu
		alu_result_out: out std_logic_vector(15 downto 0)
	);
end MEMtoWB;

architecture Behavioral of MEMtoWB is
	signal reg_wb_signal: std_logic;
	signal reg_wb_place: std_logic_vector(2 downto 0);
	
	signal alu_result: std_logic_vector(15 downto 0);
begin
	reg_wb_signal_out <= reg_wb_signal;
	reg_wb_place_out <= reg_wb_place;
	alu_result_out <= alu_result;
	process(rst, clk)
	begin
		if rst = '0' then
			reg_wb_signal <= '0';
			reg_wb_place <= (others=>'0');
			alu_result <= (others=>'0');
		elsif rising_edge(clk) then
			reg_wb_signal <= reg_wb_signal_in;
			reg_wb_place <= reg_wb_place_in;
			alu_result <= alu_result_in;
		end if;
	end process;

end Behavioral;

