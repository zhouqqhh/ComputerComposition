----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:51 12/02/2018 
-- Design Name: 
-- Module Name:    checkout_pixel - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.utils.all;

entity checkout_pixel is
	port(
		clk: in std_logic;
		disp_data: in std_logic_vector(6 downto 0);
		left_up_point: in point;
		col: in integer;
		row: in integer;
		is_on: out std_logic
	);
end checkout_pixel;

architecture Behavioral of checkout_pixel is
	signal font_addr: integer;
	signal font: std_logic_vector(7 downto 0) := (others=>'0');
	signal char_code: integer:=0;
	signal pixel_col: integer:=0;
	shared variable in_x: std_logic := '0';
	shared variable in_y: std_logic := '0';
	signal is_on_tmp:std_logic:='0';
	
	component ascii2signal is
		port(
			clk : in std_logic;
			addr : in integer;
			font : out std_logic_vector(7 downto 0)
		);
	end component ascii2signal;
begin
	pixel_col <= (col - left_up_point.x) mod 8;
	char_code <= to_integer(unsigned(disp_data));
	font_addr <= char_code * 16 + row - left_up_point.y;
	
	ascii_entity: ascii2signal
	port map(
		clk => clk,
		addr => font_addr,
		font => font
	);
	
	process(clk)
	begin
		if rising_edge(clk) then
			in_x := '0';
			in_y := '0';
			is_on <= '0';
			if col >= left_up_point.x and col < left_up_point.x + 8 then
				in_x := '1';
			end if;
		
			if row >= left_up_point.y and row < left_up_point.y + 16 then
				in_y := '1';
			end if;
			
			if in_x = '1' and in_y = '1' then
				if font(8 - pixel_col) = '1' then
					is_on <= '1';
				end if;
			end if;
		end if;
	end process;

end Behavioral;

