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
	
	signal s_x: std_logic_vector(9 downto 0);
	signal s_y: std_logic_vector(8 downto 0);
	signal clk_25:std_logic;
	signal q_vga: std_logic_vector(9 downto 0);
	constant hpStart_x:std_LOGIC_vector(9 downto 0) := "1000111010";
   constant hpEnd_x:std_LOGIC_vector(9 downto 0) := "1001101100";
   constant hpStart_y:std_LOGIC_vector(8 downto 0) := "000010100";
   constant hpEnd_y:std_logic_vector(8 downto 0) := "000011110";
	signal HpOk: std_logic;
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
		r => r,
		g => g,
		b => b
	);
	-------------------------------------------------------------------------
	process(clk_50)
	begin
		if(s_x >= hpStart_x and s_x <= hpEnd_x and s_y >= hpStart_y and s_y <= hpEnd_y) then
        if(CONV_INTEGER(s_x - hpStart_x) * 100 <= 100 * 50) then  --长条形状
            HpOK <= '1';
        else
            HpOK <= '0';
        end if;
		else
        HpOK <= '0';
		end if;
	end process;
	
	process(clk_25, rst)
	begin
		if clk_25'event and clk_25 = '1' then
			if (hpOk = '1') then
				q_vga <= "0111000000";
			else
				q_vga <= "0111111111";
			end if;
		end if;
	end process;
	
end Behavioral;

