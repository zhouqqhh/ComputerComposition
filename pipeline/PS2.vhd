library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PS2 is
	port (
    --in
        clk: in std_logic;
        rst: in std_logic;

        ps2clk_in: in std_logic;
        ps2data_in: in std_logic;

    --out
        scan_code_out: out std_logic_vector(7 downto 0);
        have_data: out std_logic
	);
end PS2;

architecture Behavioral of PS2 is
    type state_t is (init, waiting, data0, data1, data2, data3, data4, data5, data6, data7, check, finished, outputing);
    signal state: state_t;
    signal scan_code: std_logic_vector(7 downto 0);
    signal odd, scan_code_update, ps2data: std_logic;
    signal clk1, clk2, reshaped_clk: std_logic;
begin
    odd <= scan_code(0) xor scan_code(1) xor scan_code(2) xor scan_code(3)
        xor scan_code(4) xor scan_code(5) xor scan_code(6) xor scan_code(7);
    scan_code_out <= scan_code when scan_code_update = '1';

    --reshape clk according to textbook
    clk1 <= ps2clk_in when rising_edge(clk);
    clk2 <= clk1 when rising_edge(clk);
    reshaped_clk <= (not clk1) and clk2;
    ps2data <= ps2data_in when rising_edge(clk);

    process(rst, clk)
    begin
        if rst = '0' then
            state <= init;
			scan_code <= (others => '0');
			scan_code_out <= (others => '0');
            scan_code_update <= '0';
        elsif rising_edge(clk) then
            scan_code_update <= '0';
            have_data <= '0';
            case state is
                when init =>
                    state <= waiting;
                when waiting =>
                    if reshaped_clk = '1' then
                        if ps2data = '0' then
                            state <= data0;
                        else
                            state <= init;
                        end if;
                    end if;
                when data0 =>
                    if reshaped_clk = '1' then
                        scan_code(0) <= ps2data_in;
                        state <= data1;
                    end if;
                when data1 =>
                    if reshaped_clk = '1' then
                        scan_code(1) <= ps2data_in;
                        state <= data2;
                    end if;
                when data2 =>
                    if reshaped_clk = '1' then
                        scan_code(2) <= ps2data_in;
                        state <= data3;
                    end if;
                when data3 =>
                    if reshaped_clk = '1' then
                        scan_code(3) <= ps2data_in;
                        state <= data4;
                    end if;
                when data4 =>
                    if reshaped_clk = '1' then
                        scan_code(4) <= ps2data_in;
                        state <= data5;
                    end if;
                when data5 =>
                    if reshaped_clk = '1' then
                        scan_code(5) <= ps2data_in;
                        state <= data6;
                    end if;
                when data6 =>
                    if reshaped_clk = '1' then
                        scan_code(6) <= ps2data_in;
                        state <= data7;
                    end if;
                when data7 =>
                    if reshaped_clk = '1' then
                        scan_code(7) <= ps2data_in;
                        state <= finished;
                    end if;
                when check =>
                    if ps2data_in = odd then
                        state <= init;
                    else
                        state <= finished;
                    end if;
                when finished =>
					if reshaped_clk = '1' then
						if ps2data_in = '1' then
							state <= outputing;
						else
							state <= init;
						end if;
					end if;
                when outputing =>
                    state <= init;
                    scan_code_update <= '1';
                    have_data <= '1';
                when others =>
                    state <= init;
            end case;
        end if;
    end process;
end Behavioral;
