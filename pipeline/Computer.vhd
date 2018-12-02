library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

use work.utils.all;

entity Computer is
	port(
		--clock
		clk: in std_logic;
		rst: in std_logic;
		--clk_debug: in std_logic;

		--Instrument Memory(SRAM2)
		--instr_mem_data: inout std_logic_vector(15 downto 0);
		--instr_mem_control:

		--Data Memory(SRAM1)
		--data_mem_data: inout std_logic_vector(15 downto 0);
		--data_mem_control:

		--led(Debug)
		led: out std_logic_vector(15 downto 0);
		ram1_addr, ram2_addr: out std_logic_vector(17 downto 0);
		ram1_data, ram2_data: inout std_logic_vector(15 downto 0);
		serial_tbre, serial_tsre, serial_data_ready: in std_logic;
		rdn, wrn: out std_logic;
		ram1_oe, ram1_we, ram1_en, ram2_oe, ram2_we, ram2_en: out std_logic;
		
		--vga
		vga_r, vga_g, vga_b : out std_logic_vector(2 downto 0);
		vga_hs, vga_vs : out std_logic;

		--flash control
		FlashByte, FlashVpen : out std_logic;
		FlashCE, FlashOE, FlashWE, FlashRP : out std_logic;

		--address to flash
		FlashAddr : out std_logic_vector(22 downto 0);
		FlashData: inout std_logic_vector(15 downto 0);

		--ps2
		ps2_clk : in std_logic;
		ps2_data : in std_logic
	);
end Computer;

architecture Behavioral of Computer is
	--pc
	component PC_write is
		port (
		--in
			clk: in std_logic;
			rst: in std_logic;

			--hazard
			buble_maker_signal: in std_logic;
			--control signal
			jump_control_signal: in jump_control;

			--data
			last_pc, id_pc, immi, rx: in std_logic_vector(15 downto 0);
			t: in std_logic;
			immi_b: in  std_logic_vector(10 downto 0);
		--out
			pc_out: out std_logic_vector(15 downto 0);
			pc_one_out: out std_logic_vector(15 downto 0)
		);
	end component PC_write;

	--IFtoID(registers)
	component IFtoID is
		port(
		--in
			instruction_in: in std_logic_vector(15 downto 0);
			pc_in: in std_logic_vector(15 downto 0);
			clk: in std_logic;
			rst: in std_logic;
			buble_maker_signal: in std_logic;
		--out
			instruction_out: out std_logic_vector(15 downto 0);
			pc_out: out std_logic_vector(15 downto 0)
		);
	end component IFtoID;

	component Controller is
		 port (
		 --in
			  instruction: in std_logic_vector(15 downto 0);

		 --out
			  --pc
	--        pc_src: out std_logic_vector(1 downto 0);
	--        B_signal: out std_logic_vector(1 downto 0);
	--        B_com_chooser: out std_logic_vector(1 downto 0);
	--        JR_signal: out std_logic;
				jump_control_signal: out jump_control;

			  --alu
	--        alu_op: out std_logic_vector(2 downto 0);
	--        alu_src0: out std_logic_vector(2 downto 0); --0:rx, 1:sp, 2:0, 3:ih, 4:pc, 5:ry
	--        alu_src1: out std_logic_vector(1 downto 0); --0:ry, 1:immi, 2:rx, 3:0
			  alu_control_signal: out alu_control;
			  alu_src1_immi_chooser: out std_logic_vector(1 downto 0); --0:immi_7_0, 1:immi_3_0, 2:immi_4_0, 3:immi_4_2
			  alu_immi_extend: out std_logic; --0: 0-extend, 1-sign extend

			  --regsters wb
	--        reg_wb_signal: out std_logic;	--0:no write, 1:write
	--        reg_wb_chooser: out std_logic_vector(1 downto 0); --0: rx, 1: ry, 2: rz
	--        reg_wb_data_chooser: out std_logic; --0:ALU result, 1:memRead
			  reg_wb_init_control_signal: out reg_wb_init_control;
	--		  sp_wb_signal: out std_logic;
	--        t_wb_signal: out std_logic;
	--        ih_wb_signal: out std_logic;
			  reg_other_control_signal: out reg_other_control;

			  --memory
	--        mem_wb_signal: out std_logic;
	--        mem_wb_data_chooser: out std_logic; --0:rx, 1:ry
	--        mem_read_signal: out std_logic
			  mem_control_signal: out mem_control
		 );
	end component Controller;

	component IDtoEXE is
		port (
		--in
			clk: in std_logic;
			rst: in std_logic;

			buble_maker_signal: in std_logic;
			--control signal
			reg_wb_rx, reg_wb_ry, reg_wb_rz: in std_logic_vector(2 downto 0);
			reg_wb_init_control_signal_in: in reg_wb_init_control;

			--alu
			alu_control_signal_in: in alu_control;

			rx_in: in std_logic_vector(15 downto 0);
			ry_in: in std_logic_vector(15 downto 0);
			sp_in, pc_in, ih_in: in std_logic_vector(15 downto 0);

			immi_7_0_in: in std_logic_vector(7 downto 0);
			immi_3_0_in: in std_logic_vector(3 downto 0);
			immi_4_0_in: in std_logic_vector(4 downto 0);
			immi_4_2_in: in std_logic_vector(2 downto 0);
			alu_src1_immi_chooser: in std_logic_vector(1 downto 0);
			alu_immi_extend: in std_logic;

			reg_other_control_signal_in: in reg_other_control;

			mem_control_signal_in: in mem_control;

		--out
			--control signal
			reg_wb_control_signal_out: out reg_wb_control;

			reg_other_control_signal_out: out reg_other_control;

			--alu
			alu_control_signal_out: out alu_control;
			rx_out: out std_logic_vector(15 downto 0);
			ry_out: out std_logic_vector(15 downto 0);
			sp_out, pc_out, ih_out: out std_logic_vector(15 downto 0);

			--immi
			alu_immi_out: out std_logic_vector(15 downto 0);
			alu_immi_former_out: out std_logic_vector(15 downto 0); --for b and jr

			--mem
			mem_control_signal_out: out mem_control
		);
	end component IDtoEXE;

	component Executor is
		port(
		--in
			--alu
			alu_control_signal: in alu_control;

			sp, rx, ry, alu_immi, ih, pc: in std_logic_vector(15 downto 0);

		--out
			alu_result: out std_logic_vector(15 downto 0);
			t_wb_data: out std_logic
		);
	end component Executor;

	component EXEtoMEM is
		port(
		--in
			clk: in std_logic;
			rst: in std_logic;

			--control signal
			reg_wb_control_in: in reg_wb_control;
			reg_other_control_in: in reg_other_control;

			t_wb_data_in: in std_logic;

			--alu
			alu_result_in: in std_logic_vector(15 downto 0);

			--mem
			mem_control_signal_in: in mem_control;

			rx_in, ry_in: in std_logic_vector(15 downto 0);

		--out
			--control signal
			reg_wb_control_out: out reg_wb_control;
			reg_other_control_out: out reg_other_control;

			t_wb_data_out: out std_logic;

			--alu
			alu_result_out: out std_logic_vector(15 downto 0);

			--mem
			mem_control_signal_out: out mem_control;
			rx_out, ry_out: out std_logic_vector(15 downto 0)
		);
	end component EXEtoMEM;

	component MEMtoWB is
		port (
		--in
			clk: in std_logic;
			rst: in std_logic;

			--control signal
			reg_wb_control_in: in reg_wb_control;
			reg_other_control_in: in reg_other_control;

			t_wb_data_in: in std_logic;

			--alu
			alu_result_in: in std_logic_vector(15 downto 0);
			mem_data_in: in std_logic_vector(15 downto 0);

		--out
			--control signal
			reg_wb_control_out: out reg_wb_control;
			reg_other_control_out: out reg_other_control;

			t_wb_data_out: out std_logic;

			--alu
			alu_result_out, mem_data_out: out std_logic_vector(15 downto 0)
		);
	end component MEMtoWB;

--	component WB is
--		port(
--		);

	component Registers is
		port (
		--in
			--work on failing edge
			clk: in std_logic;
			rst: in std_logic;

			--write signal 1: write
			read_regs1: in std_logic_vector(2 downto 0);
			read_regs2: in std_logic_vector(2 downto 0);

			reg_wb_control_in: in reg_wb_control;

			reg_wb_mem_data: in std_logic_vector(15 downto 0);
			reg_wb_alu_result: in std_logic_vector(15 downto 0);

			reg_other_control_in: in reg_other_control;

			t_wb_data: in std_logic;

		--out
			--debug_output: out std_logic_vector(15 downto 0);
			read_data1: out std_logic_vector(15 downto 0);
			read_data2: out std_logic_vector(15 downto 0);
			sp_out: out std_logic_vector(15 downto 0);
			t_out: out std_logic;
			ih_out: out std_logic_vector(15 downto 0)
		);
	end component Registers;

	component forwarding is
		port (
		 --in
			  --ID
			  ID_reg0: in std_logic_vector(2 downto 0);
			  ID_reg1: in std_logic_vector(2 downto 0);
			  --ID to EXE
			IDtoEXE_reg_wb_control_in: reg_wb_control;
			IDtoEXE_reg_other_control_in: reg_other_control;
			  --EXE to MEM
			EXEtoMEM_reg_wb_control_in: reg_wb_control;
			EXEtoMEM_reg_other_control_in: reg_other_control;

		 --out
			forwarding_control_signal_out: out forwarding_control
		);
	end component forwarding;

	component ID is
		port (
			--in
			reg0_data_in: in std_logic_vector(15 downto 0);
			reg1_data_in: in std_logic_vector(15 downto 0);
			t_data_in: in std_logic;
			sp_data_in: in std_logic_vector(15 downto 0);
			ih_data_in: in std_logic_vector(15 downto 0);

			alu_result_EXE_in: in std_logic_vector(15 downto 0);
			alu_result_MEM_in: in std_logic_vector(15 downto 0);
			t_exe_in: in std_logic;
			t_mem_in: in std_logic;

			mem_data_in: in std_logic_vector(15 downto 0);
			forwarding_control_in: in forwarding_control;


			--out
			reg0_data_out: out std_logic_vector(15 downto 0);
			reg1_data_out: out std_logic_vector(15 downto 0);
			t_data_out: out std_logic;
			sp_data_out: out std_logic_vector(15 downto 0);
			ih_data_out: out std_logic_vector(15 downto 0)
		);
	end component ID;

	component MMU is
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

			--ps2
			keyboard_update_in: in std_logic;
			ascii_in: in std_logic_vector(15 downto 0);

		--out
			mem_data: out std_logic_vector(15 downto 0);
			instruction_out: out std_logic_vector(15 downto 0);
			ram1_addr_out, ram2_addr_out: out std_logic_vector(17 downto 0);
			bus_control_signal: out bus_control;
			ram1_control_signal: out ram_control;
			ram2_control_signal: out ram_control;
			
			--vga
			r, g, b: out std_logic_vector(2 downto 0);
			hs, vs : out std_logic;

			--flash control
			FlashByte, FlashVpen : out std_logic;
			FlashCE, FlashOE, FlashWE, FlashRP : out std_logic;

			--address to flash
			FlashAddr : out std_logic_vector(22 downto 0);

			--bubble
			flash_bubble: out std_logic;

		--inout
			ram1_data: inout std_logic_vector(15 downto 0);
			ram2_data: inout std_logic_vector(15 downto 0);
			FlashData: inout std_logic_vector(15 downto 0)

		--debug
			--debug_output: out std_logic_vector(15 downto 0)
		);
	end component MMU;

	--hazard
	component Hazard is
		port (
		 --in
			  mem_mem_control_signal: in mem_control;
			  id_reg0, id_reg1: in std_logic_vector(2 downto 0);
			  reading_flash: in std_logic;

			  exe_mem_control_signal: in mem_control;
			  exe_reg_wb_control_signal: in reg_wb_control;

		 --out
			  buble_maker_signal: out std_logic
		);
	end component Hazard;

	component PS2 is
		port (
	    --in
	        clk: in std_logic;
	        rst: in std_logic;

	        ps2clk_in: in std_logic;
	        ps2data_in: in std_logic;

	    --out
	        scan_code_out: out std_logic_vector(7 downto 0);
	        have_data: out std_logic;

		--debug
			debug_output: out std_logic_vector(15 downto 0)
		);
	end component PS2;

	component Keyboard is
	port (
		--in
			clk, rst: in std_logic;
			ps2_scan_code_in: in std_logic_vector(7 downto 0);
			ps2_have_data: in std_logic;
			mem_addr: in std_logic_vector(15 downto 0);
			mem_control_signal: in mem_control;
		--out
			ascii_out: out std_logic_vector(15 downto 0);
			keyboard_update_out: out std_logic
		);
	end component Keyboard ;

	--if
	signal if_instruction: std_logic_vector(15 downto 0);
	signal if_pc,  if_pc_one: std_logic_vector(15 downto 0);

	--id
	signal id_instruction, id_pc: std_logic_vector(15 downto 0);

	signal id_jump_control: jump_control;
	signal id_rx, id_ry, id_sp, id_ih, id_immi_final, selected_rx, selected_ry, selected_sp, selected_ih: std_logic_vector(15 downto 0);
	signal id_t, selected_t: std_logic;

	signal id_alu_control: alu_control;
	signal id_reg_wb_init_control: reg_wb_init_control;
	signal id_reg_other_control: reg_other_control;
	signal id_mem_control: mem_control;
	signal id_alu_src1_immi_chooser: std_logic_vector(1 downto 0);
	signal id_alu_immi_extend: std_logic;
	signal forwarding_control_signal: forwarding_control;

	--exe
	signal ex_reg_wb_control: reg_wb_control;
	signal ex_reg_other_control: reg_other_control;
	signal ex_alu_control: alu_control;
	signal ex_rx, ex_ry, ex_sp, ex_ih, ex_pc, ex_alu_immi: std_logic_vector(15 downto 0);
	signal ex_mem_control: mem_control;
	signal ex_alu_result: std_logic_vector(15 downto 0);
	signal ex_t_wb_data: std_logic;

	--mem
	signal mem_reg_wb_control: reg_wb_control;
	signal mem_reg_other_control: reg_other_control;
	signal mem_t_wb_data: std_logic;
	signal mem_mem_control: mem_control;
	signal mem_alu_result, mem_mem_data: std_logic_vector(15 downto 0);
	signal mem_rx, mem_ry: std_logic_vector(15 downto 0);

	--wb
	signal wb_reg_wb_control: reg_wb_control;
	signal wb_reg_other_control: reg_other_control;
	signal wb_alu_result, wb_mem_data: std_logic_vector(15 downto 0);
	signal wb_t_wb_data: std_logic;

	--hazard
	signal buble_maker: std_logic;
	signal reading_flash: std_logic;
	
	--vga

	--ps2
	signal ps2_scan_data: std_logic_vector(7 downto 0);
	signal ps2_have_data: std_logic;
	signal keyboard_update: std_logic;
	signal ascii: std_logic_vector(15 downto 0);
begin

	pc_write_entity: PC_Write
		port map(
		--in
			clk=>clk,
			rst=>rst,

			--hazard
			buble_maker_signal=> buble_maker,

			--control signal
			jump_control_signal=>id_jump_control,

			--data
			last_pc=>if_pc_one,
			id_pc=>id_pc,
			immi=>id_immi_final,
			rx=>selected_rx,
			t=>selected_t,
			immi_b=>id_instruction(10 downto 0),
		--out
			pc_out=>if_pc,
			pc_one_out=>if_pc_one
		);

	iftoid_entity: IFtoID
		port map(
		--in
			instruction_in => if_instruction,
			pc_in=> if_pc_one,
			clk => clk,
			rst => rst,
			buble_maker_signal=>buble_maker,
		--out
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

			reg_wb_control_in => wb_reg_wb_control,

			reg_wb_alu_result => wb_alu_result,
			reg_wb_mem_data => wb_mem_data,


			reg_other_control_in => wb_reg_other_control,

			t_wb_data => wb_t_wb_data,

		--out
			--debug_output=>led,
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
			jump_control_signal=> id_jump_control,

			--alu
			alu_control_signal=>id_alu_control,

			alu_src1_immi_chooser=> id_alu_src1_immi_chooser,
			alu_immi_extend=> id_alu_immi_extend,

			--register wb
			reg_wb_init_control_signal=>id_reg_wb_init_control,

			reg_other_control_signal=> id_reg_other_control,

			--mem
			mem_control_signal => id_mem_control
		);

	idtoexe_entity: IDtoEXE
		port map(
		--in
			clk=>clk,
			rst=>rst,

			buble_maker_signal=> buble_maker,
			--control signal
			reg_wb_rx=> id_instruction(10 downto 8),
			reg_wb_ry=> id_instruction(7 downto 5),
			reg_wb_rz=> id_instruction(4 downto 2),

			reg_wb_init_control_signal_in=> id_reg_wb_init_control,
			reg_other_control_signal_in=> id_reg_other_control,

			--mem
			mem_control_signal_in => id_mem_control,

			--alu
			alu_control_signal_in => id_alu_control,

			rx_in=> selected_rx,
			ry_in=> selected_ry,
			sp_in=> selected_sp,
			ih_in=> selected_ih,
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
			reg_wb_control_signal_out=>ex_reg_wb_control,

			reg_other_control_signal_out=> ex_reg_other_control,

			--alu
			alu_control_signal_out=>ex_alu_control,

			rx_out=> ex_rx,
			ry_out=> ex_ry,
			sp_out=> ex_sp,
			ih_out=>ex_ih,
			pc_out=>ex_pc,

			--immi
			alu_immi_former_out=> id_immi_final, --for B/JR
			alu_immi_out => ex_alu_immi,

			--mem
			mem_control_signal_out => ex_mem_control
		);

	exe_entity: Executor
		port map(
		--in
			--alu
			alu_control_signal => ex_alu_control,

			sp => ex_sp,
			rx => ex_rx,
			ry => ex_ry,
			alu_immi => ex_alu_immi,
			ih => ex_ih,
			pc => ex_pc,

		--out
			alu_result=> ex_alu_result,
			t_wb_data=> ex_t_wb_data
		);

	exetomem_entity: EXEtoMEM
		port map(
		--in
			clk=> clk,
			rst=> rst,

			--control signal
			reg_wb_control_in=> ex_reg_wb_control,

			reg_other_control_in=> ex_reg_other_control,

			t_wb_data_in=> ex_t_wb_data,
			--alu
			alu_result_in=> ex_alu_result,

			--mem
			mem_control_signal_in => ex_mem_control,
			rx_in => ex_rx,
			ry_in => ex_ry,

		--out
			--control signal
			reg_wb_control_out=> mem_reg_wb_control,

			reg_other_control_out=> mem_reg_other_control,

			t_wb_data_out=>mem_t_wb_data,

			--alu
			alu_result_out=>mem_alu_result,

			--mem
			mem_control_signal_out => mem_mem_control,

			rx_out => mem_rx,
			ry_out => mem_ry
		);

	mmu_entity: MMU
		port map(
		--in
			clk => clk,
			rst => rst,

			--control signal
			mem_control_signal => mem_mem_control,

			rx => mem_rx,
			ry => mem_ry,

			mem_addr => mem_alu_result,

			pc_in => if_pc,

			--serial
			serial_tbre => serial_tbre,
			serial_tsre => serial_tsre,
			serial_data_ready => serial_data_ready,

			--ps2
			keyboard_update_in => keyboard_update,
			ascii_in => ascii,

		--out
			mem_data => mem_mem_data,
			instruction_out => if_instruction,
			ram1_addr_out => ram1_addr,
			ram2_addr_out => ram2_addr,
			bus_control_signal.rdn => rdn,
			bus_control_signal.wrn => wrn,
			ram1_control_signal.oe => ram1_oe,
			ram1_control_signal.we => ram1_we,
			ram1_control_signal.en => ram1_en,
			ram2_control_signal.oe => ram2_oe,
			ram2_control_signal.we => ram2_we,
			ram2_control_signal.en => ram2_en,
			FlashByte => FlashByte,
			FlashVpen => FlashVpen,
			FlashCE => FlashCE,
			FlashOE => FlashOE,
			FlashWE => FlashWE,
			FlashRP => FlashRP,
			FlashAddr => FlashAddr,
			r => vga_r,
			g => vga_g,
			b => vga_b,
			hs => vga_hs,
			vs => vga_vs,

			flash_bubble => reading_flash,

		--inout
			ram1_data => ram1_data,
			ram2_data => ram2_data,
			FlashData => FlashData
		--debug
			--debug_output=>led
		);

	memtowb_entity: MEMtoWB
		port map(
		--in
			clk=> clk,
			rst=> rst,
			--control signal
			reg_wb_control_in => mem_reg_wb_control,

			reg_other_control_in => mem_reg_other_control,

			t_wb_data_in => mem_t_wb_data,

			--alu
			alu_result_in => mem_alu_result,
			mem_data_in => mem_mem_data,

		--out
			--control signal
			reg_wb_control_out => wb_reg_wb_control,

			reg_other_control_out => wb_reg_other_control,

			t_wb_data_out => wb_t_wb_data,

			--alu
			alu_result_out => wb_alu_result,
			mem_data_out => wb_mem_data
		);

	hazard_entity: Hazard
		port map(
		--in
			mem_mem_control_signal=> mem_mem_control,

			id_reg0=> id_instruction(10 downto 8),
			id_reg1=> id_instruction(7 downto 5),

			exe_mem_control_signal => ex_mem_control,
			exe_reg_wb_control_signal=> ex_reg_wb_control,
  		  	reading_flash => reading_flash,

		--out
			buble_maker_signal=> buble_maker
		);

	forwarding_entity: forwarding
		port map(
	    --in
	        --ID
	        ID_reg0 => id_instruction(10 downto 8),
	        ID_reg1 => id_instruction(7 downto 5),
	      --ID to EXE
			IDtoEXE_reg_wb_control_in => ex_reg_wb_control,
			IDtoEXE_reg_other_control_in=>ex_reg_other_control,
	      --EXE to MEM
			EXEtoMEM_reg_wb_control_in => mem_reg_wb_control,
			EXEtoMEM_reg_other_control_in => mem_reg_other_control,
	    --out
			forwarding_control_signal_out => forwarding_control_signal
	);

	ID_entity: ID
		port map(
			--in
			reg0_data_in => id_rx,
			reg1_data_in => id_ry,
			t_data_in => id_t,
			sp_data_in=> id_sp,
			ih_data_in=> id_ih,

			alu_result_EXE_in => ex_alu_result,
			alu_result_MEM_in => mem_alu_result,
			t_exe_in=>ex_t_wb_data,
			t_mem_in=>mem_t_wb_data,

			mem_data_in=> mem_mem_data,
			forwarding_control_in => forwarding_control_signal,

			--out
			reg0_data_out => selected_rx,
			reg1_data_out => selected_ry,
			t_data_out=>selected_t,
			sp_data_out=>selected_sp,
			ih_data_out=>selected_ih
	);

	ps2_entity: PS2
		port map(
	    --in
	        clk => clk,
	        rst => rst,

	        ps2clk_in => ps2_clk,
	        ps2data_in => ps2_data,

	    --out
	        scan_code_out => ps2_scan_data,
	        have_data => ps2_have_data,

			  debug_output => led
	);

	keyboard_entity: Keyboard
		port map(
		--in
			clk => clk,
			rst => rst,
			ps2_scan_code_in => ps2_scan_data,
			ps2_have_data => ps2_have_data,
			mem_addr => mem_alu_result,
			mem_control_signal => mem_mem_control,
		--out
			ascii_out => ascii,
			keyboard_update_out => keyboard_update
	);

end Behavioral;
