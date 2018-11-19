library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MEMtoWB is
	port (
		clk: in std_logic;
		
		in_control_WB: in control_WB_type;
		in_ALUResult: in std_logic_vector(15 downto 0);
		in_mem_ReadData: in std_logic_vector(15 downto 0);
		in_write_RegData: in std_logic_vector(15 downto 0);
		in_write_Register: in std_logic_vector(2 downto 0);
	
		out_control_WB: out control_WB_type;
		out_ALUResult: out std_logic_vector(15 downto 0);
		out_mem_ReadData: out std_logic_vector(15 downto 0);
		out_write_RegData: out std_logic_vector(15 downto 0);
		out_write_Register: out std_logic_vector(2 downto 0)
	);
end MEMtoWB;

architecture Behavioral of MEMtoWB is
signal MEMtoWB_control_WB: control_WB_type;
signal MEMtoWB_ALUResult: std_logic_vector(15 downto 0);
signal MEMtoWB_mem_ReadData: std_logic_vector(15 downto 0);
signal MEMtoWB_write_RegData: std_logic_vector(15 downto 0);
signal MEMtoWB_write_Register: std_logic_vector(2 downto 0);
begin
	process(clk)
	begin
		out_control_WB <= MEMtoWB_control_WB;
		out_ALUResult <= MEMtoWB_ALUResult;
		out_mem_ReadData <= MEMtoWB_mem_ReadData;
		out_write_RegData <= MEMtoWB_write_RegData;
		out_write_Register <= MEMtoWB_write_Register;
		
		MEMtoWB_control_WB <= in_control_WB;
		MEMtoWB_ALUResult <= in_ALUResult;
		MEMtoWB_mem_ReadData <= in_mem_ReadData;
		MEMtoWB_write_RegData <= in_write_RegData;
		MEMtoWB_write_Register <= in_write_Register;
	end process;

end Behavioral;

