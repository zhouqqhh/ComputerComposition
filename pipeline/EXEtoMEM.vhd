library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.UTILS.ALL;

entity EXEtoMEM is
	port (
--		clk: in std_logic;
--		
--		in_control_Mem: in control_M_type;
--		in_control_WB: in control_WB_type;
--		in_ALUResult: in std_logic_vector(15 downto 0);
--		in_write_MemData: in std_logic_vector(15 downto 0);
--		in_write_RegData: in std_logic_vector(15 downto 0);
--		in_write_Register: in std_logic_vector(2 downto 0);
--		
--		out_control_Mem: out control_M_type;
--		out_control_WB: out control_WB_type;
--		out_ALUResult: out std_logic_vector(15 downto 0);
--		out_write_MemData: out std_logic_vector(15 downto 0);
--		out_write_RegData: out std_logic_vector(15 downto 0);
--		out_write_Register: out std_logic_vector(2 downto 0)

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
end EXEtoMEM;

architecture Behavioral of EXEtoMEM is
--signal EXEtoMEM_control_Mem: control_M_type;
--signal EXEtoMEM_control_WB: control_WB_type;
--signal EXEtoMEM_ALUResult: std_logic_vector(15 downto 0);
--signal EXEtoMEM_mem_ReadData: std_logic_vector(15 downto 0);
--signal EXEtoMEM_write_RegData: std_logic_vector(15 downto 0);
--signal EXEtoMEM_write_Register: std_logic_vector(2 downto 0);
	signal reg_wb_signal: std_logic;
	signal reg_wb_place: std_logic_vector(2 downto 0);
	
	signal alu_result: std_logic_vector(15 downto 0);
	
begin
	reg_wb_signal_out <= reg_wb_signal;
	reg_wb_place_out <= reg_wb_place;
	
	alu_result_out <= alu_result;
	
	process(clk, rst)
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

