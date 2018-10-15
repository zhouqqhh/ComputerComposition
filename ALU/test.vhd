--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:30:05 10/15/2018
-- Design Name:   
-- Module Name:   /home/sunzhenbo/14.6/ISE_DS/ALU/test.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         inputSW : IN  std_logic_vector(15 downto 0);
         fout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal inputSW : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal fout : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          clk => clk,
          rst => rst,
          inputSW => inputSW,
          fout => fout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		inputSW <= "0000000000000001";
		wait for 50 ns;
		inputSW <= "0000000000000111";
		wait for 50 ns;
		clk <= '1';
		wait for 100 ns;
		
		clk <= '0';
		inputSW <= "0000000000000001";
		wait for 100 ns;
		clk <= '1';
		wait for 50 ns;
		inputSW <= "0000000000000000";
		wait for 50ns;
		
		clk <= '0';	
		wait for 100 ns;
		clk <= '1';
		wait for 100 ns;
		
		clk <= '0';
		wait for 100 ns;
		clk <= '1';
		wait for 100 ns;
		
		clk <= '0';
		wait for 100 ns;
		clk <= '1';
		wait for 100 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '0';
      wait for 50 ns;	
		
		rst <= '1';
      wait;
   end process;

END;
