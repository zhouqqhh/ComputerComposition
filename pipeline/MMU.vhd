library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use utils.ALL;

entity MMU is
	port (
    --in
        clk: in std_logic;
        rst: in std_logic;

        --pc
        pc_in: in std_logic_vector(15 downto 0);

        --memory
        mem_control_in: in mem_control;
        mem_write_data_in: in std_logic_vector(15 downto 0);

    --out
        --pc
        instruction_out: out std_logic_vector(15 downto 0);
        
        --memory
        mem_read_data_out: out std_logic_vector(15 downto 0);
	);
end MMU;

architecture Behavioral of MMU is

begin
end Behavioral;
