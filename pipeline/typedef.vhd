library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package utils is
	type control_M_type is record
		control_MemDataSrc: std_logic;
		control_MemRead: std_logic;
		control_MemWrite: std_logic;
	end record control_M_type;
	
	type control_WB_type is record
		control_RegWrite: std_logic;
		control_WBSrc: std_logic;
	end record control_WB_type;
	
	type control_EXE_type is record
		control_ALUSrc0, control_ALUSrc1: std_logic_vector(2 downto 0);
		control_ALUOP: std_logic_vector(2 downto 0);
		control_RegDst: std_logic_vector(1 downto 0);
	end record contro_EXE_type;
end package utils;