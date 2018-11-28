library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.utils.all;

entity ID is
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
end ID;

architecture Behavioral of ID is
	component mux1_2bit is
		port (
			input0: in std_logic;
			input1: in std_logic;
			input2: in std_logic;
			input3: in std_logic;
			sel: in std_logic_vector(1 downto 0);
			output: out std_logic
		);
	end component mux1_2bit;
	
	component mux_2bit is
		port (
			input0: in std_logic_vector(15 downto 0);
			input1: in std_logic_vector(15 downto 0);
			input2: in std_logic_vector(15 downto 0);
			input3: in std_logic_vector(15 downto 0);
			sel: in std_logic_vector(1 downto 0);
			output: out std_logic_vector(15 downto 0)
		);
	end component mux_2bit;
begin
	t_chooser: mux1_2bit
		port map(
			input0=>t_data_in,
			input1=>t_exe_in,
			input2=>t_mem_in,
			input3=>t_data_in,
			sel=>forwarding_control_in.alu_forwarding_t,
			
			output=>t_data_out
		);

	sp_chooser: mux_2bit
		port map(
			input0=>sp_data_in,
			input1=>alu_result_exe_in,
			input2=>alu_result_mem_in,
			input3=>sp_data_in,
			sel=>forwarding_control_in.alu_forwarding_sp,
			
			output=>sp_data_out
		);

	ih_chooser: mux_2bit
		port map(
			input0=>ih_data_in,
			input1=>alu_result_exe_in,
			input2=>alu_result_mem_in,
			input3=>ih_data_in,
			sel=>forwarding_control_in.alu_forwarding_ih,
			
			output=>ih_data_out
		);

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
			when '0' => 
			case forwarding_control_in.alu_forwarding_EXEtoMEM_src1 is
				when '0' => reg1_data_out <= reg1_data_in;
				when '1' => 
					case forwarding_control_in.alu_forwarding_EXEtoMEM_sel is
						when '0' => reg1_data_out <= alu_result_MEM_in;
						when '1' => reg1_data_out <= mem_data_in;
						when others => reg1_data_out <= alu_result_MEM_in;
					end case;
				when others => reg1_data_out <= reg1_data_in;
			end case;
			when '1' => reg1_data_out <= alu_result_EXE_in;
			when others => reg1_data_out <= reg1_data_in;
		end case;
	end process;
end Behavioral;
