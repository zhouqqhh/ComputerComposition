library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.UTILS.ALL;

entity EXEtoMEM is
	port (
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
begin


end Behavioral;

