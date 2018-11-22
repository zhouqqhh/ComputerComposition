--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: Computer_synthesis.vhd
-- /___/   /\     Timestamp: Thu Nov 22 10:36:28 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Computer -w -dir netgen/synthesis -ofmt vhdl -sim Computer.ngc Computer_synthesis.vhd 
-- Device	: xc3s1200e-4-fg320
-- Input file	: Computer.ngc
-- Output file	: /home/sunzhenbo/14.6/ISE_DS/ComputerComposition/pipeline/netgen/synthesis/Computer_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Computer
-- Xilinx	: /home/sunzhenbo/14.6/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Computer is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    led : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end Computer;

architecture Structure of Computer is
  signal Mrom_if_instruction12 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => Mrom_if_instruction12
    );
  led_15_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(15)
    );
  led_14_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(14)
    );
  led_13_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(13)
    );
  led_12_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(12)
    );
  led_11_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(11)
    );
  led_10_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(10)
    );
  led_9_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(9)
    );
  led_8_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(8)
    );
  led_7_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(7)
    );
  led_6_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(6)
    );
  led_5_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(5)
    );
  led_4_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(4)
    );
  led_3_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => Mrom_if_instruction12,
      O => led(0)
    );

end Structure;

