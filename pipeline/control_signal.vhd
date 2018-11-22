----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:38 11/19/2018 
-- Design Name: 
-- Module Name:    control_signal - Behavioral 
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

entity control_signal is
    Port ( clk	: in std_logic;
			  rst	: in std_logic;
			  Instruction : in  STD_LOGIC_VECTOR (15 downto 0);
           AluSrc1 : out  STD_LOGIC_VECTOR (7 downto 0);
           AluOp : out  STD_LOGIC_VECTOR (2 downto 0);
           RegDest : out  STD_LOGIC_VECTOR (2 downto 0);
           AluSrc0 : out  STD_LOGIC_VECTOR (3 downto 0);
           WBSP : out  STD_LOGIC;
           PCSrc : out  STD_LOGIC_VECTOR (1 downto 0);
           WBT : out  STD_LOGIC;
           imm_ext : out  STD_LOGIC;
           WBSrc : out  STD_LOGIC_VECTOR (1 downto 0);
           WB : out  STD_LOGIC;
           memRead : out  STD_LOGIC;
           WBIH : out  STD_LOGIC;
           memWrite : out  STD_LOGIC;
           memData : out  STD_LOGIC_VECTOR (2 downto 0);
           comT : out  STD_LOGIC;
           cmpbSrc : out  STD_LOGIC_VECTOR (2 downto 0);
           boger : out  STD_LOGIC;
           honger : out  STD_LOGIC);
end control_signal;

architecture Behavioral of control_signal is
begin

	process(clk, rst)
	begin
		if rst = '0' then
           AluSrc1 <= "ZZZZZZZZ";
           AluOp <= "ZZZ";
           RegDest <= "ZZZ";
           AluSrc0 <= "ZZZZ";
           WBSP <= 'Z';
           PCSrc <= "ZZ";
           WBT <= 'Z';
           imm_ext <= 'Z';
           WBSrc <= "ZZ";
           WB <= 'Z';
           memRead <= 'Z';
           WBIH <= 'Z';
           memWrite <= 'Z';
           memData <= "ZZZ";
           comT <= 'Z';
           cmpbSrc <= "ZZZ";
           boger <= 'Z';
           honger <= 'Z';
		elsif rising_edge(clk) then
			case Instruction(15 downto 11) is 
				when "01001" =>  --ADDIU
					AluSrc1 <= Instruction(7 downto 0);
					AluOp <= "001";
					RegDest <= Instruction(10 downto 8);
					AluSrc0 <= "0" & Instruction(10 downto 8);
					WBSP <= '0';
					PCsrc <= "00";
					WBT <= '0';
					imm_ext <= '1';
					WBSrc <= "00";
					WB <= '1';
					memRead <= '0';
					WBIH <= '0';
					memWrite <= '0';
					memData <= "ZZZ";
					comT <= 'Z';
					cmpbSrc <= "ZZZ";
					boger <= 'Z';
					honger <= 'Z';
				when "01000" =>  --ADDIU3
					AluSrc1 <= "0000" & Instruction(3 downto 0);
					AluOp <= "001";
					RegDest <= Instruction(7 downto 5);
					AluSrc0 <= "0" & Instruction(10 downto 8);
					WBSP <= '0';
					PCsrc <= "00";
					WBT <= '0';
					imm_ext <= '1';
					WBSrc <= "00";
					WB <= '1';
					memRead <= '0';
					WBIH <= '0';
					memWrite <= '0';
					memData <= "ZZZ";
					comT <= 'Z';
					cmpbSrc <= "ZZZ";
					boger <= 'Z';
					honger <= 'Z';
				when "01100" =>
					case Instruction(10 downto 8) is 
						when "011" =>   --ADDSP
							AluSrc1 <= Instruction(7 downto 0);
							AluOp <= "001";
							RegDest <= "ZZZ";
							AluSrc0 <= "1000";
							WBSP <= '1';
							PCsrc <= "00";
							WBT <= '0';
							imm_ext <= '1';
							WBSrc <= "00";
							WB <= '0';
							memRead <= '0';
							WBIH <= '0';
							memWrite <= '0';
							memData <= "ZZZ";
							comT <= 'Z';
							cmpbSrc <= "ZZZ";
							boger <= 'Z';
							honger <= 'Z';
						when "000" =>  --BTEQZ
							AluSrc1 <= "ZZZZZZZZ";
							AluOp <= "ZZZ";
							RegDest <= "ZZZ";
							AluSrc0 <= "ZZZZ";
							WBSP <= '0';
							PCsrc <= "01";
							WBT <= '0';
							imm_ext <= '1';
							WBSrc <= "01";
							WB <= '0';
							memRead <= '0';
							WBIH <= '0';
							memWrite <= '0';
							memData <= "ZZZ";
							comT <= 'Z';
							cmpbSrc <= "011";
							boger <= '0';
							honger <= '0';
						when "110" =>  --MTSP
							AluSrc1 <= "ZZZZZZZZ";
							AluOp <= "100";
							RegDest <= "ZZZ";
							AluSrc0 <= "0" & Instruction(7 downto 5);
							WBSP <= '1';
							PCsrc <= "00";
							WBT <= '0';
							imm_ext <= 'Z';
							WBSrc <= "00";
							WB <= '0';
							memRead <= '0';
							WBIH <= '0';
							memWrite <= '0';
							memData <= "ZZZ";
							comT <= 'Z';
							cmpbSrc <= "ZZZ";
							boger <= 'Z';
							honger <= 'Z';
						when "001" =>  --BTNEZ
							AluSrc1 <= "ZZZZZZZZ";
							AluOp <= "ZZZ";
							RegDest <= "ZZZ";
							AluSrc0 <= "ZZZZ";
							WBSP <= '0';
							PCsrc <= "01";
							WBT <= '0';
							imm_ext <= '1';
							WBSrc <= "01";
							WB <= '0';
							memRead <= '0';
							WBIH <= '0';
							memWrite <= '0';
							memData <= "ZZZ";
							comT <= 'Z';
							cmpbSrc <= "100";
							boger <= '0';
							honger <= '0';
					end case;
				when "11100" =>
					case Instruction(1 downto 0) is
						when "01" =>  --ADDU
							AluSrc1 <= "00000" & Instruction(7 downto 5);
							AluOp <= "001";
							RegDest <= Instruction(4 downto 2);
							AluSrc0 <= "0" & Instruction(10 downto 8);
							WBSP <= '0';
							PCsrc <= "00";
							WBT <= '0';
							imm_ext <= 'Z';
							WBSrc <= "00";
							WB <= '1';
							memRead <= '0';
							WBIH <= '0';
							memWrite <= '0';
							memData <= "ZZZ";
							comT <= 'Z';
							cmpbSrc <= "ZZZ";
							boger <= 'Z';
							honger <= 'Z';
						when "11" =>  --SUBU
							AluSrc1 <= "00000" & Instruction(7 downto 5);
							AluOp <= "011";
							RegDest <= Instruction(4 downto 2);
							AluSrc0 <= "0" & Instruction(10 downto 8);
							WBSP <= '0';
							PCsrc <= "00";
							WBT <= '0';
							imm_ext <= 'Z';
							WBSrc <= "00";
							WB <= '1';
							memRead <= '0';
							WBIH <= '0';
							memWrite <= '0';
							memData <= "ZZZ";
							comT <= 'Z';
							cmpbSrc <= "ZZZ";
							boger <= 'Z';
							honger <= 'Z';
					end case;
				when "11101" =>
					case Instruction(4 downto 0) is 
						when "01100" =>  --AND
							AluSrc1 <= "00000" & Instruction(7 downto 5);
							AluOp <= "010";
							RegDest <= Instruction(10 downto 8);
							AluSrc0 <= "0" & Instruction(10 downto 8);
							WBSP <= '0';
							PCsrc <= "00";
							WBT <= '0';
							imm_ext <= 'Z';
							WBSrc <= "00";
							WB <= '1';
							memRead <= '0';
							WBIH <= '0';
							memWrite <= '0';
							memData <= "ZZZ";
							comT <= 'Z';
							cmpbSrc <= "ZZZ";
							boger <= 'Z';
							honger <= 'Z';
						when "01010" =>  --CMP
							AluSrc1 <= "00000" & Instruction(7 downto 5);
							AluOp <= "011";
							RegDest <= "ZZZ";
							AluSrc0 <= "0" & Instruction(10 downto 8);
							WBSP <= '0';
							PCsrc <= "00";
							WBT <= '1';
							imm_ext <= 'Z';
							WBSrc <= "00";
							WB <= '0';
							memRead <= '0';
							WBIH <= '0';
							memWrite <= '0';
							memData <= "ZZZ";
							comT <= 'Z';
							cmpbSrc <= "ZZZ";
							boger <= 'Z';
							honger <= 'Z';
						when "00000" =>  
							case Instruction(7 DOWNTO 5) is
								when "000" =>  --JR
									AluSrc1 <= "ZZZZZZZZ";
									AluOp <= "ZZZ";
									RegDest <= "ZZZ";
									AluSrc0 <= "ZZZZ";
									WBSP <= '0';
									PCsrc <= "10";
									WBT <= '0';
									imm_ext <= 'Z';
									WBSrc <= "01";  --bugs ?
									WB <= '0';
									memRead <= '0';
									WBIH <= '0';
									memWrite <= '0';
									memData <= "ZZZ";
									comT <= 'Z';
									cmpbSrc <= "000";
									boger <= '0';
									honger <= '1';
								when "010" =>  --MFPC
									AluSrc1 <= "ZZZZZZZZ";
									AluOp <= "100";
									RegDest <= Instruction(10 downto 8);
									AluSrc0 <= "ZZZZ";
									WBSP <= '0';
									PCsrc <= "00";
									WBT <= '0';
									imm_ext <= 'Z';
									WBSrc <= "00";
									WB <= '1';
									memRead <= '0';
									WBIH <= '0';
									memWrite <= '0';
									memData <= "ZZZ";
									comT <= 'Z';
									cmpbSrc <= "ZZZ";
									boger <= 'Z';
									honger <= 'Z';
							end case;
						when "01101" =>  --OR
						when "01011" =>  --NEG
						when "00110" =>  --SRLV
					end case;
			end case;
		end if;
	end process;

end Behavioral;

