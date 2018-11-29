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
	signal old_ctl : std_logic;
	signal read_counter : STD_LOGIC_VECTOR(3 downto 0);
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
			read_counter <= (others => '0');
			old_ctl <= '1';
		elsif rising_edge(clk) then
			case state is
				when read0 =>
					read_counter <= (others => '0');
					if not (old_ctl = ctl_read) then
						FlashWE <= '0';
						state <= read1;
					else
						state <= read0;
					end if;
				when read1 =>
					FlashData <= x"00FF";
						state <= read2;
				when read2 =>
					FlashWE <= '1';
						state <= read3;
				when read3 =>
					FlashOE <= '0';
					FlashAddr <= addr_in;
					FlashData <= (others => 'Z');
					state <= read4;
					if read_counter = "1111" then
						read_counter <= (others => '0');
						state <= read4;
					else
						read_counter <= read_counter + 1;
						state <= read3;
					end if;

				when read4 =>
					data_out <= FlashData;
					FlashOE <= '1';
					state <= read0;
				when others =>
					FlashWE <= '1';
					FlashOE <= '1';
					FlashData <= (others => 'Z');
					state <= read0;
			end case;
			old_ctl <= ctl_read;
		end if;
	end process;

end Behavioral;
