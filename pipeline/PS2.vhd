library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.utils.all;

entity PS2 is
	port (
    --in
        mem_mem_control_signal: in mem_control;
        id_reg0, id_reg1: in std_logic_vector(2 downto 0);

		  exe_mem_control_signal: in mem_control;
		  exe_reg_wb_control_signal: in reg_wb_control;
		  reading_flash: in std_logic;

    --out
		  buble_maker_signal: out std_logic
	);
end PS2;

architecture Behavioral of PS2 is

begin

end Behavioral;
