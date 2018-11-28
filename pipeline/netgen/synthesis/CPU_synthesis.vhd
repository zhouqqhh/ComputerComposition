--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: CPU_synthesis.vhd
-- /___/   /\     Timestamp: Wed Nov 28 10:53:02 2018
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
    rst : in STD_LOGIC := 'X'; 
    led : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end CPU;

architecture Structure of CPU is
  signal N1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal clk_BUFGP_116 : STD_LOGIC; 
  signal computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_121 : STD_LOGIC; 
  signal computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_122 : STD_LOGIC; 
  signal computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_not0001 : STD_LOGIC; 
  signal computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_mux0000 : STD_LOGIC; 
  signal computer_entity_control_entity_Mtrien_alu_src1_immi_chooser_125 : STD_LOGIC; 
  signal computer_entity_control_entity_Mtrien_reg_wb_init_control_signal_reg_wb_data_chooser_126 : STD_LOGIC; 
  signal computer_entity_ex_alu_control_alu_src0_2_75_127 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_175 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f51 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f510 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f511 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f512 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f513 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f514 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f515 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f52 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f53 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f54 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f55 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f56 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f57 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f58 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f59 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_191 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_41_192 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_410_193 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_411_194 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_412_195 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_413_196 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_414_197 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_415_198 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_42_199 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_43_200 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_44_201 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_45_202 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_47_203 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_48_204 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_49_205 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_206 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f51 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f510 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f511 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f512 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f513 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f514 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f515 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f52 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f53 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f54 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f55 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f56 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f57 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f58 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f59 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_5_222 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_51_223 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_510_224 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_511_225 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_512_226 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_513_227 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_514_228 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_515_229 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_516_230 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_517_231 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_518_232 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_519_233 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_52_234 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_520_235 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_521_236 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_522_237 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_523_238 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_524_239 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_525_240 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_526_241 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_527_242 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_528_243 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_529_244 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_53_245 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_530_246 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_531_247 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_54_248 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_55_249 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_56_250 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_57_251 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_58_252 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_59_253 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_6_254 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_61_255 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_610_256 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_611_257 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_612_258 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_613_259 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_614_260 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_615_261 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_62_262 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_63_263 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_64_264 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_65_265 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_66_266 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_67_267 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_68_268 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Mmux_result_tem_69_269 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh11_270 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh12_271 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh13_272 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh32 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh33 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh34_275 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh35 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh36 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh37 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh38 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh39 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh4_281 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh40 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh41 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh42 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh43 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh5_286 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh6_287 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh7_288 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh8_289 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_Sh9_290 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0000 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_0_Q : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_Q_310 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_Q_311 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_14_312 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_29_313 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_61_314 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_14_315 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_29_316 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_61_317 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_14_318 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_29_319 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_61_320 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_14_321 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_29_322 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_61_323 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_1_Q : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_4_Q : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_5_Q : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_6_Q : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_7_Q : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_Q_329 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_Q_330 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_13_332 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_28_333 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_13_336 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_28_337 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_13_339 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_28_340 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_13_342 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_28_343 : STD_LOGIC; 
  signal computer_entity_exe_entity_src1_chooser_Mmux_output21_369 : STD_LOGIC; 
  signal computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386 : STD_LOGIC; 
  signal computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387 : STD_LOGIC; 
  signal computer_entity_exetomem_entity_rst_inv : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393 : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394 : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395 : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396 : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_alu_immi_0_1_398 : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_alu_immi_1_1_400 : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_data_chooser_402 : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403 : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_0_Q : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_1_Q : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_11_Q : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_14_Q : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_2_Q : STD_LOGIC; 
  signal computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442 : STD_LOGIC; 
  signal computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_0_rt_445 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Mrom_varindex0000 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Mrom_varindex00001_453 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Mrom_varindex000010 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Mrom_varindex000011 : STD_LOGIC; 
  signal computer_entity_mmu_entity_Mrom_varindex000014 : STD_LOGIC; 
  signal computer_entity_mmu_entity_instruction_out_0_Q : STD_LOGIC; 
  signal computer_entity_mmu_entity_instruction_out_1_Q : STD_LOGIC; 
  signal computer_entity_mmu_entity_instruction_out_11_Q : STD_LOGIC; 
  signal computer_entity_mmu_entity_instruction_out_14_Q : STD_LOGIC; 
  signal computer_entity_mmu_entity_instruction_out_2_Q : STD_LOGIC; 
  signal computer_entity_mmu_entity_instruction_out_cmp_lt0000 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_10_rt_465 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_11_rt_467 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_12_rt_469 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_13_rt_471 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_14_rt_473 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_1_rt_475 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_2_rt_477 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_3_rt_479 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_4_rt_481 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_5_rt_483 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_6_rt_485 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_7_rt_487 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_8_rt_489 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy_9_rt_491 : STD_LOGIC; 
  signal computer_entity_pc_write_entity_Madd_pc_one_xor_15_rt_493 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_0_542 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_1_543 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_10_544 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_11_545 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_12_546 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_13_547 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_14_548 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_15_549 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_2_550 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_3_551 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_4_552 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_5_553 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_6_554 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_7_555 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_8_556 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_9_557 : STD_LOGIC; 
  signal rst_IBUF_591 : STD_LOGIC; 
  signal computer_entity_control_entity_Mtridata_alu_control_signal_alu_op : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal computer_entity_control_entity_Mtridata_alu_src1_immi_chooser : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_control_entity_Mtridata_alu_src1_immi_chooser_mux0000 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_ex_alu_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_exe_entity_alu_entity_result_tem_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_exe_entity_alu_entity_result_tem_shift0001 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal computer_entity_exe_entity_src0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_exe_entity_src1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal computer_entity_exetomem_entity_alu_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_id_alu_control_alu_op : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_id_immi_final : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal computer_entity_idtoexe_entity_alu_immi : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal computer_entity_idtoexe_entity_rx : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_memtowb_entity_alu_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_memtowb_entity_mem_data : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal computer_entity_pc_write_entity_Madd_pc_one_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal computer_entity_pc_write_entity_Madd_pc_one_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_pc_write_entity_pc : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_pc_write_entity_pc_cand : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_registers_entity_input_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_selected_rx : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1)
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_0_rt_445,
      O => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy(0)
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(5),
      I1 => computer_entity_pc_write_entity_pc(6),
      I2 => computer_entity_pc_write_entity_pc(7),
      I3 => computer_entity_pc_write_entity_pc(8),
      O => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut(1)
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy(0),
      DI => N1,
      S => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut(1),
      O => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy(1)
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(9),
      I1 => computer_entity_pc_write_entity_pc(10),
      I2 => computer_entity_pc_write_entity_pc(11),
      I3 => computer_entity_pc_write_entity_pc(12),
      O => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut(2)
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy(1),
      DI => N1,
      S => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut(2),
      O => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy(2)
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut_3_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(13),
      I1 => computer_entity_pc_write_entity_pc(14),
      I2 => computer_entity_pc_write_entity_pc(15),
      O => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut(3)
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy(2),
      DI => N1,
      S => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_lut(3),
      O => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy(3)
    );
  computer_entity_mmu_entity_instruction_out_0 : LD
    port map (
      D => computer_entity_mmu_entity_Mrom_varindex0000,
      G => computer_entity_mmu_entity_instruction_out_cmp_lt0000,
      Q => computer_entity_mmu_entity_instruction_out_0_Q
    );
  computer_entity_mmu_entity_instruction_out_1 : LD
    port map (
      D => computer_entity_mmu_entity_Mrom_varindex00001_453,
      G => computer_entity_mmu_entity_instruction_out_cmp_lt0000,
      Q => computer_entity_mmu_entity_instruction_out_1_Q
    );
  computer_entity_mmu_entity_instruction_out_2 : LD
    port map (
      D => computer_entity_mmu_entity_Mrom_varindex000010,
      G => computer_entity_mmu_entity_instruction_out_cmp_lt0000,
      Q => computer_entity_mmu_entity_instruction_out_2_Q
    );
  computer_entity_mmu_entity_instruction_out_11 : LD
    port map (
      D => computer_entity_mmu_entity_Mrom_varindex000011,
      G => computer_entity_mmu_entity_instruction_out_cmp_lt0000,
      Q => computer_entity_mmu_entity_instruction_out_11_Q
    );
  computer_entity_mmu_entity_instruction_out_14 : LD
    port map (
      D => computer_entity_mmu_entity_Mrom_varindex000014,
      G => computer_entity_mmu_entity_instruction_out_cmp_lt0000,
      Q => computer_entity_mmu_entity_instruction_out_14_Q
    );
  computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_data_chooser : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_control_entity_Mtrien_reg_wb_init_control_signal_reg_wb_data_chooser_126,
      Q => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_data_chooser_402
    );
  computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      Q => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403
    );
  computer_entity_idtoexe_entity_alu_control_signal_alu_op_0 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_alu_control_alu_op(0),
      Q => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393
    );
  computer_entity_idtoexe_entity_alu_control_signal_alu_op_1 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_121,
      Q => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394
    );
  computer_entity_idtoexe_entity_rx_0 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(0),
      Q => computer_entity_idtoexe_entity_rx(0)
    );
  computer_entity_idtoexe_entity_rx_1 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(1),
      Q => computer_entity_idtoexe_entity_rx(1)
    );
  computer_entity_idtoexe_entity_rx_2 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(2),
      Q => computer_entity_idtoexe_entity_rx(2)
    );
  computer_entity_idtoexe_entity_rx_3 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(3),
      Q => computer_entity_idtoexe_entity_rx(3)
    );
  computer_entity_idtoexe_entity_rx_4 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(4),
      Q => computer_entity_idtoexe_entity_rx(4)
    );
  computer_entity_idtoexe_entity_rx_5 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(5),
      Q => computer_entity_idtoexe_entity_rx(5)
    );
  computer_entity_idtoexe_entity_rx_6 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(6),
      Q => computer_entity_idtoexe_entity_rx(6)
    );
  computer_entity_idtoexe_entity_rx_7 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(7),
      Q => computer_entity_idtoexe_entity_rx(7)
    );
  computer_entity_idtoexe_entity_rx_8 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(8),
      Q => computer_entity_idtoexe_entity_rx(8)
    );
  computer_entity_idtoexe_entity_rx_9 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(9),
      Q => computer_entity_idtoexe_entity_rx(9)
    );
  computer_entity_idtoexe_entity_rx_10 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(10),
      Q => computer_entity_idtoexe_entity_rx(10)
    );
  computer_entity_idtoexe_entity_rx_11 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(11),
      Q => computer_entity_idtoexe_entity_rx(11)
    );
  computer_entity_idtoexe_entity_rx_12 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(12),
      Q => computer_entity_idtoexe_entity_rx(12)
    );
  computer_entity_idtoexe_entity_rx_13 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(13),
      Q => computer_entity_idtoexe_entity_rx(13)
    );
  computer_entity_idtoexe_entity_rx_14 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(14),
      Q => computer_entity_idtoexe_entity_rx(14)
    );
  computer_entity_idtoexe_entity_rx_15 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_selected_rx(15),
      Q => computer_entity_idtoexe_entity_rx(15)
    );
  computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_122,
      Q => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395
    );
  computer_entity_idtoexe_entity_alu_immi_0 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_immi_final(0),
      Q => computer_entity_idtoexe_entity_alu_immi(0)
    );
  computer_entity_idtoexe_entity_alu_immi_1 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_immi_final(1),
      Q => computer_entity_idtoexe_entity_alu_immi(1)
    );
  computer_entity_idtoexe_entity_alu_immi_2 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_immi_final(2),
      Q => computer_entity_idtoexe_entity_alu_immi(2)
    );
  computer_entity_pc_write_entity_pc_0 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(0),
      Q => computer_entity_pc_write_entity_pc(0)
    );
  computer_entity_pc_write_entity_pc_1 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(1),
      Q => computer_entity_pc_write_entity_pc(1)
    );
  computer_entity_pc_write_entity_pc_2 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(2),
      Q => computer_entity_pc_write_entity_pc(2)
    );
  computer_entity_pc_write_entity_pc_3 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(3),
      Q => computer_entity_pc_write_entity_pc(3)
    );
  computer_entity_pc_write_entity_pc_4 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(4),
      Q => computer_entity_pc_write_entity_pc(4)
    );
  computer_entity_pc_write_entity_pc_5 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(5),
      Q => computer_entity_pc_write_entity_pc(5)
    );
  computer_entity_pc_write_entity_pc_6 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(6),
      Q => computer_entity_pc_write_entity_pc(6)
    );
  computer_entity_pc_write_entity_pc_7 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(7),
      Q => computer_entity_pc_write_entity_pc(7)
    );
  computer_entity_pc_write_entity_pc_8 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(8),
      Q => computer_entity_pc_write_entity_pc(8)
    );
  computer_entity_pc_write_entity_pc_9 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(9),
      Q => computer_entity_pc_write_entity_pc(9)
    );
  computer_entity_pc_write_entity_pc_10 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(10),
      Q => computer_entity_pc_write_entity_pc(10)
    );
  computer_entity_pc_write_entity_pc_11 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(11),
      Q => computer_entity_pc_write_entity_pc(11)
    );
  computer_entity_pc_write_entity_pc_12 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(12),
      Q => computer_entity_pc_write_entity_pc(12)
    );
  computer_entity_pc_write_entity_pc_13 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(13),
      Q => computer_entity_pc_write_entity_pc(13)
    );
  computer_entity_pc_write_entity_pc_14 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(14),
      Q => computer_entity_pc_write_entity_pc(14)
    );
  computer_entity_pc_write_entity_pc_15 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_pc_write_entity_pc_cand(15),
      Q => computer_entity_pc_write_entity_pc(15)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_0_Q : MUXCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      DI => N1,
      S => computer_entity_pc_write_entity_Madd_pc_one_lut(0),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(0)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_0_Q : XORCY
    port map (
      CI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      LI => computer_entity_pc_write_entity_Madd_pc_one_lut(0),
      O => computer_entity_pc_write_entity_pc_cand(0)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_1_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(0),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_1_rt_475,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(1)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_1_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(0),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_1_rt_475,
      O => computer_entity_pc_write_entity_pc_cand(1)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_2_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(1),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_2_rt_477,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(2)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_2_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(1),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_2_rt_477,
      O => computer_entity_pc_write_entity_pc_cand(2)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_3_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(2),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_3_rt_479,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(3)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_3_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(2),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_3_rt_479,
      O => computer_entity_pc_write_entity_pc_cand(3)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_4_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(3),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_4_rt_481,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(4)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_4_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(3),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_4_rt_481,
      O => computer_entity_pc_write_entity_pc_cand(4)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_5_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(4),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_5_rt_483,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(5)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_5_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(4),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_5_rt_483,
      O => computer_entity_pc_write_entity_pc_cand(5)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_6_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(5),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_6_rt_485,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(6)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_6_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(5),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_6_rt_485,
      O => computer_entity_pc_write_entity_pc_cand(6)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_7_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(6),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_7_rt_487,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(7)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_7_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(6),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_7_rt_487,
      O => computer_entity_pc_write_entity_pc_cand(7)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_8_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(7),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_8_rt_489,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(8)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_8_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(7),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_8_rt_489,
      O => computer_entity_pc_write_entity_pc_cand(8)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_9_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(8),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_9_rt_491,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(9)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_9_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(8),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_9_rt_491,
      O => computer_entity_pc_write_entity_pc_cand(9)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_10_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(9),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_10_rt_465,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(10)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_10_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(9),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_10_rt_465,
      O => computer_entity_pc_write_entity_pc_cand(10)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_11_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(10),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_11_rt_467,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(11)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_11_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(10),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_11_rt_467,
      O => computer_entity_pc_write_entity_pc_cand(11)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_12_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(11),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_12_rt_469,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(12)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_12_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(11),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_12_rt_469,
      O => computer_entity_pc_write_entity_pc_cand(12)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_13_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(12),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_13_rt_471,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(13)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_13_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(12),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_13_rt_471,
      O => computer_entity_pc_write_entity_pc_cand(13)
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_14_Q : MUXCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(13),
      DI => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      S => computer_entity_pc_write_entity_Madd_pc_one_cy_14_rt_473,
      O => computer_entity_pc_write_entity_Madd_pc_one_cy(14)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_14_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(13),
      LI => computer_entity_pc_write_entity_Madd_pc_one_cy_14_rt_473,
      O => computer_entity_pc_write_entity_pc_cand(14)
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_15_Q : XORCY
    port map (
      CI => computer_entity_pc_write_entity_Madd_pc_one_cy(14),
      LI => computer_entity_pc_write_entity_Madd_pc_one_xor_15_rt_493,
      O => computer_entity_pc_write_entity_pc_cand(15)
    );
  computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0 : LD
    port map (
      D => computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_mux0000,
      G => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_not0001,
      Q => computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_122
    );
  computer_entity_control_entity_Mtridata_alu_immi_extend : LD
    port map (
      D => computer_entity_iftoid_entity_instruction_14_Q,
      G => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_not0001,
      Q => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0)
    );
  computer_entity_control_entity_Mtrien_alu_src1_immi_chooser : LD
    port map (
      D => computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_mux0000,
      G => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_not0001,
      Q => computer_entity_control_entity_Mtrien_alu_src1_immi_chooser_125
    );
  computer_entity_control_entity_Mtrien_alu_control_signal_alu_op : LD
    port map (
      D => computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_mux0000,
      G => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_not0001,
      Q => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_121
    );
  computer_entity_control_entity_Mtrien_reg_wb_init_control_signal_reg_wb_data_chooser : LD
    port map (
      D => computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_mux0000,
      G => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_not0001,
      Q => computer_entity_control_entity_Mtrien_reg_wb_init_control_signal_reg_wb_data_chooser_126
    );
  computer_entity_control_entity_Mtridata_alu_src1_immi_chooser_0 : LD
    port map (
      D => computer_entity_control_entity_Mtridata_alu_src1_immi_chooser_mux0000(0),
      G => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_not0001,
      Q => computer_entity_control_entity_Mtridata_alu_src1_immi_chooser(0)
    );
  computer_entity_registers_entity_regs_data_0_0 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(0),
      Q => computer_entity_registers_entity_regs_data_0_0_542
    );
  computer_entity_registers_entity_regs_data_0_1 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(1),
      Q => computer_entity_registers_entity_regs_data_0_1_543
    );
  computer_entity_registers_entity_regs_data_0_2 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(2),
      Q => computer_entity_registers_entity_regs_data_0_2_550
    );
  computer_entity_registers_entity_regs_data_0_3 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(3),
      Q => computer_entity_registers_entity_regs_data_0_3_551
    );
  computer_entity_registers_entity_regs_data_0_4 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(4),
      Q => computer_entity_registers_entity_regs_data_0_4_552
    );
  computer_entity_registers_entity_regs_data_0_5 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(5),
      Q => computer_entity_registers_entity_regs_data_0_5_553
    );
  computer_entity_registers_entity_regs_data_0_6 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(6),
      Q => computer_entity_registers_entity_regs_data_0_6_554
    );
  computer_entity_registers_entity_regs_data_0_7 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(7),
      Q => computer_entity_registers_entity_regs_data_0_7_555
    );
  computer_entity_registers_entity_regs_data_0_8 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(8),
      Q => computer_entity_registers_entity_regs_data_0_8_556
    );
  computer_entity_registers_entity_regs_data_0_9 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(9),
      Q => computer_entity_registers_entity_regs_data_0_9_557
    );
  computer_entity_registers_entity_regs_data_0_10 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(10),
      Q => computer_entity_registers_entity_regs_data_0_10_544
    );
  computer_entity_registers_entity_regs_data_0_11 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(11),
      Q => computer_entity_registers_entity_regs_data_0_11_545
    );
  computer_entity_registers_entity_regs_data_0_12 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(12),
      Q => computer_entity_registers_entity_regs_data_0_12_546
    );
  computer_entity_registers_entity_regs_data_0_13 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(13),
      Q => computer_entity_registers_entity_regs_data_0_13_547
    );
  computer_entity_registers_entity_regs_data_0_14 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(14),
      Q => computer_entity_registers_entity_regs_data_0_14_548
    );
  computer_entity_registers_entity_regs_data_0_15 : FDCE_1
    port map (
      C => clk_BUFGP_116,
      CE => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_input_data(15),
      Q => computer_entity_registers_entity_regs_data_0_15_549
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_result_tem_mux0000,
      DI => computer_entity_exe_entity_src0(0),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(0),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(0)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_0_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_result_tem_mux0000,
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(0),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(0)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(0),
      DI => computer_entity_exe_entity_src0(1),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(1),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(1)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_1_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(0),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(1),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(1)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(1),
      DI => computer_entity_exe_entity_src0(2),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(2),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(2)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_2_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(1),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(2),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(2)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(2),
      DI => computer_entity_exe_entity_src0(3),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(3),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(3)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_3_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(2),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(3),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(3)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(3),
      DI => computer_entity_exe_entity_src0(4),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(4),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(4)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_4_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(3),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(4),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(4)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(4),
      DI => computer_entity_exe_entity_src0(5),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(5),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(5)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_5_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(4),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(5),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(5)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(5),
      DI => computer_entity_exe_entity_src0(6),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(6),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(6)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_6_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(5),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(6),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(6)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(6),
      DI => computer_entity_exe_entity_src0(7),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(7),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(7)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_7_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(6),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(7),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(7)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(7),
      DI => computer_entity_exe_entity_src0(8),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(8),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(8)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_8_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(7),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(8),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(8)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(8),
      DI => computer_entity_exe_entity_src0(9),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(9),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(9)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_9_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(8),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(9),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(9)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(9),
      DI => computer_entity_exe_entity_src0(10),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(10),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(10)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_10_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(9),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(10),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(10)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(10),
      DI => computer_entity_exe_entity_src0(11),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(11),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(11)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_11_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(10),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(11),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(11)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(11),
      DI => computer_entity_exe_entity_src0(12),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(12),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(12)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_12_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(11),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(12),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(12)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(12),
      DI => computer_entity_exe_entity_src0(13),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(13),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(13)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_13_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(12),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(13),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(13)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(13),
      DI => computer_entity_exe_entity_src0(14),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(14),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(14)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_14_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(13),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(14),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(14)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_xor_15_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_cy(14),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(15),
      O => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(15)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_14 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f515,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f515,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(9)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_14 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_615_261,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_531_247,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f515
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_531 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(9),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_531_247
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_14 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_530_246,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_415_198,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f515
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_13 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f514,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f514,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(8)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_13 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_614_260,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_529_244,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f514
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_529 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(8),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_529_244
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_13 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_528_243,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_414_197,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f514
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_12 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f513,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f513,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(7)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_12 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_613_259,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_527_242,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f513
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_527 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(7),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_527_242
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_12 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_526_241,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_413_196,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f513
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_11 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f512,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f512,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(6)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_11 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_612_258,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_525_240,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f512
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_525 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(6),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_525_240
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_11 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_524_239,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_412_195,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f512
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_10 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f511,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f511,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(5)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_10 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_611_257,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_523_238,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f511
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_523 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(5),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_523_238
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_10 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_522_237,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_411_194,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f511
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_9 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f510,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f510,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(4)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_9 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_610_256,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_521_236,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f510
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_521 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(4),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_521_236
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_9 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_520_235,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_410_193,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f510
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_8 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f59,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f59,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(3)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_8 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_69_269,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_519_233,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f59
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_519 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(3),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_519_233
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_8 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_518_232,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_49_205,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f59
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_7 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f58,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f58,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(2)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_7 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_68_268,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_517_231,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f58
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_7 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_516_230,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_48_204,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f58
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_6 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f57,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f57,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(1)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_6 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_67_267,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_515_229,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f57
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_6 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_514_228,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_47_203,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f57
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_5 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f56,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f56,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(15)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_5 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_66_266,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_513_227,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f56
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_513 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(15),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_513_227
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_5 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_512_226,
      I1 => computer_entity_exe_entity_src0(15),
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f56
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_4 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f55,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f55,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(14)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_4 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_65_265,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_511_225,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f55
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(14),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_511_225
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_4 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_510_224,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_45_202,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f55
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_3 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f54,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f54,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(13)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_3 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_64_264,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_59_253,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f54
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_59 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(13),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_59_253
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_3 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_58_252,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_44_201,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f54
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_2 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f53,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f53,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(12)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_2 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_63_263,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_57_251,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f53
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_57 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(12),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_57_251
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_2 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_56_250,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_43_200,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f53
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_1 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f52,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f52,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(11)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_1 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_62_262,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_55_249,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f52
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_55 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(11),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_55_249
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_1 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_54_248,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_42_199,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f52
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6_0 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f51,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f51,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(10)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_0 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_61_255,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_53_245,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f51
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_53 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(10),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_53_245
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_0 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_52_234,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_41_192,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f51
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_2_f6 : MUXF6
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_206,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_175,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_ex_alu_result(0)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_6_254,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_51_223,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_f5_206
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5 : MUXF5
    port map (
      I0 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_5_222,
      I1 => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_191,
      S => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_3_f5_175
    );
  computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      Q => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_signal_443
    );
  computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      Q => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442
    );
  computer_entity_memtowb_entity_alu_result_0 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(0),
      Q => computer_entity_memtowb_entity_alu_result(0)
    );
  computer_entity_memtowb_entity_alu_result_1 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(1),
      Q => computer_entity_memtowb_entity_alu_result(1)
    );
  computer_entity_memtowb_entity_alu_result_2 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(2),
      Q => computer_entity_memtowb_entity_alu_result(2)
    );
  computer_entity_memtowb_entity_alu_result_3 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(3),
      Q => computer_entity_memtowb_entity_alu_result(3)
    );
  computer_entity_memtowb_entity_alu_result_4 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(4),
      Q => computer_entity_memtowb_entity_alu_result(4)
    );
  computer_entity_memtowb_entity_alu_result_5 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(5),
      Q => computer_entity_memtowb_entity_alu_result(5)
    );
  computer_entity_memtowb_entity_alu_result_6 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(6),
      Q => computer_entity_memtowb_entity_alu_result(6)
    );
  computer_entity_memtowb_entity_alu_result_7 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(7),
      Q => computer_entity_memtowb_entity_alu_result(7)
    );
  computer_entity_memtowb_entity_alu_result_8 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(8),
      Q => computer_entity_memtowb_entity_alu_result(8)
    );
  computer_entity_memtowb_entity_alu_result_9 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(9),
      Q => computer_entity_memtowb_entity_alu_result(9)
    );
  computer_entity_memtowb_entity_alu_result_10 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(10),
      Q => computer_entity_memtowb_entity_alu_result(10)
    );
  computer_entity_memtowb_entity_alu_result_11 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(11),
      Q => computer_entity_memtowb_entity_alu_result(11)
    );
  computer_entity_memtowb_entity_alu_result_12 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(12),
      Q => computer_entity_memtowb_entity_alu_result(12)
    );
  computer_entity_memtowb_entity_alu_result_13 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(13),
      Q => computer_entity_memtowb_entity_alu_result(13)
    );
  computer_entity_memtowb_entity_alu_result_14 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(14),
      Q => computer_entity_memtowb_entity_alu_result(14)
    );
  computer_entity_memtowb_entity_alu_result_15 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(15),
      Q => computer_entity_memtowb_entity_alu_result(15)
    );
  computer_entity_memtowb_entity_mem_data_0 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => N1,
      Q => computer_entity_memtowb_entity_mem_data(0)
    );
  computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_data_chooser_402,
      Q => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386
    );
  computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      Q => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387
    );
  computer_entity_exetomem_entity_alu_result_0 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(0),
      Q => computer_entity_exetomem_entity_alu_result(0)
    );
  computer_entity_exetomem_entity_alu_result_1 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(1),
      Q => computer_entity_exetomem_entity_alu_result(1)
    );
  computer_entity_exetomem_entity_alu_result_2 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(2),
      Q => computer_entity_exetomem_entity_alu_result(2)
    );
  computer_entity_exetomem_entity_alu_result_3 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(3),
      Q => computer_entity_exetomem_entity_alu_result(3)
    );
  computer_entity_exetomem_entity_alu_result_4 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(4),
      Q => computer_entity_exetomem_entity_alu_result(4)
    );
  computer_entity_exetomem_entity_alu_result_5 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(5),
      Q => computer_entity_exetomem_entity_alu_result(5)
    );
  computer_entity_exetomem_entity_alu_result_6 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(6),
      Q => computer_entity_exetomem_entity_alu_result(6)
    );
  computer_entity_exetomem_entity_alu_result_7 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(7),
      Q => computer_entity_exetomem_entity_alu_result(7)
    );
  computer_entity_exetomem_entity_alu_result_8 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(8),
      Q => computer_entity_exetomem_entity_alu_result(8)
    );
  computer_entity_exetomem_entity_alu_result_9 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(9),
      Q => computer_entity_exetomem_entity_alu_result(9)
    );
  computer_entity_exetomem_entity_alu_result_10 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(10),
      Q => computer_entity_exetomem_entity_alu_result(10)
    );
  computer_entity_exetomem_entity_alu_result_11 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(11),
      Q => computer_entity_exetomem_entity_alu_result(11)
    );
  computer_entity_exetomem_entity_alu_result_12 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(12),
      Q => computer_entity_exetomem_entity_alu_result(12)
    );
  computer_entity_exetomem_entity_alu_result_13 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(13),
      Q => computer_entity_exetomem_entity_alu_result(13)
    );
  computer_entity_exetomem_entity_alu_result_14 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(14),
      Q => computer_entity_exetomem_entity_alu_result(14)
    );
  computer_entity_exetomem_entity_alu_result_15 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(15),
      Q => computer_entity_exetomem_entity_alu_result(15)
    );
  computer_entity_iftoid_entity_instruction_0 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_mmu_entity_instruction_out_0_Q,
      Q => computer_entity_iftoid_entity_instruction_0_Q
    );
  computer_entity_iftoid_entity_instruction_1 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_mmu_entity_instruction_out_1_Q,
      Q => computer_entity_iftoid_entity_instruction_1_Q
    );
  computer_entity_iftoid_entity_instruction_2 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_mmu_entity_instruction_out_2_Q,
      Q => computer_entity_iftoid_entity_instruction_2_Q
    );
  computer_entity_iftoid_entity_instruction_11 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_mmu_entity_instruction_out_11_Q,
      Q => computer_entity_iftoid_entity_instruction_11_Q
    );
  computer_entity_iftoid_entity_instruction_14 : FDCE
    port map (
      C => clk_BUFGP_116,
      CE => N1,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_mmu_entity_instruction_out_14_Q,
      Q => computer_entity_iftoid_entity_instruction_14_Q
    );
  computer_entity_control_entity_reg_wb_init_control_signal_reg_wb_signal_not000111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_14_Q,
      I1 => computer_entity_iftoid_entity_instruction_11_Q,
      O => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_not0001
    );
  computer_entity_control_entity_alu_control_signal_alu_op_0_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(0),
      I1 => computer_entity_control_entity_Mtrien_alu_control_signal_alu_op_121,
      O => computer_entity_id_alu_control_alu_op(0)
    );
  computer_entity_control_entity_Mtrien_reg_wb_init_control_signal_reg_wb_data_chooser_mux000011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_11_Q,
      I1 => computer_entity_iftoid_entity_instruction_14_Q,
      O => computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_mux0000
    );
  computer_entity_control_entity_Mtridata_alu_src1_immi_chooser_mux0000_0_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_14_Q,
      I1 => computer_entity_iftoid_entity_instruction_11_Q,
      O => computer_entity_control_entity_Mtridata_alu_src1_immi_chooser_mux0000(0)
    );
  computer_entity_mmu_entity_Mrom_varindex00001111 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(1),
      I1 => computer_entity_pc_write_entity_pc(0),
      I2 => computer_entity_pc_write_entity_pc(3),
      I3 => computer_entity_pc_write_entity_pc(2),
      O => computer_entity_mmu_entity_Mrom_varindex000011
    );
  computer_entity_mmu_entity_Mrom_varindex0000111 : LUT4
    generic map(
      INIT => X"1030"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(2),
      I1 => computer_entity_pc_write_entity_pc(3),
      I2 => computer_entity_pc_write_entity_pc(1),
      I3 => computer_entity_pc_write_entity_pc(0),
      O => computer_entity_mmu_entity_Mrom_varindex00001_453
    );
  computer_entity_mmu_entity_Mrom_varindex0000101 : LUT4
    generic map(
      INIT => X"1030"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(1),
      I1 => computer_entity_pc_write_entity_pc(3),
      I2 => computer_entity_pc_write_entity_pc(2),
      I3 => computer_entity_pc_write_entity_pc(0),
      O => computer_entity_mmu_entity_Mrom_varindex000010
    );
  computer_entity_mmu_entity_Mrom_varindex00001 : LUT4
    generic map(
      INIT => X"1030"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(2),
      I1 => computer_entity_pc_write_entity_pc(3),
      I2 => computer_entity_pc_write_entity_pc(0),
      I3 => computer_entity_pc_write_entity_pc(1),
      O => computer_entity_mmu_entity_Mrom_varindex0000
    );
  computer_entity_mmu_entity_Mrom_varindex0000141 : LUT4
    generic map(
      INIT => X"1554"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(3),
      I1 => computer_entity_pc_write_entity_pc(0),
      I2 => computer_entity_pc_write_entity_pc(1),
      I3 => computer_entity_pc_write_entity_pc(2),
      O => computer_entity_mmu_entity_Mrom_varindex000014
    );
  computer_entity_registers_entity_input_data_chooser_output_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(9),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(9)
    );
  computer_entity_registers_entity_input_data_chooser_output_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(8),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(8)
    );
  computer_entity_registers_entity_input_data_chooser_output_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(7),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(7)
    );
  computer_entity_registers_entity_input_data_chooser_output_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(6),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(6)
    );
  computer_entity_registers_entity_input_data_chooser_output_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(5),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(5)
    );
  computer_entity_registers_entity_input_data_chooser_output_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(4),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(4)
    );
  computer_entity_registers_entity_input_data_chooser_output_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(3),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(3)
    );
  computer_entity_registers_entity_input_data_chooser_output_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(2),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(2)
    );
  computer_entity_registers_entity_input_data_chooser_output_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(1),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(1)
    );
  computer_entity_registers_entity_input_data_chooser_output_15_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(15),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(15)
    );
  computer_entity_registers_entity_input_data_chooser_output_14_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(14),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(14)
    );
  computer_entity_registers_entity_input_data_chooser_output_13_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(13),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(13)
    );
  computer_entity_registers_entity_input_data_chooser_output_12_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(12),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(12)
    );
  computer_entity_registers_entity_input_data_chooser_output_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(11),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(11)
    );
  computer_entity_registers_entity_input_data_chooser_output_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(10),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(10)
    );
  computer_entity_registers_entity_input_data_chooser_output_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_control_signal_reg_wb_data_chooser_442,
      I1 => computer_entity_memtowb_entity_alu_result(0),
      I2 => computer_entity_memtowb_entity_mem_data(0),
      O => computer_entity_registers_entity_input_data(0)
    );
  computer_entity_exe_entity_src1_chooser_Mmux_output181 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_idtoexe_entity_alu_immi(2),
      O => computer_entity_exe_entity_src1(2)
    );
  computer_entity_exe_entity_src1_chooser_Mmux_output21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi_0_1_398,
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => computer_entity_exe_entity_src1(0)
    );
  computer_entity_exe_entity_src1_chooser_Mmux_output161 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi_1_1_400,
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => computer_entity_exe_entity_src1(1)
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_7_1 : LUT4
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_alu_entity_Sh39,
      I3 => computer_entity_exe_entity_alu_entity_Sh35,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_7_Q
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_5_1 : LUT4
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_alu_entity_Sh37,
      I3 => N265,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_5_Q
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_4_1 : LUT4
    generic map(
      INIT => X"3210"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_alu_entity_Sh36,
      I3 => N275,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_4_Q
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_SW1 : LUT4
    generic map(
      INIT => X"AFA3"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(1),
      I1 => computer_entity_exe_entity_src1(2),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I3 => N269,
      O => N5
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_SW1 : LUT4
    generic map(
      INIT => X"AFA3"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(0),
      I1 => computer_entity_exe_entity_src1(2),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I3 => N270,
      O => N8
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_SW1 : LUT4
    generic map(
      INIT => X"AFA3"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(3),
      I1 => computer_entity_exe_entity_src1(2),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I3 => N267,
      O => N11
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_SW1 : LUT4
    generic map(
      INIT => X"AFA3"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(2),
      I1 => computer_entity_exe_entity_src1(2),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I3 => N268,
      O => N14
    );
  computer_entity_ID_entity_reg0_data_out_15_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N16,
      I2 => computer_entity_ex_alu_result(15),
      O => computer_entity_selected_rx(15)
    );
  computer_entity_ID_entity_reg0_data_out_14_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N18,
      I2 => computer_entity_ex_alu_result(14),
      O => computer_entity_selected_rx(14)
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_61 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_14_321,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_29_322,
      I3 => computer_entity_exe_entity_alu_entity_Sh43,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_61_323
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_61 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_29_319,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_14_318,
      I3 => computer_entity_exe_entity_alu_entity_Sh42,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_61_320
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_14 : LUT4
    generic map(
      INIT => X"C0A0"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(12),
      I1 => computer_entity_exe_entity_src0(10),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_14_315
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_61 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_29_316,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_14_315,
      I3 => computer_entity_exe_entity_alu_entity_Sh41,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_61_317
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_14 : LUT4
    generic map(
      INIT => X"C0A0"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(11),
      I1 => computer_entity_exe_entity_src0(9),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_14_312
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_61 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_29_313,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_14_312,
      I3 => computer_entity_exe_entity_alu_entity_Sh40,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_61_314
    );
  computer_entity_ID_entity_reg0_data_out_9_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N54,
      I2 => computer_entity_ex_alu_result(9),
      O => computer_entity_selected_rx(9)
    );
  computer_entity_ID_entity_reg0_data_out_8_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N56,
      I2 => computer_entity_ex_alu_result(8),
      O => computer_entity_selected_rx(8)
    );
  computer_entity_ID_entity_reg0_data_out_7_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N58,
      I2 => computer_entity_ex_alu_result(7),
      O => computer_entity_selected_rx(7)
    );
  computer_entity_ID_entity_reg0_data_out_6_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N60,
      I2 => computer_entity_ex_alu_result(6),
      O => computer_entity_selected_rx(6)
    );
  computer_entity_ID_entity_reg0_data_out_5_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N62,
      I2 => computer_entity_ex_alu_result(5),
      O => computer_entity_selected_rx(5)
    );
  computer_entity_ID_entity_reg0_data_out_4_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N64,
      I2 => computer_entity_ex_alu_result(4),
      O => computer_entity_selected_rx(4)
    );
  computer_entity_ID_entity_reg0_data_out_3_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N66,
      I2 => computer_entity_ex_alu_result(3),
      O => computer_entity_selected_rx(3)
    );
  computer_entity_ID_entity_reg0_data_out_2_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N68,
      I2 => computer_entity_ex_alu_result(2),
      O => computer_entity_selected_rx(2)
    );
  computer_entity_ID_entity_reg0_data_out_1_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N70,
      I2 => computer_entity_ex_alu_result(1),
      O => computer_entity_selected_rx(1)
    );
  computer_entity_ID_entity_reg0_data_out_13_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N72,
      I2 => computer_entity_ex_alu_result(13),
      O => computer_entity_selected_rx(13)
    );
  computer_entity_ID_entity_reg0_data_out_12_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N74,
      I2 => computer_entity_ex_alu_result(12),
      O => computer_entity_selected_rx(12)
    );
  computer_entity_ID_entity_reg0_data_out_11_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N76,
      I2 => computer_entity_ex_alu_result(11),
      O => computer_entity_selected_rx(11)
    );
  computer_entity_ID_entity_reg0_data_out_10_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N78,
      I2 => computer_entity_ex_alu_result(10),
      O => computer_entity_selected_rx(10)
    );
  computer_entity_ID_entity_reg0_data_out_0_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => N80,
      I2 => computer_entity_ex_alu_result(0),
      O => computer_entity_selected_rx(0)
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_13 : LUT4
    generic map(
      INIT => X"C0A0"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(4),
      I1 => computer_entity_exe_entity_src0(6),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_13_342
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_60 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_28_343,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_13_342,
      I3 => computer_entity_exe_entity_alu_entity_Sh7_288,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(3)
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_13 : LUT4
    generic map(
      INIT => X"C0A0"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(3),
      I1 => computer_entity_exe_entity_src0(5),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_13_339
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_60 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_28_340,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_13_339,
      I3 => computer_entity_exe_entity_alu_entity_Sh6_287,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(2)
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_13 : LUT4
    generic map(
      INIT => X"C0A0"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(2),
      I1 => computer_entity_exe_entity_src0(4),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_13_336
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_60 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_28_337,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_13_336,
      I3 => computer_entity_exe_entity_alu_entity_Sh5_286,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(1)
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_13 : LUT4
    generic map(
      INIT => X"C0A0"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(1),
      I1 => computer_entity_exe_entity_src0(3),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_13_332
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_60 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(2),
      I1 => computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_28_333,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_13_332,
      I3 => computer_entity_exe_entity_alu_entity_Sh4_281,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(0)
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_591
    );
  led_15_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(15),
      O => led(15)
    );
  led_14_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(14),
      O => led(14)
    );
  led_13_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(13),
      O => led(13)
    );
  led_12_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(12),
      O => led(12)
    );
  led_11_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(11),
      O => led(11)
    );
  led_10_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(10),
      O => led(10)
    );
  led_9_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(9),
      O => led(9)
    );
  led_8_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(8),
      O => led(8)
    );
  led_7_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(7),
      O => led(7)
    );
  led_6_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(6),
      O => led(6)
    );
  led_5_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(5),
      O => led(5)
    );
  led_4_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(4),
      O => led(4)
    );
  led_3_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(3),
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(2),
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(1),
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => computer_entity_memtowb_entity_alu_result(0),
      O => led(0)
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux000021 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0000
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(4),
      O => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_0_rt_445
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(1),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_1_rt_475
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(2),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_2_rt_477
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(3),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_3_rt_479
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(4),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_4_rt_481
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(5),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_5_rt_483
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(6),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_6_rt_485
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(7),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_7_rt_487
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(8),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_8_rt_489
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(9),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_9_rt_491
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(10),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_10_rt_465
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(11),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_11_rt_467
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(12),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_12_rt_469
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(13),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_13_rt_471
    );
  computer_entity_pc_write_entity_Madd_pc_one_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(14),
      O => computer_entity_pc_write_entity_Madd_pc_one_cy_14_rt_473
    );
  computer_entity_pc_write_entity_Madd_pc_one_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_pc_write_entity_pc(15),
      O => computer_entity_pc_write_entity_Madd_pc_one_xor_15_rt_493
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_412 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(14),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(6),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_412_195
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_411 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(13),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(5),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_411_194
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_410 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(12),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(4),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_410_193
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_49 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(11),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(3),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_49_205
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_48 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(10),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(2),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_48_204
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_47 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(9),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(1),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_47_203
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_4 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(8),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(0),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_4_191
    );
  computer_entity_ex_alu_control_alu_src0_2_61 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => computer_entity_ex_alu_control_alu_src0_2_75_127,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_src0(15)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_518 : LUT4
    generic map(
      INIT => X"7250"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => N109,
      I2 => computer_entity_exe_entity_src0(3),
      I3 => computer_entity_exe_entity_alu_entity_Sh35,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_518_232
    );
  computer_entity_ex_alu_control_alu_src0_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(0),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      O => computer_entity_exe_entity_src0(0)
    );
  computer_entity_ex_alu_control_alu_src0_2_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(1),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      O => computer_entity_exe_entity_src0(1)
    );
  computer_entity_ex_alu_control_alu_src0_2_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(3),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      O => computer_entity_exe_entity_src0(3)
    );
  computer_entity_ex_alu_control_alu_src0_2_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(11),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      O => computer_entity_exe_entity_src0(11)
    );
  computer_entity_ex_alu_control_alu_src0_2_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(9),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      O => computer_entity_exe_entity_src0(9)
    );
  computer_entity_ex_alu_control_alu_src0_2_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(8),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_src0(8)
    );
  computer_entity_ex_alu_control_alu_src0_2_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(7),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      O => computer_entity_exe_entity_src0(7)
    );
  computer_entity_ex_alu_control_alu_src0_2_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(6),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_src0(6)
    );
  computer_entity_ex_alu_control_alu_src0_2_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(5),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_src0(5)
    );
  computer_entity_ex_alu_control_alu_src0_2_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(4),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_src0(4)
    );
  computer_entity_ex_alu_control_alu_src0_2_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(10),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      O => computer_entity_exe_entity_src0(10)
    );
  computer_entity_ex_alu_control_alu_src0_2_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(2),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      O => computer_entity_exe_entity_src0(2)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_517 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(2),
      I2 => computer_entity_exe_entity_src1(2),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(2),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_517_231
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_89_SW0 : LUT4
    generic map(
      INIT => X"B380"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(7),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I3 => computer_entity_exe_entity_src0(15),
      O => N111
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_89_SW1 : LUT4
    generic map(
      INIT => X"DF8A"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(7),
      I2 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I3 => computer_entity_exe_entity_src0(15),
      O => N112
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_512 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => N111,
      I1 => N112,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_61_323,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_512_226
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_89_SW0 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(14),
      I2 => computer_entity_exe_entity_src0(6),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      O => N114
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_89_SW1 : LUT4
    generic map(
      INIT => X"E4EE"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(14),
      I2 => computer_entity_exe_entity_src0(6),
      I3 => N266,
      O => N115
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_510 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N115,
      I1 => N114,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_61_320,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_510_224
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_89_SW0 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(13),
      I2 => computer_entity_exe_entity_src0(5),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      O => N117
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_89_SW1 : LUT4
    generic map(
      INIT => X"E4EE"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(13),
      I2 => computer_entity_exe_entity_src0(5),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      O => N118
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_58 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N118,
      I1 => N117,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_61_317,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_58_252
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_89_SW0 : LUT4
    generic map(
      INIT => X"D850"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(4),
      I2 => computer_entity_exe_entity_src0(12),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      O => N120
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_89_SW1 : LUT4
    generic map(
      INIT => X"D8FA"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(4),
      I2 => computer_entity_exe_entity_src0(12),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      O => N121
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_56 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N121,
      I1 => N120,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_61_314,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_56_250
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_516 : LUT4
    generic map(
      INIT => X"1B11"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => N123,
      I2 => N109,
      I3 => computer_entity_exe_entity_alu_entity_Sh34_275,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_516_230
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_415 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(15),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(9),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_415_198
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_9_1 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_alu_entity_Sh13_272,
      I3 => computer_entity_exe_entity_alu_entity_Sh9_290,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(9)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"CF65"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(3),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(3)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"CF65"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(4),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(4)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"CF65"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(5),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(5)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"CF65"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(6),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(6)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_7_Q : LUT4
    generic map(
      INIT => X"CF65"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(7),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(7)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_8_Q : LUT4
    generic map(
      INIT => X"CF65"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(8),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(8)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_9_Q : LUT4
    generic map(
      INIT => X"AF63"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_idtoexe_entity_rx(9),
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(9)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_10_Q : LUT4
    generic map(
      INIT => X"AF63"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_idtoexe_entity_rx(10),
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(10)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_11_Q : LUT4
    generic map(
      INIT => X"AF63"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_idtoexe_entity_rx(11),
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(11)
    );
  computer_entity_ex_alu_control_alu_src0_2_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(13),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_src0(13)
    );
  computer_entity_ex_alu_control_alu_src0_2_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(12),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_src0(12)
    );
  computer_entity_exe_entity_alu_entity_Sh3931_SW0 : LUT4
    generic map(
      INIT => X"3555"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(7),
      I1 => computer_entity_idtoexe_entity_rx(5),
      I2 => computer_entity_idtoexe_entity_alu_immi_1_1_400,
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N134
    );
  computer_entity_exe_entity_alu_entity_Sh3931_SW1 : LUT4
    generic map(
      INIT => X"3555"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(6),
      I1 => computer_entity_idtoexe_entity_rx(4),
      I2 => computer_entity_idtoexe_entity_alu_immi_1_1_400,
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N135
    );
  computer_entity_exe_entity_alu_entity_Sh3831_SW1 : LUT4
    generic map(
      INIT => X"5333"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(3),
      I1 => computer_entity_idtoexe_entity_rx(5),
      I2 => computer_entity_idtoexe_entity_alu_immi_1_1_400,
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N138
    );
  computer_entity_exe_entity_alu_entity_Sh3731_SW1 : LUT4
    generic map(
      INIT => X"5333"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(2),
      I1 => computer_entity_idtoexe_entity_rx(4),
      I2 => computer_entity_idtoexe_entity_alu_immi_1_1_400,
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N141
    );
  computer_entity_exe_entity_alu_entity_Sh3631_SW1 : LUT4
    generic map(
      INIT => X"5333"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(1),
      I1 => computer_entity_idtoexe_entity_rx(3),
      I2 => computer_entity_idtoexe_entity_alu_immi_1_1_400,
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N144
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_414 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(15),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(8),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_414_197
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_413 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(15),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(7),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_413_196
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_8_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_exe_entity_alu_entity_Sh8_289,
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => N274,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(8)
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_7_1 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_alu_entity_Sh11_270,
      I3 => computer_entity_exe_entity_alu_entity_Sh7_288,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(7)
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_5_1 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_alu_entity_Sh9_290,
      I3 => computer_entity_exe_entity_alu_entity_Sh5_286,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(5)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_530 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(9),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_Q_330,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_530_246
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_528 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(8),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_Q_329,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_528_243
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_54 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(11),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_Q_311,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_54_248
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_52 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(10),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_Q_310,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_52_234
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_62 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(11),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(11),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_62_262
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_61 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(10),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(10),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_61_255
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_524 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(6),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_6_Q,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_524_239
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_615 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(9),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(9),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_615_261
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_614 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(8),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(8),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_614_260
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_613 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(7),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(7),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_613_259
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_612 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(6),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(6),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_612_258
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_611 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(5),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(5),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_611_257
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_610 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(4),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(4),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_610_256
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_1_SW0 : LUT4
    generic map(
      INIT => X"65CF"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi_1_1_400,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N146
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"D2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(1),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => N146,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(1)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_2_SW0 : LUT4
    generic map(
      INIT => X"59F3"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I3 => computer_entity_idtoexe_entity_alu_immi(2),
      O => N148
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_2_Q : LUT3
    generic map(
      INIT => X"D2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(2),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => N148,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(2)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_12_Q : LUT4
    generic map(
      INIT => X"AF63"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_idtoexe_entity_rx(12),
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(12)
    );
  computer_entity_ex_alu_control_alu_src0_2_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(14),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_src0(14)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_64 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(13),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(13),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_64_264
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_63 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(12),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(12),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_63_263
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_69 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(3),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(3),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_69_269
    );
  computer_entity_exe_entity_alu_entity_Sh34_SW0 : LUT4
    generic map(
      INIT => X"F5F3"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(0),
      I1 => computer_entity_idtoexe_entity_rx(2),
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I3 => computer_entity_exe_entity_src1(1),
      O => N2
    );
  computer_entity_exe_entity_alu_entity_Sh13_SW0 : LUT4
    generic map(
      INIT => X"1504"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_idtoexe_entity_alu_immi(0),
      I2 => N156,
      I3 => computer_entity_idtoexe_entity_rx(13),
      O => N52
    );
  computer_entity_exe_entity_alu_entity_Sh12_SW0 : LUT4
    generic map(
      INIT => X"020E"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(12),
      I1 => computer_entity_idtoexe_entity_alu_immi(0),
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I3 => N271,
      O => N100
    );
  computer_entity_exe_entity_alu_entity_Sh8_SW1 : LUT4
    generic map(
      INIT => X"020E"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(10),
      I1 => computer_entity_idtoexe_entity_alu_immi(0),
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I3 => N272,
      O => N86
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_65 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(14),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(14),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_65_265
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_Q : LUT4
    generic map(
      INIT => X"CD01"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_exe_entity_alu_entity_Sh41,
      I2 => N170,
      I3 => N5,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_Q_330
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_Q : LUT4
    generic map(
      INIT => X"CD01"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_exe_entity_alu_entity_Sh40,
      I2 => N172,
      I3 => N8,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_Q_329
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_Q : LUT4
    generic map(
      INIT => X"CD01"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_exe_entity_alu_entity_Sh43,
      I2 => N174,
      I3 => N11,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_Q_311
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_Q : LUT4
    generic map(
      INIT => X"CD01"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_exe_entity_alu_entity_Sh42,
      I2 => N176,
      I3 => N14,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_Q_310
    );
  computer_entity_exe_entity_alu_entity_Sh34 : LUT4
    generic map(
      INIT => X"087F"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => N273,
      I3 => N2,
      O => computer_entity_exe_entity_alu_entity_Sh34_275
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_515 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(1),
      I2 => computer_entity_exe_entity_src1(1),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(1),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_515_229
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_514 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(1),
      I2 => computer_entity_exe_entity_src1(1),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_1_Q,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_514_228
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_5 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(0),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_0_Q,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_5_222
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_13_Q : LUT4
    generic map(
      INIT => X"AF63"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_idtoexe_entity_rx(13),
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(13)
    );
  computer_entity_exe_entity_alu_entity_Sh13_SW1 : LUT4
    generic map(
      INIT => X"3555"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(13),
      I1 => computer_entity_idtoexe_entity_rx(14),
      I2 => computer_entity_idtoexe_entity_alu_immi(0),
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N178
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_14_Q : LUT4
    generic map(
      INIT => X"AF63"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I1 => computer_entity_idtoexe_entity_rx(14),
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(14)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_44 : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(1),
      I1 => N52,
      I2 => computer_entity_exe_entity_src0(15),
      I3 => N194,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_44_201
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_41 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I2 => computer_entity_exe_entity_src0(15),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_shift0001(10),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_41_192
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_43 : LUT4
    generic map(
      INIT => X"F202"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(15),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => N150,
      I3 => computer_entity_exe_entity_alu_entity_Sh12_271,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_43_200
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_68 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(2),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(2),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_68_268
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_67 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(1),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(1),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_67_267
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_526 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(7),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_7_Q,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_526_241
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_522 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(5),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_5_Q,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_522_237
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_520 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(4),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_mux0002_4_Q,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_520_235
    );
  computer_entity_exe_entity_alu_entity_Sh12_SW1 : LUT4
    generic map(
      INIT => X"5333"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(13),
      I1 => computer_entity_idtoexe_entity_rx(12),
      I2 => computer_entity_idtoexe_entity_alu_immi(0),
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N198
    );
  computer_entity_exe_entity_alu_entity_Sh12_SW2 : LUT4
    generic map(
      INIT => X"B313"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_idtoexe_entity_rx(14),
      I2 => computer_entity_idtoexe_entity_alu_immi(0),
      I3 => N264,
      O => N199
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_1_1 : LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I3 => computer_entity_exe_entity_alu_entity_Sh33,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_1_Q
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_0_1 : LUT4
    generic map(
      INIT => X"0700"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      I3 => computer_entity_exe_entity_alu_entity_Sh32,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_0_Q
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_14_SW1 : LUT3
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(12),
      I1 => computer_entity_idtoexe_entity_rx(14),
      I2 => computer_entity_idtoexe_entity_alu_immi(1),
      O => N201
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_29 : LUT4
    generic map(
      INIT => X"0232"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(15),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I3 => N203,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_29_322
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_29 : LUT4
    generic map(
      INIT => X"0232"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(14),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I3 => N205,
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_29_319
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_6_1 : LUT4
    generic map(
      INIT => X"7F08"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => N220,
      I3 => computer_entity_exe_entity_alu_entity_Sh6_287,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(6)
    );
  computer_entity_exe_entity_alu_entity_Sh4331 : MUXF5
    port map (
      I0 => N222,
      I1 => N223,
      S => computer_entity_exe_entity_src1(0),
      O => computer_entity_exe_entity_alu_entity_Sh43
    );
  computer_entity_exe_entity_alu_entity_Sh5 : MUXF5
    port map (
      I0 => N224,
      I1 => N225,
      S => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_Sh5_286
    );
  computer_entity_exe_entity_alu_entity_Sh4 : MUXF5
    port map (
      I0 => N226,
      I1 => N227,
      S => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_Sh4_281
    );
  computer_entity_exe_entity_alu_entity_Sh3531 : MUXF5
    port map (
      I0 => N228,
      I1 => N229,
      S => computer_entity_exe_entity_src1(0),
      O => computer_entity_exe_entity_alu_entity_Sh35
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_10_1 : MUXF5
    port map (
      I0 => N230,
      I1 => N231,
      S => computer_entity_exe_entity_src1(2),
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(10)
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_10_1_G : LUT4
    generic map(
      INIT => X"FE02"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(14),
      I1 => computer_entity_exe_entity_src1(0),
      I2 => computer_entity_exe_entity_src1(1),
      I3 => computer_entity_exe_entity_src0(15),
      O => N231
    );
  computer_entity_exe_entity_alu_entity_Sh4231 : MUXF5
    port map (
      I0 => N232,
      I1 => N233,
      S => computer_entity_exe_entity_src1(0),
      O => computer_entity_exe_entity_alu_entity_Sh42
    );
  computer_entity_exe_entity_alu_entity_Sh4131 : MUXF5
    port map (
      I0 => N234,
      I1 => N235,
      S => computer_entity_exe_entity_src1(0),
      O => computer_entity_exe_entity_alu_entity_Sh41
    );
  computer_entity_exe_entity_alu_entity_Sh4031 : MUXF5
    port map (
      I0 => N236,
      I1 => N237,
      S => computer_entity_exe_entity_src1(0),
      O => computer_entity_exe_entity_alu_entity_Sh40
    );
  computer_entity_exe_entity_alu_entity_Sh9 : MUXF5
    port map (
      I0 => N238,
      I1 => N239,
      S => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_Sh9_290
    );
  computer_entity_exe_entity_alu_entity_Sh8 : MUXF5
    port map (
      I0 => N240,
      I1 => N241,
      S => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_Sh8_289
    );
  computer_entity_exe_entity_alu_entity_Sh7 : MUXF5
    port map (
      I0 => N242,
      I1 => N243,
      S => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_Sh7_288
    );
  computer_entity_exe_entity_alu_entity_Sh6 : MUXF5
    port map (
      I0 => N244,
      I1 => N245,
      S => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_Sh6_287
    );
  computer_entity_exe_entity_alu_entity_Sh11 : MUXF5
    port map (
      I0 => N246,
      I1 => N247,
      S => computer_entity_exe_entity_src1(1),
      O => computer_entity_exe_entity_alu_entity_Sh11_270
    );
  computer_entity_exe_entity_alu_entity_Sh10_SW1 : MUXF5
    port map (
      I0 => N248,
      I1 => N249,
      S => computer_entity_idtoexe_entity_alu_immi(1),
      O => N220
    );
  computer_entity_exe_entity_alu_entity_Sh10_SW1_F : LUT4
    generic map(
      INIT => X"FDF1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(10),
      I1 => computer_entity_idtoexe_entity_alu_immi(0),
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I3 => N160,
      O => N248
    );
  computer_entity_exe_entity_alu_entity_Sh10_SW1_G : LUT4
    generic map(
      INIT => X"FDF1"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(12),
      I1 => computer_entity_idtoexe_entity_alu_immi(0),
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I3 => N158,
      O => N249
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_51 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_exe_entity_src0(0),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(0),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_51_223
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_3_1_SW0 : LUT4
    generic map(
      INIT => X"ABFF"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_alu_immi(1),
      I2 => computer_entity_idtoexe_entity_alu_immi(0),
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => N109
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_2_1_SW0 : LUT4
    generic map(
      INIT => X"5F13"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_idtoexe_entity_rx(2),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => N123
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_15_Q : LUT4
    generic map(
      INIT => X"AF63"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_1_394,
      I1 => computer_entity_idtoexe_entity_rx(15),
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(15)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_6 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(0),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(0),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_6_254
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_42 : LUT4
    generic map(
      INIT => X"F202"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(15),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => N150,
      I3 => computer_entity_exe_entity_alu_entity_Sh11_270,
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_42_199
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_44_SW0 : LUT4
    generic map(
      INIT => X"B3A0"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      O => N194
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_4_1 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_alu_entity_Sh8_289,
      I3 => computer_entity_exe_entity_alu_entity_Sh4_281,
      O => computer_entity_exe_entity_alu_entity_result_tem_shift0001(4)
    );
  computer_entity_exe_entity_alu_entity_Sh4331_F : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_exe_entity_src0(11),
      I2 => computer_entity_idtoexe_entity_alu_immi(1),
      I3 => computer_entity_exe_entity_src0(9),
      O => N222
    );
  computer_entity_exe_entity_alu_entity_Sh4331_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_exe_entity_src0(10),
      I2 => computer_entity_idtoexe_entity_alu_immi(1),
      I3 => computer_entity_exe_entity_src0(8),
      O => N223
    );
  computer_entity_exe_entity_alu_entity_Sh5_F : LUT4
    generic map(
      INIT => X"F870"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(5),
      I3 => computer_entity_exe_entity_src0(6),
      O => N224
    );
  computer_entity_exe_entity_alu_entity_Sh5_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(8),
      I3 => computer_entity_exe_entity_src0(7),
      O => N225
    );
  computer_entity_exe_entity_alu_entity_Sh4_F : LUT4
    generic map(
      INIT => X"F870"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(4),
      I3 => computer_entity_exe_entity_src0(5),
      O => N226
    );
  computer_entity_exe_entity_alu_entity_Sh4_G : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_exe_entity_src0(6),
      I2 => computer_entity_idtoexe_entity_alu_immi(0),
      I3 => computer_entity_exe_entity_src0(7),
      O => N227
    );
  computer_entity_exe_entity_alu_entity_Sh3531_F : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(1),
      I3 => computer_entity_exe_entity_src0(3),
      O => N228
    );
  computer_entity_exe_entity_alu_entity_Sh3531_G : LUT4
    generic map(
      INIT => X"F870"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(2),
      I3 => computer_entity_exe_entity_src0(0),
      O => N229
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_10_1_F : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => N100,
      I3 => N86,
      O => N230
    );
  computer_entity_exe_entity_alu_entity_Sh4231_F : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_exe_entity_src0(10),
      I2 => computer_entity_idtoexe_entity_alu_immi(1),
      I3 => computer_entity_exe_entity_src0(8),
      O => N232
    );
  computer_entity_exe_entity_alu_entity_Sh4231_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(7),
      I3 => computer_entity_exe_entity_src0(9),
      O => N233
    );
  computer_entity_exe_entity_alu_entity_Sh4131_F : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(7),
      I3 => computer_entity_exe_entity_src0(9),
      O => N234
    );
  computer_entity_exe_entity_alu_entity_Sh4131_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(6),
      I3 => computer_entity_exe_entity_src0(8),
      O => N235
    );
  computer_entity_exe_entity_alu_entity_Sh4031_F : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(6),
      I3 => computer_entity_exe_entity_src0(8),
      O => N236
    );
  computer_entity_exe_entity_alu_entity_Sh4031_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(5),
      I3 => computer_entity_exe_entity_src0(7),
      O => N237
    );
  computer_entity_exe_entity_alu_entity_Sh9_F : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(10),
      I3 => computer_entity_exe_entity_src0(9),
      O => N238
    );
  computer_entity_exe_entity_alu_entity_Sh9_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(12),
      I3 => computer_entity_exe_entity_src0(11),
      O => N239
    );
  computer_entity_exe_entity_alu_entity_Sh8_F : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(9),
      I3 => computer_entity_exe_entity_src0(8),
      O => N240
    );
  computer_entity_exe_entity_alu_entity_Sh8_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(11),
      I3 => computer_entity_exe_entity_src0(10),
      O => N241
    );
  computer_entity_exe_entity_alu_entity_Sh7_F : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(8),
      I3 => computer_entity_exe_entity_src0(7),
      O => N242
    );
  computer_entity_exe_entity_alu_entity_Sh7_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(10),
      I3 => computer_entity_exe_entity_src0(9),
      O => N243
    );
  computer_entity_exe_entity_alu_entity_Sh6_F : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_exe_entity_src0(6),
      I2 => computer_entity_idtoexe_entity_alu_immi(0),
      I3 => computer_entity_exe_entity_src0(7),
      O => N244
    );
  computer_entity_exe_entity_alu_entity_Sh6_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(9),
      I3 => computer_entity_exe_entity_src0(8),
      O => N245
    );
  computer_entity_exe_entity_alu_entity_Sh11_F : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(12),
      I3 => computer_entity_exe_entity_src0(11),
      O => N246
    );
  computer_entity_exe_entity_alu_entity_Sh11_G : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_src0(14),
      I3 => computer_entity_exe_entity_src0(13),
      O => N247
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_43_SW0 : LUT4
    generic map(
      INIT => X"4C5F"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I2 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      O => N150
    );
  computer_entity_idtoexe_entity_immi_type_chooser_Mmux_output21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_control_entity_Mtrien_alu_src1_immi_chooser_125,
      I1 => computer_entity_iftoid_entity_instruction_0_Q,
      I2 => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_immi_final(0)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_exe_entity_alu_entity_result_tem_mux0000,
      I3 => computer_entity_exe_entity_src0(0),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_tem_addsub0000_lut(0)
    );
  computer_entity_idtoexe_entity_immi_type_chooser_Mmux_output121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_2_Q,
      I1 => computer_entity_control_entity_Mtrien_alu_src1_immi_chooser_125,
      O => computer_entity_id_immi_final(2)
    );
  computer_entity_idtoexe_entity_immi_type_chooser_Mmux_output101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_1_Q,
      I1 => computer_entity_control_entity_Mtrien_alu_src1_immi_chooser_125,
      O => computer_entity_id_immi_final(1)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_66 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_idtoexe_entity_rx(15),
      I3 => computer_entity_exe_entity_alu_entity_result_tem_addsub0000(15),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_66_266
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_45 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => N250,
      I2 => computer_entity_idtoexe_entity_rx(15),
      I3 => computer_entity_idtoexe_entity_rx(14),
      O => computer_entity_exe_entity_alu_entity_Mmux_result_tem_45_202
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_45_SW0 : LUT4
    generic map(
      INIT => X"CF8F"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_op_0_393,
      I3 => N252,
      O => N250
    );
  computer_entity_exe_entity_src1_chooser_Mmux_output21_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi_0_1_398,
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      O => computer_entity_exe_entity_src1_chooser_Mmux_output21_369
    );
  computer_entity_idtoexe_entity_alu_immi_0_1 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_immi_final(0),
      Q => computer_entity_idtoexe_entity_alu_immi_0_1_398
    );
  computer_entity_idtoexe_entity_alu_immi_1_1 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_immi_final(1),
      Q => computer_entity_idtoexe_entity_alu_immi_1_1_400
    );
  computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1 : FDC
    port map (
      C => clk_BUFGP_116,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_control_entity_Mtrien_alu_control_signal_alu_src0_122,
      Q => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_116
    );
  computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy_3_inv_INV_0 : INV
    port map (
      I => computer_entity_mmu_entity_Mcompar_instruction_out_cmp_lt0000_cy(3),
      O => computer_entity_mmu_entity_instruction_out_cmp_lt0000
    );
  computer_entity_pc_write_entity_Madd_pc_one_lut_0_INV_0 : INV
    port map (
      I => computer_entity_pc_write_entity_pc(0),
      O => computer_entity_pc_write_entity_Madd_pc_one_lut(0)
    );
  computer_entity_registers_entity_rst_inv1_INV_0 : INV
    port map (
      I => rst_IBUF_591,
      O => computer_entity_exetomem_entity_rst_inv
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_6_1 : MUXF5
    port map (
      I0 => N254,
      I1 => N255,
      S => computer_entity_idtoexe_entity_alu_immi(2),
      O => computer_entity_exe_entity_alu_entity_result_tem_mux0002_6_Q
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_6_1_F : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_exe_entity_alu_entity_Sh38,
      I2 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I3 => computer_entity_idtoexe_entity_alu_immi(1),
      O => N254
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_6_1_G : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => N180,
      I3 => N2,
      O => N255
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_SW0_SW0_SW2 : MUXF5
    port map (
      I0 => N256,
      I1 => N257,
      S => computer_entity_idtoexe_entity_alu_immi(0),
      O => N207
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_SW0_SW0_SW2_F : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_rx(3),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_rx(5),
      O => N256
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_SW0_SW0_SW2_G : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_rx(2),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_rx(4),
      O => N257
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_SW0_SW0_SW2 : MUXF5
    port map (
      I0 => N258,
      I1 => N259,
      S => computer_entity_idtoexe_entity_alu_immi(0),
      O => N209
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_SW0_SW0_SW2_F : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_rx(2),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_rx(4),
      O => N258
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_SW0_SW0_SW2_G : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_rx(1),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_rx(3),
      O => N259
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_SW0_SW0_SW2 : MUXF5
    port map (
      I0 => N260,
      I1 => N261,
      S => computer_entity_idtoexe_entity_alu_immi(0),
      O => N211
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_SW0_SW0_SW2_F : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_rx(5),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_rx(7),
      O => N260
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_SW0_SW0_SW2_G : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_rx(4),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_rx(6),
      O => N261
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_SW0_SW0_SW2 : MUXF5
    port map (
      I0 => N262,
      I1 => N263,
      S => computer_entity_idtoexe_entity_alu_immi(0),
      O => N213
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_SW0_SW0_SW2_F : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_rx(4),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_rx(6),
      O => N262
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_SW0_SW0_SW2_G : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_rx(3),
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_rx(5),
      O => N263
    );
  computer_entity_ex_alu_control_alu_src0_2_75 : LUT3_D
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => computer_entity_control_entity_Mtridata_alu_control_signal_alu_op(1),
      I1 => computer_entity_idtoexe_entity_rx(15),
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_1_396,
      LO => N264,
      O => computer_entity_ex_alu_control_alu_src0_2_75_127
    );
  computer_entity_exe_entity_alu_entity_Sh331 : LUT4_D
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(1),
      I1 => computer_entity_exe_entity_src0(0),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => N265,
      O => computer_entity_exe_entity_alu_entity_Sh33
    );
  computer_entity_ID_entity_reg0_data_out_15_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(15),
      I3 => computer_entity_registers_entity_regs_data_0_15_549,
      LO => N16
    );
  computer_entity_ID_entity_reg0_data_out_14_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(14),
      I3 => computer_entity_registers_entity_regs_data_0_14_548,
      LO => N18
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_14 : LUT4_L
    generic map(
      INIT => X"C0A0"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(13),
      I1 => computer_entity_exe_entity_src0(11),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_14_318
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_29 : LUT4_L
    generic map(
      INIT => X"0C0A"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(13),
      I1 => computer_entity_exe_entity_src0(11),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => computer_entity_exe_entity_alu_entity_result_tem_mux0002_13_29_316
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_29 : LUT4_L
    generic map(
      INIT => X"0C0A"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(12),
      I1 => computer_entity_exe_entity_src0(10),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => computer_entity_exe_entity_alu_entity_result_tem_mux0002_12_29_313
    );
  computer_entity_ID_entity_reg0_data_out_9_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(9),
      I3 => computer_entity_registers_entity_regs_data_0_9_557,
      LO => N54
    );
  computer_entity_ID_entity_reg0_data_out_8_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(8),
      I3 => computer_entity_registers_entity_regs_data_0_8_556,
      LO => N56
    );
  computer_entity_ID_entity_reg0_data_out_7_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(7),
      I3 => computer_entity_registers_entity_regs_data_0_7_555,
      LO => N58
    );
  computer_entity_ID_entity_reg0_data_out_6_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(6),
      I3 => computer_entity_registers_entity_regs_data_0_6_554,
      LO => N60
    );
  computer_entity_ID_entity_reg0_data_out_5_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(5),
      I3 => computer_entity_registers_entity_regs_data_0_5_553,
      LO => N62
    );
  computer_entity_ID_entity_reg0_data_out_4_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(4),
      I3 => computer_entity_registers_entity_regs_data_0_4_552,
      LO => N64
    );
  computer_entity_ID_entity_reg0_data_out_3_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(3),
      I3 => computer_entity_registers_entity_regs_data_0_3_551,
      LO => N66
    );
  computer_entity_ID_entity_reg0_data_out_2_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(2),
      I3 => computer_entity_registers_entity_regs_data_0_2_550,
      LO => N68
    );
  computer_entity_ID_entity_reg0_data_out_1_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(1),
      I3 => computer_entity_registers_entity_regs_data_0_1_543,
      LO => N70
    );
  computer_entity_ID_entity_reg0_data_out_13_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(13),
      I3 => computer_entity_registers_entity_regs_data_0_13_547,
      LO => N72
    );
  computer_entity_ID_entity_reg0_data_out_12_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(12),
      I3 => computer_entity_registers_entity_regs_data_0_12_546,
      LO => N74
    );
  computer_entity_ID_entity_reg0_data_out_11_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(11),
      I3 => computer_entity_registers_entity_regs_data_0_11_545,
      LO => N76
    );
  computer_entity_ID_entity_reg0_data_out_10_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(10),
      I3 => computer_entity_registers_entity_regs_data_0_10_544,
      LO => N78
    );
  computer_entity_ID_entity_reg0_data_out_0_SW0 : LUT4_L
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_signal_387,
      I1 => computer_entity_exetomem_entity_reg_wb_control_signal_reg_wb_data_chooser_386,
      I2 => computer_entity_exetomem_entity_alu_result(0),
      I3 => computer_entity_registers_entity_regs_data_0_0_542,
      LO => N80
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_28 : LUT4_L
    generic map(
      INIT => X"0C0A"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(3),
      I1 => computer_entity_exe_entity_src0(5),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => computer_entity_exe_entity_alu_entity_result_tem_shift0001_3_28_343
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_28 : LUT4_L
    generic map(
      INIT => X"0C0A"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(2),
      I1 => computer_entity_exe_entity_src0(4),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => computer_entity_exe_entity_alu_entity_result_tem_shift0001_2_28_340
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_28 : LUT4_L
    generic map(
      INIT => X"0C0A"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(1),
      I1 => computer_entity_exe_entity_src0(3),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => computer_entity_exe_entity_alu_entity_result_tem_shift0001_1_28_337
    );
  computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_28 : LUT4_L
    generic map(
      INIT => X"0A0C"
    )
    port map (
      I0 => computer_entity_exe_entity_src0(2),
      I1 => computer_entity_exe_entity_src0(0),
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => computer_entity_exe_entity_alu_entity_result_tem_shift0001_0_28_333
    );
  computer_entity_exe_entity_alu_entity_result_tem_cmp_eq00011 : LUT4_D
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi_0_1_398,
      I1 => computer_entity_idtoexe_entity_alu_immi_1_1_400,
      I2 => computer_entity_idtoexe_entity_alu_immi(2),
      I3 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      LO => N266,
      O => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001
    );
  computer_entity_exe_entity_alu_entity_Sh3931 : LUT4_D
    generic map(
      INIT => X"0511"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => N134,
      I2 => N135,
      I3 => computer_entity_exe_entity_src1_chooser_Mmux_output21_369,
      LO => N267,
      O => computer_entity_exe_entity_alu_entity_Sh39
    );
  computer_entity_exe_entity_alu_entity_Sh3831 : LUT4_D
    generic map(
      INIT => X"1105"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => N138,
      I2 => N135,
      I3 => computer_entity_exe_entity_src1_chooser_Mmux_output21_369,
      LO => N268,
      O => computer_entity_exe_entity_alu_entity_Sh38
    );
  computer_entity_exe_entity_alu_entity_Sh3731 : LUT4_D
    generic map(
      INIT => X"1105"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => N141,
      I2 => N138,
      I3 => computer_entity_exe_entity_src1_chooser_Mmux_output21_369,
      LO => N269,
      O => computer_entity_exe_entity_alu_entity_Sh37
    );
  computer_entity_exe_entity_alu_entity_Sh3631 : LUT4_D
    generic map(
      INIT => X"1105"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I1 => N144,
      I2 => N141,
      I3 => computer_entity_exe_entity_src1_chooser_Mmux_output21_369,
      LO => N270,
      O => computer_entity_exe_entity_alu_entity_Sh36
    );
  computer_entity_exe_entity_alu_entity_Sh13_SW0_SW0 : LUT3_L
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I1 => computer_entity_idtoexe_entity_rx(13),
      I2 => computer_entity_idtoexe_entity_rx(14),
      LO => N156
    );
  computer_entity_exe_entity_alu_entity_Sh12_SW0_SW0 : LUT3_D
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(13),
      I1 => computer_entity_idtoexe_entity_rx(12),
      I2 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      LO => N271,
      O => N158
    );
  computer_entity_exe_entity_alu_entity_Sh8_SW1_SW0 : LUT3_D
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(11),
      I1 => computer_entity_idtoexe_entity_rx(10),
      I2 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      LO => N272,
      O => N160
    );
  computer_entity_exe_entity_alu_entity_Sh13 : LUT4_L
    generic map(
      INIT => X"2203"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(15),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => N178,
      I3 => computer_entity_exe_entity_src1(1),
      LO => computer_entity_exe_entity_alu_entity_Sh13_272
    );
  computer_entity_exe_entity_alu_entity_Sh34_SW1 : LUT4_D
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_idtoexe_entity_alu_immi(1),
      I3 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      LO => N273,
      O => N180
    );
  computer_entity_exe_entity_alu_entity_Sh12 : LUT4_D
    generic map(
      INIT => X"0123"
    )
    port map (
      I0 => computer_entity_exe_entity_src1(1),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => N198,
      I3 => N199,
      LO => N274,
      O => computer_entity_exe_entity_alu_entity_Sh12_271
    );
  computer_entity_exe_entity_alu_entity_Sh321 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(0),
      I1 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I2 => computer_entity_exe_entity_src1(0),
      I3 => computer_entity_exe_entity_src1(1),
      LO => N275,
      O => computer_entity_exe_entity_alu_entity_Sh32
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_14 : LUT4_L
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => computer_entity_idtoexe_entity_alu_control_signal_alu_src0_0_395,
      I3 => N201,
      LO => computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_14_321
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_15_29_SW1 : LUT4_L
    generic map(
      INIT => X"FF35"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(15),
      I1 => computer_entity_idtoexe_entity_rx(13),
      I2 => computer_entity_idtoexe_entity_alu_immi(1),
      I3 => computer_entity_idtoexe_entity_alu_immi(0),
      LO => N203
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_14_29_SW1 : LUT4_L
    generic map(
      INIT => X"FF53"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(12),
      I1 => computer_entity_idtoexe_entity_rx(14),
      I2 => computer_entity_idtoexe_entity_alu_immi(1),
      I3 => computer_entity_idtoexe_entity_alu_immi(0),
      LO => N205
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_9_SW0_SW1 : LUT4_L
    generic map(
      INIT => X"553F"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(1),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => N207,
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      LO => N170
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_8_SW0_SW1 : LUT4_L
    generic map(
      INIT => X"553F"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(0),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => N209,
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      LO => N172
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_11_SW0_SW1 : LUT4_L
    generic map(
      INIT => X"553F"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(3),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => N211,
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      LO => N174
    );
  computer_entity_exe_entity_alu_entity_result_tem_mux0002_10_SW0_SW1 : LUT4_L
    generic map(
      INIT => X"553F"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_rx(2),
      I1 => computer_entity_idtoexe_entity_reg_wb_control_signal_reg_wb_signal_403,
      I2 => N213,
      I3 => computer_entity_exe_entity_alu_entity_result_tem_cmp_eq0001,
      LO => N176
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_tem_45_SW0_SW0 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_alu_immi(2),
      LO => N252
    );

end Structure;

