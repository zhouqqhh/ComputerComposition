library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.UTILS.ALL;

entity IDtoEXE is
	port (
--		clk: in std_logic;
--		in_reg1: in std_logic_vector(15 downto 0);
--		in_reg2: in std_logic_vector(15 downto 0);
--		in_control_Mem: in control_M_type;
--		in_control_WB: in control_WB_type;
--		in_control_EXE: in control_EXE_type;
--		in_imm_3_0: in std_logic_vector(3 downto 0);
--		in_imm_4_2: in std_logic_vector(2 downto 0);
--		in_imm_7_0: in std_logic_vector(7 downto 0);
--		in_RegDst_10_8: in std_logic_vector(2 downto 0);
--		in_RegDst_7_5: in std_logic_vector(2 downto 0);
--		in_RegDst_4_2: in std_logic_vector(2 downto 0);
--		
--		out_reg1: out std_logic_vector(15 downto 0);
--		out_reg2: out std_logic_vector(15 downto 0);
--		out_control_Mem: out control_M_type;
--		out_control_WB: out control_WB_type;
--		out_control_EXE: out control_EXE_type;
--		out_control_ALUSrc0: out std_logic_vector(2 downto 0);
--		out_control_ALUSrc1: out std_logic_vector(2 downto 0);
--		out_control_ALUOP: out std_logic_vector(2 downto 0);
--		out_control_RegDst: out std_logic_vector(1 downto 0);
--		out_imm_4_0: out std_logic_vector(4 downto 0);
--		out_imm_3_0: out std_logic_vector(3 downto 0);
--		out_imm_4_2: out std_logic_vector(2 downto 0);
--		out_imm_7_0: out std_logic_vector(7 downto 0);
--		out_RegDst_10_8: out std_logic_vector(2 downto 0);
--		out_RegDst_7_5: out std_logic_vector(2 downto 0);
--		out_RegDst_4_2: out std_logic_vector(2 downto 0)
	--in
		clk: in std_logic;
		rst: in std_logic;
		
		--control signal
		reg_wb_signal_in: in std_logic;
		reg_wb_place_in: in std_logic_vector(2 downto 0);
		
		--alu
		alu_op_in: in std_logic_vector(2 downto 0);
		alu_src1_in: in std_logic;
		rx_in: in std_logic_vector(15 downto 0);
		ry_in: in std_logic_vector(15 downto 0);
		
		immi_7_0_in: in std_logic_vector(15 downto 0);
		
	--out
		--control signal
		reg_wb_signal_out: out std_logic;
		reg_wb_place_out: out std_logic_vector(2 downto 0);
		
		--alu
		alu_op_out: out std_logic_vector(2 downto 0);
		alu_src1_out: out std_logic;
		rx_out: out std_logic_vector(15 downto 0);
		ry_out: out std_logic_vector(15 downto 0);
		
		--immi
		alu_immi_out: out std_logic_vector(15 downto 0)
	);
end IDtoEXE;

architecture Behavioral of IDtoEXE is
	signal reg_wb_signal: std_logic;
	signal reg_wb_place: std_logic_vector(2 downto 0);
	
	signal alu_op: std_logic_vector(2 downto 0);
	signal alu_src1: std_logic;
	signal rx, ry: std_logic_vector(15 downto 0);
	signal alu_immi: std_logic_vector(15 downto 0);
	
begin
	reg_wb_signal_out <= reg_wb_signal;
	reg_wb_place_out <= reg_wb_place;
	
	alu_op_out <= alu_op;
	alu_src1_out <= alu_src1;
	rx_out <= rx;
	ry_out <= ry;
	
	alu_immi_out <= alu_immi;
	
	process(clk, rst)
	begin
	if rst = '0' then
		alu_op <= "000";
		alu_src1 <= '0';
		rx <= (others=>'0');
		ry <= (others=>'0');
		alu_immi <= (others=>'0');
	elsif rising_edge(clk) then
		reg_wb_signal <= reg_wb_signal_in;
		reg_wb_place <= reg_wb_place_in;
		rx <= rx_in;
		ry <= ry_in;
		alu_immi <= immi_7_0_in;
	end if;
	end process;
end Behavioral;

