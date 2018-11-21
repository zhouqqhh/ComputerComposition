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
		alu_src1: out std_logic; --0:ry, 1:immi
		
		--regsters wb
		reg_wb_signal: out std_logic;		
		reg_wb_place: out std_logic_vector(2 downto 0)
	);
end Controller;

architecture Behavioral of Controller is

begin
	
	process(instruction)
	begin
		case instruction(15 downto 11) is
			when "01000" =>
				alu_op <= "001";
				alu_src1 <= '1';
				
				reg_wb_signal <= '1';
				reg_wb_place <= instruction(10 downto 8);
			when others =>
				alu_op <= "100";
				alu_src1 <= '0';
				
				reg_wb_signal <= '0';
				reg_wb_place <= "000";
		end case;
	end process;		

end Behavioral;

