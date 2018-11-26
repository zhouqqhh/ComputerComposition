----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    20:09:54 11/21/2018
-- Design Name:
-- Module Name:    Controller - Behavioral
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
        pc_src: out std_logic_vector(1 downto 0);
        B_signal: out std_logic_vector(1 downto 0);
        B_com_chooser: out std_logic_vector(1 downto 0);
        JR_signal: out std_logic;

        --alu
        alu_op: out std_logic_vector(2 downto 0);
        alu_src0: out std_logic_vector(2 downto 0); --0:rx, 1:sp, 2:0, 3:ih, 4:pc, 5:ry
        alu_src1: out std_logic_vector(1 downto 0); --0:ry, 1:immi, 2:rx, 3:0
        alu_src1_immi_chooser: out std_logic_vector(1 downto 0); --0:immi_7_0, 1:immi_3_0, 2:immi_4_0, 3:immi_4_2
        alu_immi_extend: out std_logic; --0: 0-extend, 1-sign extend

        --regsters wb
        reg_wb_signal: out std_logic;	--0:no write, 1:write
        reg_wb_chooser: out std_logic_vector(1 downto 0); --0: rx, 1: ry, 2: rz
        reg_wb_data_chooser: out std_logic; --0:ALU result, 1:memRead
        sp_wb_signal: out std_logic;
        t_wb_signal: out std_logic;
        ih_wb_signal: out std_logic;

        --memory
        mem_wb_signal: out std_logic;
        mem_wb_data_chooser: out std_logic; --0:rx, 1:ry
        mem_read_signal: out std_logic
    );
end Controller;

architecture Behavioral of Controller is

begin
    process(instruction)
    begin
            case Instruction(15 downto 11) is
                when "00001" =>  --NOP
                    pc_src <= "00";
                    alu_op <= "ZZZ";
                    alu_src0 <= "ZZZ";
                    alu_src1 <= "ZZ";
                    alu_src1_immi_chooser <= "ZZ";
                    alu_immi_extend <= 'Z';
                    reg_wb_signal <= '0';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= 'Z';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "00010" =>  --B
                    pc_src <= "01";
                    alu_op <= "ZZZ";
                    alu_src0 <= "ZZZ";
                    alu_src1 <= "ZZ";
                    alu_src1_immi_chooser <= "ZZ";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '0';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';

                    JR_signal <= '0';
                    B_signal <= "01";
                    B_com_chooser <= "ZZ";

                when "00100" =>  --BEQZ
                    pc_src <= "00";
                    alu_op <= "ZZZ";
                    alu_src0 <= "ZZZ";
                    alu_src1 <= "ZZ";
                    alu_src1_immi_chooser <= "ZZ";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '0';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "10";
                    B_com_chooser <= "00";
                when "00101" =>  --BNEZ
                    pc_src <= "00";
                    alu_op <= "ZZZ";
                    alu_src0 <= "ZZZ";
                    alu_src1 <= "ZZ";
                    alu_src1_immi_chooser <= "ZZ";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '0';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';

                    JR_signal <= '0';
                    B_signal <= "10";
                    B_com_chooser <= "01";

                when "00110" =>
                    case Instruction(1 downto 0) is
                        when "00" =>  --SLL
                            pc_src <= "00";
                            alu_op <= "101";
                            alu_src0 <= "101";
                            alu_src1 <= "01";
                            alu_src1_immi_chooser <= "11";
                            alu_immi_extend <= '0';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when "11" =>  --SRA
                            pc_src <= "00";
                            alu_op <= "110";
                            alu_src0 <= "101";
                            alu_src1 <= "01";
                            alu_src1_immi_chooser <= "11";
                            alu_immi_extend <= '0';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when others =>
                    end case;
                when "01000" =>  --ADDIU3
                    pc_src <= "00";
                    alu_op <= "001";
                    alu_src0 <= "000";
                    alu_src1 <= "01";
                    alu_src1_immi_chooser <= "01";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '1';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "01001" =>  --ADDIU
                    pc_src <= "00";
                    alu_op <= "001";
                    alu_src0 <= "000";
                    alu_src1 <= "01";
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '1';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "01010" =>  --SLTI
                    pc_src <= "00";
                    alu_op <= "011";
                    alu_src0 <= "000";
                    alu_src1 <= "01";
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '0';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '1';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "01011" =>  --SLTUI
                    pc_src <= "00";
                    alu_op <= "011";
                    alu_src0 <= "000";
                    alu_src1 <= "01";
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '0';
                    reg_wb_signal <= '0';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '1';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "01100" =>
                    case Instruction(10 downto 8) is
                        when "011" =>   --ADDSP
                            pc_src <= "00";
                            alu_op <= "001";
                            alu_src0 <= "001";
                            alu_src1 <= "01";
                            alu_src1_immi_chooser <= "00";
                            alu_immi_extend <= '1';
                            reg_wb_signal <= '0';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '1';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when "000" =>  --BTEQZ
                            pc_src <= "00";
                            alu_op <= "ZZZ";
                            alu_src0 <= "ZZZ";
                            alu_src1 <= "ZZ";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= '1';
                            reg_wb_signal <= '0';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "10";
                            B_com_chooser <= "10";
                        when "110" =>  --MTSP
                            pc_src <= "00";
                            alu_op <= "001";
                            alu_src0 <= "000";
                            alu_src1 <= "11";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_signal <= '0';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '1';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when "001" =>  --BTNEZ
                            pc_src <= "00";
                            alu_op <= "ZZZ";
                            alu_src0 <= "ZZZ";
                            alu_src1 <= "ZZ";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_signal <= '0';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= 'Z';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "10";
                            B_com_chooser <= "11";
                        when others =>
                    end case;
                when "01101" =>  --LI
                    pc_src <= "00";
                    alu_op <= "001";
                    alu_src0 <= "010";
                    alu_src1 <= "01";
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '0';
                    reg_wb_signal <= '1';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "10010" =>  --LW_SP
                    pc_src <= "00";
                    alu_op <= "001";
                    alu_src0 <= "001";
                    alu_src1 <= "01";
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '1';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '1';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '1';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "10011" =>  --LW
                    pc_src <= "00";
                    alu_op <= "001";
                    alu_src0 <= "000";
                    alu_src1 <= "01";
                    alu_src1_immi_chooser <= "10";
                    alu_immi_extend <= 'Z';
                    reg_wb_signal <= '1';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '1';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '0';
                    mem_wb_data_chooser <= 'Z';
                    mem_read_signal <= '1';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "11010" =>  --SW_SP
                    pc_src <= "00";
                    alu_op <= "001";
                    alu_src0 <= "001";
                    alu_src1 <= "01";
                    alu_src1_immi_chooser <= "00";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '0';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '1';
                    mem_wb_data_chooser <= '0';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "11011" =>  --SW
                    pc_src <= "00";
                    alu_op <= "001";
                    alu_src0 <= "000";
                    alu_src1 <= "ZZ";
                    alu_src1_immi_chooser <= "10";
                    alu_immi_extend <= '1';
                    reg_wb_signal <= '0';
                    reg_wb_chooser <= "ZZ";
                    reg_wb_data_chooser <= '0';
                    sp_wb_signal <= '0';
                    t_wb_signal <= '0';
                    ih_wb_signal <= '0';
                    mem_wb_signal <= '1';
                    mem_wb_data_chooser <= '1';
                    mem_read_signal <= '0';
                    JR_signal <= '0';
                    B_signal <= "00";
                    B_com_chooser <= "ZZ";
                when "11100" =>
                    case Instruction(1 downto 0) is
                        when "01" =>  --ADDU
                            pc_src <= "00";
                            alu_op <= "001";
                            alu_src0 <= "000";
                            alu_src1 <= "00";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= '1';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when "11" =>  --SUBU
                            pc_src <= "00";
                            alu_op <= "011";
                            alu_src0 <= "000";
                            alu_src1 <= "00";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when others =>
                    end case;
                when "11101" =>
                    case Instruction(4 downto 0) is
                        when "01100" =>  --AND
                            pc_src <= "00";
                            alu_op <= "010";
                            alu_src0 <= "000";
                            alu_src1 <= "00";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= '1';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when "01010" =>  --CMP
                            pc_src <= "00";
                            alu_op <= "011";
                            alu_src0 <= "000";
                            alu_src1 <= "00";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= '1';
                            reg_wb_signal <= '0';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '1';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when "00000" =>
                            case Instruction(7 DOWNTO 5) is
                                when "000" =>  --JR
                                    pc_src <= "10";
                                    alu_op <= "ZZZ";
                                    alu_src0 <= "ZZZ";
                                    alu_src1 <= "ZZ";
                                    alu_src1_immi_chooser <= "ZZ";
                                    alu_immi_extend <= '1';
                                    reg_wb_signal <= '0';
                                    reg_wb_chooser <= "ZZ";
                                    reg_wb_data_chooser <= '0';
                                    sp_wb_signal <= '0';
                                    t_wb_signal <= '0';
                                    ih_wb_signal <= '0';
                                    mem_wb_signal <= '0';
                                    mem_wb_data_chooser <= 'Z';
                                    mem_read_signal <= '0';
                                    JR_signal <= '1';
                                    B_signal <= "00";
                                    B_com_chooser <= "ZZ";

                                when "010" =>  --MFPC
                                    pc_src <= "00";
                                    alu_op <= "001";
                                    alu_src0 <= "100";
                                    alu_src1 <= "11";
                                    alu_src1_immi_chooser <= "ZZ";
                                    alu_immi_extend <= 'Z';
                                    reg_wb_signal <= '1';
                                    reg_wb_chooser <= "ZZ";
                                    reg_wb_data_chooser <= '0';
                                    sp_wb_signal <= '0';
                                    t_wb_signal <= '0';
                                    ih_wb_signal <= '0';
									     when others =>
                                    mem_wb_signal <= '0';
                                    mem_wb_data_chooser <= 'Z';
                                    mem_read_signal <= '0';
                                    JR_signal <= '0';
                                    B_signal <= "00";
                                    B_com_chooser <= "ZZ";
                            end case;
                        when "01101" =>  --OR
                            pc_src <= "00";
                            alu_op <= "100";
                            alu_src0 <= "000";
                            alu_src1 <= "00";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when "01011" =>  --NEG
                            pc_src <= "00";
                            alu_op <= "011";
                            alu_src0 <= "010";
                            alu_src1 <= "00";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when "00110" =>  --SRLV
                            pc_src <= "00";
                            alu_op <= "111";
                            alu_src0 <= "101";
                            alu_src1 <= "10";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when others =>
                    end case;
                when "11110" =>
                    case Instruction(0) is
                        when '0' =>  --MFIH
                            pc_src <= "00";
                            alu_op <= "001";
                            alu_src0 <= "011";
                            alu_src1 <= "11";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_signal <= '1';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '0';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when '1' =>  --MTIH
                            pc_src <= "00";
                            alu_op <= "001";
                            alu_src0 <= "000";
                            alu_src1 <= "11";
                            alu_src1_immi_chooser <= "ZZ";
                            alu_immi_extend <= 'Z';
                            reg_wb_signal <= '0';
                            reg_wb_chooser <= "ZZ";
                            reg_wb_data_chooser <= '0';
                            sp_wb_signal <= '0';
                            t_wb_signal <= '0';
                            ih_wb_signal <= '1';
                            mem_wb_signal <= '0';
                            mem_wb_data_chooser <= 'Z';
                            mem_read_signal <= '0';
                            JR_signal <= '0';
                            B_signal <= "00";
                            B_com_chooser <= "ZZ";
                        when others =>
                    end case;
                when others =>
            end case;
    end process;

end Behavioral;
