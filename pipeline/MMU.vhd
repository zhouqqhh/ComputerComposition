library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use utils.ALL;

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
		mem_data: out std_logic_vector(15 downto 0);
		instruction_out: out std_logic_vector(15 downto 0);
		ram1_addr_out: out std_logic_vector(15 downto 0);
		ram2_addr_out: out std_logic_vector(15 downto 0);
		bus_control_signal: out bus_control;
		ram1_control_signal: out ram_control;
		ram2_control_signal: out ram_control;

	--inout
		ram1_data: inout std_logic_vector(15 downto 0);
		ram2_data: inout std_logic_vector(15 downto 0)
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
	signal reading_flash: std_logic;
begin
	reading_flash <= '0';  --TODO

	--wb data chooser
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
				memory(0) <= "0110100100000001";
				memory(1) <= "0100100100000010";
				memory(2) <= "0100000101000010";
				memory(3) <= "1110000101001101";
				memory(4) <= "0011010000101000";
				memory(5) <= "1110101000101100";
				memory(6) <= "1110101100101010";
				memory(7) <= "0110000111111111";
				memory(8) <= "0000100000000000";
			end if;
		end process;

	process(mem_control_signal, pc_in)
	begin
		if pc_in < "0000000000010000" then
			instruction_out <= memory(conv_integer(pc_in));
		end if;
	end process;

	--ram1: 0x8000 ~ 0xFFFF, ram2: 0x0000 ~ 0x7FFF
	memory_address_chooser: process(pc_in, mem_addr, mem_control_signal)
	begin
		if reading_flash = '0' then
			if (mem_control_signal.wb_signal = '0' and mem_control_signal.read_signal = '0') then  --read instruction
				ram1_addr_out <= mem_addr;
				ram2_addr_out <= pc_in;
			else  --read or write memory
				ram1_addr_out <= mem_addr;
				ram2_addr_out <= mem_addr;
			end if;
		else  --read flash
			ram1_addr_out <= mem_addr;
			ram2_addr_out <= mem_addr;
		end if;
	end process;

	memory_control: process(mem_addr, mem_control_signal, clk, rst)
	begin
		if reading_flash = '1' then --TODO read flash
			bus_control_signal.rdn <= '1';
			bus_control_signal.wrn <= '1';

			ram1_control_signal <= zero_ram_control;
			ram2_control_signal <= zero_ram_control;
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

	process (serial_tbre, serial_tsre, serial_data_ready, ram1_data, ram2_data, mem_control_signal, reading_flash)
	begin
		if reading_flash = '1' then  --TODO
		elsif (mem_control_signal.wb_signal = '0' and mem_control_signal.read_signal = '0') or (not (mem_addr(15 downto 4) = x"BF0")) then  --ram1
			mem_data <= ram1_data;
		else  --ram2
			mem_data <= ram2_data;
		end if;
	end process;
end Behavioral;
