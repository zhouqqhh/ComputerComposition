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

entity Controller is
    port (
    --in
        instruction: in std_logic_vector(15 downto 0);

    --out
        --pc
		jump_control_signal: out jump_control;

        --alu
	    alu_control_signal: out alu_control;
        alu_src1_immi_chooser: out std_logic_vector(1 downto 0); --0:immi_7_0, 1:immi_3_0, 2:immi_4_0, 3:immi_4_2
        alu_immi_extend: out std_logic; --0: 0-extend, 1-sign extend

        --regsters wb
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
end Controller;

architecture Behavioral of Controller is

begin
    process(instruction)
    begin
            case Instruction(15 downto 11) is
                when "00001" =>  --NOP
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "ZZZ";
                    alu_control_signal.alu_src0 <= "ZZZ";
                    alu_control_signal.alu_src1 <= "00";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "ZZ";
                    alu_immi_extend <= 'Z';
                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= 'Z';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "00010" =>  --B
                    jump_control_signal.pc_src <= "01";
                    alu_control_signal.alu_op <= "ZZZ";
                    alu_control_signal.alu_src0 <= "ZZZ";
                    alu_control_signal.alu_src1 <= "00";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "ZZ";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';

                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "01";
                    jump_control_signal.B_com_chooser <= "ZZ";

                when "00100" =>  --BEQZ
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "ZZZ";
                    alu_control_signal.alu_src0 <= "ZZZ";
                    alu_control_signal.alu_src1 <= "00";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "ZZ";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "10";
                    jump_control_signal.B_com_chooser <= "00";
                when "00101" =>  --BNEZ
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "ZZZ";
                    alu_control_signal.alu_src0 <= "ZZZ";
                    alu_control_signal.alu_src1 <= "00";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "ZZ";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';

                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "10";
                    jump_control_signal.B_com_chooser <= "01";

                when "00110" =>
                    case Instruction(1 downto 0) is
                        when "00" =>  --SLL
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "101";
                            alu_control_signal.alu_src0 <= "101";
                            alu_control_signal.alu_src1 <= "01";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "11";
                            alu_immi_extend <= '0';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when "11" =>  --SRA
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "110";
                            alu_control_signal.alu_src0 <= "101";
                            alu_control_signal.alu_src1 <= "01";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "11";
                            alu_immi_extend <= '0';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when others =>
                    end case;
                when "01000" =>  --ADDIU3
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "001";
                    alu_control_signal.alu_src0 <= "000";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "01";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '1';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "01001" =>  --ADDIU
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "001";
                    alu_control_signal.alu_src0 <= "000";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '1';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "01010" =>  --SLTI
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "011";
                    alu_control_signal.alu_src0 <= "000";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '1';
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '1';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "01011" =>  --SLTUI
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "011";
                    alu_control_signal.alu_src0 <= "000";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '1';
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '0';
                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '1';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "01100" =>
                    case Instruction(10 downto 8) is
                        when "011" =>   --ADDSP
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "001";
                            alu_control_signal.alu_src0 <= "001";
                            alu_control_signal.alu_src1 <= "01";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "00";
                            alu_immi_extend <= '1';
                            reg_wb_init_control_signal.reg_wb_signal <= '0';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '1';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when "000" =>  --BTEQZ
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "ZZZ";
                            alu_control_signal.alu_src0 <= "ZZZ";
                            alu_control_signal.alu_src1 <= "00";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= '1';
                            reg_wb_init_control_signal.reg_wb_signal <= '0';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "10";
                            jump_control_signal.B_com_chooser <= "10";
                        when "110" =>  --MTSP
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "001";
                            alu_control_signal.alu_src0 <= "000";
                            alu_control_signal.alu_src1 <= "11";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_init_control_signal.reg_wb_signal <= '0';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '1';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when "001" =>  --BTNEZ
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "ZZZ";
                            alu_control_signal.alu_src0 <= "ZZZ";
                            alu_control_signal.alu_src1 <= "00";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_init_control_signal.reg_wb_signal <= '0';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= 'Z';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "10";
                            jump_control_signal.B_com_chooser <= "11";
                        when others =>
                    end case;
                when "01101" =>  --LI
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "001";
                    alu_control_signal.alu_src0 <= "010";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '0';
                    reg_wb_init_control_signal.reg_wb_signal <= '1';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "10010" =>  --LW_SP
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "001";
                    alu_control_signal.alu_src0 <= "001";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '1';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '1';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '1';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "10011" =>  --LW
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "001";
                    alu_control_signal.alu_src0 <= "000";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "10";
                    alu_immi_extend <= 'Z';
                    reg_wb_init_control_signal.reg_wb_signal <= '1';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '1';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '0';
                    mem_control_signal.wb_data_chooser <= 'Z';
                    mem_control_signal.read_signal <= '1';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "11010" =>  --SW_SP
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "001";
                    alu_control_signal.alu_src0 <= "001";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '1';
                    mem_control_signal.wb_data_chooser <= '0';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "11011" =>  --SW
                    jump_control_signal.pc_src <= "00";
                    alu_control_signal.alu_op <= "001";
                    alu_control_signal.alu_src0 <= "000";
                    alu_control_signal.alu_src1 <= "01";
                    alu_control_signal.t_src <= '0';
                    alu_src1_immi_chooser <= "10";
                    alu_immi_extend <= '1';
                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                    reg_other_control_signal.sp_wb_signal <= '0';
                    reg_other_control_signal.t_wb_signal <= '0';
                    reg_other_control_signal.ih_wb_signal <= '0';
                    mem_control_signal.wb_signal <= '1';
                    mem_control_signal.wb_data_chooser <= '1';
                    mem_control_signal.read_signal <= '0';
                    jump_control_signal.JR_signal <= '0';
                    jump_control_signal.B_signal <= "00";
                    jump_control_signal.B_com_chooser <= "ZZ";
                when "11100" =>
                    case Instruction(1 downto 0) is
                        when "01" =>  --ADDU
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "001";
                            alu_control_signal.alu_src0 <= "000";
                            alu_control_signal.alu_src1 <= "00";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= '1';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when "11" =>  --SUBU
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "011";
                            alu_control_signal.alu_src0 <= "000";
                            alu_control_signal.alu_src1 <= "00";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when others =>
                    end case;
                when "11101" =>
                    case Instruction(4 downto 0) is
                        when "01100" =>  --AND
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "010";
                            alu_control_signal.alu_src0 <= "000";
                            alu_control_signal.alu_src1 <= "00";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= '1';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when "01010" =>  --CMP
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "011";
                            alu_control_signal.alu_src0 <= "000";
                            alu_control_signal.alu_src1 <= "00";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= '1';
                            reg_wb_init_control_signal.reg_wb_signal <= '0';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '1';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when "00000" =>
                            case Instruction(7 DOWNTO 5) is
                                when "000" =>  --JR
                                    jump_control_signal.pc_src <= "10";
                                    alu_control_signal.alu_op <= "ZZZ";
                                    alu_control_signal.alu_src0 <= "ZZZ";
                                    alu_control_signal.alu_src1 <= "00";
                                    alu_control_signal.t_src <= '0';
                                    alu_src1_immi_chooser <= "ZZ";
                                    alu_immi_extend <= '1';
                                    reg_wb_init_control_signal.reg_wb_signal <= '0';
                                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                                    reg_other_control_signal.sp_wb_signal <= '0';
                                    reg_other_control_signal.t_wb_signal <= '0';
                                    reg_other_control_signal.ih_wb_signal <= '0';
                                    mem_control_signal.wb_signal <= '0';
                                    mem_control_signal.wb_data_chooser <= 'Z';
                                    mem_control_signal.read_signal <= '0';
                                    jump_control_signal.JR_signal <= '1';
                                    jump_control_signal.B_signal <= "00";
                                    jump_control_signal.B_com_chooser <= "ZZ";

                                when "010" =>  --MFPC
                                    jump_control_signal.pc_src <= "00";
                                    alu_control_signal.alu_op <= "001";
                                    alu_control_signal.alu_src0 <= "100";
                                    alu_control_signal.alu_src1 <= "11";
                                    alu_control_signal.t_src <= '0';
                                    alu_src1_immi_chooser <= "ZZ";
                                    alu_immi_extend <= 'Z';
                                    reg_wb_init_control_signal.reg_wb_signal <= '1';
                                    reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                                    reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                                    reg_other_control_signal.sp_wb_signal <= '0';
                                    reg_other_control_signal.t_wb_signal <= '0';
                                    reg_other_control_signal.ih_wb_signal <= '0';
                                    mem_control_signal.wb_signal <= '0';
                                    mem_control_signal.wb_data_chooser <= 'Z';
                                    mem_control_signal.read_signal <= '0';
                                    jump_control_signal.JR_signal <= '0';
                                    jump_control_signal.B_signal <= "00";
                                    jump_control_signal.B_com_chooser <= "ZZ";
							    when others =>
                            end case;
                        when "01101" =>  --OR
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "100";
                            alu_control_signal.alu_src0 <= "000";
                            alu_control_signal.alu_src1 <= "00";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when "01011" =>  --NEG
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "011";
                            alu_control_signal.alu_src0 <= "010";
                            alu_control_signal.alu_src1 <= "00";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when "00110" =>  --SRLV
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "111";
                            alu_control_signal.alu_src0 <= "101";
                            alu_control_signal.alu_src1 <= "10";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when others =>
                    end case;
                when "11110" =>
                    case Instruction(0) is
                        when '0' =>  --MFIH
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "001";
                            alu_control_signal.alu_src0 <= "011";
                            alu_control_signal.alu_src1 <= "11";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_init_control_signal.reg_wb_signal <= '1';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '0';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when '1' =>  --MTIH
                            jump_control_signal.pc_src <= "00";
                            alu_control_signal.alu_op <= "001";
                            alu_control_signal.alu_src0 <= "000";
                            alu_control_signal.alu_src1 <= "11";
                            alu_control_signal.t_src <= '0';
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_init_control_signal.reg_wb_signal <= '0';
                            reg_wb_init_control_signal.reg_wb_chooser <= "ZZ";
                            reg_wb_init_control_signal.reg_wb_data_chooser <= '0';
                            reg_other_control_signal.sp_wb_signal <= '0';
                            reg_other_control_signal.t_wb_signal <= '0';
                            reg_other_control_signal.ih_wb_signal <= '1';
                            mem_control_signal.wb_signal <= '0';
                            mem_control_signal.wb_data_chooser <= 'Z';
                            mem_control_signal.read_signal <= '0';
                            jump_control_signal.JR_signal <= '0';
                            jump_control_signal.B_signal <= "00";
                            jump_control_signal.B_com_chooser <= "ZZ";
                        when others =>
                    end case;
                when others =>
            end case;
    end process;

end Behavioral;
