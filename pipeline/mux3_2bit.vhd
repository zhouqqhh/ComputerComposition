----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:38 11/22/2018 
-- Design Name: 
-- Module Name:    mux3_2bit - Behavioral 
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

entity mux3_2bit is
	port (
		input0: in std_logic_vector(2 downto 0);
		input1: in std_logic_vector(2 downto 0);
		input2: in std_logic_vector(2 downto 0);
		input3: in std_logic_vector(2 downto 0);
		sel: in std_logic_vector(1 downto 0);
		output: out std_logic_vector(2 downto 0)
	);
end mux3_2bit;

architecture Behavioral of mux3_2bit is

begin
		with sel select output <=
			input0 when "00",
			input1 when "01",
			input2 when "10",
			input3 when "11",
			input0 when others;
end Behavioral;

