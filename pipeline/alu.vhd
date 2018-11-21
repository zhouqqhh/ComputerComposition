----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:53 10/15/2018 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
    port (
		--in
			src0, src1: in std_logic_vector(15 downto 0);
			alu_op: in std_logic_vector(2 downto 0);
		--out
			result: out std_logic_vector(15 downto 0)
	 );
end alu;

architecture Behavioral of alu is
begin
	process(alu_op, src0, src1)
	begin
		case alu_op is
			when "001" =>
				result <= src0 + src1;
			when others =>
				result <= src0;
		end case;
	end process;
end Behavioral;

