library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use utils.ALL;

entity MMU is
	port (
    --in
        clk: in std_logic;
        rst: in std_logic;

        --pc
        pc_in: in std_logic_vector(15 downto 0);

        --memory
        mem_control_in: in mem_control;
        mem_write_data_in: in std_logic_vector(15 downto 0);

    --out
        --pc
        instruction_out: out std_logic_vector(15 downto 0);

		--flash
		FlashByte : out std_logic;
		FlashVpen : out std_logic;
		FlashCE : out std_logic;
		FlashOE : out std_logic;
		FlashWE : out std_logic;
		FlashRP : out std_logic;
        FlashAddr : out std_logic_vector(22 downto 0);
        FlashData : inout std_logic_vector(15 downto 0);

        --memory
        mem_read_data_out: out std_logic_vector(15 downto 0)
	);
end MMU;

architecture Behavioral of MMU is
    component Flash
        port(
    	--in
    		clk : in std_logic;
    		rst : in std_logic;

    		--address in
    		addr_in : in std_logic_vector(22 downto 0);

    		--control
    		flash_read_signal : in std_logic;

    	--out
    		--data output
    		data_out : out std_logic_vector(15 downto 0);

    		--flash control
    		FlashByte : out std_logic;
    		FlashVpen : out std_logic;
    		FlashCE : out std_logic;
    		FlashOE : out std_logic;
    		FlashWE : out std_logic;
    		FlashRP : out std_logic;

    		--address to flash
    		FlashAddr : out std_logic_vector(22 downto 0);

    	--inout
    		FlashData : inout std_logic_vector(15 downto 0)
        );
    end component;

    --flash
    type flash_state is ();
    MMU_flash_addr: std_logic_vector(22 downto 0);
    MMU_flash_read: std_logic;
    MMU_flash_data: std_logic_vector(15 downto 0);
begin
    flash_entity: Flash
        port map (
    	--in
    		clk => clk,
    		rst => rst,

    		--address in
    		addr_in => MMU_flash_addr,

    		--control
    		flash_read_signal => MMU_flash_read,

    	--out
    		--data output
    		data_out => MMU_flash_data,

    		--flash control
    		FlashByte => FlashByte,
    		FlashVpen => FlashVpen,
    		FlashCE => FlashCE,
    		FlashOE => FlashOE,
    		FlashWE => FlashWE,
    		FlashRP => FlashRP,

    		--address to flash
    		FlashAddr => FlashAddr,

    	--inout
    		FlashData => FlashData
        );

    --flash state
    process(clk, rst)
    begin
        if rst = '0' then
        elsif rising_edge(clk) then
            case state is
            end case;
        end if;
    end process;
end Behavioral;
