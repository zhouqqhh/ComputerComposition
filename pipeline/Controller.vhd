----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:54 11/21/2018 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Controller is
	port (
	--in
		instruction: in std_logic_vector(15 downto 0);
	
	--out
		--alu
		alu_op: out std_logic_vector(2 downto 0);
		alu_src1: out std_logic_vector(1 downto 0); --0:ry, 1:immi, 2:rx, 3:0
		alu_src1_immi_chooser: out std_logic_vector(1 downto 0); --0:immi_7_0, 1:immi_3_0, 2:immi_4_0, 3:immi_4_2
		alu_immi_extend: out std_logic; --0: 0-extend, 1-sign extend
		
		--regsters wb
		reg_wb_signal: out std_logic;	--0:no write, 1:write
		reg_wb_chooser: out std_logic_vector(1 downto 0) --0: rx, 1: ry, 2: rz
	);
end Controller;

architecture Behavioral of Controller is

begin
	
	process(instruction)
	begin
		case instruction(15 downto 11) is
			--addiu
			when "01001" =>
				alu_op <= "001";
				alu_src1 <= "01"; --immi
				alu_src1_immi_chooser <= "00"; --7_0
				alu_immi_extend <= '1'; --sign
				
				reg_wb_signal <= '1';
				reg_wb_chooser <= "00"; --rx
			--addiu3
			when "01000" =>
				alu_op <= "001";
				alu_src1 <= "01"; --immi
				alu_src1_immi_chooser <= "01"; --3_0
				alu_immi_extend <= '1';
				
				reg_wb_signal <= '1';
				reg_wb_chooser <= "01"; --ry		
			--addu
			when "11100" =>
				alu_op <= "001";
				alu_src1 <= "00"; --ry
				alu_src1_immi_chooser <= "00";
				alu_immi_extend <= '0';
				
				reg_wb_signal <= '1';
				reg_wb_chooser <= "10"; --rz
			--and
			when "11101" =>
				alu_op <= "010";
				alu_src1 <= "00"; --ry
				alu_src1_immi_chooser <= "00";
				alu_immi_extend <= '0';
				
				reg_wb_signal <= '1';
				reg_wb_chooser <= "00"; --rx
				
			when others =>
				alu_op <= "000";
				alu_src1 <= "00"; 
				alu_src1_immi_chooser <= "00";
				alu_immi_extend <= '0';
				
				reg_wb_signal <= '0';
				reg_wb_chooser <= "00"; 
		end case;
	end process;		

end Behavioral;

