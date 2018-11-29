library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Flash is
	port (
	--in
		clk : in std_logic;
		rst : in std_logic;

		--address in
		addr_in : in std_logic_vector(22 downto 0);

		--control
		ctl_read : in std_logic;

	--out
		--data output
		data_out : out std_logic_vector(15 downto 0);

		--flash control
		FlashByte, FlashVpen : out std_logic;
		FlashCE, FlashOE, FlashWE, FlashRP : out std_logic;

		--address to flash
		FlashAddr : out std_logic_vector(22 downto 0);

	--inout
		FlashData : inout std_logic_vector(15 downto 0)
	);
end Flash;

architecture Behavioral of Flash is
	type state_t is (read0, read1, read2, read3, read4);
	signal state : state_t;
	signal flash_read_contain : std_logic;
	signal FlashTimer : STD_LOGIC_VECTOR(3 downto 0);
begin

	FlashByte <= '1';
	FlashVpen <= '1';
	FlashRP <= '1';
	FlashCE <= '0';

	process(clk, rst)
	begin
		if rst = '0' then
			state <= read0;
			FlashWE <= '1';
			FlashOE <= '1';
			FlashData <= (others => 'Z');
			FlashTimer <= (others => '0');
			flash_read_contain <= '1';
		elsif rising_edge(clk) then
			flash_read_contain <= ctl_read;
			case state is
				when read0 =>
					FlashTimer <= (others => '0');
					if flash_read_contain /= ctl_read then
						state <= read1;
						FlashWE <= '0';
					else
						state <= read0;
					end if;
				when read1 =>
					state <= read2;
					FlashData <= x"00FF";
				when read2 =>
					state <= read3;
					FlashWE <= '1';
				when read3 =>
					state <= read4;
					FlashOE <= '0';
					FlashAddr <= addr_in;
					FlashData <= (others => 'Z');

					if FlashTimer = "1111" then
						FlashTimer <= (others => '0');
						state <= read4;
					else
						FlashTimer <= FlashTimer + 1;
						state <= read3;
					end if;

				when read4 =>
					state <= read0;
					data_out <= FlashData;
					FlashOE <= '1';
				when others =>
					FlashWE <= '1';
					FlashOE <= '1';
					FlashData <= (others => 'Z');
					state <= read0;
			end case;
		end if;
	end process;

end Behavioral;
