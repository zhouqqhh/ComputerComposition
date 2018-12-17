----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:59 12/01/2018 
-- Design Name: 
-- Module Name:    vga_calc - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.utils.all;

entity vga_calc is
	PORT (
        clk_50, rst: IN STD_LOGIC;
		  clk: in std_logic;
        vga_control_signal: in vga_control;
        data_in: in std_logic_vector(15 downto 0);
        h_sync, v_sync: OUT STD_LOGIC;  --horiztonal, vertical sync pulse
	    r, g, b: out STD_LOGIC_VECTOR(2 downto 0);
		 mem_addr_in: in std_logic_vector(15 downto 0)
	);
end vga_calc;

architecture Behavioral of vga_calc is
	component vga640480 is
		port(
			reset       :         in  STD_LOGIC;
			clk_0       :         in  STD_LOGIC; --50Mʱ
			hs,vs       :         out STD_LOGIC; --ͬͬź
			vector_x_out   :   out std_LOGIC_VECTOR(9 downto 0);  --ɨλõĺ
			vector_y_out :     out std_LOGIC_vector(8 downto 0);  --ɨλõ
			clk25 : out std_logic;  --25Mʱ
			q : in std_logic_vector(9 downto 0);
			r,g,b : out std_logic_vector(2 downto 0)
		);
	end component vga640480;
	
	component checkout_pixel is
		port(
			clk: in std_logic;
			disp_data: in std_logic_vector(6 downto 0);
			left_up_point: in point;
			col: in integer;
			row: in integer;
			is_on: out std_logic
		);
	end component checkout_pixel;
	
	-- synthesis translate_on
	component vga_ram IS
	  PORT (
		 clka : IN STD_LOGIC;
		 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 dina : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 clkb : IN STD_LOGIC;
		 addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 doutb : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	  );
	END component vga_ram;
	
	signal s_x: std_logic_vector(9 downto 0);
	signal s_y: std_logic_vector(8 downto 0);
	signal clk_25:std_logic;
	signal q_vga: std_logic_vector(9 downto 0);
	
	constant FONT_WIDTH: integer:=8;
	constant FONT_HEIGHT: integer:=16;
	
	signal disp_data: std_logic_vector(6 downto 0);
	signal left_up_point: point:=(0, 0);
	signal pixel_row, pixel_col : integer;
	signal is_on: std_logic:='0';
	
	signal vga_r, vga_g, vga_b: std_logic_vector(2 downto 0);
	
	signal vga_ram_datain, vga_ram_dataout:  std_logic_vector(6 downto 0);
	signal vga_ram_we: std_logic_vector(0 downto 0);
	signal vga_ram_write_addr: std_logic_vector(11 downto 0);
	signal vga_ram_read_addr: std_logic_vector(11 downto 0);
	
	shared variable cursor_row: integer range 0 to 29 := 0;
	shared variable cursor_col: integer range 0 to 79 := 0;
begin
	vga_ram_entity: vga_ram
		port map(
			clka=>clk,
			wea=>vga_ram_we,
			addra=> vga_ram_write_addr,
			dina=>vga_ram_datain,
			clkb=>clk_50,
			addrb=>vga_ram_read_addr,
			doutb=> vga_ram_dataout
		);
	
	vga_ram_we(0) <= vga_control_signal.vga_write;

	vga_640480: vga640480
	port map(
		reset => rst,
		clk_0 => clk_50,
		hs => h_sync,
		vs => v_sync,
		vector_x_out => s_x,
		vector_y_out => s_y,
		clk25 => clk_25,
		q => q_vga,
		r => vga_r,
		g => vga_g,
		b => vga_b
	);
	
	check_out_pixel_entity: checkout_pixel
	port map(
		clk => clk_50,
		disp_data => disp_data,
		left_up_point => left_up_point,
		col => pixel_col,
		row => pixel_row,
		is_on => is_on
	);
	
	-------------------------------------------------------------------------
	process(clk_50, s_x, s_y)  --calc pixel col and row
	begin
		if rising_edge(clk_50) then
			pixel_col <= conv_integer(unsigned(s_x));
			pixel_row <= conv_integer(unsigned(s_y));
		end if;
	end process;

	--vga_ram_write_addr <= conv_std_logic_vector(10 * 80 + 40, 12);
	vga_ram_datain <= data_in(6 downto 0);
	vga_ram_write_addr <= mem_addr_in(11 downto 0);
--	process(clk)
--	begin
--		if rst = '0' then
--			cursor_row := 1;
--			cursor_col := 0;
--			vga_ram_we <= "0";
--		elsif rising_edge(clk)  and vga_control_signal.vga_write= '1' then
--			vga_ram_we <= "0";
--			case data_in(6 downto 0) is
--				when "0001101" => -- Enter
--					 cursor_row := cursor_row + 1;
--					 cursor_col := 0;
--				when "0001000" => -- Backspace
--					 vga_ram_datain <= (others => '0');
--					 vga_ram_we <= "1";
--					 if  cursor_col = 0 then 
--						cursor_col := 79;
--						cursor_row := cursor_row - 1;
--					else
--						cursor_col := cursor_col - 1;
--					end if;
--				when others =>
--					vga_ram_datain <= data_in(6 downto 0);
--					vga_ram_we <= "1";
--					 if cursor_col = 79 then
--						  cursor_row := cursor_row + 1;
--						  cursor_col := 0;
--					 else
--						cursor_col := cursor_col + 1;
--					end if;
--			end case;
--		end if;
--	end process;
	
	vga_ram_read_addr <= conv_std_logic_vector((pixel_col / FONT_WIDTH) + 80 * (pixel_row / FONT_HEIGHT), 12);
	process(clk_50)
	begin
		if rising_edge(clk_50) then
			left_up_point <= (((pixel_col / FONT_WIDTH) * FONT_WIDTH), ((pixel_row / FONT_HEIGHT) * FONT_HEIGHT));
			if 0 <= pixel_row and pixel_row < 30 * FONT_HEIGHT and 0 <= pixel_col and pixel_col < 80 * FONT_WIDTH then
					disp_data <= vga_ram_dataout;
			else
				disp_data <= "0000000";
			end if;
		end if;
	end process;
	
	
	process(clk_50, is_on)
	begin
		if rising_edge(clk_50) then
			if is_on = '1' then
				q_vga <= "0111111111";
			else
				q_vga <= "0000000000";
			end if;
		end if;
	end process;
	
	process(clk_50, vga_r, vga_b, vga_g)
	begin
		if rising_edge(clk_50) then
			r <= vga_r;
			g <= vga_g;
			b <= vga_b;
		end if;
	end process;
	
	
--	process(clk_50)		--TODO delete this 
--	begin
--		if(s_x >= hpStart_x and s_x <= hpEnd_x and s_y >= hpStart_y and s_y <= hpEnd_y) then
--        if(CONV_INTEGER(s_x - hpStart_x) * 100 <= 100 * 50) then  --״
--            HpOK <= '1';
--        else
--            HpOK <= '0';
--        end if;
--		else
--        HpOK <= '0';
--		end if;
--	end process;
--	
--	process(clk_25, rst)		--TODO delete this
--	begin
--		if clk_25'event and clk_25 = '1' then
--			if (hpOk = '1') then
--				q_vga <= "0111000000";
--			else
--				q_vga <= "0111111111";
--			end if;
--		end if;
--	end process;
	
end Behavioral;

