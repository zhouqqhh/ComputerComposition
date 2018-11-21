----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:01 11/19/2018 
-- Design Name: 
-- Module Name:    Computer - Behavioral 
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

entity Computer is
	port(
		--clock
		clk: in std_logic;
		rst: in std_logic;
		
		--Instrument Memory(SRAM2)
		--instr_mem_data: inout std_logic_vector(15 downto 0);
		--instr_mem_control: 
		
		--Data Memory(SRAM1)
		--data_mem_data: inout std_logic_vector(15 downto 0);
		--data_mem_control:
		
		--led(Debug)
		led: out std_logic_vector(15 downto 0)
	);
end Computer;

architecture Behavioral of Computer is
	
	--IF
--	component IF is
--		port(
--			pc: in std_logic_vector(15 downto 0);
--		);

	--IFtoID(registers)
	component IFtoID is
		port(
			--new instruction
			instruction_in: in std_logic_vector(15 downto 0);
			clk: in std_logic;
			rst: in std_logic;
			
			--out instruction
			instruction_out: out std_logic_vector(15 downto 0)
		);
	end component IFtoID;
	
	component Controller is
		port(
		--in
			instruction: in std_logic_vector(15 downto 0);
		
		--out
			--alu
			alu_op: out std_logic_vector(2 downto 0);
			alu_src1: out std_logic;

			--regsters wb
			reg_wb_signal: out std_logic;		
			reg_wb_place: out std_logic_vector(2 downto 0)
		);
	end component Controller;

	component IDtoEXE is
		port(
		--in
			clk: in std_logic;
			rst: in std_logic;
			
			--control signal
			reg_wb_signal_in: in std_logic;
			reg_wb_place_in: in std_logic_vector(2 downto 0);
			
			--alu
			alu_op_in: in std_logic_vector(2 downto 0);
			alu_src1_in: in std_logic;
			rx_in: in std_logic_vector(15 downto 0);
			ry_in: in std_logic_vector(15 downto 0);
			
			immi_7_0_in: in std_logic_vector(15 downto 0);
			
		--out
			--control signal
			reg_wb_signal_out: out std_logic;
			reg_wb_place_out: out std_logic_vector(2 downto 0);
			
			--alu
			alu_op_out: out std_logic_vector(2 downto 0);
			alu_src1_out: out std_logic;
			rx_out: out std_logic_vector(15 downto 0);
			ry_out: out std_logic_vector(15 downto 0);
			
			--immi
			alu_immi_out: out std_logic_vector(15 downto 0)	
		);
	end component IDtoIEXE;
	
	component Executor is
		port(
		--in
			--alu
			alu_op: in std_logic_vector(2 downto 0);
			alu_src1: in std_logic;
			rx, ry, alu_immi: in std_logic_vector(15 downto 0);
			
		--out
			alu_result: out std_logic_vector(15 downto 0)
		);
	end component Executor;

--	component EXEtoMEM is
--		port(
--		);
--	
--	component MEM is
--		port(
--		);
--		
--	component MEMtoWB is
--		port(
--		);
--	
--	component WB is 
--		port(
--		);
	
	component Registers is
		port(
			--work on failing edge
			clk: in std_logic;
			rst: in std_logic;
			
			--write signal 1: write			
			reg_wb_signal: in std_logic;
			read_regs1: in std_logic_vector(2 downto 0);
			read_regs2: in std_logic_vector(2 downto 0);
			reg_wb_place: in std_logic_vector(2 downto 0);
			reg_wb_data: in std_logic_vector(15 downto 0);
			read_data1: out std_logic_vector(15 downto 0);
			read_data2: out std_logic_vector(15 downto 0)	
		);
	end component Registers;
	
	--if
	signal if_instruction: std_logic_vector(15 downto 0);
	
	--id
	signal id_instrcution: std_logic_vector(15 downto 0);
	
	signal id_rx, id_ry: std_logic_vector(15 downto 0);
	signal id_alu_op: std_logic_vector(2 downto 0);
	signal id_slu_src1: std_logic;
	
	signal id_reg_wb_signal: std_logic;
	signal id_reg_wb_place: std_logic_vector(2 downto 0);
	
	signal id_alu_immi_mux: std_logic; --debug
	
	--exe
	signal ex_reg_wb_signal: std_logic;
	signal ex_reg_wb_place: std_logic_vector(2 downto 0);
	
	signal ex_alu_src1: std_logic;
	signal ex_alu_op: std_logic_vector(2 downto 0);
	signal ex_rx, ex_ry, ex_immi, ex_alu_result: std_logic_vector(15 downto 0);
	
	--mem
	signal mem_reg_wb_signal: std_logic;
	signal mem_reg_wb_place: std_logic_vector(2 downto 0);
	signal mem_alu_result: std_logic_vector(15 downto 0);
	--wb
	signal wb_reg_wb_signal: std_logic;
	signal wb_reg_wb_data: std_logic_vector(15 downto 0);
	signal wb_reg_wb_place: std_logic_vector(15 downto 0);
	signal wb_alu_result: std_logic_vector(15 downto 0);
	
	--debug
	signal if_pc: std_logic_vector(15 downto 0);
	type memdef is array(15 downto 0) of std_logic_vector(15 downto 0);
	signal memory : memdef;
	
begin
	
	--simulate if
	fetch_instrcution_entity:process(rst, clk)
		begin
			if rst = '0' then
				memory(0) <= "0000000000000000";
				memory(1) <= "0111001000000001";
				memory(2) <= "0011001100010010";
				memory(3) <= "0111000100100000";
				memory(4) <= "0111001000110000";
				memory(5) <= "0101000000001100";
				memory(6) <= "0111000000000000";
				if_pc <= (others=>'0');
			elsif rising_edge(clk) then
				if_pc <= if_pc + 1;
			end if;
		end process;
	if_instruction <= memory(conv_integer(if_pc));
	
	iftoid_entity: IFtoID
		port map(
			instruction_in => if_instruction,
			clk => clk,
			rst => rst,
			instruction_out => id_instruction
		);
	
	registers_entity: Registers
		port map(
			clk => clk,
			rst => rst,
			
			read_regs1 => id_instruction(10 downto 8),
			read_regs2 => id_instruction(7 downto 5),
			reg_wb_signal => wb_reg_wb_signal,
			reg_wb_place => wb_reg_wb_place,
			--debug
			reg_wb_data => wb_alu_result,
			read_data1 => id_rx,
			read_data2 => id_ry
		);
	
	control_entity: Controller
		port map(
		--in
			instruction => id_instruction,
		--out
			alu_op => id_alu_op,
			alu_src1=> id_alu_src1,
			reg_wb_signal => id_reg_wb_signal,
			reg_wb_place => id_reg_wb_place
		);
	
	idtoexe_entity: IDtoEXE
		port map(
		--in
			--control signal
			reg_wb_signal_in=>id_reg_wb_signal,
			reg_wb_place_in=>id_reg_wb_place,
			
			--alu
			alu_op_in=> id_alu_op,
			alu_src1_in=> id_alu_src1,
			rx_in=> id_rx,
			ry_in=> id_ry,
			
			--immi
			immi_7_0_in => id_instruction(7 downto 0),
		
		--out
			--control signal
			reg_wb_signal_out=>ex_reg_wb_signal,
			reg_wb_place_out=>ex_reg_wb_place,
			
			--alu
			alu_op_out=> ex_alu_op,
			alu_src1_out=> ex_alu_src1,
			rx_out=> ex_rx,
			ry_out=> ex_ry,
			
			--immi
			alu_immi_out => ex_alu_immi
		);
	
	exe_entity: Executor
		port map(
		--in
			--alu
			alu_op => ex_alu_op,
			alu_src1 => ex_alu_src1,
			
			rx => ex_rx,
			ry => ex_ry,
			alu_immi => ex_alu_imm,
		
		--out
			alu_result=> ex_alu_result
		);
	
	exetomem: EXEtoMEM
		port map(
		--in
			--control signal
			reg_wb_signal_in=>ex_reg_wb_signal,
			reg_wb_place_in=>ex_reg_wb_place,
			
			--alu
			alu_result_in=> ex_alu_result,
		
		--out
			--control signal
			reg_wb_signal_out=>mem_reg_wb_signal,
			reg_wb_place_out=>mem_reg_wb_place,
			
			--alu
			alu_result_out=>mem_alu_result
		);
	
	memtowb: MEMtoWB
		port map(
		--in
			--control signal
			reg_wb_signal_in=>mem_reg_wb_signal,
			reg_wb_place_in=>mem_reg_wb_place,
			
			--alu
			alu_result_in=>mem_alu_result,
			
		--out
			--control signal
			reg_wb_signal_out=>wb_reg_wb_signal,
			reg_wb_place_out=>wb_reg_wb_place,			
			
			--alu
			alu_result_out=> wb_alu_result
		); 
		
	led <= wb_alu_result;

end Behavioral;

