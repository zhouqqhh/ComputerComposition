----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:01 11/19/2018 
-- Design Name: 
-- Module Name:    Computer - Behavioral 
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

entity Computer is
	port(
		--clock
		clk: in std_logic;
		
		--Instrument Memory(Sram2)
		instr_mem_data: inout std_logic_vector(15 downto 0);
		instr_mem_control:
		
		--Data Memory(SRAM1)
		data_mem_data: inout std_logic_vector(15 downto 0);
		data_mem_control:
		
		--led(Debug)
		led: out std_logic_vector(15 downto 0);
	)
end Computer;

architecture Behavioral of Computer is
	--IFtoID registers
	component IFtoID is
		port(
			input: in std_logic_vector(15 downto 0);
			clk: in std_logic;
			output7_0: out std_logic_vector(15 downto 0);
			output10_0: out std_logic_vector(15 downto 0);
			output10_8: out std_logic_vector(15 downto 0);
			output7_5: out std_logic_vector(15 downto 0);
			output4_0: out std_logic_vector(15 downto 0);
			output3_0: out std_logic_vector(15 downto 0);
			output4_2: out std_logic_vector(15 downto 0);
		);
	
begin


end Behavioral;

