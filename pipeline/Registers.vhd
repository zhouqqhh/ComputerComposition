library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registers is
	port (
		RegWrite: in std_logic;
		read_regs1: in std_logic_vector(15 downto 0);
		read_regs2: in std_logic_vector(15 downto 0);
		write_regs: in std_logic_vector(2 downto 0);
		write_data: in std_logic_vector(15 downto 0);
		read_data1: out std_logic_vector(15 downto 0);
		read_data2: out std_logic_vector(15 downto 0);
	);
end Registers;

architecture Behavioral of Registers is
	subtype register_data_type is std_logic_vector(15 downto 0);
	type regs_data_type is array (integer range<>) of register_data_type;
	signal regs_data : reegs_data_type(0 to 7);
begin
	

end Behavioral;

