library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.utils.ALL;

entity MMU is
	port(
	--in
		clk, rst: in std_logic;

		--control signal
		mem_control_signal: in mem_control;

		rx, ry: in std_logic_vector(15 downto 0);

		mem_addr: in std_logic_vector(15 downto 0);

		pc_in: in std_logic_vector(15 downto 0);

		--serial
		serial_tbre, serial_tsre, serial_data_ready: in std_logic;

	--out
		led: out std_logic_vector(15 downto 0);
		mem_data: out std_logic_vector(15 downto 0);
		instruction_out: out std_logic_vector(15 downto 0);
		ram1_addr_out, ram2_addr_out: out std_logic_vector(17 downto 0);
		bus_control_signal: out bus_control;
		ram1_control_signal: out ram_control;
		ram2_control_signal: out ram_control;

		--flash control
		FlashByte, FlashVpen : out std_logic;
		FlashCE, FlashOE, FlashWE, FlashRP : out std_logic;

		--address to flash
		FlashAddr : out std_logic_vector(22 downto 0);

		--cpu bubble
		flash_bubble: out std_logic;
	--inout
		ram1_data: inout std_logic_vector(15 downto 0);
		ram2_data: inout std_logic_vector(15 downto 0);
		FlashData: inout std_logic_vector(15 downto 0)
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

	component Flash is
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
	end component Flash;
	signal reading_flash, flash_ctl_read: std_logic;
	signal flash_addr: std_logic_vector(22 downto 0);
	signal flash_mem_addr: std_logic_vector(15 downto 0);
	signal flash_data: std_logic_vector(15 downto 0);
	type flash_state_t is (init, reading, write_ram, update_addr, finished);
	signal flash_state: flash_state_t;
	signal flash_read_counter: std_logic_vector(5 downto 0);
begin
	--wb data chooser
	data_source_chooser: mux_1bit
		port map(
			input0=>rx,
			input1=>ry,
			sel=>mem_control_signal.wb_data_chooser,

			output=>input_data
		);

	Flash_entity: Flash
		port map(
		--in
			clk => clk,
			rst => rst,

			--address in
			addr_in => flash_addr,

			--control
			ctl_read => flash_ctl_read,

		--out
			--data output
			data_out => flash_data,

			--flash control
			FlashByte => FlashByte,
			FlashVpen => FlashVpen,
			FlashCE => FlashCE,
			FlashOE => FlashOE,
			FlashWE => FlashWE,
			FlashRP => FlashRP,

			--address to flash
			FlashAddr => FlashAddr,

		--inout
			FlashData => FlashData
		);

	--ram1: 0x8000 ~ 0xFFFF, ram2: 0x0000 ~ 0x7FFF
	memory_address_chooser: process(pc_in, mem_addr, mem_control_signal)
	begin
		if reading_flash = '0' then
			if (mem_control_signal.wb_signal = '0' and mem_control_signal.read_signal = '0') then  --read instruction
				ram1_addr_out <= "00" & mem_addr;
				ram2_addr_out <= "00" & pc_in;
			else  --read or write memory
				ram1_addr_out <= "00" & mem_addr;
				ram2_addr_out <= "00" & mem_addr;
			end if;
		else  --read flash
			ram1_addr_out <= "00" & mem_addr;
			ram2_addr_out <= "00" & flash_mem_addr;
		end if;
	end process;

	memory_control: process(mem_addr, mem_control_signal, clk, rst)
	begin
		if reading_flash = '1' then --TODO read flash
			bus_control_signal.rdn <= '1';
			bus_control_signal.wrn <= '1';

			ram1_control_signal <= zero_ram_control;

			ram2_control_signal.oe <= '1';
			if flash_state = write_ram then
				ram2_control_signal.we <= not clk;
			else
				ram2_control_signal.we <= '1';
			end if;
			ram2_control_signal.en <= '0';

			ram1_data <= (others => 'Z');
			ram2_data <= flash_data;
		elsif mem_control_signal.wb_signal = '1' then  --write
			if mem_addr(15 downto 4) = x"BF0" then  --write serial
				bus_control_signal.rdn <= '1';
				bus_control_signal.wrn <= clk;

				ram1_control_signal <= zero_ram_control;

				ram2_control_signal <= zero_ram_control;

				ram1_data <= input_data;
				ram2_data <= (others => 'Z');
			else  --write ram1
				bus_control_signal.rdn <= '1';
				bus_control_signal.wrn <= '1';

				ram1_control_signal.oe <= '1';
				ram1_control_signal.we <= not clk;
				ram1_control_signal.en <= '0';

				ram2_control_signal  <= zero_ram_control;

				ram1_data <= input_data;
				ram2_data <= (others => 'Z');
			end if;
		elsif mem_control_signal.read_signal = '1' then  --read
			if mem_addr(15 downto 4) = x"BF0" then  --read serial
				bus_control_signal.rdn <= not clk;
				bus_control_signal.wrn <= '1';

				ram1_control_signal <= zero_ram_control;

				ram2_control_signal <= zero_ram_control;

				ram1_data <= (others => 'Z');
				ram2_data <= (others => 'Z');
			else  --read ram1
				bus_control_signal.rdn <= '1';
				bus_control_signal.wrn <= '1';

				ram1_control_signal.oe <= '0';
				ram1_control_signal.we <= '1';
				ram1_control_signal.en <= '0';

				ram2_control_signal <= zero_ram_control;

				ram1_data <= (others => 'Z');
				ram2_data <= (others => 'Z');
			end if;
		else  --read instruction
			bus_control_signal.rdn <= '1';
			bus_control_signal.wrn <= '1';

			ram1_control_signal <= zero_ram_control;

			ram2_control_signal.oe <= '0';
			ram2_control_signal.we <= '1';
			ram2_control_signal.en <= '0';

			ram1_data <= (others => 'Z');
			ram2_data <= (others => 'Z');
		end if;
	end process;
	
	flash_bubble <= reading_flash;
	
	select_output: process (serial_tbre, serial_tsre, serial_data_ready, ram1_data, ram2_data, mem_control_signal, reading_flash)
	begin
		if reading_flash = '1' then 
			mem_data <= (others=> 'Z');
		elsif (mem_addr(15 downto 0) = x"BF01") then
			mem_data(1) <= serial_data_ready;
			mem_data(0) <= serial_tsre and serial_tbre;
		elsif (mem_control_signal.wb_signal = '0' and mem_control_signal.read_signal = '0') then  --ram1
			mem_data <= ram1_data;
		else  --ram2
			mem_data <= ram2_data;
		end if;
	end process;
	
	cpu_bubble <= reading_flash;
	flash_ctl_read <= '0' when flash_state = reading else '1';
	led <= "000000000000000"&flash_ctl_read;
	flash_control: process (clk, rst)
	begin
		if rst = '0' then
			reading_flash <= '1';
			flash_addr <= (others => '0');
			flash_mem_addr <= (others => '0');
			flash_state <= init;
		elsif rising_edge(clk) then
			case flash_state is
				when init =>
					reading_flash <= '1';
					flash_addr <= (others => '0');
					flash_mem_addr <= (others => '0');
					flash_read_counter <= (others => '0');
					flash_state <= reading;
					--led <= (others => '0');
				when reading =>
					if flash_read_counter = "111111" then
						flash_read_counter <= (others => '0');
						flash_state <= write_ram;
					else
						flash_read_counter <= flash_read_counter + 1;
						flash_state <= reading;
					end if;
					--led <= "0000000000001111";
				when write_ram =>
					flash_state <= update_addr;
					--led <= "0000000011111111";
				when update_addr =>
					flash_addr <= flash_addr + 2;
					flash_mem_addr <= flash_mem_addr + 1;
					if flash_addr < x"0FFF" then
						flash_state <= reading;
					else
						flash_state <= finished;
					end if;
					--led <= "0000111111111111";
				when finished =>
					reading_flash <= '0';
					--led <= (others => '1');
				when others =>
					flash_state <= init;
					--led <= (others => '0');
			end case;
		end if;
	end process;
end Behavioral;
