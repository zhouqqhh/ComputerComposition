----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:30 11/26/2018 
-- Design Name: 
-- Module Name:    mux1_2bit - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux1_2bit is
	port (
		input0: in std_logic;
		input1: in std_logic;
		input2: in std_logic;
		input3: in std_logic;
		sel: in std_logic_vector(1 downto 0);
		output: out std_logic
	);
end mux1_2bit;

architecture Behavioral of mux1_2bit is

begin
		with sel select output <=
			input0 when "00",
			input1 when "01",
			input2 when "10",
			input3 when "11",
			'0' when others;
end Behavioral;

