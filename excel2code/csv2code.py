import csv

openname = "1.csv"
writename = "code.txt"
init_tab = "        "
tab = init_tab + "    "
lookup_dict = {"alu_src0":{"rx":"000","SP":"001","0":"010","IH":"011","PC":"100","ry":"101"},
               "alu_src1":{"ry":"00","Immi":"01","rx":"10","0":"11"},
               "alu_src1_immi_chooser":{"Imm[0:7]":"00","Imm[0:3]":"01","Imm[0:4]":"10","Imm[2:4]":"11"},
               "reg_wb_data_chooser":{"ALU_result":"0","memRead":"1"},
               "mem_wb_data_chooser":{"x":"Z","rx":"0","ry":"1"}}
default_dict = {"pc_src":"00",
                "alu_op":"ZZZ",
                "alu_src0":"ZZZ",
			    "alu_src1":"ZZ",
                "alu_src1_immi_chooser":"ZZ",
                "alu_immi_extend":"Z",
                "reg_wb_signal":"0",
                "reg_wb_chooser":"ZZ",
                "reg_wb_data_chooser":"Z",
                "sp_wb_signal":"0",
                "t_wb_signal":"0",
                "ih_wb_signal":"0",
                "mem_wb_signal":"0",
                "mem_wb_data_chooser":"Z",
                "mem_read_signal":"0",
                "JR_signal":"Z",
                "B_signal":"ZZ",
                "B_com_chooser":"ZZ"}
stmt_dict = {'BTEQZ':"",'BTNEZ':""}
with open(openname) as rf:
    with open(writename, 'w') as wf:
        reader2 = csv.reader(rf)
        tmp = list(reader2)[3:]
        signame = tmp[0]
        sigList = tmp[1:]
        for row in sigList:
            if len(row[3]) > 0:
                stmt_dict[row[1]] = ""
                if len(row[0]) == 0:
                    exit(0)
                for i in range(4, len(row)):
                    if (signame[i] not in lookup_dict or row[i] not in lookup_dict[signame[i]]) \
                            and row[i].isdigit():
                        if len(row[i]) == 1:
                            if int(row[i]) > 1:
                                row[i] = bin(row[i])
                            stmt_dict[row[1]] += tab + signame[i] + " <= '" + row[i] + "';\n"
                        else:
                            stmt_dict[row[1]] += tab + signame[i] + ' <= "' + row[i] + '";\n'
                    elif signame[i] in lookup_dict and row[i] in lookup_dict[signame[i]]:
                        val = lookup_dict[signame[i]][row[i]]
                        if len(val) > 1:
                            stmt_dict[row[1]] += tab + signame[i] + ' <= "' + val + '";\n'
                        else:
                            stmt_dict[row[1]] += tab + signame[i] + " <= '" + val + "';\n"
                    else:
                        if signame[i] in default_dict:
                            val = default_dict[signame[i]]
                            if len(val) > 1:
                                stmt_dict[row[1]] += tab + signame[i] + ' <= "' + val + '";\n'
                            else:
                                stmt_dict[row[1]] += tab + signame[i] + " <= '" + val + "';\n"
        print(stmt_dict['MTIH'])
        # wf.write('when "00001" =>  --NOP\n' + stmt_dict['NOP'] +
        #          'when "00010" =>  --B\n' + stmt_dict['B'] +
        #          'when "00100" =>  --BEQZ\n' + stmt_dict['BEQZ'] +
        #          'when "00110" =>\n' +
        #          tab + 'case Instruction(1 downto 0) is\n' +
        #          tab + tab + 'when "00" =>  --SLL\n' + stmt_dict['SLL'] +
        #          tab + tab + 'when "11" =>  --SRA\n' + stmt_dict['SRA'] +
        #          tab + 'end case;\n' +
        #          'when "01000" =>  --ADDIU3\n' + stmt_dict['ADDIU3'] +
        #          'when "01001" =>  --ADDIU\n' + stmt_dict['ADDIU'] +
        #          'when "01010" =>  --SLTI\n' + stmt_dict['SLTI'] +
        #          'when "01011" =>  --SLTUI\n' + stmt_dict['SLTUI'] +
        #          'when "01100" =>\n' +
        #          tab + 'case Instruction(10 downto 8) is\n' +
        #          tab + tab + 'when "011" =>   --ADDSP\n' + stmt_dict['ADDSP'] +
        #          tab + tab + 'when "000" =>  --BTEQZ\n' + stmt_dict['BTEQZ'] +
        #          tab + tab + 'when "110" =>  --MTSP\n' + stmt_dict['MTSP'] +
        #          tab + tab + 'when "001" =>  --BTNEZ\n' + stmt_dict['BTNEZ'] +
        #          tab + 'end case;\n' +
        #          'when "01101" =>  --LI\n' + stmt_dict['LI'] +
        #          'when "10010" =>  --LW_SP\n' + stmt_dict['LW_SP'] +
        #          'when "10011" =>  --LW\n' + stmt_dict['LW'] +
        #          'when "11010" =>  --SW_SP\n' + stmt_dict['SW_SP'] +
        #          'when "11011" =>  --SW\n' + stmt_dict['SW'] +
        #          'when "11100" =>\n' +
        #          tab + 'case Instruction(1 downto 0) is\n' +
        #          tab + tab + 'when "01" =>  --ADDU\n' + stmt_dict['ADDU'] +
        #          tab + tab + 'when "11" =>  --SUBU\n' + stmt_dict['SUBU'] +
        #          tab + 'end case;\n' +
        #          'when "11101" =>\n' +
        #          tab + 'case Instruction(4 downto 0) is\n' +
        #          tab + tab + 'when "01100" =>  --AND\n' + stmt_dict['AND'] +
        #          tab + tab + 'when "01010" =>  --CMP\n' + stmt_dict['CMP'] +
        #          tab + tab + 'when "00000" =>\n' +
        #          tab + tab + tab + 'case Instruction(7 DOWNTO 5) is\n' +
        #          tab + tab + tab + tab + 'when "000\n" =>  --JR' + stmt_dict['JR'] +
        #          tab + tab + tab + tab + 'when "010\n" =>  --MFPC' + stmt_dict['MFPC'] +
        #          tab + tab + tab + 'end case;\n' +
        #          tab + tab + 'when "01101" =>  --OR\n' + stmt_dict['OR'] +
        #          tab + tab + 'when "01011" =>  --NEG\n' + stmt_dict['NEG'] +
        #          tab + tab + 'when "00110" =>  --SRLV\n' + stmt_dict['SRLV'] +
        #          tab + 'end case;\n' +
        #          'when "11110" =>\n' +
        #          tab + 'case Instruction(0) is\n' +
        #          tab + tab + "when '0' =>  --MFIH\n" + stmt_dict['MFIH'] +
        #          tab + tab + "when '1' =>  --MTIH\n" + stmt_dict['MTIH'] +
        #          tab + 'end case;')