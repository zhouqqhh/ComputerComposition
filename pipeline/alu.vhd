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
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           inputSW : in  STD_LOGIC_VECTOR (15 downto 0);
           fout : out  STD_LOGIC_VECTOR (15 downto 0));
end alu;

architecture Behavioral of alu is
	type m_state is(s0, s1, s2, s3, s4); 
	signal current_state, next_state: m_state;
	signal error, success: std_logic;
	signal a, b, c: std_logic_vector(15 downto 0);
	signal op: std_logic_vector(3 downto 0);
begin
	state_change:process(clk, rst)
	begin
		if (rst = '0') then
			current_state <= s0;
		elsif rising_edge(clk) then
			current_state <= next_state;
		end if;
	end process;
	
	comb_circuit:process(current_state, inputSW)
	begin
		case current_state is
			when s0 =>
				next_state <= s1;
				a <= inputSW;
				c <= inputSW;
			when s1 =>
				next_state <= s2;
				b <= inputSW;
				c <= inputSW;
			when s2 =>
				next_state <= s3;
				op <= inputSW(3 downto 0);
				c <= inputSW;
			when s3=>
				next_state <= s4;
				case op is
					when "0000" =>
						c <= a + b;
					when "0001" =>
						c <= a - b;
					when "0010" =>
						c <= a and b;
					when "0011" =>
						c <= a or b;
					when "0100" =>
						c <= a xor b;
					when "0101" =>
						c <= not a;
					when "0110" =>
						c <= to_stdlogicvector( to_bitvector(a) SLL to_integer(unsigned(b)) ) ;
					when "0111" =>
						c <= to_stdlogicvector( to_bitvector(a) SRL to_integer(unsigned(b)) ) ;
					when "1000" =>
						c <= to_stdlogicvector( to_bitvector(a) SLA to_integer(unsigned(b)) ) ;
					when "1001" => 
						c <= to_stdlogicvector( to_bitvector(a) SRA to_integer(unsigned(b)) ) ;
					when others =>
						c <= "0000000000000000";
				end case;
			when s4=>
				next_state <= s0;
				c <= "0000000000000000";
		end case;
	end process;
	fout <= c;
end Behavioral;

