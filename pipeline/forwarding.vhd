library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.utils.ALL;

entity forwarding is
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
end forwarding;

architecture Behavioral of forwarding is

begin
    --ID use IDtoEXE
    forwarding_control_signal_out.alu_forwarding_IDtoEXE_src0 <= IDtoEXE_reg_wb_control_in.reg_wb_signal and (not(ID_reg0(0) xor IDtoEXE_reg_wb_control_in.reg_wb_regs(0)))
																	  and (not(ID_reg0(1) xor IDtoEXE_reg_wb_control_in.reg_wb_regs(1)))
																	  and (not(ID_reg0(2) xor IDtoEXE_reg_wb_control_in.reg_wb_regs(2)));
    forwarding_control_signal_out.alu_forwarding_IDtoEXE_src1 <= IDtoEXE_reg_wb_control_in.reg_wb_signal and (not(ID_reg1(0) xor IDtoEXE_reg_wb_control_in.reg_wb_regs(0)))
																	  and (not(ID_reg1(1) xor IDtoEXE_reg_wb_control_in.reg_wb_regs(1)))
																	  and (not(ID_reg1(2) xor IDtoEXE_reg_wb_control_in.reg_wb_regs(2)));
 
    forwarding_control_signal_out.alu_forwarding_t <= EXEtoMEM_reg_other_control_in.t_wb_signal & IDtoEXE_reg_other_control_in.t_wb_signal;
    forwarding_control_signal_out.alu_forwarding_sp <= EXEtoMEM_reg_other_control_in.sp_wb_signal & IDtoEXE_reg_other_control_in.sp_wb_signal;
    forwarding_control_signal_out.alu_forwarding_ih <= EXEtoMEM_reg_other_control_in.ih_wb_signal & IDtoEXE_reg_other_control_in.ih_wb_signal;
	 
	 --ID use EXEtoMEM
    forwarding_control_signal_out.alu_forwarding_EXEtoMEM_src0 <= EXEtoMEM_reg_wb_control_in.reg_wb_signal and (not(ID_reg0(0) xor EXEtoMEM_reg_wb_control_in.reg_wb_regs(0)))
																	  and (not(ID_reg0(1) xor EXEtoMEM_reg_wb_control_in.reg_wb_regs(1)))
																	  and (not(ID_reg0(2) xor EXEtoMEM_reg_wb_control_in.reg_wb_regs(2)));
    forwarding_control_signal_out.alu_forwarding_EXEtoMEM_src1 <= EXEtoMEM_reg_wb_control_in.reg_wb_signal and (not(ID_reg1(0) xor EXEtoMEM_reg_wb_control_in.reg_wb_regs(0)))
																	  and (not(ID_reg1(1) xor EXEtoMEM_reg_wb_control_in.reg_wb_regs(1)))
																	  and (not(ID_reg1(2) xor EXEtoMEM_reg_wb_control_in.reg_wb_regs(2)));
	   
	 forwarding_control_signal_out.alu_forwarding_EXEtoMEM_sel <= EXEtoMEM_reg_wb_control_in.reg_wb_data_chooser;
end Behavioral;
