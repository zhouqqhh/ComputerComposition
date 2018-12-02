library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Keyboard is
port (
	--in
		clk, rst: in std_logic;
		ps2_scan_code_in: in std_logic_vector(7 downto 0);
		ps2_have_data: in std_logic;
	--out
		ascii_out: out std_logic_vector(15 downto 0);
		keyboard_update: out std_logic
	);
end Keyboard ;

architecture Keyboard_architecture of Keyboard is
type state_type is (waiting,make_to_continue,release_to_continue,done);
signal state:state_type;
signal ps2_scan_code, pre_ps2_scan_code: std_logic_vector(7 downto 0);
signal ascii: std_logic_vector(15 downto 0);
signal shift_pressing,left_shift_pressing,right_shift_pressing,caps_pressed,is_upper_class: std_logic;

begin
	ascii_out <= ascii;
	shift_pressing <= left_shift_pressing or right_shift_pressing;
	is_upper_class <= shift_pressing xor caps_pressed;

	process(rst,ps2_have_data,clk,ps2_scan_code_in, shift_pressing, pre_ps2_scan_code, ps2_scan_code)
	begin
		if (rst = '0') then
			left_shift_pressing <= '0';
			right_shift_pressing <= '0';
			caps_pressed <= '0';
			ascii <= x"0000";
			pre_ps2_scan_code <= x"00";
			ps2_scan_code <= x"00";
			state <= waiting;
		elsif rising_edge(clk) then
			case state is
				when waiting =>
					keyboard_update <= '0';
					if ps2_have_data = '1' then
						case ps2_scan_code_in is
							when x"e0" =>	--make
								state <= make_to_continue;
							when x"f0" =>	--release
								state <= release_to_continue;
							when others =>
								ps2_scan_code <= ps2_scan_code_in;
								state <= done;

						end case;
					end if;
				when make_to_continue =>
					keyboard_update <= '0';
					if ps2_have_data = '1' then
						case ps2_scan_code_in is
							when x"75" =>  --up
								ps2_scan_code <= ps2_scan_code_in;
								state <= done;
							when x"6b" =>  --left
								ps2_scan_code <= ps2_scan_code_in;
								state <= done;
							when x"72" =>  --down
								ps2_scan_code <= ps2_scan_code_in;
								state <= done;
							when x"74" =>  --right
								ps2_scan_code <= ps2_scan_code_in;
								state <= done;
							when x"f0" =>  --release
								state <= release_to_continue;
							when others =>
								state <= waiting;
						end case;
					end if;
				when release_to_continue =>
					keyboard_update <= '0';
					if ps2_have_data = '1' then
						if (ps2_scan_code_in = x"12") then
							left_shift_pressing <= '0';
						elsif (ps2_scan_code_in = x"59") then
							right_shift_pressing <= '0';
						end if;
						if (ps2_scan_code_in = pre_ps2_scan_code) then
							pre_ps2_scan_code <= (others => '0');
						end if;
						--ascii <= x"0000";
						--keyboard_update <= '1';
						state <= waiting;
					end if;
				when done =>
					if not (ps2_scan_code = pre_ps2_scan_code) then
						ascii <= x"0000";
						keyboard_update <= '0';
						state <= waiting;
					else
						pre_ps2_scan_code <= ps2_scan_code;
						keyboard_update <= '1';
						case ps2_scan_code is
							when x"1c" =>
								if (is_upper_class = '1') then
									ascii <= x"0041";
								else
									ascii <= x"0061";
								end if;
								state <= waiting;  --a
							when x"32" =>
								if (is_upper_class = '1') then
									ascii <= x"0042";
								else
									ascii <= x"0062";
								end if;
								state <= waiting;  --b
							when x"21" =>
								if (is_upper_class = '1') then
									ascii <= x"0043";
								else
									ascii <= x"0063";
								end if;
								state <= waiting;  --c
							when x"23" =>
								if (is_upper_class = '1') then
									ascii <= x"0044";
								else
									ascii <= x"0064";
								end if;
								state <= waiting;  --d
							when x"24" =>
								if (is_upper_class = '1') then
									ascii <= x"0045";
								else
									ascii <= x"0065";
								end if;
								state <= waiting;  --e
							when x"2b" =>
								if (is_upper_class = '1') then
									ascii <= x"0046";
								else
									ascii <= x"0066";
								end if;
								state <= waiting;  --f
							when x"34" =>
								if (is_upper_class = '1') then
									ascii <= x"0047";
								else
									ascii <= x"0067";
								end if;
								state <= waiting;  --g
							when x"33" =>
								if (is_upper_class = '1') then
									ascii <= x"0048";
								else
									ascii <= x"0068";
								end if;
								state <= waiting;  --h
							when x"43" =>
								if (is_upper_class = '1') then
									ascii <= x"0049";
								else
									ascii <= x"0069";
								end if;
								state <= waiting;  --i
							when x"3b" =>
								if (is_upper_class = '1') then
									ascii <= x"004a";
								else
									ascii <= x"006a";
								end if;
								state <= waiting;  --j
							when x"42" =>
								if (is_upper_class = '1') then
									ascii <= x"004b";
								else
									ascii <= x"006b";
								end if;
								state <= waiting;  --k
							when x"4b" =>
								if (is_upper_class = '1') then
									ascii <= x"004c";
								else
									ascii <= x"006c";
								end if;
								state <= waiting;  --l
							when x"3a" =>
								if (is_upper_class = '1') then
									ascii <= x"004d";
								else
									ascii <= x"006d";
								end if;
								state <= waiting;  --m
							when x"31" =>
								if (is_upper_class = '1') then
									ascii <= x"004e";
								else
									ascii <= x"006e";
								end if;
								state <= waiting;  --n
							when x"44" =>
								if (is_upper_class = '1') then
									ascii <= x"004f";
								else
									ascii <= x"006f";
								end if;
								state <= waiting;  --o
							when x"4d" =>
								if (is_upper_class = '1') then
									ascii <= x"0050";
								else
									ascii <= x"0070";
								end if;
								state <= waiting;  --p
							when x"15" =>
								if (is_upper_class = '1') then
									ascii <= x"0051";
								else
									ascii <= x"0071";
								end if;
								state <= waiting;  --q
							when x"2d" =>
								if (is_upper_class = '1') then
									ascii <= x"0052";
								else
									ascii <= x"0072";
								end if;
								state <= waiting;  --r
							when x"1b" =>
								if (is_upper_class = '1') then
									ascii <= x"0053";
								else
									ascii <= x"0073";
								end if;
								state <= waiting;  --s
							when x"2c" =>
								if (is_upper_class = '1') then
									ascii <= x"0054";
								else
									ascii <= x"0074";
								end if;
								state <= waiting;  --t
							when x"3c" =>
								if (is_upper_class = '1') then
									ascii <= x"0055";
								else
									ascii <= x"0075";
								end if;
								state <= waiting;  --u
							when x"2a" =>
								if (is_upper_class = '1') then
									ascii <= x"0056";
								else
									ascii <= x"0076";
								end if;
								state <= waiting;  --v
							when x"1d" =>
								if (is_upper_class = '1') then
									ascii <= x"0057";
								else
									ascii <= x"0077";
								end if;
								state <= waiting;  --w
							when x"22" =>
								if (is_upper_class = '1') then
									ascii <= x"0058";
								else
									ascii <= x"0078";
								end if;
								state <= waiting;  --x
							when x"35" =>
								if (is_upper_class = '1') then
									ascii <= x"0059";
								else
									ascii <= x"0079";
								end if;
								state <= waiting;  --y
							when x"1a" =>
								if (is_upper_class = '1') then
									ascii <= x"005a";
								else
									ascii <= x"007a";
								end if;
								state <= waiting;  --z
							when x"45" =>
								if (shift_pressing = '1') then
									ascii <= x"0029";
								else
									ascii <= x"0030";
								end if;
								state <= waiting;  --0
							when x"16" =>
								if (shift_pressing = '1') then
									ascii <= x"0021";
								else
									ascii <= x"0031";
								end if;
								state <= waiting;  --1
							when x"1e" =>
								if (shift_pressing = '1') then
									ascii <= x"0040";
								else
									ascii <= x"0032";
								end if;
								state <= waiting;  --2
							when x"26" =>
								if (shift_pressing = '1') then
									ascii <= x"0023";
								else
									ascii <= x"0033";
								end if;
								state <= waiting;  --3
							when x"25" =>
								if (shift_pressing = '1') then
									ascii <= x"0024";
								else
									ascii <= x"0034";
								end if;
								state <= waiting;  --4
							when x"2e" =>
								if (shift_pressing = '1') then
									ascii <= x"0025";
								else
									ascii <= x"0035";
								end if;
								state <= waiting;  --5
							when x"36" =>
								if (shift_pressing = '1') then
									ascii <= x"005e";
								else
									ascii <= x"0036";
								end if;
								state <= waiting;  --6
							when x"3d" =>
								if (shift_pressing = '1') then
									ascii <= x"0026";
								else
									ascii <= x"0037";
								end if;
								state <= waiting;  --7
							when x"3e" =>
								if (shift_pressing = '1') then
									ascii <= x"002a";
								else
									ascii <= x"0038";
								end if;
								state <= waiting;  --8
							when x"46" =>
								if (shift_pressing = '1') then
									ascii <= x"0028";
								else
									ascii <= x"0039";
								end if;
								state <= waiting;  --9
							when x"0e" =>
								if (shift_pressing = '1') then
									ascii <= x"007e";
								else
									ascii <= x"0060";
								end if;
								state <= waiting;  --`
							when x"4e" =>
								if (shift_pressing = '1') then
									ascii <= x"005f";
								else
									ascii <= x"002d";
								end if;
								state <= waiting;  ---
							when x"55" =>
								if (shift_pressing = '1') then
									ascii <= x"002b";
								else
									ascii <= x"003d";
								end if;
								state <= waiting;  --=
							when x"54" =>
								if (shift_pressing = '1') then
									ascii <= x"007b";
								else
									ascii <= x"005b";
								end if;
								state <= waiting;  --[
							when x"5b" =>
								if (shift_pressing = '1') then
									ascii <= x"007d";
								else
									ascii <= x"005d";
								end if;
								state <= waiting;  --]
							when x"5d" =>
								if (shift_pressing = '1') then
									ascii <= x"007c";
								else
									ascii <= x"005c";
								end if;
								state <= waiting;  --\
							when x"4c" =>
								if (shift_pressing = '1') then
									ascii <= x"003a";
								else
									ascii <= x"003b";
								end if;
								state <= waiting;  --;
							when x"52" =>
								if (shift_pressing = '1') then
									ascii <= x"0022";
								else
									ascii <= x"0027";
								end if;
								state <= waiting;  --'
							when x"41" =>
								if (shift_pressing = '1') then
									ascii <= x"003c";
								else
									ascii <= x"002c";
								end if;
								state <= waiting;  --,
							when x"49" =>
								if (shift_pressing = '1') then
									ascii <= x"003e";
								else
									ascii <= x"002e";
								end if;
								state <= waiting;  --.
							when x"4a" =>
								if (shift_pressing = '1') then
									ascii <= x"003f";
								else
									ascii <= x"002f";
								end if;
								state <= waiting;  --/
							when x"29" =>
								ascii <= x"0020";
								state <= waiting;  --space
							when x"66" =>
								ascii <= x"0008";
								state <= waiting;  --backspace
							when x"5a" =>
								ascii <= x"000a";
								state <= waiting;  --enter
							when x"12" =>
								left_shift_pressing <= '1';
								state <= waiting;  --left shift
								keyboard_update <= '0';
							when x"59" =>
								right_shift_pressing <= '1';
								state <= waiting;  --right shift
								keyboard_update <= '0';
							when x"58" =>
								caps_pressed <= not(caps_pressed);
								state <= waiting;  --caps lock
							when x"11" =>
								ascii <= x"000f";
								state <= waiting;  --alt
							when x"76" =>
								ascii <= x"001b";
								state <= waiting;  --esc
							when x"0d" =>
								ascii <= x"0009";
								state <= waiting;  --tab
							when x"75" =>
								ascii <= x"0011";
								state <= waiting;  --up
							when x"6b" =>
								ascii <= x"0012";
								state <= waiting;  --left
							when x"72" =>
								ascii <= x"0013";
								state <= waiting;  --down
							when x"74" =>
								ascii <= x"0014";
								state <= waiting;  --right
							when others =>
								ascii <= x"0000";
								state <= waiting;
						end case;
					end if;
				when others =>
					state <= waiting;
			end case;
		end if;
	end process;

end Keyboard_architecture;
