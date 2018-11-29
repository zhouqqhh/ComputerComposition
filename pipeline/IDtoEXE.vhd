library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.UTILS.ALL;

entity IDtoEXE is
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
end IDtoEXE;

architecture Behavioral of IDtoEXE is
	component mux_3bit is
		port (
			input0: in std_logic_vector(15 downto 0);
			input1: in std_logic_vector(15 downto 0);
			input2: in std_logic_vector(15 downto 0);
			input3: in std_logic_vector(15 downto 0);
			input4: in std_logic_vector(15 downto 0);
			input5: in std_logic_vector(15 downto 0);
			input6: in std_logic_vector(15 downto 0);
			input7: in std_logic_vector(15 downto 0);
			sel: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(15 downto 0)
		);
	end component mux_3bit;
	
	component mux3_2bit is
		port (
			input0: in std_logic_vector(2 downto 0);
			input1: in std_logic_vector(2 downto 0);
			input2: in std_logic_vector(2 downto 0);
			input3: in std_logic_vector(2 downto 0);
			sel: in std_logic_vector(1 downto 0);
			output: out std_logic_vector(2 downto 0)
		);
	end component mux3_2bit;
	

	signal reg_wb_place_cand: std_logic_vector(2 downto 0);
	signal reg_wb_control_signal: reg_wb_control;
	
	signal alu_control_signal: alu_control;
	
	signal mem_control_signal: mem_control;
	
	signal reg_other_control_signal: reg_other_control;
	
	signal rx, ry, sp, ih, pc: std_logic_vector(15 downto 0);
	signal alu_immi, alu_immi_cand: std_logic_vector(15 downto 0);
	signal immi_7_0_sign, immi_7_0_zero, immi_3_0_sign, immi_3_0_zero, immi_4_0_sign, immi_4_0_zero, immi_4_2_sign, immi_4_2_zero: std_logic_vector(15 downto 0);
	signal immi_chooser_concat: std_logic_vector(2 downto 0);
	
begin
	reg_wb_control_signal_out <= reg_wb_control_signal;	
	reg_other_control_signal_out <= reg_other_control_signal;
	
	alu_control_signal_out <= alu_control_signal;
	
	rx_out <= rx;
	ry_out <= ry;
	sp_out <= sp;
	ih_out <= ih;
	pc_out <= pc;
	
	mem_control_signal_out <= mem_control_signal;
	
	alu_immi_out <= alu_immi;
	
	-----
	immi_7_0_sign(7 downto 0) <= immi_7_0_in;
	immi_7_0_sign(15 downto 8) <= (others=>immi_7_0_in(7));
	immi_7_0_zero <= "00000000" & immi_7_0_in;
	
	immi_3_0_zero <= "000000000000" & immi_3_0_in;
	immi_3_0_sign(3 downto 0) <= immi_3_0_in;
	immi_3_0_sign(15 downto 4) <= (others=> immi_3_0_in(3));
	
	immi_4_0_zero <= "00000000000" & immi_4_0_in;
	immi_4_0_sign(4 downto 0) <= immi_4_0_in;
	immi_4_0_sign(15 downto 5) <= (others=> immi_4_0_in(4));
	
	immi_4_2_zero <= "0000000000000" & immi_4_2_in;
	immi_4_2_sign(2 downto 0) <= immi_4_2_in;
	immi_4_2_sign(15 downto 3) <= (others=>immi_4_2_in(2));
	
	immi_chooser_concat <= alu_immi_extend & alu_src1_immi_chooser;
	immi_type_chooser: mux_3bit
		port map(
			input0=> immi_7_0_zero,
			input1=> immi_3_0_zero,
			input2=> immi_4_0_zero,
			input3=> immi_4_2_zero,
			input4=> immi_7_0_sign,
			input5=> immi_3_0_sign,
			input6=> immi_4_0_sign,
			input7=> immi_4_2_sign,
			sel=> immi_chooser_concat,
			output=> alu_immi_cand
		);
	--for jr/b
	alu_immi_former_out <= alu_immi_cand;
	
	wb_place_chooser: mux3_2bit
		port map(
			input0=> reg_wb_rx,
			input1=> reg_wb_ry,
			input2=> reg_wb_rz,
			input3=> "000",
			sel=> reg_wb_init_control_signal_in.reg_wb_chooser,
			output=> reg_wb_place_cand
		);
	
	process(clk, rst, buble_maker_signal)
	begin
		if rst = '0'  then
			reg_wb_control_signal <= zero_reg_wb_control;
			reg_other_control_signal <= zero_reg_other_control;
			mem_control_signal <= zero_mem_control;
			alu_control_signal <= zero_alu_control;
			
			rx <= (others=>'0');
			ry <= (others=>'0');
			sp <= (others=>'0');
			pc <= (others=>'0');
			ih <= (others=>'0');
			alu_immi <= (others=>'0');
		elsif rising_edge(clk) then
			if buble_maker_signal = '0' then
				reg_wb_control_signal.reg_wb_signal <= reg_wb_init_control_signal_in.reg_wb_signal;
				reg_wb_control_signal.reg_wb_data_chooser <= reg_wb_init_control_signal_in.reg_wb_data_chooser;
				reg_wb_control_signal.reg_wb_regs <= reg_wb_place_cand;
				
				reg_other_control_signal <= reg_other_control_signal_in;
				
				alu_control_signal <= alu_control_signal_in;
				
				sp <= sp_in;
				ih <= ih_in;
				pc <= pc_in;

				mem_control_signal <= mem_control_signal_in;
				
				rx <= rx_in;
				ry <= ry_in;
				alu_immi <= alu_immi_cand;	
			else
				reg_wb_control_signal <= zero_reg_wb_control;
				reg_other_control_signal <= zero_reg_other_control;
				mem_control_signal <= zero_mem_control;
				alu_control_signal <= zero_alu_control;
				
				rx <= (others=>'0');
				ry <= (others=>'0');
				sp <= (others=>'0');
				pc <= (others=>'0');
				ih <= (others=>'0');
				alu_immi <= (others=>'0');
			end if;
		end if;
	end process;
end Behavioral;

