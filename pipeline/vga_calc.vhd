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
--use ieee.std_logic_arith.all;
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
        vga_control_signal: in vga_control;
        data_in: in std_logic_vector(15 downto 0);
        h_sync, v_sync: OUT STD_LOGIC;  --horiztonal, vertical sync pulse
	    r, g, b: out STD_LOGIC_VECTOR(2 downto 0)
	);
end vga_calc;

architecture Behavioral of vga_calc is
	component vga640480 is
		port(
			reset       :         in  STD_LOGIC;
			clk_0       :         in  STD_LOGIC; --50M时钟输入
			hs,vs       :         out STD_LOGIC; --行同步、场同步信号
			vector_x_out   :   out std_LOGIC_VECTOR(9 downto 0);  --扫描位置的横坐标
			vector_y_out :     out std_LOGIC_vector(8 downto 0);  --扫描位置的纵坐标
			clk25 : out std_logic;  --25M时钟输出
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
	
	signal s_x: std_logic_vector(9 downto 0);
	signal s_y: std_logic_vector(8 downto 0);
	signal clk_25:std_logic;
	signal q_vga: std_logic_vector(9 downto 0);
	
	constant hpStart_x:std_LOGIC_vector(9 downto 0) := "1000111010";
   constant hpEnd_x:std_LOGIC_vector(9 downto 0) := "1001101100";
   constant hpStart_y:std_LOGIC_vector(8 downto 0) := "000010100";
   constant hpEnd_y:std_logic_vector(8 downto 0) := "000011110";
	
	constant FONT_WIDTH: integer:=8;
	constant FONT_HEIGHT: integer:=16;
	 
	signal HpOk: std_logic;		--TODO delete this test
	
	signal disp_data: std_logic_vector(6 downto 0);
	signal left_up_point: point:=(0, 0);
	signal pixel_row, pixel_col : integer;
	signal is_on: std_logic:='0';
	
	signal vga_r, vga_g, vga_b: std_logic_vector(2 downto 0);
begin
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
			pixel_col <= to_integer(unsigned(s_x));
			pixel_row <= to_integer(unsigned(s_y));
		end if;
	end process;
	
	process(clk_50)
	begin
		if rising_edge(clk_50) then
			--left_up_point <= (((pixel_col / FONT_WIDTH) * FONT_WIDTH), (pixel_row / FONT_HEIGHT) * FONT_HEIGHT));
			left_up_point <= (((pixel_col / FONT_WIDTH) * FONT_WIDTH), ((pixel_row / FONT_HEIGHT) * FONT_HEIGHT));
			if 0 <= pixel_row and pixel_row < 4 * FONT_HEIGHT and 0 <= pixel_col and pixel_col < 80 * FONT_WIDTH then
				--disp_data <= video_memory(pixel_row / FONT_HEIGHT)(pixel_column / FONT_WIDTH);
				if pixel_row / FONT_HEIGHT = 1 then
					if pixel_col / FONT_WIDTH = 1 then
						disp_data <= std_logic_vector(to_unsigned(character'pos('F'), 7));
					elsif pixel_col / FONT_WIDTH = 2 then
						disp_data <= std_logic_vector(to_unsigned(character'pos('U'), 7));
					elsif pixel_col / FONT_WIDTH = 3 then
						disp_data <= std_logic_vector(to_unsigned(character'pos('C'), 7));
					elsif pixel_col / FONT_WIDTH = 4 then
						disp_data <= std_logic_vector(to_unsigned(character'pos('K'), 7));
					end if;
				end if;
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
--        if(CONV_INTEGER(s_x - hpStart_x) * 100 <= 100 * 50) then  --长条形状
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

