library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.UTILS.ALL;

entity EXEtoMEM is
	port (
		clk: in std_logic;
		
		in_control_Mem: in control_M_type;
		in_control_WB: in control_WB_type;
		in_ALUResult: in std_logic_vector(15 downto 0);
		in_write_MemData: in std_logic_vector(15 downto 0);
		in_write_RegData: in std_logic_vector(15 downto 0);
		in_write_Register: in std_logic_vector(2 downto 0);
		
		out_control_Mem: out control_M_type;
		out_control_WB: out control_WB_type;
		out_ALUResult: out std_logic_vector(15 downto 0);
		out_write_MemData: out std_logic_vector(15 downto 0);
		out_write_RegData: out std_logic_vector(15 downto 0);
		out_write_Register: out std_logic_vector(2 downto 0)
	);
end EXEtoMEM;

architecture Behavioral of EXEtoMEM is
signal EXEtoMEM_control_Mem: control_M_type;
signal EXEtoMEM_control_WB: control_WB_type;
signal EXEtoMEM_ALUResult: std_logic_vector(15 downto 0);
signal EXEtoMEM_mem_ReadData: std_logic_vector(15 downto 0);
signal EXEtoMEM_write_RegData: std_logic_vector(15 downto 0);
signal EXEtoMEM_write_Register: std_logic_vector(2 downto 0);
begin
	process(clk)
	begin
		out_control_Mem <= EXEtoMEM_control_MEM;
		out_control_WB <= EXEtoMEM_control_WB;
		out_ALUResult <= EXEtoMEM_ALUResult;
		out_mem_ReadData <= EXEtoMEM_mem_ReadData;
		out_write_RegData <= EXEtoMEM_write_RegData;
		out_write_Register <= EXEtoMEM_write_Register;
		
		EXEtoMEM_control_MEM <= in_control_Mem;
		EXEtoMEM_control_WB <= in_control_WB;
		EXEtoMEM_ALUResult <= in_ALUResult;
		EXEtoMEM_mem_ReadData <= in_mem_ReadData;
		EXEtoMEM_write_RegData <= in_write_RegData;
		EXEtoMEM_write_Register <= in_write_Register;
	end process;

end Behavioral;

