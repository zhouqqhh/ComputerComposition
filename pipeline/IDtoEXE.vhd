library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.UTILS.ALL;

entity IDtoEXE is
	port (
		clk: in std_logic;
		in_reg1: in std_logic_vector(15 downto 0);
		in_reg2: in std_logic_vector(15 downto 0);
		in_control_Mem: in control_M_type;
		in_control_WB: in control_WB_type;
		in_control_EXE: in control_EXE_type;
		in_imm_3_0: in std_logic_vector(3 downto 0);
		in_imm_4_2: in std_logic_vector(2 downto 0);
		in_imm_7_0: in std_logic_vector(7 downto 0);
		in_RegDst_10_8: in std_logic_vector(2 downto 0);
		in_RegDst_7_5: in std_logic_vector(2 downto 0);
		in_RegDst_4_2: in std_logic_vector(2 downto 0);
		
		out_reg1: out std_logic_vector(15 downto 0);
		out_reg2: out std_logic_vector(15 downto 0);
		out_control_Mem: out control_M_type;
		out_control_WB: out control_WB_type;
		out_control_EXE: out control_EXE_type;
		out_control_ALUSrc0: out std_logic_vector(2 downto 0);
		out_control_ALUSrc1: out std_logic_vector(2 downto 0);
		out_control_ALUOP: out std_logic_vector(2 downto 0);
		out_control_RegDst: out std_logic_vector(1 downto 0);
		out_imm_4_0: out std_logic_vector(4 downto 0);
		out_imm_3_0: out std_logic_vector(3 downto 0);
		out_imm_4_2: out std_logic_vector(2 downto 0);
		out_imm_7_0: out std_logic_vector(7 downto 0);
		out_RegDst_10_8: out std_logic_vector(2 downto 0);
		out_RegDst_7_5: out std_logic_vector(2 downto 0);
		out_RegDst_4_2: out std_logic_vector(2 downto 0)
	);
end IDtoEXE;

architecture Behavioral of IDtoEXE is
begin


end Behavioral;

