--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: CPU_synthesis.vhd
-- /___/   /\     Timestamp: Thu Nov 29 20:33:09 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CPU -w -dir netgen/synthesis -ofmt vhdl -sim CPU.ngc CPU_synthesis.vhd 
-- Device	: xc3s1200e-4-fg320
-- Input file	: CPU.ngc
-- Output file	: /home/sunzhenbo/14.6/ISE_DS/ComputerComposition/pipeline/netgen/synthesis/CPU_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CPU
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

entity CPU is
  port (
    clk : in STD_LOGIC := 'X'; 
    ram1_we : out STD_LOGIC; 
    serial_tbre : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    serial_tsre : in STD_LOGIC := 'X'; 
    serial_data_ready : in STD_LOGIC := 'X'; 
    ram2_en : out STD_LOGIC; 
    FlashCE : out STD_LOGIC; 
    FlashVpen : out STD_LOGIC; 
    ram2_oe : out STD_LOGIC; 
    ram1_en : out STD_LOGIC; 
    FlashOE : out STD_LOGIC; 
    ram2_we : out STD_LOGIC; 
    FlashRP : out STD_LOGIC; 
    rdn : out STD_LOGIC; 
    wrn : out STD_LOGIC; 
    FlashWE : out STD_LOGIC; 
    ram1_oe : out STD_LOGIC; 
    FlashByte : out STD_LOGIC; 
    FlashData : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    ram1_data : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    ram2_data : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    FlashAddr : out STD_LOGIC_VECTOR ( 22 downto 0 ); 
    ram1_addr : out STD_LOGIC_VECTOR ( 17 downto 0 ); 
    ram2_addr : out STD_LOGIC_VECTOR ( 17 downto 0 ); 
    led : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end CPU;

architecture Structure of CPU is
  signal N0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal clk_IBUF_72 : STD_LOGIC; 
  signal clk_IBUF1 : STD_LOGIC; 
  signal computer_entity_ex_alu_control_alu_src0_2_76 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_FlashOE_115 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_FlashOE_mux0000_116 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_FlashWE_117 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_FlashWE_mux0000 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_FlashWE_mux000043_119 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_Mtridata_FlashData_not0001 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_data_out_and0000 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_old_ctl_139 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_0_bdd0 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_rst_inv : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_150 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_In : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_In : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd3_154 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_155 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_In : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_In : STD_LOGIC; 
  signal computer_entity_mmu_entity_Flash_entity_state_cmp_ne0000 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_10_rt_161 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_11_rt_163 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_12_rt_165 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_13_rt_167 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_14_rt_169 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_15_rt_171 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_16_rt_173 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_17_rt_175 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_18_rt_177 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_19_rt_179 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_20_rt_182 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_21_rt_184 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_2_rt_186 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_3_rt_188 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_4_rt_190 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_5_rt_192 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_6_rt_194 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_7_rt_196 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_8_rt_198 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_9_rt_200 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_22_rt_202 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_10_rt_205 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_11_rt_207 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_12_rt_209 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_13_rt_211 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_14_rt_213 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_1_rt_215 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_2_rt_217 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_3_rt_219 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_4_rt_221 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_5_rt_223 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_6_rt_225 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_7_rt_227 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_8_rt_229 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_9_rt_231 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_15_rt_233 : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_FSM_FFd1_382 : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_FSM_FFd1_In : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_FSM_FFd2_384 : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_FSM_FFd3_385 : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_FSM_FFd3_In : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_FSM_FFd4_387 : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_FSM_FFd4_In_388 : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_FSM_FFd5_389 : STD_LOGIC; 
  signal computer_entity_mmu_entity_flash_state_cmp_eq0000 : STD_LOGIC; 
  signal computer_entity_mmu_entity_reading_flash_391 : STD_LOGIC; 
  signal computer_entity_mmu_entity_reading_flash_inv : STD_LOGIC; 
  signal computer_entity_mmu_entity_reading_flash_mux0000 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_10_rt_396 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_11_rt_398 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_12_rt_400 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_13_rt_402 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_14_rt_404 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_1_rt_406 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_2_rt_408 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_3_rt_410 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_4_rt_412 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_5_rt_414 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_6_rt_416 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_7_rt_418 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_8_rt_420 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy_9_rt_422 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_xor_15_rt_424 : STD_LOGIC; 
  signal led_0_OBUF_457 : STD_LOGIC; 
  signal ram2_addr_0_OBUF_499 : STD_LOGIC; 
  signal ram2_addr_10_OBUF_500 : STD_LOGIC; 
  signal ram2_addr_11_OBUF_501 : STD_LOGIC; 
  signal ram2_addr_12_OBUF_502 : STD_LOGIC; 
  signal ram2_addr_13_OBUF_503 : STD_LOGIC; 
  signal ram2_addr_14_OBUF_504 : STD_LOGIC; 
  signal ram2_addr_15_OBUF_505 : STD_LOGIC; 
  signal ram2_addr_1_OBUF_506 : STD_LOGIC; 
  signal ram2_addr_2_OBUF_507 : STD_LOGIC; 
  signal ram2_addr_3_OBUF_508 : STD_LOGIC; 
  signal ram2_addr_4_OBUF_509 : STD_LOGIC; 
  signal ram2_addr_5_OBUF_510 : STD_LOGIC; 
  signal ram2_addr_6_OBUF_511 : STD_LOGIC; 
  signal ram2_addr_7_OBUF_512 : STD_LOGIC; 
  signal ram2_addr_8_OBUF_513 : STD_LOGIC; 
  signal ram2_addr_9_OBUF_514 : STD_LOGIC; 
  signal ram2_we_OBUF_534 : STD_LOGIC; 
  signal rst_IBUF_537 : STD_LOGIC; 
  signal computer_entity_control_entity_Mtridata_alu_control_signal_alu_op : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_if_pc_one : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_mmu_entity_Flash_entity_FlashAddr : STD_LOGIC_VECTOR ( 22 downto 1 ); 
  signal computer_entity_mmu_entity_Flash_entity_data_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_mmu_entity_Flash_entity_read_counter : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal computer_entity_mmu_entity_Flash_entity_read_counter_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy : STD_LOGIC_VECTOR ( 21 downto 1 ); 
  signal computer_entity_mmu_entity_Madd_flash_addr_addsub0000_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_mmu_entity_Madd_flash_read_counter_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 5 downto 3 ); 
  signal computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 5 downto 3 ); 
  signal computer_entity_mmu_entity_flash_addr : STD_LOGIC_VECTOR ( 22 downto 1 ); 
  signal computer_entity_mmu_entity_flash_addr_addsub0000 : STD_LOGIC_VECTOR ( 22 downto 1 ); 
  signal computer_entity_mmu_entity_flash_addr_mux0000 : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal computer_entity_mmu_entity_flash_mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_mmu_entity_flash_mem_addr_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_mmu_entity_flash_mem_addr_mux0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_mmu_entity_flash_read_counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal computer_entity_mmu_entity_flash_read_counter_mux0000 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal computer_entity_pc_write_entity_Madd_pc_one_out_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_pc_write_entity_pc : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0)
    );
  XST_VCC : VCC
    port map (
      P => computer_entity_ex_alu_control_alu_src0_2_76
    );
  computer_entity_mmu_entity_flash_mem_addr_0 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(15),
      Q => computer_entity_mmu_entity_flash_mem_addr(0)
    );
  computer_entity_mmu_entity_flash_mem_addr_1 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(14),
      Q => computer_entity_mmu_entity_flash_mem_addr(1)
    );
  computer_entity_mmu_entity_flash_mem_addr_2 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(13),
      Q => computer_entity_mmu_entity_flash_mem_addr(2)
    );
  computer_entity_mmu_entity_flash_mem_addr_3 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(12),
      Q => computer_entity_mmu_entity_flash_mem_addr(3)
    );
  computer_entity_mmu_entity_flash_mem_addr_4 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(11),
      Q => computer_entity_mmu_entity_flash_mem_addr(4)
    );
  computer_entity_mmu_entity_flash_mem_addr_5 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(10),
      Q => computer_entity_mmu_entity_flash_mem_addr(5)
    );
  computer_entity_mmu_entity_flash_mem_addr_6 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(9),
      Q => computer_entity_mmu_entity_flash_mem_addr(6)
    );
  computer_entity_mmu_entity_flash_mem_addr_7 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(8),
      Q => computer_entity_mmu_entity_flash_mem_addr(7)
    );
  computer_entity_mmu_entity_flash_mem_addr_8 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(7),
      Q => computer_entity_mmu_entity_flash_mem_addr(8)
    );
  computer_entity_mmu_entity_flash_mem_addr_9 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(6),
      Q => computer_entity_mmu_entity_flash_mem_addr(9)
    );
  computer_entity_mmu_entity_flash_mem_addr_10 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(5),
      Q => computer_entity_mmu_entity_flash_mem_addr(10)
    );
  computer_entity_mmu_entity_flash_mem_addr_11 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(4),
      Q => computer_entity_mmu_entity_flash_mem_addr(11)
    );
  computer_entity_mmu_entity_flash_mem_addr_12 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(3),
      Q => computer_entity_mmu_entity_flash_mem_addr(12)
    );
  computer_entity_mmu_entity_flash_mem_addr_13 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(2),
      Q => computer_entity_mmu_entity_flash_mem_addr(13)
    );
  computer_entity_mmu_entity_flash_mem_addr_14 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(1),
      Q => computer_entity_mmu_entity_flash_mem_addr(14)
    );
  computer_entity_mmu_entity_flash_mem_addr_15 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_mem_addr_mux0000(0),
      Q => computer_entity_mmu_entity_flash_mem_addr(15)
    );
  computer_entity_mmu_entity_flash_addr_1 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(21),
      Q => computer_entity_mmu_entity_flash_addr(1)
    );
  computer_entity_mmu_entity_flash_addr_2 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(20),
      Q => computer_entity_mmu_entity_flash_addr(2)
    );
  computer_entity_mmu_entity_flash_addr_3 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(19),
      Q => computer_entity_mmu_entity_flash_addr(3)
    );
  computer_entity_mmu_entity_flash_addr_4 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(18),
      Q => computer_entity_mmu_entity_flash_addr(4)
    );
  computer_entity_mmu_entity_flash_addr_5 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(17),
      Q => computer_entity_mmu_entity_flash_addr(5)
    );
  computer_entity_mmu_entity_flash_addr_6 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(16),
      Q => computer_entity_mmu_entity_flash_addr(6)
    );
  computer_entity_mmu_entity_flash_addr_7 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(15),
      Q => computer_entity_mmu_entity_flash_addr(7)
    );
  computer_entity_mmu_entity_flash_addr_8 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(14),
      Q => computer_entity_mmu_entity_flash_addr(8)
    );
  computer_entity_mmu_entity_flash_addr_9 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(13),
      Q => computer_entity_mmu_entity_flash_addr(9)
    );
  computer_entity_mmu_entity_flash_addr_10 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(12),
      Q => computer_entity_mmu_entity_flash_addr(10)
    );
  computer_entity_mmu_entity_flash_addr_11 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(11),
      Q => computer_entity_mmu_entity_flash_addr(11)
    );
  computer_entity_mmu_entity_flash_addr_12 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(10),
      Q => computer_entity_mmu_entity_flash_addr(12)
    );
  computer_entity_mmu_entity_flash_addr_13 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(9),
      Q => computer_entity_mmu_entity_flash_addr(13)
    );
  computer_entity_mmu_entity_flash_addr_14 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(8),
      Q => computer_entity_mmu_entity_flash_addr(14)
    );
  computer_entity_mmu_entity_flash_addr_15 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(7),
      Q => computer_entity_mmu_entity_flash_addr(15)
    );
  computer_entity_mmu_entity_flash_addr_16 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(6),
      Q => computer_entity_mmu_entity_flash_addr(16)
    );
  computer_entity_mmu_entity_flash_addr_17 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(5),
      Q => computer_entity_mmu_entity_flash_addr(17)
    );
  computer_entity_mmu_entity_flash_addr_18 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(4),
      Q => computer_entity_mmu_entity_flash_addr(18)
    );
  computer_entity_mmu_entity_flash_addr_19 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(3),
      Q => computer_entity_mmu_entity_flash_addr(19)
    );
  computer_entity_mmu_entity_flash_addr_20 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(2),
      Q => computer_entity_mmu_entity_flash_addr(20)
    );
  computer_entity_mmu_entity_flash_addr_21 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(1),
      Q => computer_entity_mmu_entity_flash_addr(21)
    );
  computer_entity_mmu_entity_flash_addr_22 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_addr_mux0000(0),
      Q => computer_entity_mmu_entity_flash_addr(22)
    );
  computer_entity_mmu_entity_reading_flash : FDP
    port map (
      C => clk_IBUF_72,
      D => computer_entity_mmu_entity_reading_flash_mux0000,
      PRE => computer_entity_mmu_entity_Flash_entity_rst_inv,
      Q => computer_entity_mmu_entity_reading_flash_391
    );
  computer_entity_mmu_entity_flash_read_counter_0 : FDE
    port map (
      C => clk_IBUF_72,
      CE => rst_IBUF_537,
      D => computer_entity_mmu_entity_flash_read_counter_mux0000(5),
      Q => computer_entity_mmu_entity_flash_read_counter(0)
    );
  computer_entity_mmu_entity_flash_read_counter_1 : FDE
    port map (
      C => clk_IBUF_72,
      CE => rst_IBUF_537,
      D => computer_entity_mmu_entity_flash_read_counter_mux0000(4),
      Q => computer_entity_mmu_entity_flash_read_counter(1)
    );
  computer_entity_mmu_entity_flash_read_counter_2 : FDE
    port map (
      C => clk_IBUF_72,
      CE => rst_IBUF_537,
      D => computer_entity_mmu_entity_flash_read_counter_mux0000(3),
      Q => computer_entity_mmu_entity_flash_read_counter(2)
    );
  computer_entity_mmu_entity_flash_read_counter_3 : FDE
    port map (
      C => clk_IBUF_72,
      CE => rst_IBUF_537,
      D => computer_entity_mmu_entity_flash_read_counter_mux0000(2),
      Q => computer_entity_mmu_entity_flash_read_counter(3)
    );
  computer_entity_mmu_entity_flash_read_counter_4 : FDE
    port map (
      C => clk_IBUF_72,
      CE => rst_IBUF_537,
      D => computer_entity_mmu_entity_flash_read_counter_mux0000(1),
      Q => computer_entity_mmu_entity_flash_read_counter(4)
    );
  computer_entity_mmu_entity_flash_read_counter_5 : FDE
    port map (
      C => clk_IBUF_72,
      CE => rst_IBUF_537,
      D => computer_entity_mmu_entity_flash_read_counter_mux0000(0),
      Q => computer_entity_mmu_entity_flash_read_counter(5)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      DI => computer_entity_ex_alu_control_alu_src0_2_76,
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_lut(0),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(0)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_0_Q : XORCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_lut(0),
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(0)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(0),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_1_rt_215,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(1)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_1_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(0),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_1_rt_215,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(1)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(1),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_2_rt_217,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(2)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_2_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(1),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_2_rt_217,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(2)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(2),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_3_rt_219,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(3)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_3_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(2),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_3_rt_219,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(3)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(3),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_4_rt_221,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(4)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_4_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(3),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_4_rt_221,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(4)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(4),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_5_rt_223,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(5)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_5_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(4),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_5_rt_223,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(5)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(5),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_6_rt_225,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(6)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_6_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(5),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_6_rt_225,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(6)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(6),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_7_rt_227,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(7)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_7_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(6),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_7_rt_227,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(7)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(7),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_8_rt_229,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(8)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_8_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(7),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_8_rt_229,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(8)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(8),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_9_rt_231,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(9)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_9_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(8),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_9_rt_231,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(9)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(9),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_10_rt_205,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(10)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_10_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(9),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_10_rt_205,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(10)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(10),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_11_rt_207,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(11)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_11_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(10),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_11_rt_207,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(11)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(11),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_12_rt_209,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(12)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_12_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(11),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_12_rt_209,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(12)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(12),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_13_rt_211,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(13)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_13_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(12),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_13_rt_211,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(13)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(13),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_14_rt_213,
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(14)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_14_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(13),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_14_rt_213,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(14)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_15_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy(14),
      LI => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_15_rt_233,
      O => computer_entity_mmu_entity_flash_mem_addr_addsub0000(15)
    );
  computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(12),
      I1 => computer_entity_mmu_entity_flash_addr(13),
      I2 => computer_entity_mmu_entity_flash_addr(14),
      I3 => computer_entity_mmu_entity_flash_addr(15),
      O => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut(3)
    );
  computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      DI => computer_entity_ex_alu_control_alu_src0_2_76,
      S => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut(3),
      O => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy(3)
    );
  computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(16),
      I1 => computer_entity_mmu_entity_flash_addr(17),
      I2 => computer_entity_mmu_entity_flash_addr(18),
      I3 => computer_entity_mmu_entity_flash_addr(19),
      O => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut(4)
    );
  computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy(3),
      DI => computer_entity_ex_alu_control_alu_src0_2_76,
      S => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut(4),
      O => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy(4)
    );
  computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(20),
      I1 => computer_entity_mmu_entity_flash_addr(21),
      I2 => computer_entity_mmu_entity_flash_addr(22),
      O => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut(5)
    );
  computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy(4),
      DI => computer_entity_ex_alu_control_alu_src0_2_76,
      S => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_lut(5),
      O => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy(5)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      DI => computer_entity_ex_alu_control_alu_src0_2_76,
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_lut(1),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(1)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_1_Q : XORCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_lut(1),
      O => computer_entity_mmu_entity_flash_addr_addsub0000(1)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(1),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_2_rt_186,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(2)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_2_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(1),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_2_rt_186,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(2)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(2),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_3_rt_188,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(3)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_3_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(2),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_3_rt_188,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(3)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(3),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_4_rt_190,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(4)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_4_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(3),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_4_rt_190,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(4)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(4),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_5_rt_192,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(5)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_5_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(4),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_5_rt_192,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(5)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(5),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_6_rt_194,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(6)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_6_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(5),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_6_rt_194,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(6)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(6),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_7_rt_196,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(7)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_7_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(6),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_7_rt_196,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(7)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(7),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_8_rt_198,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(8)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_8_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(7),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_8_rt_198,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(8)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(8),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_9_rt_200,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(9)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_9_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(8),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_9_rt_200,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(9)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(9),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_10_rt_161,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(10)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_10_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(9),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_10_rt_161,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(10)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(10),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_11_rt_163,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(11)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_11_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(10),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_11_rt_163,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(11)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(11),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_12_rt_165,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(12)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_12_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(11),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_12_rt_165,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(12)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(12),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_13_rt_167,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(13)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_13_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(12),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_13_rt_167,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(13)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(13),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_14_rt_169,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(14)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_14_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(13),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_14_rt_169,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(14)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(14),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_15_rt_171,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(15)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_15_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(14),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_15_rt_171,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(15)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(15),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_16_rt_173,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(16)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_16_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(15),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_16_rt_173,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(16)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(16),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_17_rt_175,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(17)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_17_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(16),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_17_rt_175,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(17)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(17),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_18_rt_177,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(18)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_18_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(17),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_18_rt_177,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(18)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(18),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_19_rt_179,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(19)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_19_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(18),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_19_rt_179,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(19)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(19),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_20_rt_182,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(20)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_20_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(19),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_20_rt_182,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(20)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(20),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_21_rt_184,
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(21)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_21_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(20),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_21_rt_184,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(21)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_22_Q : XORCY
    port map (
      CI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy(21),
      LI => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_22_rt_202,
      O => computer_entity_mmu_entity_flash_addr_addsub0000(22)
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_state_FSM_FFd3_In,
      Q => computer_entity_mmu_entity_flash_state_FSM_FFd3_385
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_state_FSM_FFd1_In,
      Q => computer_entity_mmu_entity_flash_state_FSM_FFd1_382
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_state_FSM_FFd4_In_388,
      Q => computer_entity_mmu_entity_flash_state_FSM_FFd4_387
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd5 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_IBUF_72,
      D => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      PRE => computer_entity_mmu_entity_Flash_entity_rst_inv,
      Q => computer_entity_mmu_entity_flash_state_FSM_FFd5_389
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_flash_state_FSM_FFd3_385,
      Q => computer_entity_mmu_entity_flash_state_FSM_FFd2_384
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_155,
      Q => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd3_154
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_IBUF_72,
      D => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_In,
      PRE => computer_entity_mmu_entity_Flash_entity_rst_inv,
      Q => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_In,
      Q => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_155
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_In,
      Q => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_In,
      Q => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_150
    );
  computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData : FDPE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_Mtridata_FlashData_not0001,
      D => computer_entity_mmu_entity_Flash_entity_state_cmp_ne0000,
      PRE => computer_entity_mmu_entity_Flash_entity_rst_inv,
      Q => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121
    );
  computer_entity_mmu_entity_Flash_entity_data_out_15 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N10,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(15)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_14 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N11,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(14)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_13 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N12,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(13)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_12 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N13,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(12)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_11 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N14,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(11)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_10 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N15,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(10)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_9 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N16,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(9)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_8 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N17,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(8)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_7 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N18,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(7)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_6 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N19,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(6)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_5 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N20,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(5)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_4 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N21,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(4)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_3 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N22,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(3)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_2 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N23,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(2)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_1 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N24,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(1)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_0 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_data_out_and0000,
      D => N25,
      Q => computer_entity_mmu_entity_Flash_entity_data_out(0)
    );
  computer_entity_mmu_entity_Flash_entity_old_ctl : FDP
    port map (
      C => clk_IBUF_72,
      D => led_0_OBUF_457,
      PRE => computer_entity_mmu_entity_Flash_entity_rst_inv,
      Q => computer_entity_mmu_entity_Flash_entity_old_ctl_139
    );
  computer_entity_mmu_entity_Flash_entity_FlashWE : FDP
    port map (
      C => clk_IBUF_72,
      D => computer_entity_mmu_entity_Flash_entity_FlashWE_mux0000,
      PRE => computer_entity_mmu_entity_Flash_entity_rst_inv,
      Q => computer_entity_mmu_entity_Flash_entity_FlashWE_117
    );
  computer_entity_mmu_entity_Flash_entity_FlashOE : FDP
    port map (
      C => clk_IBUF_72,
      D => computer_entity_mmu_entity_Flash_entity_FlashOE_mux0000_116,
      PRE => computer_entity_mmu_entity_Flash_entity_rst_inv,
      Q => computer_entity_mmu_entity_Flash_entity_FlashOE_115
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_3 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000(0),
      Q => computer_entity_mmu_entity_Flash_entity_read_counter(3)
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_2 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000(1),
      Q => computer_entity_mmu_entity_Flash_entity_read_counter(2)
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_1 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000(2),
      Q => computer_entity_mmu_entity_Flash_entity_read_counter(1)
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_0 : FDC
    port map (
      C => clk_IBUF_72,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000(3),
      Q => computer_entity_mmu_entity_Flash_entity_read_counter(0)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_22 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(22),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(22)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_21 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(21),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(21)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_20 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(20),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(20)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_19 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(19),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(19)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_18 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(18),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(18)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_17 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(17),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(17)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_16 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(16),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(16)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_15 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(15),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(15)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_14 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(14),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(14)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_13 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(13),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(13)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_12 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(12),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(12)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_11 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(11),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(11)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_10 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(10),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(10)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_9 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(9),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(9)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_8 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(8),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(8)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_7 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(7),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(7)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_6 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(6),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(6)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_5 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(5),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(5)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_4 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(4),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(4)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_3 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(3),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(3)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_2 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(2),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(2)
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_1 : FDE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000,
      D => computer_entity_mmu_entity_flash_addr(1),
      Q => computer_entity_mmu_entity_Flash_entity_FlashAddr(1)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_15_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(14),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_xor_15_rt_424,
      O => computer_entity_if_pc_one(15)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_14_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(13),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_14_rt_404,
      O => computer_entity_if_pc_one(14)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_14_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(13),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_14_rt_404,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(14)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_13_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(12),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_13_rt_402,
      O => computer_entity_if_pc_one(13)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_13_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(12),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_13_rt_402,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(13)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_12_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(11),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_12_rt_400,
      O => computer_entity_if_pc_one(12)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_12_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(11),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_12_rt_400,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(12)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_11_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(10),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_11_rt_398,
      O => computer_entity_if_pc_one(11)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_11_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(10),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_11_rt_398,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(11)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_10_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(9),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_10_rt_396,
      O => computer_entity_if_pc_one(10)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_10_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(9),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_10_rt_396,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(10)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_9_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(8),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_9_rt_422,
      O => computer_entity_if_pc_one(9)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_9_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(8),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_9_rt_422,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(9)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_8_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(7),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_8_rt_420,
      O => computer_entity_if_pc_one(8)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_8_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(7),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_8_rt_420,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(8)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_7_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(6),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_7_rt_418,
      O => computer_entity_if_pc_one(7)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_7_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(6),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_7_rt_418,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(7)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_6_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(5),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_6_rt_416,
      O => computer_entity_if_pc_one(6)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_6_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(5),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_6_rt_416,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(6)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_5_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(4),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_5_rt_414,
      O => computer_entity_if_pc_one(5)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_5_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(4),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_5_rt_414,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(5)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_4_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(3),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_4_rt_412,
      O => computer_entity_if_pc_one(4)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_4_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(3),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_4_rt_412,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(4)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_3_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(2),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_3_rt_410,
      O => computer_entity_if_pc_one(3)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_3_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(2),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_3_rt_410,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(3)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_2_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(1),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_2_rt_408,
      O => computer_entity_if_pc_one(2)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_2_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(1),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_2_rt_408,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(2)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_1_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(0),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_cy_1_rt_406,
      O => computer_entity_if_pc_one(1)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_1_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_out_cy(0),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      S => computer_entity_pc_write_entity_Madd_pc_one_out_cy_1_rt_406,
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(1)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_0_Q : XORCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      LI => computer_entity_pc_write_entity_Madd_pc_one_out_lut(0),
      O => computer_entity_if_pc_one(0)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_0_Q : MUXCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      DI => computer_entity_ex_alu_control_alu_src0_2_76,
      S => computer_entity_pc_write_entity_Madd_pc_one_out_lut(0),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy(0)
    );
  computer_entity_pc_write_entity_pc_15 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(15),
      Q => computer_entity_pc_write_entity_pc(15)
    );
  computer_entity_pc_write_entity_pc_14 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(14),
      Q => computer_entity_pc_write_entity_pc(14)
    );
  computer_entity_pc_write_entity_pc_13 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(13),
      Q => computer_entity_pc_write_entity_pc(13)
    );
  computer_entity_pc_write_entity_pc_12 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(12),
      Q => computer_entity_pc_write_entity_pc(12)
    );
  computer_entity_pc_write_entity_pc_11 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(11),
      Q => computer_entity_pc_write_entity_pc(11)
    );
  computer_entity_pc_write_entity_pc_10 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(10),
      Q => computer_entity_pc_write_entity_pc(10)
    );
  computer_entity_pc_write_entity_pc_9 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(9),
      Q => computer_entity_pc_write_entity_pc(9)
    );
  computer_entity_pc_write_entity_pc_8 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(8),
      Q => computer_entity_pc_write_entity_pc(8)
    );
  computer_entity_pc_write_entity_pc_7 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(7),
      Q => computer_entity_pc_write_entity_pc(7)
    );
  computer_entity_pc_write_entity_pc_6 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(6),
      Q => computer_entity_pc_write_entity_pc(6)
    );
  computer_entity_pc_write_entity_pc_5 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(5),
      Q => computer_entity_pc_write_entity_pc(5)
    );
  computer_entity_pc_write_entity_pc_4 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(4),
      Q => computer_entity_pc_write_entity_pc(4)
    );
  computer_entity_pc_write_entity_pc_3 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(3),
      Q => computer_entity_pc_write_entity_pc(3)
    );
  computer_entity_pc_write_entity_pc_2 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(2),
      Q => computer_entity_pc_write_entity_pc(2)
    );
  computer_entity_pc_write_entity_pc_1 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(1),
      Q => computer_entity_pc_write_entity_pc(1)
    );
  computer_entity_pc_write_entity_pc_0 : FDCE
    port map (
      C => clk_IBUF_72,
      CE => computer_entity_mmu_entity_reading_flash_inv,
      CLR => computer_entity_mmu_entity_Flash_entity_rst_inv,
      D => computer_entity_if_pc_one(0),
      Q => computer_entity_pc_write_entity_pc(0)
    );
  computer_entity_mmu_entity_ram2_control_signal_we1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => clk_IBUF1,
      I1 => computer_entity_mmu_entity_reading_flash_391,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd3_385,
      O => ram2_we_OBUF_534
    );
  computer_entity_mmu_entity_ram2_addr_out_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(9),
      I2 => computer_entity_mmu_entity_flash_mem_addr(9),
      O => ram2_addr_9_OBUF_514
    );
  computer_entity_mmu_entity_ram2_addr_out_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(8),
      I2 => computer_entity_mmu_entity_flash_mem_addr(8),
      O => ram2_addr_8_OBUF_513
    );
  computer_entity_mmu_entity_ram2_addr_out_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(7),
      I2 => computer_entity_mmu_entity_flash_mem_addr(7),
      O => ram2_addr_7_OBUF_512
    );
  computer_entity_mmu_entity_ram2_addr_out_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(6),
      I2 => computer_entity_mmu_entity_flash_mem_addr(6),
      O => ram2_addr_6_OBUF_511
    );
  computer_entity_mmu_entity_ram2_addr_out_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(5),
      I2 => computer_entity_mmu_entity_flash_mem_addr(5),
      O => ram2_addr_5_OBUF_510
    );
  computer_entity_mmu_entity_ram2_addr_out_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(4),
      I2 => computer_entity_mmu_entity_flash_mem_addr(4),
      O => ram2_addr_4_OBUF_509
    );
  computer_entity_mmu_entity_ram2_addr_out_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(3),
      I2 => computer_entity_mmu_entity_flash_mem_addr(3),
      O => ram2_addr_3_OBUF_508
    );
  computer_entity_mmu_entity_ram2_addr_out_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(2),
      I2 => computer_entity_mmu_entity_flash_mem_addr(2),
      O => ram2_addr_2_OBUF_507
    );
  computer_entity_mmu_entity_ram2_addr_out_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(1),
      I2 => computer_entity_mmu_entity_flash_mem_addr(1),
      O => ram2_addr_1_OBUF_506
    );
  computer_entity_mmu_entity_ram2_addr_out_15_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(15),
      I2 => computer_entity_mmu_entity_flash_mem_addr(15),
      O => ram2_addr_15_OBUF_505
    );
  computer_entity_mmu_entity_ram2_addr_out_14_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(14),
      I2 => computer_entity_mmu_entity_flash_mem_addr(14),
      O => ram2_addr_14_OBUF_504
    );
  computer_entity_mmu_entity_ram2_addr_out_13_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(13),
      I2 => computer_entity_mmu_entity_flash_mem_addr(13),
      O => ram2_addr_13_OBUF_503
    );
  computer_entity_mmu_entity_ram2_addr_out_12_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(12),
      I2 => computer_entity_mmu_entity_flash_mem_addr(12),
      O => ram2_addr_12_OBUF_502
    );
  computer_entity_mmu_entity_ram2_addr_out_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(11),
      I2 => computer_entity_mmu_entity_flash_mem_addr(11),
      O => ram2_addr_11_OBUF_501
    );
  computer_entity_mmu_entity_ram2_addr_out_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(10),
      I2 => computer_entity_mmu_entity_flash_mem_addr(10),
      O => ram2_addr_10_OBUF_500
    );
  computer_entity_mmu_entity_ram2_addr_out_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_pc_write_entity_pc(0),
      I2 => computer_entity_mmu_entity_flash_mem_addr(0),
      O => ram2_addr_0_OBUF_499
    );
  computer_entity_mmu_entity_reading_flash_mux00001 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => computer_entity_mmu_entity_reading_flash_391,
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd1_382,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      O => computer_entity_mmu_entity_reading_flash_mux0000
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_In1 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      I1 => computer_entity_mmu_entity_Flash_entity_old_ctl_139,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      O => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_In
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_3_1 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      I1 => computer_entity_mmu_entity_Flash_entity_read_counter(0),
      I2 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      O => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000(3)
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      I1 => computer_entity_mmu_entity_Flash_entity_old_ctl_139,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      I3 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_150,
      O => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_In
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_2_1 : LUT4
    generic map(
      INIT => X"286C"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      I1 => computer_entity_mmu_entity_Flash_entity_read_counter(1),
      I2 => computer_entity_mmu_entity_Flash_entity_read_counter(0),
      I3 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      O => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000(2)
    );
  computer_entity_mmu_entity_Flash_entity_data_out_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF_537,
      I1 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_150,
      O => computer_entity_mmu_entity_Flash_entity_data_out_and0000
    );
  computer_entity_mmu_entity_Flash_entity_FlashAddr_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF_537,
      I1 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      O => computer_entity_mmu_entity_Flash_entity_FlashAddr_and0000
    );
  computer_entity_mmu_entity_Flash_entity_Mtridata_FlashData_not00011 : LUT4
    generic map(
      INIT => X"5501"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      I1 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd3_154,
      I2 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_150,
      I3 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_155,
      O => computer_entity_mmu_entity_Flash_entity_Mtridata_FlashData_not0001
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_In11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      I1 => computer_entity_mmu_entity_Flash_entity_read_counter(3),
      I2 => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_0_bdd0,
      O => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_In
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_0_21 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_read_counter(1),
      I1 => computer_entity_mmu_entity_Flash_entity_read_counter(0),
      I2 => computer_entity_mmu_entity_Flash_entity_read_counter(2),
      O => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_0_bdd0
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_In11 : LUT4
    generic map(
      INIT => X"EAEE"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd3_154,
      I1 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      I2 => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_0_bdd0,
      I3 => computer_entity_mmu_entity_Flash_entity_read_counter(3),
      O => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_In
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_0_11 : LUT4
    generic map(
      INIT => X"82C6"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      I1 => computer_entity_mmu_entity_Flash_entity_read_counter(3),
      I2 => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_0_bdd0,
      I3 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      O => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000(0)
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_1_1_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_read_counter(1),
      I1 => computer_entity_mmu_entity_Flash_entity_read_counter(0),
      O => N0
    );
  computer_entity_mmu_entity_Flash_entity_read_counter_mux0000_1_1 : LUT4
    generic map(
      INIT => X"82C6"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      I1 => computer_entity_mmu_entity_Flash_entity_read_counter(2),
      I2 => N0,
      I3 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      O => computer_entity_mmu_entity_Flash_entity_read_counter_mux0000(1)
    );
  computer_entity_mmu_entity_Flash_entity_FlashOE_mux0000 : LUT4
    generic map(
      INIT => X"A2AE"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_FlashOE_115,
      I1 => N2,
      I2 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_155,
      I3 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      O => computer_entity_mmu_entity_Flash_entity_FlashOE_mux0000_116
    );
  computer_entity_mmu_entity_Flash_entity_FlashWE_mux000043 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_150,
      I1 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      I2 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_155,
      I3 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      O => computer_entity_mmu_entity_Flash_entity_FlashWE_mux000043_119
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_state_cmp_eq0000,
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      O => computer_entity_mmu_entity_flash_state_FSM_FFd3_In
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_2_1 : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(3),
      I1 => computer_entity_mmu_entity_Madd_flash_read_counter_addsub0000_cy(2),
      I2 => N37,
      I3 => N77,
      O => computer_entity_mmu_entity_flash_read_counter_mux0000(2)
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_1_1 : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(4),
      I1 => computer_entity_mmu_entity_Madd_flash_read_counter_addsub0000_cy(3),
      I2 => N76,
      I3 => N4,
      O => computer_entity_mmu_entity_flash_read_counter_mux0000(1)
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_0_Q : LUT4
    generic map(
      INIT => X"AD88"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(5),
      I1 => N37,
      I2 => N6,
      I3 => N4,
      O => computer_entity_mmu_entity_flash_read_counter_mux0000(0)
    );
  computer_entity_mmu_entity_flash_state_cmp_eq00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(3),
      I1 => computer_entity_mmu_entity_flash_read_counter(4),
      I2 => computer_entity_mmu_entity_flash_read_counter(5),
      I3 => N78,
      O => computer_entity_mmu_entity_flash_state_cmp_eq0000
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_3_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(1),
      I1 => computer_entity_mmu_entity_flash_read_counter(0),
      O => N8
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_3_Q : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(2),
      I1 => N8,
      I2 => N37,
      I3 => N4,
      O => computer_entity_mmu_entity_flash_read_counter_mux0000(3)
    );
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => clk_IBUF1
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_537
    );
  FlashData_15_IOBUF : IOBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N10,
      IO => FlashData(15)
    );
  FlashData_14_IOBUF : IOBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N11,
      IO => FlashData(14)
    );
  FlashData_13_IOBUF : IOBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N12,
      IO => FlashData(13)
    );
  FlashData_12_IOBUF : IOBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N13,
      IO => FlashData(12)
    );
  FlashData_11_IOBUF : IOBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N14,
      IO => FlashData(11)
    );
  FlashData_10_IOBUF : IOBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N15,
      IO => FlashData(10)
    );
  FlashData_9_IOBUF : IOBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N16,
      IO => FlashData(9)
    );
  FlashData_8_IOBUF : IOBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N17,
      IO => FlashData(8)
    );
  FlashData_7_IOBUF : IOBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N18,
      IO => FlashData(7)
    );
  FlashData_6_IOBUF : IOBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N19,
      IO => FlashData(6)
    );
  FlashData_5_IOBUF : IOBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N20,
      IO => FlashData(5)
    );
  FlashData_4_IOBUF : IOBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N21,
      IO => FlashData(4)
    );
  FlashData_3_IOBUF : IOBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N22,
      IO => FlashData(3)
    );
  FlashData_2_IOBUF : IOBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N23,
      IO => FlashData(2)
    );
  FlashData_1_IOBUF : IOBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N24,
      IO => FlashData(1)
    );
  FlashData_0_IOBUF : IOBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      T => computer_entity_mmu_entity_Flash_entity_Mtrien_FlashData_121,
      O => N25,
      IO => FlashData(0)
    );
  ram1_data_15_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(15)
    );
  ram1_data_14_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(14)
    );
  ram1_data_13_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(13)
    );
  ram1_data_12_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(12)
    );
  ram1_data_11_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(11)
    );
  ram1_data_10_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(10)
    );
  ram1_data_9_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(9)
    );
  ram1_data_8_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(8)
    );
  ram1_data_7_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(7)
    );
  ram1_data_6_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(6)
    );
  ram1_data_5_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(5)
    );
  ram1_data_4_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(4)
    );
  ram1_data_3_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(3)
    );
  ram1_data_2_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(2)
    );
  ram1_data_1_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(1)
    );
  ram1_data_0_OBUFT : OBUFT
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      T => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_data(0)
    );
  ram2_data_15_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(15),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(15)
    );
  ram2_data_14_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(14),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(14)
    );
  ram2_data_13_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(13),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(13)
    );
  ram2_data_12_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(12),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(12)
    );
  ram2_data_11_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(11),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(11)
    );
  ram2_data_10_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(10),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(10)
    );
  ram2_data_9_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(9),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(9)
    );
  ram2_data_8_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(8),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(8)
    );
  ram2_data_7_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(7),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(7)
    );
  ram2_data_6_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(6),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(6)
    );
  ram2_data_5_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(5),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(5)
    );
  ram2_data_4_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(4),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(4)
    );
  ram2_data_3_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(3),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(3)
    );
  ram2_data_2_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(2),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(2)
    );
  ram2_data_1_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(1),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(1)
    );
  ram2_data_0_OBUFT : OBUFT
    port map (
      I => computer_entity_mmu_entity_Flash_entity_data_out(0),
      T => computer_entity_mmu_entity_reading_flash_inv,
      O => ram2_data(0)
    );
  ram1_we_OBUF : OBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_we
    );
  ram2_en_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram2_en
    );
  FlashCE_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => FlashCE
    );
  FlashVpen_OBUF : OBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      O => FlashVpen
    );
  ram2_oe_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_reading_flash_391,
      O => ram2_oe
    );
  ram1_en_OBUF : OBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_en
    );
  FlashOE_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashOE_115,
      O => FlashOE
    );
  ram2_we_OBUF : OBUF
    port map (
      I => ram2_we_OBUF_534,
      O => ram2_we
    );
  FlashRP_OBUF : OBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      O => FlashRP
    );
  rdn_OBUF : OBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      O => rdn
    );
  wrn_OBUF : OBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      O => wrn
    );
  FlashWE_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashWE_117,
      O => FlashWE
    );
  ram1_oe_OBUF : OBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      O => ram1_oe
    );
  FlashByte_OBUF : OBUF
    port map (
      I => computer_entity_ex_alu_control_alu_src0_2_76,
      O => FlashByte
    );
  FlashAddr_22_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(22),
      O => FlashAddr(22)
    );
  FlashAddr_21_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(21),
      O => FlashAddr(21)
    );
  FlashAddr_20_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(20),
      O => FlashAddr(20)
    );
  FlashAddr_19_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(19),
      O => FlashAddr(19)
    );
  FlashAddr_18_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(18),
      O => FlashAddr(18)
    );
  FlashAddr_17_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(17),
      O => FlashAddr(17)
    );
  FlashAddr_16_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(16),
      O => FlashAddr(16)
    );
  FlashAddr_15_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(15),
      O => FlashAddr(15)
    );
  FlashAddr_14_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(14),
      O => FlashAddr(14)
    );
  FlashAddr_13_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(13),
      O => FlashAddr(13)
    );
  FlashAddr_12_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(12),
      O => FlashAddr(12)
    );
  FlashAddr_11_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(11),
      O => FlashAddr(11)
    );
  FlashAddr_10_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(10),
      O => FlashAddr(10)
    );
  FlashAddr_9_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(9),
      O => FlashAddr(9)
    );
  FlashAddr_8_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(8),
      O => FlashAddr(8)
    );
  FlashAddr_7_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(7),
      O => FlashAddr(7)
    );
  FlashAddr_6_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(6),
      O => FlashAddr(6)
    );
  FlashAddr_5_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(5),
      O => FlashAddr(5)
    );
  FlashAddr_4_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(4),
      O => FlashAddr(4)
    );
  FlashAddr_3_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(3),
      O => FlashAddr(3)
    );
  FlashAddr_2_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(2),
      O => FlashAddr(2)
    );
  FlashAddr_1_OBUF : OBUF
    port map (
      I => computer_entity_mmu_entity_Flash_entity_FlashAddr(1),
      O => FlashAddr(1)
    );
  FlashAddr_0_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => FlashAddr(0)
    );
  ram1_addr_17_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(17)
    );
  ram1_addr_16_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(16)
    );
  ram1_addr_15_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(15)
    );
  ram1_addr_14_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(14)
    );
  ram1_addr_13_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(13)
    );
  ram1_addr_12_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(12)
    );
  ram1_addr_11_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(11)
    );
  ram1_addr_10_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(10)
    );
  ram1_addr_9_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(9)
    );
  ram1_addr_8_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(8)
    );
  ram1_addr_7_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(7)
    );
  ram1_addr_6_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(6)
    );
  ram1_addr_5_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(5)
    );
  ram1_addr_4_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(4)
    );
  ram1_addr_3_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(3)
    );
  ram1_addr_2_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(2)
    );
  ram1_addr_1_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(1)
    );
  ram1_addr_0_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram1_addr(0)
    );
  ram2_addr_17_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram2_addr(17)
    );
  ram2_addr_16_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => ram2_addr(16)
    );
  ram2_addr_15_OBUF : OBUF
    port map (
      I => ram2_addr_15_OBUF_505,
      O => ram2_addr(15)
    );
  ram2_addr_14_OBUF : OBUF
    port map (
      I => ram2_addr_14_OBUF_504,
      O => ram2_addr(14)
    );
  ram2_addr_13_OBUF : OBUF
    port map (
      I => ram2_addr_13_OBUF_503,
      O => ram2_addr(13)
    );
  ram2_addr_12_OBUF : OBUF
    port map (
      I => ram2_addr_12_OBUF_502,
      O => ram2_addr(12)
    );
  ram2_addr_11_OBUF : OBUF
    port map (
      I => ram2_addr_11_OBUF_501,
      O => ram2_addr(11)
    );
  ram2_addr_10_OBUF : OBUF
    port map (
      I => ram2_addr_10_OBUF_500,
      O => ram2_addr(10)
    );
  ram2_addr_9_OBUF : OBUF
    port map (
      I => ram2_addr_9_OBUF_514,
      O => ram2_addr(9)
    );
  ram2_addr_8_OBUF : OBUF
    port map (
      I => ram2_addr_8_OBUF_513,
      O => ram2_addr(8)
    );
  ram2_addr_7_OBUF : OBUF
    port map (
      I => ram2_addr_7_OBUF_512,
      O => ram2_addr(7)
    );
  ram2_addr_6_OBUF : OBUF
    port map (
      I => ram2_addr_6_OBUF_511,
      O => ram2_addr(6)
    );
  ram2_addr_5_OBUF : OBUF
    port map (
      I => ram2_addr_5_OBUF_510,
      O => ram2_addr(5)
    );
  ram2_addr_4_OBUF : OBUF
    port map (
      I => ram2_addr_4_OBUF_509,
      O => ram2_addr(4)
    );
  ram2_addr_3_OBUF : OBUF
    port map (
      I => ram2_addr_3_OBUF_508,
      O => ram2_addr(3)
    );
  ram2_addr_2_OBUF : OBUF
    port map (
      I => ram2_addr_2_OBUF_507,
      O => ram2_addr(2)
    );
  ram2_addr_1_OBUF : OBUF
    port map (
      I => ram2_addr_1_OBUF_506,
      O => ram2_addr(1)
    );
  ram2_addr_0_OBUF : OBUF
    port map (
      I => ram2_addr_0_OBUF_499,
      O => ram2_addr(0)
    );
  led_15_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(15)
    );
  led_14_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(14)
    );
  led_13_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(13)
    );
  led_12_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(12)
    );
  led_11_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(11)
    );
  led_10_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(10)
    );
  led_9_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(9)
    );
  led_8_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(8)
    );
  led_7_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(7)
    );
  led_6_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(6)
    );
  led_5_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(5)
    );
  led_4_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(4)
    );
  led_3_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => led_0_OBUF_457,
      O => led(0)
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(1),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_1_rt_215
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(2),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_2_rt_217
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(3),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_3_rt_219
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(4),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_4_rt_221
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(5),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_5_rt_223
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(6),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_6_rt_225
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(7),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_7_rt_227
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(8),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_8_rt_229
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(9),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_9_rt_231
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(10),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_10_rt_205
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(11),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_11_rt_207
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(12),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_12_rt_209
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(13),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_13_rt_211
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(14),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_cy_14_rt_213
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(2),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_2_rt_186
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(3),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_3_rt_188
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(4),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_4_rt_190
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(5),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_5_rt_192
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(6),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_6_rt_194
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(7),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_7_rt_196
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(8),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_8_rt_198
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(9),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_9_rt_200
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(10),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_10_rt_161
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(11),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_11_rt_163
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(12),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_12_rt_165
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(13),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_13_rt_167
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(14),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_14_rt_169
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(15),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_15_rt_171
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(16),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_16_rt_173
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(17),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_17_rt_175
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(18),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_18_rt_177
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(19),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_19_rt_179
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(20),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_20_rt_182
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(21),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_cy_21_rt_184
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(14),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_14_rt_404
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(13),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_13_rt_402
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(12),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_12_rt_400
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(11),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_11_rt_398
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(10),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_10_rt_396
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(9),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_9_rt_422
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(8),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_8_rt_420
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(7),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_7_rt_418
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(6),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_6_rt_416
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(5),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_5_rt_414
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(4),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_4_rt_412
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(3),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_3_rt_410
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(2),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_2_rt_408
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(1),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_cy_1_rt_406
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(15),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_xor_15_rt_233
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(22),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_xor_22_rt_202
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(15),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_xor_15_rt_424
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I1 => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy(5),
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd1_382,
      O => computer_entity_mmu_entity_flash_state_FSM_FFd1_In
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd4_In : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_Mcompar_flash_state_cmp_lt0000_cy(5),
      I3 => N4,
      O => computer_entity_mmu_entity_flash_state_FSM_FFd4_In_388
    );
  computer_entity_mmu_entity_flash_addr_mux0000_0_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(22),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(22),
      O => computer_entity_mmu_entity_flash_addr_mux0000(0)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_1_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(21),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(21),
      O => computer_entity_mmu_entity_flash_addr_mux0000(1)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_2_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(20),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(20),
      O => computer_entity_mmu_entity_flash_addr_mux0000(2)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_3_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(19),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(19),
      O => computer_entity_mmu_entity_flash_addr_mux0000(3)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_4_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(18),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(18),
      O => computer_entity_mmu_entity_flash_addr_mux0000(4)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_5_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(17),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(17),
      O => computer_entity_mmu_entity_flash_addr_mux0000(5)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_0_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(15),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(15),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(0)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_6_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(16),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(16),
      O => computer_entity_mmu_entity_flash_addr_mux0000(6)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_1_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(14),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(14),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(1)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_7_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(15),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(15),
      O => computer_entity_mmu_entity_flash_addr_mux0000(7)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_2_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(13),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(13),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(2)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_8_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(14),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(14),
      O => computer_entity_mmu_entity_flash_addr_mux0000(8)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_3_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(12),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(12),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(3)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_9_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(13),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(13),
      O => computer_entity_mmu_entity_flash_addr_mux0000(9)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_4_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(11),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(11),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(4)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_10_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(12),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(12),
      O => computer_entity_mmu_entity_flash_addr_mux0000(10)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_5_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(10),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(10),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(5)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_11_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(11),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(11),
      O => computer_entity_mmu_entity_flash_addr_mux0000(11)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_6_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(9),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(9),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(6)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_12_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(10),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(10),
      O => computer_entity_mmu_entity_flash_addr_mux0000(12)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_7_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(8),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(8),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(7)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_13_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(9),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(9),
      O => computer_entity_mmu_entity_flash_addr_mux0000(13)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_8_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(7),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(7),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(8)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_14_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(8),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(8),
      O => computer_entity_mmu_entity_flash_addr_mux0000(14)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_9_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(6),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(6),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(9)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_15_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(7),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(7),
      O => computer_entity_mmu_entity_flash_addr_mux0000(15)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_10_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(5),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(5),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(10)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_16_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(6),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(6),
      O => computer_entity_mmu_entity_flash_addr_mux0000(16)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_11_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(4),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(4),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(11)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_17_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(5),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(5),
      O => computer_entity_mmu_entity_flash_addr_mux0000(17)
    );
  computer_entity_mmu_entity_Flash_entity_FlashWE_mux000046 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd1_150,
      I1 => computer_entity_mmu_entity_Flash_entity_FlashWE_117,
      I2 => N74,
      I3 => computer_entity_mmu_entity_Flash_entity_FlashWE_mux000043_119,
      O => computer_entity_mmu_entity_Flash_entity_FlashWE_mux0000
    );
  computer_entity_mmu_entity_Madd_flash_read_counter_addsub0000_cy_3_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(3),
      I1 => computer_entity_mmu_entity_flash_read_counter(2),
      I2 => computer_entity_mmu_entity_flash_read_counter(0),
      I3 => computer_entity_mmu_entity_flash_read_counter(1),
      O => computer_entity_mmu_entity_Madd_flash_read_counter_addsub0000_cy(3)
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_5_1 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      I1 => computer_entity_mmu_entity_flash_read_counter(0),
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      O => computer_entity_mmu_entity_flash_read_counter_mux0000(5)
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_4_1 : LUT4
    generic map(
      INIT => X"286C"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      I1 => computer_entity_mmu_entity_flash_read_counter(1),
      I2 => computer_entity_mmu_entity_flash_read_counter(0),
      I3 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      O => computer_entity_mmu_entity_flash_read_counter_mux0000(4)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_12_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(3),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(3),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(12)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_18_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(4),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(4),
      O => computer_entity_mmu_entity_flash_addr_mux0000(18)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_13_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(2),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(2),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(13)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_19_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(3),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(3),
      O => computer_entity_mmu_entity_flash_addr_mux0000(19)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_14_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(1),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(1),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(14)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_20_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(2),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(2),
      O => computer_entity_mmu_entity_flash_addr_mux0000(20)
    );
  computer_entity_mmu_entity_flash_mem_addr_mux0000_15_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_mem_addr(0),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_mem_addr_addsub0000(0),
      O => computer_entity_mmu_entity_flash_mem_addr_mux0000(15)
    );
  computer_entity_mmu_entity_flash_addr_mux0000_21_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_addr(1),
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd2_384,
      I2 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      I3 => computer_entity_mmu_entity_flash_addr_addsub0000(1),
      O => computer_entity_mmu_entity_flash_addr_mux0000(21)
    );
  clk_IBUF_BUFG : BUFG
    port map (
      I => clk_IBUF1,
      O => clk_IBUF_72
    );
  computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_lut_0_INV_0 : INV
    port map (
      I => computer_entity_mmu_entity_flash_mem_addr(0),
      O => computer_entity_mmu_entity_Madd_flash_mem_addr_addsub0000_lut(0)
    );
  computer_entity_mmu_entity_Madd_flash_addr_addsub0000_lut_1_INV_0 : INV
    port map (
      I => computer_entity_mmu_entity_flash_addr(1),
      O => computer_entity_mmu_entity_Madd_flash_addr_addsub0000_lut(1)
    );
  computer_entity_pc_write_entity_Madd_pc_one_out_lut_0_INV_0 : INV
    port map (
      I => computer_entity_pc_write_entity_pc(0),
      O => computer_entity_pc_write_entity_Madd_pc_one_out_lut(0)
    );
  computer_entity_pc_write_entity_rst_inv1_INV_0 : INV
    port map (
      I => rst_IBUF_537,
      O => computer_entity_mmu_entity_Flash_entity_rst_inv
    );
  computer_entity_mmu_entity_reading_flash_inv1_INV_0 : INV
    port map (
      I => computer_entity_mmu_entity_reading_flash_391,
      O => computer_entity_mmu_entity_reading_flash_inv
    );
  computer_entity_mmu_entity_flash_state_FSM_Out51_INV_0 : INV
    port map (
      I => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      O => led_0_OBUF_457
    );
  computer_entity_mmu_entity_Flash_entity_state_FSM_Out31_INV_0 : INV
    port map (
      I => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_155,
      O => computer_entity_mmu_entity_Flash_entity_state_cmp_ne0000
    );
  computer_entity_mmu_entity_Flash_entity_FlashOE_mux0000_SW0 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd3_154,
      I1 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd5_157,
      LO => N2
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_0_21 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      I1 => computer_entity_mmu_entity_flash_state_FSM_FFd5_389,
      LO => N76,
      O => N37
    );
  computer_entity_mmu_entity_flash_state_FSM_FFd4_In_SW0 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      I1 => computer_entity_mmu_entity_flash_state_cmp_eq0000,
      LO => N77,
      O => N4
    );
  computer_entity_mmu_entity_flash_state_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(2),
      I1 => computer_entity_mmu_entity_flash_read_counter(0),
      I2 => computer_entity_mmu_entity_flash_read_counter(1),
      LO => N78,
      O => computer_entity_mmu_entity_Madd_flash_read_counter_addsub0000_cy(2)
    );
  computer_entity_mmu_entity_flash_read_counter_mux0000_0_SW0 : LUT3_L
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => computer_entity_mmu_entity_flash_read_counter(4),
      I1 => computer_entity_mmu_entity_flash_read_counter(3),
      I2 => computer_entity_mmu_entity_Madd_flash_read_counter_addsub0000_cy(2),
      LO => N6
    );
  computer_entity_mmu_entity_Flash_entity_FlashWE_mux000046_SW0 : LUT4_L
    generic map(
      INIT => X"EFFE"
    )
    port map (
      I0 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd2_152,
      I1 => computer_entity_mmu_entity_Flash_entity_state_FSM_FFd4_155,
      I2 => computer_entity_mmu_entity_Flash_entity_old_ctl_139,
      I3 => computer_entity_mmu_entity_flash_state_FSM_FFd4_387,
      LO => N74
    );

end Structure;

