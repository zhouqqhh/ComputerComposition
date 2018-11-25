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
default_dict = {"pc_src":"000",
                "alu_op":"001",
                "alu_src0":"000",
			    "alu_src1":"00",
                "alu_src1_immi_chooser":"00",
                "alu_immi_extend":"0",
                "reg_wb_signal":"0",
                "reg_wb_chooser":"00",
                "reg_wb_data_chooser":"0",
                "sp_wb_signal":"0",
                "t_wb_signal":"0",
                "ih_wb_signal":"0",
                "mem_wb_signal":"0",
                "mem_wb_data_chooser":"Z",
                "mem_read_signal":"0"}
with open(openname) as rf:
    with open(writename, 'w') as wf:
        reader2 = csv.reader(rf)
        tmp = list(reader2)[3:]
        signame = tmp[0]
        sigList = tmp[1:]
        for row in tmp:
            print(row)
        for row in sigList:
            wf.write(init_tab + "--" + row[1] + "\n")
            wf.write(init_tab + 'when "' + row[3] + '" =>\n')
            if len(row[0]) == 0:
                exit(0)
            for i in range(4, len(row)):
                if (signame[i] not in lookup_dict or row[i] not in lookup_dict[signame[i]])\
                        and row[i].isdigit():
                    if len(row[i]) == 1:
                        if int(row[i]) > 1:
                            row[i] = bin(row[i])
                        wf.write(tab + signame[i] + " <= '" + row[i] + "';\n")
                    else:
                        wf.write(tab + signame[i] + ' <= "' + row[i] + '";\n')
                elif signame[i] in lookup_dict and row[i] in lookup_dict[signame[i]]:
                    val = lookup_dict[signame[i]][row[i]]
                    if len(val) > 1:
                        wf.write(tab + signame[i] + ' <= "' + val + '";\n')
                    else:
                        wf.write(tab + signame[i] + " <= '" + val + "';\n")
                else:
                    if signame[i] in default_dict:
                        val = default_dict[signame[i]]
                        if len(val) > 1:
                            wf.write(tab + signame[i] + ' <= "' + val + '";\n')
                        else:
                            wf.write(tab + signame[i] + " <= '" + val + "';\n")