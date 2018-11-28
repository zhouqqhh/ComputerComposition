----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:39 11/27/2018 
-- Design Name: 
-- Module Name:    Hazard - Behavioral 
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

entity Hazard is
	port (
    --in
        mem_mem_control_signal: in mem_control;
        id_reg0, id_reg1: in std_logic_vector(2 downto 0);
		  
		  exe_mem_control_signal: in mem_control;
		  exe_reg_wb_control_signal: in reg_wb_control;

    --out
		  buble_maker_signal: out std_logic
	);
end Hazard;

architecture Behavioral of Hazard is

begin
	buble_maker_signal <= '1' when ((mem_mem_control_signal.wb_signal = '1') or (mem_mem_control_signal.read_signal = '1')
  										or (exe_mem_control_signal.read_signal = '1' and exe_reg_wb_control_signal.reg_wb_signal = '1'
											and (exe_reg_wb_control_signal.reg_wb_regs = id_reg0 or exe_reg_wb_control_signal.reg_wb_regs = id_reg1))) else '0';
end Behavioral;

