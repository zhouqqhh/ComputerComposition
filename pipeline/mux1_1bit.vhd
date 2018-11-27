----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:52:59 11/27/2018 
-- Design Name: 
-- Module Name:    mux1_1bit - Behavioral 
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

entity mux1_1bit is
	port (
		input0: in std_logic;
		input1: in std_logic;
		sel: in std_logic;
		output: out std_logic
	);
end mux1_1bit;

architecture Behavioral of mux1_1bit is

begin
		with sel select output <= 
			input0 when '0',
			input1 when '1',
			input0 when others;
end Behavioral;

