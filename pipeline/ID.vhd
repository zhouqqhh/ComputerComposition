library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use utils.ALL;

entity ID is
	port (
		--in
		reg0_data_in: in std_logic_vector(15 downto 0);
		reg1_data_in: in std_logic_vector(15 downto 0);
		alu_result_EXE_in: in std_logic_vector(15 downto 0);
		alu_result_MEM_in: in std_logic_vector(15 downto 0);
		mem_data_in: in std_logic_vector(15 downto 0);
		forwarding_control_in: in forwarding_control;

		--out
		reg0_data_out: out std_logic_vector(15 downto 0);
		reg1_data_out: out std_logic_vector(15 downto 0)
	);
end ID;

architecture Behavioral of ID is

begin
	process(reg0_data_in, reg1_data_in, alu_result_EXE_in, alu_result_MEM_in, forwarding_control_in)
	begin
		case forwarding_control_in.alu_forwarding_IDtoEXE_src0 is
			when '0' =>
			case forwarding_control_in.alu_forwarding_EXEtoMEM_src0 is
				when '0' => reg0_data_out <= reg0_data_in;
				when '1' => 
					case forwarding_control_in.alu_forwarding_EXEtoMEM_sel is
						when '0' => reg0_data_out <= alu_result_MEM_in;
						when '1' => reg0_data_out <= mem_data_in;
						when others => reg0_data_out <= alu_result_MEM_in;
					end case;
				when others => reg0_data_out <= reg0_data_in;
			end case;
			when '1' => reg0_data_out <= alu_result_EXE_in;
			when others => reg0_data_out <= reg0_data_in;
		end case;
		case forwarding_control_in.alu_forwarding_IDtoEXE_src1 is
			when '0' => reg0_data_out <= reg1_data_in;
			case forwarding_control_in.alu_forwarding_EXEtoMEM_src1 is
				when '0' => reg0_data_out <= reg1_data_in;
				when '1' => 
					case forwarding_control_in.alu_forwarding_EXEtoMEM_sel is
						when '0' => reg0_data_out <= alu_result_MEM_in;
						when '1' => reg0_data_out <= mem_data_in;
						when others => reg0_data_out <= alu_result_MEM_in;
					end case;
				when others => reg0_data_out <= reg1_data_in;
			end case;
			when '1' => reg0_data_out <= alu_result_EXE_in;
			when others => reg0_data_out <= reg1_data_in;
		end case;
	end process;
end Behavioral;
