library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bypass is
	port (
    --in
        --ID
        ID_reg0: in std_logic_vector(2 downto 0);
        ID_reg1: in std_logic_vector(2 downto 0);
        --ID to EXE
        IDtoEXE_reg_wb_signal: in std_logic;
		IDtoEXE_reg_wb_place: in std_logic_vector(2 downto 0);
        --EXE to MEM
        EXEtoMEM_reg_wb_signal: in std_logic;
        EXEtoMEM_reg_wb_place: in std_logic_vector(2 downto 0);

    --out
        alu_bypass_IDtoEXE_src0: out std_logic;  --0:normal, 1: use bypass
        alu_bypass_EXEtoMEM_src0: out std_logic;
        alu_bypass_IDtoEXE_src1: out std_logic;
        alu_bypass_EXEtoMEM_src1: out std_logic;
	);
end bypass;

architecture Behavioral of bypass is

begin
    --ID use IDtoEXE
    alu_bypass_IDtoEXE_src0 <= (IDtoEXE_reg_wb_signal and (ID_reg0 = IDtoEXE_reg_wb_place));
    alu_bypass_IDtoEXE_src1 <= (IDtoEXE_reg_wb_signal and (ID_reg1 = IDtoEXE_reg_wb_place));

    --ID use EXEtoMEM
    alu_bypass_EXEtoMEM_src0 <= (not alu_bypass_IDtoEXE_src0) and EXEtoMEM_reg_wb_signal and (ID_reg0 = EXEtoMEM_reg_wb_place);
    alu_bypass_EXEtoMEM_src1 <= (not alu_bypass_IDtoEXE_src1) and EXEtoMEM_reg_wb_signal and (ID_reg1 = EXEtoMEM_reg_wb_place);

end Behavioral;
