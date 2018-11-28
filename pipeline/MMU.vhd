----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:12:59 11/28/2018 
-- Design Name: 
-- Module Name:    MMU - Behavioral 
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
use WORK.UTILS.ALL;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MMU is
	port(
	--in
		clk, rst: in std_logic;
		
		--control signal
		mem_control_signal: in mem_control;
		
		rx, ry: in std_logic_vector(15 downto 0);
		
		mem_addr: in std_logic_vector(15 downto 0);
		
		pc_in: in std_logic_vector(15 downto 0);
		
	--out
		mem_data: out std_logic_vector(15 downto 0);
		instruction_out: out std_logic_vector(15 downto 0)
	);
end MMU;

architecture Behavioral of MMU is
	component mux_1bit is
		port (
			input0: in std_logic_vector(15 downto 0);
			input1: in std_logic_vector(15 downto 0);
			sel: in std_logic;
			output: out std_logic_vector(15 downto 0)
		);
	end component mux_1bit;
	signal input_data: std_logic_vector(15 downto 0);
	type memdef is array(15 downto 0) of std_logic_vector(15 downto 0);
	signal memory : memdef;
begin
	--fake memory
	data_source_chooser: mux_1bit
		port map(
			input0=>rx,
			input1=>ry,
			sel=>mem_control_signal.wb_data_chooser,
			
			output=>input_data
		);
	
	memory_init: process(rst, clk)
		begin
			if rst = '0' then
				memory(0) <= "0000100000000000"; --NOP
				memory(1) <= "0100000100000001";
				memory(2) <= "0100001000000010";
				memory(3) <= "0100001100000011";
				memory(4) <= "0100010000000100";
				memory(5) <= "0100010100000101";
				memory(6) <= "0100011000000110";
			end if;
		end process;			
	
	process(mem_control_signal, pc_in)
	begin
		if mem_control_signal.read_signal = '1' then
			mem_data <= "0000000011111111";
		elsif mem_control_signal.wb_signal = '1' then
			mem_data <= (others=>'Z');
		else
			mem_data <= (others=>'Z');
		end if;
		if pc_in < "0000000000010000" then
			instruction_out <= memory(conv_integer(pc_in));	
		end if;
	end process;

end Behavioral;

