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

		led: out std_logic_vector(15 downto 0);
		ram1_addr, ram2_addr: out std_logic_vector(15 downto 0);
		ram1_data, ram2_data: inout std_logic_vector(15 downto 0);
		serial_tbre, serial_tsre, serial_data_ready: in std_logic;
		rdn, wrn: out std_logic;
		ram1_oe, ram1_we, ram1_en, ram2_oe, ram2_we, ram2_en: out std_logic
	);
end CPU;

architecture Behavioral of CPU is
	component Computer is
		port(
			--clock
			clk: in std_logic;
			rst: in std_logic;

			--led(Debug)
			led: out std_logic_vector(15 downto 0);
			ram1_addr, ram2_addr: out std_logic_vector(15 downto 0);
			ram1_data, ram2_data: inout std_logic_vector(15 downto 0);
			serial_tbre, serial_tsre, serial_data_ready: in std_logic;
			rdn, wrn: out std_logic;
			ram1_oe, ram1_we, ram1_en, ram2_oe, ram2_we, ram2_en: out std_logic
		);
	end component Computer;
begin
	computer_entity: Computer
		port map(
			--clock
			clk => clk,
			rst => rst,

			led => led,
			ram1_addr => ram1_addr,
			ram2_addr => ram2_addr,
			ram1_data => ram1_data,
			ram2_data => ram2_data,
			serial_tbre => serial_tbre,
			serial_tsre => serial_tsre,
			serial_data_ready => serial_tsre,
			rdn => rdn,
			wrn => wrn,
			ram1_oe => ram1_oe,
			ram1_we => ram1_we,
			ram1_en => ram1_en,
			ram2_oe => ram2_oe,
			ram2_we => ram2_we,
			ram2_en => ram2_en
		);

end Behavioral;
