----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:17 11/19/2018 
-- Design Name: 
-- Module Name:    CPU - Behavioral 
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

entity CPU is
	port(
		--clock
		clk: in std_logic;
		rst: in std_logic;
		
		led: out std_logic_vector(15 downto 0)
	);
end CPU;

architecture Behavioral of CPU is
	component Computer is
		port(
			--clock
			clk: in std_logic;
			rst: in std_logic;
			
			led: out std_logic_vector(15 downto 0)
		);
	end component Computer;
begin
	computer_entity: Computer
		port map(
			--clock
			clk=>clk,
			rst=>rst,
			
			led=>led
		);

end Behavioral;

