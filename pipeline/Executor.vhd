----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:04:08 11/22/2018 
-- Design Name: 
-- Module Name:    Executor - Behavioral 
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
use work.utils.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Executor is
	port (			
	--in
		--alu
		alu_control_signal: in alu_control;
		
		sp, rx, ry, alu_immi: in std_logic_vector(15 downto 0);
		
	--out
		alu_result: out std_logic_vector(15 downto 0);
		t_wb_data: out std_logic
	);
end Executor;

architecture Behavioral of Executor is
	component alu is
		port(
		--in
			src0, src1: in std_logic_vector(15 downto 0);
			alu_op: in std_logic_vector(2 downto 0);
		--out
			result: out std_logic_vector(15 downto 0);
			t0, t1: out std_logic
		);
	end component alu;
	
	component mux_2bit is
		port(
			input0: in std_logic_vector(15 downto 0);
			input1: in std_logic_vector(15 downto 0);
			input2: in std_logic_vector(15 downto 0);
			input3: in std_logic_vector(15 downto 0);
			sel: in std_logic_vector(1 downto 0);
			output: out std_logic_vector(15 downto 0)
		);
	end component mux_2bit;
	
	component mux1_1bit is
		port (
			input0: in std_logic;
			input1: in std_logic;
			sel: in std_logic;
			output: out std_logic
		);
	end component mux1_1bit;

	
	signal src0, src1: std_logic_vector(15 downto 0);
	signal t0, t1: std_logic;
begin
	src0_chooser: mux_2bit
		port map(
			input0=>rx,
			input1=>sp,
			input2=>(others=>'0'),
			input3=>ry,
			sel=>alu_control_signal.alu_src0,
			
			output=>src0
		);
	
	src1_chooser: mux_2bit
		port map(
			input0 => ry,
			input1 => alu_immi,
			input2 => (others=>'0'),
			input3 => rx,
			sel => alu_control_signal.alu_src1,
			
			output => src1
		);
	
	alu_entity:alu
		port map(
			src0 => src0,
			src1 => src1,
			alu_op => alu_control_signal.alu_op,
			result => alu_result,
			t0=>t0,
			t1=>t1
		);
	
	t_chooser: mux1_1bit
		port map(
			input0=>t0,
			input1=>t1,
			sel=>alu_control_signal.t_src,
			
			output=>t_wb_data
		);

end Behavioral;

