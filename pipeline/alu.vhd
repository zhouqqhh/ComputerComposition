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
			result: out std_logic_vector(15 downto 0);
         t0, t1: out std_logic
	 );
end alu;

architecture Behavioral of alu is
	signal result_tem: std_logic_vector(15 downto 0);
begin
	t0 <= '0' when src0 = src1 else '1';
   t1 <= ((src0(15) and src1(15) and result_tem(15)) or ((not src0(15)) and src1(15)) or ((not src0(15)) and (not src1(15)) and result_tem(15))); 
	result <= result_tem;
	process(alu_op, src0, src1)
	begin
		case alu_op is
			when "001" =>
				result_tem <= src0 + src1;
			when "010" =>
				result_tem <= src0 and src1;
			when "011" =>
				result_tem <= src0 - src1;
			when "100" =>
				result_tem <= src0 or src1;
			when "101" =>
				if src1 = "0000000000000000" then
					result_tem <= to_stdlogicvector( to_bitvector(src0) SLL 8);
				else
					result_tem <= to_stdlogicvector( to_bitvector(src0) SLL to_integer(unsigned(src1)));
				end if;
			when "110" =>
				if src1 = "0000000000000000" then
					result_tem <= to_stdlogicvector( to_bitvector(src0) SRA 8);
				else
					result_tem <= to_stdlogicvector( to_bitvector(src0) SRA to_integer(unsigned(src1)));
				end if;
			when "111" =>
				result_tem <= to_stdlogicvector( to_bitvector(src0) SRA to_integer(unsigned(src1)));
			when others =>
				result_tem <= src0;
		end case;
	end process;
end Behavioral;
