----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:39:49 12/03/2018 
-- Design Name: 
-- Module Name:    break_dealer - Behavioral 
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
use work.utils.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity break_dealer is
	port(
	--in
		rst: in std_logic;
		clk: in std_logic;
		break_clk:  in std_logic;
		ready_signal: in std_logic;
		ih_signal: in std_logic; --ih highest bit
		slot_signal: in std_logic;
		pc_in: in std_logic_vector(15 downto 0);
		bubble_signal: in std_logic;
	--out
		int_instruction: out std_logic_vector(15 downto 0);
		break_control_signal: out break_control;
		pc_out: out std_logic_vector(15 downto 0);
		debug_out: out std_logic_vector(15 downto 0)
	);
end break_dealer;

--only process keyboard
architecture Behavioral of break_dealer is
	type break_state is (init, start, sw_r, ih_r, sw_r1, li_r1, sll_r1, and_r0, ih_back, li_r3, sw_ih, load_pc0, load_pc1, load_pc2, load_pc3, sw_pc, r_back0, r_back1);
	signal cur_state: break_state;
	signal pc_store: std_logic_vector(15 downto 0);
	signal count: std_logic_vector(2 downto 0);
begin
	debug_out(15) <= ih_signal;
	debug_out(0) <= ready_signal;
	process(clk, rst, ready_signal, ih_signal, slot_signal, pc_in, bubble_signal)
	begin
		if rst = '0' then
			cur_state <= init;
			pc_store <= (others=> '0');
		elsif rising_edge(clk) and bubble_signal = '0' and break_clk = '1' then
			break_control_signal <= zero_break_control;
			case cur_state is
				when init =>
					break_control_signal <= zero_break_control;
					if ready_signal = '1' and ih_signal = '1' then
						cur_state <= start;
					end if;
					int_instruction <= "1010100000000000";
					count <= "000";
				when start =>
					if count = "101" then 
						if slot_signal = '0' then 
							pc_store <= pc_in - 1;
						else 
							pc_store <= pc_in - 2;
						end if;
						break_control_signal.break_signal <= '1';
						int_instruction <= "1101000000000010";  --SW_SP r0 2
						cur_state <= sw_r;
					else
						count <= count + 1;
						break_control_signal <= zero_break_control;
					end if;
				when sw_r =>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1111000000000000"; --MFIH r0
					cur_state <= ih_r;
				when ih_r =>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1101000100000011"; --SW_SP r1 3
					cur_state <= sw_r1;
				when sw_r1=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "0110100101111111"; --LI R1 7f
					cur_state <= li_r1;
				when li_r1=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "0011000100100000"; --SLL r1 r1 0
					cur_state <= sll_r1;
				when sll_r1=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1110100000101100"; -- AND r0 r1
					cur_state <= and_r0;
				when and_r0=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1111000000000001"; --MTIH r0
					cur_state <= ih_back;
				when ih_back=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "0110100000010000"; --LI r0 1  int number
					cur_state <= li_r3;
				when li_r3=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1101000000000000";  --SW_SP r0 0	
					cur_state <= sw_ih;
				when sw_ih=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "01101000" & pc_store(15 downto 8);
					cur_state <= load_pc0;
				when load_pc0=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "0011000000000000"; --SLL r0 r0 0
					cur_state <= load_pc1;
				when load_pc1=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "01101001" & pc_store(7 downto 0); --LI r1 0
					cur_state <= load_pc2;
				when load_pc2=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1110000000100001"; --ADDU r0 r1 r0
					--int_instruction <= "1110111100000000"; --jr r7
					cur_state <= load_pc3;
				when load_pc3=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1101000000000001"; --SW_SP r0 1
					--int_instruction <= "0000100000000000"; --NOP
					cur_state <= sw_pc;
				when sw_pc=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1001000000000010"; --LW_SP r0 2
					cur_state <= r_back0;
				when r_back0=>
					break_control_signal.break_signal <= '1';
					int_instruction <= "1001000100000011"; --LW_SP r1 3
					break_control_signal.pc_signal <= '1';
					pc_out <= "0000000000000101";
					cur_state <= r_back1;
				when r_back1=>
					break_control_signal.break_signal <= '1';
					break_control_signal.pc_signal <= '0';
					int_instruction <= "0000100000000000"; --NOP
					cur_state <= init;
			end case;
		end if;
	end process;
end Behavioral;

