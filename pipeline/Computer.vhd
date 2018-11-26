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
use ieee.std_logic_unsigned.all;

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
			alu_src1: out std_logic_vector(1 downto 0); --0:ry, 1:immi, 2:rx, 3:0
			alu_src1_immi_chooser: out std_logic_vector(1 downto 0); --0:immi_7_0, 1:immi_3_0, 2:immi_4_0, 3:immi_4_2
			alu_immi_extend: out std_logic; --0: 0-extend, 1-sign extend

			--regsters wb
			reg_wb_signal: out std_logic;	--0:no write, 1:write
			reg_wb_chooser: out std_logic_vector(1 downto 0) --0: rx, 1: ry, 2: rz
		);
	end component Controller;

	component IDtoEXE is
		port(
		--in
			clk: in std_logic;
			rst: in std_logic;

			--control signal
			reg_wb_rx, reg_wb_ry, reg_wb_rz: in std_logic_vector(2 downto 0);
			reg_wb_signal_in: in std_logic;
			reg_wb_chooser: in std_logic_vector(1 downto 0);

			--alu
			alu_op_in: in std_logic_vector(2 downto 0);
			alu_src1_in: in std_logic_vector(1 downto 0);
			rx_in: in std_logic_vector(15 downto 0);
			ry_in: in std_logic_vector(15 downto 0);

			immi_7_0_in: in std_logic_vector(7 downto 0);
			immi_3_0_in: in std_logic_vector(3 downto 0);
			immi_4_0_in: in std_logic_vector(4 downto 0);
			immi_4_2_in: in std_logic_vector(2 downto 0);
			alu_src1_immi_chooser: in std_logic_vector(1 downto 0);
			alu_immi_extend: in std_logic;
		--out
			--control signal
			reg_wb_signal_out: out std_logic;
			reg_wb_place_out: out std_logic_vector(2 downto 0);

			--alu
			alu_op_out: out std_logic_vector(2 downto 0);
			alu_src1_out: out std_logic_vector(1 downto 0);
			rx_out: out std_logic_vector(15 downto 0);
			ry_out: out std_logic_vector(15 downto 0);

			--immi
			alu_immi_out: out std_logic_vector(15 downto 0)
		);
	end component IDtoEXE;

	component Executor is
		port(
		--in
			--alu
			alu_op: in std_logic_vector(2 downto 0);
			alu_src1: in std_logic_vector(1 downto 0);
			rx, ry, alu_immi: in std_logic_vector(15 downto 0);

		--out
			alu_result: out std_logic_vector(15 downto 0)
		);
	end component Executor;

	component EXEtoMEM is
		port(
		--in
			clk: in std_logic;
			rst: in std_logic;

			--control signal
			reg_wb_signal_in: in std_logic;
			reg_wb_place_in: in std_logic_vector(2 downto 0);
			reg_wb_data_chooser_in: in std_logic;

			sp_wb_signal_in: in std_logic;
			t_wb_signal_in: in std_logic;
			ih_wb_signal_in: in std_logic;


			--alu
			alu_result_in: in std_logic_vector(15 downto 0);

			--Memory
			mem_wb_signal_in: in std_logic;
			mem_wb_data_chooser_in: in std_logic;
			mem_read_signal_in: in std_logic;

		--out
			--control signal
			reg_wb_signal_out: out std_logic;
			reg_wb_place_out: out std_logic_vector(2 downto 0);
			reg_wb_data_chooser_out: out std_logic;

			sp_wb_signal_out: out std_logic;
			t_wb_signal_out: out std_logic;
			ih_wb_signal_out: out std_logic;

			--alu
			alu_result_out: out std_logic_vector(15 downto 0)

			--Memory
			mem_wb_signal_out: out std_logic;
			mem_wb_data_chooser_out: out std_logic;
			mem_read_signal_out: out std_logic;
		);
	end component EXEtoMEM;

--	component MEM is
--		port(
--		);
--
	component MEMtoWB is
		port(
		--in
			clk: in std_logic;
			rst: in std_logic;

			--control signal
			reg_wb_signal_in: in std_logic;
			reg_wb_place_in: in std_logic_vector(2 downto 0);

			--alu
			alu_result_in: in std_logic_vector(15 downto 0);

		--out
			--control signal
			reg_wb_signal_out: out std_logic;
			reg_wb_place_out: out std_logic_vector(2 downto 0);

			--alu
			alu_result_out: out std_logic_vector(15 downto 0)
		);
	end component MEMtoWB;

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
	signal id_instruction: std_logic_vector(15 downto 0);

	signal id_rx, id_ry: std_logic_vector(15 downto 0);

	signal id_alu_op: std_logic_vector(2 downto 0);
	signal id_alu_src0: std_logic_vector(2 downto 0);
	signal id_alu_src1: std_logic_vector(1 downto 0);
	signal id_alu_src1_immi_chooser: std_logic_vector(1 downto 0);
	signal id_alu_immi_extend: std_logic;

	signal id_reg_wb_signal: std_logic;
	signal id_reg_wb_chooser: std_logic_vector(1 downto 0);

	--exe
	signal ex_reg_wb_signal: std_logic;
	signal ex_reg_wb_place: std_logic_vector(2 downto 0);

	signal ex_alu_src1: std_logic_vector(1 downto 0);
	signal ex_alu_src1_immi_chooser: std_logic_vector(1 downto 0);
	signal ex_alu_op: std_logic_vector(2 downto 0);
	signal ex_rx, ex_ry, ex_alu_immi, ex_alu_result: std_logic_vector(15 downto 0);

	--mem
	signal mem_reg_wb_signal: std_logic;
	signal mem_reg_wb_place: std_logic_vector(2 downto 0);
	signal mem_alu_result: std_logic_vector(15 downto 0);
	--wb
	signal wb_reg_wb_signal: std_logic;
	signal wb_reg_wb_data: std_logic_vector(15 downto 0);
	signal wb_reg_wb_place: std_logic_vector(2 downto 0);
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
				memory(0) <= "0000100000000000"; --NOP
				memory(1) <= "0100000100000001";
				memory(2) <= "0100001000000010";
				memory(3) <= "0100001100000011";
				memory(4) <= "0100010000000100";
				memory(5) <= "0100010100000101";
				memory(6) <= "0100011000000110";
				if_pc <= (others=>'0');
			elsif rising_edge(clk) then
				if_pc <= if_pc + 1;
			end if;
		end process;
	if_instruction <= memory(conv_integer(if_pc));

	iftoid_entity: IFtoID
		port map(
			instruction_in => if_instruction,
			pc_in=> if_pc,
			clk => clk,
			rst => rst,
			instruction_out => id_instruction,
			pc_out => id_pc
		);

	registers_entity: Registers
		port map(
		--in
			clk => clk,
			rst => rst,

			read_regs1 => id_instruction(10 downto 8),
			read_regs2 => id_instruction(7 downto 5),

			reg_wb_signal => wb_reg_wb_signal,
			reg_wb_place => wb_reg_wb_place,
			reg_wb_alu_result => wb_alu_result,
			reg_wb_mem_data => wb_mem_data,

			sp_wb_signal => wb_sp_wb_signal,
			t_wb_signal => wb_t_wb_signal,
			ih_wb_signal => wb_ih_wb_signal,

			t_wb_data => wb_t_wb_data,

		--out
			read_data1 => id_rx,
			read_data2 => id_ry,
			sp_out => id_sp,
			t_out => id_t,
			ih_out => id_ih
		);

	control_entity: Controller
		port map(
		--in
			instruction => id_instruction,

		--out
			--pc_source
			pc_src=> id_pc_source,

			--alu
			alu_op => id_alu_op,
			alu_src0=> id_alu_src0,
			alu_src1=> id_alu_src1,
			alu_src1_immi_chooser=> id_alu_src1_immi_chooser,
			alu_immi_extend=> id_alu_immi_extend,

			--register wb
			reg_wb_signal => id_reg_wb_signal,
			reg_wb_chooser => id_reg_wb_chooser,
			reg_wb_data_chooser=> id_reg_wb_data_chooser,

			sp_wb_signal => id_sp_wb_signal,
			t_wb_signal => id_t_wb_signal,
			ih_wb_signal => id_ih_wb_signal,

			--mem
			mem_wb_signal=> id_mem_wb_signal,
			mem_wb_data_chooser=> id_mem_wb_data_chooser,
			mem_read_signal=> id_mem_read_signal
		);

	idtoexe_entity: IDtoEXE
		port map(
		--in
			clk=>clk,
			rst=>rst,

			--control signal
			reg_wb_rx=> id_instruction(10 downto 8),
			reg_wb_ry=> id_instruction(7 downto 5),
			reg_wb_rz=> id_instruction(4 downto 2),

			reg_wb_signal_in=>id_reg_wb_signal,
			reg_wb_chooser=>id_reg_wb_chooser,
			reg_wb_data_chooser_in=> id_reg_wb_data_chooser,

			sp_wb_signal_in=> id_sp_wb_signal,
			t_wb_signal_in=> id_t_wb_signal,
			ih_wb_signal_in=> id_ih_wb_signal,

			--mem
			mem_wb_signal_in=> id_mem_wb_signal,
			mem_wb_data_chooser_in=> id_mem_wb_data_chooser,
			mem_read_signal_int=> id_mem_read_signal,

			--alu
			alu_op_in=> id_alu_op,
			alu_src0_in=> id_alu_src0,
			alu_src1_in=> id_alu_src1,

			rx_in=> id_rx,
			ry_in=> id_ry,
			sp_in=> id_sp,
			ih_in=> id_ih,
			pc_in=> id_pc,

			--immi
			immi_7_0_in => id_instruction(7 downto 0),
			immi_3_0_in => id_instruction(3 downto 0),
			immi_4_0_in => id_instruction(4 downto 0),
			immi_4_2_in => id_instruction(4 downto 2),
			alu_src1_immi_chooser=> id_alu_src1_immi_chooser,
			alu_immi_extend => id_alu_immi_extend,
		--out
			--control signal
			reg_wb_signal_out=>ex_reg_wb_signal,
			reg_wb_place_out=>ex_reg_wb_place,
			reg_wb_data_chooser_out=>ex_reg_wb_data_chooser,

			sp_wb_signal_out=>ex_sp_wb_signal,
			t_wb_signal_out=>ex_t_wb_signal,
			ih_wb_signal_out=>ex_ih_wb_signal,

			--alu
			alu_op_out=> ex_alu_op,
			alu_src0_out=> ex_alu_src0,
			alu_src1_out=> ex_alu_src1,
			rx_out=> ex_rx,
			ry_out=> ex_ry,
			sp_out=> ex_sp,
			ih_out=>ex_ih,
			pc_out=>ex_pc,

			--immi
			alu_immi_out => ex_alu_immi,

			--mem
			mem_wb_signal_out=> ex_mem_wb_signal,
			mem_wb_data_chooser_out=> ex_mem_wb_data_chooser,
			mem_read_signal_out=> ex_read_signal_out
		);

	exe_entity: Executor
		port map(
		--in
			--alu
			alu_op => ex_alu_op,
			alu_src0 => ex_alu_src0,
			alu_src1 => ex_alu_src1,

			sp => ex_sp,
			rx => ex_rx,
			ry => ex_ry,
			alu_immi => ex_alu_immi,
			ih => ex_ih,
			pc => ex_pc,

		--out
			alu_result=> ex_alu_result
		);

	led <= wb_alu_result;

	exetomem_entity: EXEtoMEM
		port map(
		--in
			clk=> clk,
			rst=> rst,

			--control signal
			reg_wb_signal_in=>ex_reg_wb_signal,
			reg_wb_place_in=>ex_reg_wb_place,
			reg_wb_data_chooser_in=>ex_reg_wb_data_chooser,

			sp_wb_signal_in=>ex_sp_wb_signal,
			t_wb_signal_in=>ex_t_wb_signal,
			ih_wb_signal_in=>ex_ih_wh_signal,

			--alu
			alu_result_in=> ex_alu_result,

			--mem
			mem_wb_signal_in=> ex_mem_wb_signal,
			mem_wb_data_chooser_in=> ex_mem_wb_data_chooser,
			mem_read_signal_in=> ex_mem_read_signal,

		--out
			--control signal
			reg_wb_signal_out=>mem_reg_wb_signal,
			reg_wb_place_out=>mem_reg_wb_place,
			reg_wb_data_chooser=>mem_reg_wb_data_chooser,

			sp_wb_signal_out=>mem_sp_wb_signal_out,
			t_wb_signal_out=>mem_t_wb_signal_out,
			ih_wb_signal_out=> mem_ih_wb_signal,

			--alu
			alu_result_out=>mem_alu_result,

			--mem
			mem_wb_signal_out=>mem_mem_wb_signal,
			mem_wb_data_chooser_out=>mem_mem_wb_data_chooser,
			mem_read_signal_out=>mem_mem_read_signal
		);

	mem_entity: MEM
		port map(
		--in
			clk=>clk,
			rst=>rst,

			--control signal
			mem_wb_signal=> mem_mem_wb_signal,
			mem_wb_signal_data_chooser=> mem_mem_wb_data_chooser,
			rx=>mem_rx,
			ry=>mem_ry,

			mem_read_signal=> mem_mem_read_signal,

			mem_addr=> mem_alu_result,

		--out
			mem_data=> mem_mem_data
		);

	memtowb_entity: MEMtoWB
		port map(
		--in
			clk=> clk,
			rst=> rst,
			--control signal
			reg_wb_signal_in=>mem_reg_wb_signal,
			reg_wb_place_in=>mem_reg_wb_place,
			reg_wb_data_chooser=>mem_reg_wb_data_chooser,
			sp_wb_signal_in=>mem_sp_wb_signal,
			t_wb_signal_in=>mem_sp_wb_signal,
			ih_wb_signal_in=>mem_ih_wb_signal,

			--alu
			alu_result_in=>mem_alu_result,
			mem_data_in=>mem_mem_data,

		--out
			--control signal
			reg_wb_signal_out=>wb_reg_wb_signal,
			reg_wb_place_out=>wb_reg_wb_place,
			reg_wb_data_chooser=>wb_reg_wb_data_chooser,
			sp_wb_signal_out=>wb_sp_wb_signal,
			t_wb_signal_out=>wb_t_wb_signal,

			--alu
			alu_result_out=> wb_alu_result,
			mem_data_out=>wb_mem_data
		);
end Behavioral;
