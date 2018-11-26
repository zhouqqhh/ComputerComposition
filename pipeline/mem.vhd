----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:45:25 11/26/2018 
-- Design Name: 
-- Module Name:    mem - Behavioral 
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
use work.utils.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem is
	port(
	--in
		clk, rst: in std_logic;
		
		--control signal
		mem_control_signal: in mem_control;
		
		rx, ry: in std_logic_vector(15 downto 0);
		
		mem_addr: in std_logic_vector(15 downto 0);
		
	--out
		mem_data: out std_logic_vector(15 downto 0)
	);
end mem;

architecture Behavioral of mem is
	component mux_1bit is
		port (
			input0: in std_logic_vector(15 downto 0);
			input1: in std_logic_vector(15 downto 0);
			sel: in std_logic;
			output: out std_logic_vector(15 downto 0)
		);
	end component mux_1bit;
	signal input_data: std_logic_vector(15 downto 0);
begin
	--fake memory
	data_source_chooser: mux_1bit
		port map(
			input0=>rx,
			input1=>ry,
			sel=>mem_control_signal.wb_data_chooser,
			
			output=>mem_data
		);
	
	process(mem_control_signal)
	begin
		if mem_control_signal.read_signal = '1' then
			mem_data <= "0000000011111111";
		elsif mem_control_signal.wb_signal = '1' then
			mem_data <= (others=>'Z');
		else
			mem_data <= (others=>'Z');
		end if;
	end process;

end Behavioral;

