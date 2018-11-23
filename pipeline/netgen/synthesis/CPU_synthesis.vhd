--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: CPU_synthesis.vhd
-- /___/   /\     Timestamp: Thu Nov 22 18:22:21 2018
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
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clk_BUFGP_3 : STD_LOGIC; 
  signal computer_entity_Mcount_if_pc_cy_1_rt_6 : STD_LOGIC; 
  signal computer_entity_Mcount_if_pc_cy_2_rt_8 : STD_LOGIC; 
  signal computer_entity_Mcount_if_pc_xor_3_rt_10 : STD_LOGIC; 
  signal computer_entity_Mrom_if_instruction : STD_LOGIC; 
  signal computer_entity_Mrom_if_instruction1_12 : STD_LOGIC; 
  signal computer_entity_Mrom_if_instruction10 : STD_LOGIC; 
  signal computer_entity_Mrom_if_instruction11 : STD_LOGIC; 
  signal computer_entity_Mrom_if_instruction14 : STD_LOGIC; 
  signal computer_entity_exe_entity_alu_entity_result_mux0000 : STD_LOGIC; 
  signal computer_entity_exetomem_entity_reg_wb_signal_103 : STD_LOGIC; 
  signal computer_entity_exetomem_entity_rst_inv : STD_LOGIC; 
  signal computer_entity_idtoexe_entity_reg_wb_signal_131 : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_0_Q : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_1_Q : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_11_Q : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_14_Q : STD_LOGIC; 
  signal computer_entity_iftoid_entity_instruction_2_Q : STD_LOGIC; 
  signal computer_entity_memtowb_entity_reg_wb_signal_192 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux10_3_f5_193 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux10_4_194 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux10_4_f5_195 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux10_5_196 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux10_51_197 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux10_6_198 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux11_3_f5_199 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux11_4_200 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux11_4_f5_201 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux11_5_202 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux11_51_203 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux11_6_204 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux12_3_f5_205 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux12_4_206 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux12_4_f5_207 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux12_5_208 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux12_51_209 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux12_6_210 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux13_3_f5_211 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux13_4_212 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux13_4_f5_213 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux13_5_214 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux13_51_215 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux13_6_216 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux14_3_f5_217 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux14_4_218 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux14_4_f5_219 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux14_5_220 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux14_51_221 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux14_6_222 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux15_3_f5_223 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux15_4_224 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux15_4_f5_225 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux15_5_226 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux15_51_227 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux15_6_228 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux1_3_f5_229 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux1_4_230 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux1_4_f5_231 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux1_5_232 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux1_51_233 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux1_6_234 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux2_3_f5_235 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux2_4_236 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux2_4_f5_237 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux2_5_238 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux2_51_239 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux2_6_240 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux3_3_f5_241 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux3_4_242 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux3_4_f5_243 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux3_5_244 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux3_51_245 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux3_6_246 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux4_3_f5_247 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux4_4_248 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux4_4_f5_249 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux4_5_250 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux4_51_251 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux4_6_252 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux5_3_f5_253 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux5_4_254 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux5_4_f5_255 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux5_5_256 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux5_51_257 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux5_6_258 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux6_3_f5_259 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux6_4_260 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux6_4_f5_261 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux6_5_262 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux6_51_263 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux6_6_264 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux7_3_f5_265 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux7_4_266 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux7_4_f5_267 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux7_5_268 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux7_51_269 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux7_6_270 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux8_3_f5_271 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux8_4_272 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux8_4_f5_273 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux8_5_274 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux8_51_275 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux8_6_276 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux9_3_f5_277 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux9_4_278 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux9_4_f5_279 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux9_5_280 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux9_51_281 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux9_6_282 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux_3_f5_283 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux_4_284 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux_4_f5_285 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux_5_286 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux_51_287 : STD_LOGIC; 
  signal computer_entity_registers_entity_mux_6_288 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_0_289 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_1_290 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_10_291 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_11_292 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_12_293 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_13_294 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_14_295 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_15_296 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_2_297 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_3_298 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_4_299 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_5_300 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_6_301 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_7_302 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_8_303 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_9_304 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_0_and0000 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_0_306 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_1_307 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_10_308 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_11_309 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_12_310 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_13_311 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_14_312 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_15_313 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_2_314 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_3_315 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_4_316 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_5_317 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_6_318 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_7_319 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_8_320 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_9_321 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_1_and0000 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_0_323 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_1_324 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_10_325 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_11_326 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_12_327 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_13_328 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_14_329 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_15_330 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_2_331 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_3_332 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_4_333 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_5_334 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_6_335 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_7_336 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_8_337 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_9_338 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_2_and0000 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_0_340 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_1_341 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_10_342 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_11_343 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_12_344 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_13_345 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_14_346 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_15_347 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_2_348 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_3_349 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_4_350 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_5_351 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_6_352 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_7_353 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_8_354 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_9_355 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_3_and0000 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_0_357 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_1_358 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_10_359 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_11_360 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_12_361 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_13_362 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_14_363 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_15_364 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_2_365 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_3_366 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_4_367 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_5_368 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_6_369 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_7_370 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_8_371 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_9_372 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_4_and0000 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_0_374 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_1_375 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_10_376 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_11_377 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_12_378 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_13_379 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_14_380 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_15_381 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_2_382 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_3_383 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_4_384 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_5_385 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_6_386 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_7_387 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_8_388 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_9_389 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_5_and0000 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_0_391 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_1_392 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_10_393 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_11_394 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_12_395 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_13_396 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_14_397 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_15_398 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_2_399 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_3_400 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_4_401 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_5_402 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_6_403 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_7_404 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_8_405 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_9_406 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_6_and0000 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_0_408 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_1_409 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_10_410 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_11_411 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_12_412 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_13_413 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_14_414 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_15_415 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_2_416 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_3_417 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_4_418 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_5_419 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_6_420 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_7_421 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_8_422 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_9_423 : STD_LOGIC; 
  signal computer_entity_registers_entity_regs_data_7_and0000 : STD_LOGIC; 
  signal rst_IBUF_442 : STD_LOGIC; 
  signal computer_entity_Mcount_if_pc_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal computer_entity_Mcount_if_pc_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal computer_entity_ex_alu_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_exe_entity_alu_entity_result_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_exetomem_entity_alu_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_exetomem_entity_reg_wb_place : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal computer_entity_id_rx : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_idtoexe_entity_alu_immi : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal computer_entity_idtoexe_entity_alu_src1 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal computer_entity_idtoexe_entity_reg_wb_place : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal computer_entity_idtoexe_entity_reg_wb_place_cand : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal computer_entity_idtoexe_entity_rx : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_idtoexe_entity_ry : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_if_pc : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal computer_entity_memtowb_entity_alu_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal computer_entity_memtowb_entity_reg_wb_place : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  computer_entity_idtoexe_entity_alu_src1_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_iftoid_entity_instruction_14_Q,
      Q => computer_entity_idtoexe_entity_alu_src1(0)
    );
  computer_entity_idtoexe_entity_rx_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(0),
      Q => computer_entity_idtoexe_entity_rx(0)
    );
  computer_entity_idtoexe_entity_rx_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(1),
      Q => computer_entity_idtoexe_entity_rx(1)
    );
  computer_entity_idtoexe_entity_rx_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(2),
      Q => computer_entity_idtoexe_entity_rx(2)
    );
  computer_entity_idtoexe_entity_rx_3 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(3),
      Q => computer_entity_idtoexe_entity_rx(3)
    );
  computer_entity_idtoexe_entity_rx_4 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(4),
      Q => computer_entity_idtoexe_entity_rx(4)
    );
  computer_entity_idtoexe_entity_rx_5 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(5),
      Q => computer_entity_idtoexe_entity_rx(5)
    );
  computer_entity_idtoexe_entity_rx_6 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(6),
      Q => computer_entity_idtoexe_entity_rx(6)
    );
  computer_entity_idtoexe_entity_rx_7 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(7),
      Q => computer_entity_idtoexe_entity_rx(7)
    );
  computer_entity_idtoexe_entity_rx_8 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(8),
      Q => computer_entity_idtoexe_entity_rx(8)
    );
  computer_entity_idtoexe_entity_rx_9 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(9),
      Q => computer_entity_idtoexe_entity_rx(9)
    );
  computer_entity_idtoexe_entity_rx_10 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(10),
      Q => computer_entity_idtoexe_entity_rx(10)
    );
  computer_entity_idtoexe_entity_rx_11 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(11),
      Q => computer_entity_idtoexe_entity_rx(11)
    );
  computer_entity_idtoexe_entity_rx_12 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(12),
      Q => computer_entity_idtoexe_entity_rx(12)
    );
  computer_entity_idtoexe_entity_rx_13 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(13),
      Q => computer_entity_idtoexe_entity_rx(13)
    );
  computer_entity_idtoexe_entity_rx_14 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(14),
      Q => computer_entity_idtoexe_entity_rx(14)
    );
  computer_entity_idtoexe_entity_rx_15 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_id_rx(15),
      Q => computer_entity_idtoexe_entity_rx(15)
    );
  computer_entity_idtoexe_entity_ry_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_0_289,
      Q => computer_entity_idtoexe_entity_ry(0)
    );
  computer_entity_idtoexe_entity_ry_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_1_290,
      Q => computer_entity_idtoexe_entity_ry(1)
    );
  computer_entity_idtoexe_entity_ry_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_2_297,
      Q => computer_entity_idtoexe_entity_ry(2)
    );
  computer_entity_idtoexe_entity_ry_3 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_3_298,
      Q => computer_entity_idtoexe_entity_ry(3)
    );
  computer_entity_idtoexe_entity_ry_4 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_4_299,
      Q => computer_entity_idtoexe_entity_ry(4)
    );
  computer_entity_idtoexe_entity_ry_5 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_5_300,
      Q => computer_entity_idtoexe_entity_ry(5)
    );
  computer_entity_idtoexe_entity_ry_6 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_6_301,
      Q => computer_entity_idtoexe_entity_ry(6)
    );
  computer_entity_idtoexe_entity_ry_7 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_7_302,
      Q => computer_entity_idtoexe_entity_ry(7)
    );
  computer_entity_idtoexe_entity_ry_8 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_8_303,
      Q => computer_entity_idtoexe_entity_ry(8)
    );
  computer_entity_idtoexe_entity_ry_9 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_9_304,
      Q => computer_entity_idtoexe_entity_ry(9)
    );
  computer_entity_idtoexe_entity_ry_10 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_10_291,
      Q => computer_entity_idtoexe_entity_ry(10)
    );
  computer_entity_idtoexe_entity_ry_11 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_11_292,
      Q => computer_entity_idtoexe_entity_ry(11)
    );
  computer_entity_idtoexe_entity_ry_12 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_12_293,
      Q => computer_entity_idtoexe_entity_ry(12)
    );
  computer_entity_idtoexe_entity_ry_13 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_13_294,
      Q => computer_entity_idtoexe_entity_ry(13)
    );
  computer_entity_idtoexe_entity_ry_14 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_14_295,
      Q => computer_entity_idtoexe_entity_ry(14)
    );
  computer_entity_idtoexe_entity_ry_15 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_registers_entity_regs_data_0_15_296,
      Q => computer_entity_idtoexe_entity_ry(15)
    );
  computer_entity_idtoexe_entity_reg_wb_signal : FDE
    port map (
      C => clk_BUFGP_3,
      CE => rst_IBUF_442,
      D => computer_entity_iftoid_entity_instruction_14_Q,
      Q => computer_entity_idtoexe_entity_reg_wb_signal_131
    );
  computer_entity_idtoexe_entity_reg_wb_place_0 : FDE
    port map (
      C => clk_BUFGP_3,
      CE => rst_IBUF_442,
      D => computer_entity_idtoexe_entity_reg_wb_place_cand(0),
      Q => computer_entity_idtoexe_entity_reg_wb_place(0)
    );
  computer_entity_idtoexe_entity_reg_wb_place_1 : FDE
    port map (
      C => clk_BUFGP_3,
      CE => rst_IBUF_442,
      D => computer_entity_idtoexe_entity_reg_wb_place_cand(1),
      Q => computer_entity_idtoexe_entity_reg_wb_place(1)
    );
  computer_entity_idtoexe_entity_reg_wb_place_2 : FDE
    port map (
      C => clk_BUFGP_3,
      CE => rst_IBUF_442,
      D => computer_entity_idtoexe_entity_reg_wb_place_cand(2),
      Q => computer_entity_idtoexe_entity_reg_wb_place(2)
    );
  computer_entity_idtoexe_entity_alu_immi_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_iftoid_entity_instruction_0_Q,
      Q => computer_entity_idtoexe_entity_alu_immi(0)
    );
  computer_entity_idtoexe_entity_alu_immi_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_iftoid_entity_instruction_1_Q,
      Q => computer_entity_idtoexe_entity_alu_immi(1)
    );
  computer_entity_idtoexe_entity_alu_immi_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_iftoid_entity_instruction_2_Q,
      Q => computer_entity_idtoexe_entity_alu_immi(2)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_result_mux0000,
      DI => computer_entity_idtoexe_entity_rx(0),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(0),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(0)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_0_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_result_mux0000,
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(0),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(0)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(0),
      DI => computer_entity_idtoexe_entity_rx(1),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(1),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(1)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_1_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(0),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(1),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(1)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(1),
      DI => computer_entity_idtoexe_entity_rx(2),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(2),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(2)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_2_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(1),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(2),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(2)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(2),
      DI => computer_entity_idtoexe_entity_rx(3),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(3),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(3)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_3_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(2),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(3),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(3)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(3),
      DI => computer_entity_idtoexe_entity_rx(4),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(4),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(4)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_4_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(3),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(4),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(4)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(4),
      DI => computer_entity_idtoexe_entity_rx(5),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(5),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(5)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_5_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(4),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(5),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(5)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(5),
      DI => computer_entity_idtoexe_entity_rx(6),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(6),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(6)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_6_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(5),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(6),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(6)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(6),
      DI => computer_entity_idtoexe_entity_rx(7),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(7),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(7)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_7_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(6),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(7),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(7)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(7),
      DI => computer_entity_idtoexe_entity_rx(8),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(8),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(8)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_8_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(7),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(8),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(8)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(8),
      DI => computer_entity_idtoexe_entity_rx(9),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(9),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(9)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_9_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(8),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(9),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(9)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(9),
      DI => computer_entity_idtoexe_entity_rx(10),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(10),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(10)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_10_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(9),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(10),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(10)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(10),
      DI => computer_entity_idtoexe_entity_rx(11),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(11),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(11)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_11_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(10),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(11),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(11)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(11),
      DI => computer_entity_idtoexe_entity_rx(12),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(12),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(12)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_12_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(11),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(12),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(12)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(12),
      DI => computer_entity_idtoexe_entity_rx(13),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(13),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(13)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_13_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(12),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(13),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(13)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(13),
      DI => computer_entity_idtoexe_entity_rx(14),
      S => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(14),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(14)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_14_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(13),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(14),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(14)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_xor_15_Q : XORCY
    port map (
      CI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_cy(14),
      LI => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(15),
      O => computer_entity_exe_entity_alu_entity_result_addsub0000(15)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_615 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(9),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(9),
      O => computer_entity_ex_alu_result(9)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_614 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(8),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(8),
      O => computer_entity_ex_alu_result(8)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_613 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(7),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(7),
      O => computer_entity_ex_alu_result(7)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_612 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(6),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(6),
      O => computer_entity_ex_alu_result(6)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_611 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(5),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(5),
      O => computer_entity_ex_alu_result(5)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_610 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(4),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(4),
      O => computer_entity_ex_alu_result(4)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_69 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(3),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(3),
      O => computer_entity_ex_alu_result(3)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_68 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(2),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(2),
      O => computer_entity_ex_alu_result(2)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_67 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(1),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(1),
      O => computer_entity_ex_alu_result(1)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_66 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(15),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(15),
      O => computer_entity_ex_alu_result(15)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_65 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(14),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(14),
      O => computer_entity_ex_alu_result(14)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_64 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(13),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(13),
      O => computer_entity_ex_alu_result(13)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_63 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(12),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(12),
      O => computer_entity_ex_alu_result(12)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_62 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(11),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(11),
      O => computer_entity_ex_alu_result(11)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(10),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(10),
      O => computer_entity_ex_alu_result(10)
    );
  computer_entity_exe_entity_alu_entity_Mmux_result_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(0),
      I2 => computer_entity_exe_entity_alu_entity_result_addsub0000(0),
      O => computer_entity_ex_alu_result(0)
    );
  computer_entity_memtowb_entity_reg_wb_signal : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_reg_wb_signal_103,
      Q => computer_entity_memtowb_entity_reg_wb_signal_192
    );
  computer_entity_memtowb_entity_alu_result_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(0),
      Q => computer_entity_memtowb_entity_alu_result(0)
    );
  computer_entity_memtowb_entity_alu_result_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(1),
      Q => computer_entity_memtowb_entity_alu_result(1)
    );
  computer_entity_memtowb_entity_alu_result_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(2),
      Q => computer_entity_memtowb_entity_alu_result(2)
    );
  computer_entity_memtowb_entity_alu_result_3 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(3),
      Q => computer_entity_memtowb_entity_alu_result(3)
    );
  computer_entity_memtowb_entity_alu_result_4 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(4),
      Q => computer_entity_memtowb_entity_alu_result(4)
    );
  computer_entity_memtowb_entity_alu_result_5 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(5),
      Q => computer_entity_memtowb_entity_alu_result(5)
    );
  computer_entity_memtowb_entity_alu_result_6 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(6),
      Q => computer_entity_memtowb_entity_alu_result(6)
    );
  computer_entity_memtowb_entity_alu_result_7 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(7),
      Q => computer_entity_memtowb_entity_alu_result(7)
    );
  computer_entity_memtowb_entity_alu_result_8 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(8),
      Q => computer_entity_memtowb_entity_alu_result(8)
    );
  computer_entity_memtowb_entity_alu_result_9 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(9),
      Q => computer_entity_memtowb_entity_alu_result(9)
    );
  computer_entity_memtowb_entity_alu_result_10 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(10),
      Q => computer_entity_memtowb_entity_alu_result(10)
    );
  computer_entity_memtowb_entity_alu_result_11 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(11),
      Q => computer_entity_memtowb_entity_alu_result(11)
    );
  computer_entity_memtowb_entity_alu_result_12 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(12),
      Q => computer_entity_memtowb_entity_alu_result(12)
    );
  computer_entity_memtowb_entity_alu_result_13 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(13),
      Q => computer_entity_memtowb_entity_alu_result(13)
    );
  computer_entity_memtowb_entity_alu_result_14 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(14),
      Q => computer_entity_memtowb_entity_alu_result(14)
    );
  computer_entity_memtowb_entity_alu_result_15 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_alu_result(15),
      Q => computer_entity_memtowb_entity_alu_result(15)
    );
  computer_entity_memtowb_entity_reg_wb_place_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_reg_wb_place(0),
      Q => computer_entity_memtowb_entity_reg_wb_place(0)
    );
  computer_entity_memtowb_entity_reg_wb_place_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_reg_wb_place(1),
      Q => computer_entity_memtowb_entity_reg_wb_place(1)
    );
  computer_entity_memtowb_entity_reg_wb_place_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_exetomem_entity_reg_wb_place(2),
      Q => computer_entity_memtowb_entity_reg_wb_place(2)
    );
  computer_entity_exetomem_entity_reg_wb_signal : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_idtoexe_entity_reg_wb_signal_131,
      Q => computer_entity_exetomem_entity_reg_wb_signal_103
    );
  computer_entity_exetomem_entity_alu_result_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(0),
      Q => computer_entity_exetomem_entity_alu_result(0)
    );
  computer_entity_exetomem_entity_alu_result_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(1),
      Q => computer_entity_exetomem_entity_alu_result(1)
    );
  computer_entity_exetomem_entity_alu_result_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(2),
      Q => computer_entity_exetomem_entity_alu_result(2)
    );
  computer_entity_exetomem_entity_alu_result_3 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(3),
      Q => computer_entity_exetomem_entity_alu_result(3)
    );
  computer_entity_exetomem_entity_alu_result_4 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(4),
      Q => computer_entity_exetomem_entity_alu_result(4)
    );
  computer_entity_exetomem_entity_alu_result_5 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(5),
      Q => computer_entity_exetomem_entity_alu_result(5)
    );
  computer_entity_exetomem_entity_alu_result_6 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(6),
      Q => computer_entity_exetomem_entity_alu_result(6)
    );
  computer_entity_exetomem_entity_alu_result_7 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(7),
      Q => computer_entity_exetomem_entity_alu_result(7)
    );
  computer_entity_exetomem_entity_alu_result_8 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(8),
      Q => computer_entity_exetomem_entity_alu_result(8)
    );
  computer_entity_exetomem_entity_alu_result_9 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(9),
      Q => computer_entity_exetomem_entity_alu_result(9)
    );
  computer_entity_exetomem_entity_alu_result_10 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(10),
      Q => computer_entity_exetomem_entity_alu_result(10)
    );
  computer_entity_exetomem_entity_alu_result_11 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(11),
      Q => computer_entity_exetomem_entity_alu_result(11)
    );
  computer_entity_exetomem_entity_alu_result_12 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(12),
      Q => computer_entity_exetomem_entity_alu_result(12)
    );
  computer_entity_exetomem_entity_alu_result_13 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(13),
      Q => computer_entity_exetomem_entity_alu_result(13)
    );
  computer_entity_exetomem_entity_alu_result_14 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(14),
      Q => computer_entity_exetomem_entity_alu_result(14)
    );
  computer_entity_exetomem_entity_alu_result_15 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_ex_alu_result(15),
      Q => computer_entity_exetomem_entity_alu_result(15)
    );
  computer_entity_exetomem_entity_reg_wb_place_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_idtoexe_entity_reg_wb_place(0),
      Q => computer_entity_exetomem_entity_reg_wb_place(0)
    );
  computer_entity_exetomem_entity_reg_wb_place_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_idtoexe_entity_reg_wb_place(1),
      Q => computer_entity_exetomem_entity_reg_wb_place(1)
    );
  computer_entity_exetomem_entity_reg_wb_place_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_idtoexe_entity_reg_wb_place(2),
      Q => computer_entity_exetomem_entity_reg_wb_place(2)
    );
  computer_entity_registers_entity_regs_data_2_0 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(0),
      Q => computer_entity_registers_entity_regs_data_2_0_323
    );
  computer_entity_registers_entity_regs_data_2_1 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(1),
      Q => computer_entity_registers_entity_regs_data_2_1_324
    );
  computer_entity_registers_entity_regs_data_2_2 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(2),
      Q => computer_entity_registers_entity_regs_data_2_2_331
    );
  computer_entity_registers_entity_regs_data_2_3 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(3),
      Q => computer_entity_registers_entity_regs_data_2_3_332
    );
  computer_entity_registers_entity_regs_data_2_4 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(4),
      Q => computer_entity_registers_entity_regs_data_2_4_333
    );
  computer_entity_registers_entity_regs_data_2_5 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(5),
      Q => computer_entity_registers_entity_regs_data_2_5_334
    );
  computer_entity_registers_entity_regs_data_2_6 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(6),
      Q => computer_entity_registers_entity_regs_data_2_6_335
    );
  computer_entity_registers_entity_regs_data_2_7 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(7),
      Q => computer_entity_registers_entity_regs_data_2_7_336
    );
  computer_entity_registers_entity_regs_data_2_8 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(8),
      Q => computer_entity_registers_entity_regs_data_2_8_337
    );
  computer_entity_registers_entity_regs_data_2_9 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(9),
      Q => computer_entity_registers_entity_regs_data_2_9_338
    );
  computer_entity_registers_entity_regs_data_2_10 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(10),
      Q => computer_entity_registers_entity_regs_data_2_10_325
    );
  computer_entity_registers_entity_regs_data_2_11 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(11),
      Q => computer_entity_registers_entity_regs_data_2_11_326
    );
  computer_entity_registers_entity_regs_data_2_12 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(12),
      Q => computer_entity_registers_entity_regs_data_2_12_327
    );
  computer_entity_registers_entity_regs_data_2_13 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(13),
      Q => computer_entity_registers_entity_regs_data_2_13_328
    );
  computer_entity_registers_entity_regs_data_2_14 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(14),
      Q => computer_entity_registers_entity_regs_data_2_14_329
    );
  computer_entity_registers_entity_regs_data_2_15 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_2_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(15),
      Q => computer_entity_registers_entity_regs_data_2_15_330
    );
  computer_entity_registers_entity_regs_data_0_0 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(0),
      Q => computer_entity_registers_entity_regs_data_0_0_289
    );
  computer_entity_registers_entity_regs_data_0_1 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(1),
      Q => computer_entity_registers_entity_regs_data_0_1_290
    );
  computer_entity_registers_entity_regs_data_0_2 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(2),
      Q => computer_entity_registers_entity_regs_data_0_2_297
    );
  computer_entity_registers_entity_regs_data_0_3 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(3),
      Q => computer_entity_registers_entity_regs_data_0_3_298
    );
  computer_entity_registers_entity_regs_data_0_4 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(4),
      Q => computer_entity_registers_entity_regs_data_0_4_299
    );
  computer_entity_registers_entity_regs_data_0_5 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(5),
      Q => computer_entity_registers_entity_regs_data_0_5_300
    );
  computer_entity_registers_entity_regs_data_0_6 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(6),
      Q => computer_entity_registers_entity_regs_data_0_6_301
    );
  computer_entity_registers_entity_regs_data_0_7 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(7),
      Q => computer_entity_registers_entity_regs_data_0_7_302
    );
  computer_entity_registers_entity_regs_data_0_8 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(8),
      Q => computer_entity_registers_entity_regs_data_0_8_303
    );
  computer_entity_registers_entity_regs_data_0_9 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(9),
      Q => computer_entity_registers_entity_regs_data_0_9_304
    );
  computer_entity_registers_entity_regs_data_0_10 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(10),
      Q => computer_entity_registers_entity_regs_data_0_10_291
    );
  computer_entity_registers_entity_regs_data_0_11 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(11),
      Q => computer_entity_registers_entity_regs_data_0_11_292
    );
  computer_entity_registers_entity_regs_data_0_12 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(12),
      Q => computer_entity_registers_entity_regs_data_0_12_293
    );
  computer_entity_registers_entity_regs_data_0_13 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(13),
      Q => computer_entity_registers_entity_regs_data_0_13_294
    );
  computer_entity_registers_entity_regs_data_0_14 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(14),
      Q => computer_entity_registers_entity_regs_data_0_14_295
    );
  computer_entity_registers_entity_regs_data_0_15 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_0_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(15),
      Q => computer_entity_registers_entity_regs_data_0_15_296
    );
  computer_entity_registers_entity_regs_data_1_0 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(0),
      Q => computer_entity_registers_entity_regs_data_1_0_306
    );
  computer_entity_registers_entity_regs_data_1_1 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(1),
      Q => computer_entity_registers_entity_regs_data_1_1_307
    );
  computer_entity_registers_entity_regs_data_1_2 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(2),
      Q => computer_entity_registers_entity_regs_data_1_2_314
    );
  computer_entity_registers_entity_regs_data_1_3 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(3),
      Q => computer_entity_registers_entity_regs_data_1_3_315
    );
  computer_entity_registers_entity_regs_data_1_4 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(4),
      Q => computer_entity_registers_entity_regs_data_1_4_316
    );
  computer_entity_registers_entity_regs_data_1_5 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(5),
      Q => computer_entity_registers_entity_regs_data_1_5_317
    );
  computer_entity_registers_entity_regs_data_1_6 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(6),
      Q => computer_entity_registers_entity_regs_data_1_6_318
    );
  computer_entity_registers_entity_regs_data_1_7 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(7),
      Q => computer_entity_registers_entity_regs_data_1_7_319
    );
  computer_entity_registers_entity_regs_data_1_8 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(8),
      Q => computer_entity_registers_entity_regs_data_1_8_320
    );
  computer_entity_registers_entity_regs_data_1_9 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(9),
      Q => computer_entity_registers_entity_regs_data_1_9_321
    );
  computer_entity_registers_entity_regs_data_1_10 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(10),
      Q => computer_entity_registers_entity_regs_data_1_10_308
    );
  computer_entity_registers_entity_regs_data_1_11 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(11),
      Q => computer_entity_registers_entity_regs_data_1_11_309
    );
  computer_entity_registers_entity_regs_data_1_12 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(12),
      Q => computer_entity_registers_entity_regs_data_1_12_310
    );
  computer_entity_registers_entity_regs_data_1_13 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(13),
      Q => computer_entity_registers_entity_regs_data_1_13_311
    );
  computer_entity_registers_entity_regs_data_1_14 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(14),
      Q => computer_entity_registers_entity_regs_data_1_14_312
    );
  computer_entity_registers_entity_regs_data_1_15 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_1_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(15),
      Q => computer_entity_registers_entity_regs_data_1_15_313
    );
  computer_entity_registers_entity_regs_data_3_0 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(0),
      Q => computer_entity_registers_entity_regs_data_3_0_340
    );
  computer_entity_registers_entity_regs_data_3_1 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(1),
      Q => computer_entity_registers_entity_regs_data_3_1_341
    );
  computer_entity_registers_entity_regs_data_3_2 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(2),
      Q => computer_entity_registers_entity_regs_data_3_2_348
    );
  computer_entity_registers_entity_regs_data_3_3 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(3),
      Q => computer_entity_registers_entity_regs_data_3_3_349
    );
  computer_entity_registers_entity_regs_data_3_4 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(4),
      Q => computer_entity_registers_entity_regs_data_3_4_350
    );
  computer_entity_registers_entity_regs_data_3_5 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(5),
      Q => computer_entity_registers_entity_regs_data_3_5_351
    );
  computer_entity_registers_entity_regs_data_3_6 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(6),
      Q => computer_entity_registers_entity_regs_data_3_6_352
    );
  computer_entity_registers_entity_regs_data_3_7 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(7),
      Q => computer_entity_registers_entity_regs_data_3_7_353
    );
  computer_entity_registers_entity_regs_data_3_8 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(8),
      Q => computer_entity_registers_entity_regs_data_3_8_354
    );
  computer_entity_registers_entity_regs_data_3_9 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(9),
      Q => computer_entity_registers_entity_regs_data_3_9_355
    );
  computer_entity_registers_entity_regs_data_3_10 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(10),
      Q => computer_entity_registers_entity_regs_data_3_10_342
    );
  computer_entity_registers_entity_regs_data_3_11 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(11),
      Q => computer_entity_registers_entity_regs_data_3_11_343
    );
  computer_entity_registers_entity_regs_data_3_12 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(12),
      Q => computer_entity_registers_entity_regs_data_3_12_344
    );
  computer_entity_registers_entity_regs_data_3_13 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(13),
      Q => computer_entity_registers_entity_regs_data_3_13_345
    );
  computer_entity_registers_entity_regs_data_3_14 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(14),
      Q => computer_entity_registers_entity_regs_data_3_14_346
    );
  computer_entity_registers_entity_regs_data_3_15 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_3_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(15),
      Q => computer_entity_registers_entity_regs_data_3_15_347
    );
  computer_entity_registers_entity_regs_data_4_0 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(0),
      Q => computer_entity_registers_entity_regs_data_4_0_357
    );
  computer_entity_registers_entity_regs_data_4_1 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(1),
      Q => computer_entity_registers_entity_regs_data_4_1_358
    );
  computer_entity_registers_entity_regs_data_4_2 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(2),
      Q => computer_entity_registers_entity_regs_data_4_2_365
    );
  computer_entity_registers_entity_regs_data_4_3 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(3),
      Q => computer_entity_registers_entity_regs_data_4_3_366
    );
  computer_entity_registers_entity_regs_data_4_4 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(4),
      Q => computer_entity_registers_entity_regs_data_4_4_367
    );
  computer_entity_registers_entity_regs_data_4_5 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(5),
      Q => computer_entity_registers_entity_regs_data_4_5_368
    );
  computer_entity_registers_entity_regs_data_4_6 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(6),
      Q => computer_entity_registers_entity_regs_data_4_6_369
    );
  computer_entity_registers_entity_regs_data_4_7 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(7),
      Q => computer_entity_registers_entity_regs_data_4_7_370
    );
  computer_entity_registers_entity_regs_data_4_8 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(8),
      Q => computer_entity_registers_entity_regs_data_4_8_371
    );
  computer_entity_registers_entity_regs_data_4_9 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(9),
      Q => computer_entity_registers_entity_regs_data_4_9_372
    );
  computer_entity_registers_entity_regs_data_4_10 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(10),
      Q => computer_entity_registers_entity_regs_data_4_10_359
    );
  computer_entity_registers_entity_regs_data_4_11 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(11),
      Q => computer_entity_registers_entity_regs_data_4_11_360
    );
  computer_entity_registers_entity_regs_data_4_12 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(12),
      Q => computer_entity_registers_entity_regs_data_4_12_361
    );
  computer_entity_registers_entity_regs_data_4_13 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(13),
      Q => computer_entity_registers_entity_regs_data_4_13_362
    );
  computer_entity_registers_entity_regs_data_4_14 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(14),
      Q => computer_entity_registers_entity_regs_data_4_14_363
    );
  computer_entity_registers_entity_regs_data_4_15 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_4_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(15),
      Q => computer_entity_registers_entity_regs_data_4_15_364
    );
  computer_entity_registers_entity_regs_data_7_0 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(0),
      Q => computer_entity_registers_entity_regs_data_7_0_408
    );
  computer_entity_registers_entity_regs_data_7_1 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(1),
      Q => computer_entity_registers_entity_regs_data_7_1_409
    );
  computer_entity_registers_entity_regs_data_7_2 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(2),
      Q => computer_entity_registers_entity_regs_data_7_2_416
    );
  computer_entity_registers_entity_regs_data_7_3 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(3),
      Q => computer_entity_registers_entity_regs_data_7_3_417
    );
  computer_entity_registers_entity_regs_data_7_4 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(4),
      Q => computer_entity_registers_entity_regs_data_7_4_418
    );
  computer_entity_registers_entity_regs_data_7_5 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(5),
      Q => computer_entity_registers_entity_regs_data_7_5_419
    );
  computer_entity_registers_entity_regs_data_7_6 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(6),
      Q => computer_entity_registers_entity_regs_data_7_6_420
    );
  computer_entity_registers_entity_regs_data_7_7 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(7),
      Q => computer_entity_registers_entity_regs_data_7_7_421
    );
  computer_entity_registers_entity_regs_data_7_8 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(8),
      Q => computer_entity_registers_entity_regs_data_7_8_422
    );
  computer_entity_registers_entity_regs_data_7_9 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(9),
      Q => computer_entity_registers_entity_regs_data_7_9_423
    );
  computer_entity_registers_entity_regs_data_7_10 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(10),
      Q => computer_entity_registers_entity_regs_data_7_10_410
    );
  computer_entity_registers_entity_regs_data_7_11 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(11),
      Q => computer_entity_registers_entity_regs_data_7_11_411
    );
  computer_entity_registers_entity_regs_data_7_12 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(12),
      Q => computer_entity_registers_entity_regs_data_7_12_412
    );
  computer_entity_registers_entity_regs_data_7_13 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(13),
      Q => computer_entity_registers_entity_regs_data_7_13_413
    );
  computer_entity_registers_entity_regs_data_7_14 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(14),
      Q => computer_entity_registers_entity_regs_data_7_14_414
    );
  computer_entity_registers_entity_regs_data_7_15 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_7_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(15),
      Q => computer_entity_registers_entity_regs_data_7_15_415
    );
  computer_entity_registers_entity_regs_data_5_0 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(0),
      Q => computer_entity_registers_entity_regs_data_5_0_374
    );
  computer_entity_registers_entity_regs_data_5_1 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(1),
      Q => computer_entity_registers_entity_regs_data_5_1_375
    );
  computer_entity_registers_entity_regs_data_5_2 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(2),
      Q => computer_entity_registers_entity_regs_data_5_2_382
    );
  computer_entity_registers_entity_regs_data_5_3 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(3),
      Q => computer_entity_registers_entity_regs_data_5_3_383
    );
  computer_entity_registers_entity_regs_data_5_4 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(4),
      Q => computer_entity_registers_entity_regs_data_5_4_384
    );
  computer_entity_registers_entity_regs_data_5_5 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(5),
      Q => computer_entity_registers_entity_regs_data_5_5_385
    );
  computer_entity_registers_entity_regs_data_5_6 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(6),
      Q => computer_entity_registers_entity_regs_data_5_6_386
    );
  computer_entity_registers_entity_regs_data_5_7 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(7),
      Q => computer_entity_registers_entity_regs_data_5_7_387
    );
  computer_entity_registers_entity_regs_data_5_8 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(8),
      Q => computer_entity_registers_entity_regs_data_5_8_388
    );
  computer_entity_registers_entity_regs_data_5_9 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(9),
      Q => computer_entity_registers_entity_regs_data_5_9_389
    );
  computer_entity_registers_entity_regs_data_5_10 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(10),
      Q => computer_entity_registers_entity_regs_data_5_10_376
    );
  computer_entity_registers_entity_regs_data_5_11 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(11),
      Q => computer_entity_registers_entity_regs_data_5_11_377
    );
  computer_entity_registers_entity_regs_data_5_12 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(12),
      Q => computer_entity_registers_entity_regs_data_5_12_378
    );
  computer_entity_registers_entity_regs_data_5_13 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(13),
      Q => computer_entity_registers_entity_regs_data_5_13_379
    );
  computer_entity_registers_entity_regs_data_5_14 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(14),
      Q => computer_entity_registers_entity_regs_data_5_14_380
    );
  computer_entity_registers_entity_regs_data_5_15 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_5_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(15),
      Q => computer_entity_registers_entity_regs_data_5_15_381
    );
  computer_entity_registers_entity_regs_data_6_0 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(0),
      Q => computer_entity_registers_entity_regs_data_6_0_391
    );
  computer_entity_registers_entity_regs_data_6_1 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(1),
      Q => computer_entity_registers_entity_regs_data_6_1_392
    );
  computer_entity_registers_entity_regs_data_6_2 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(2),
      Q => computer_entity_registers_entity_regs_data_6_2_399
    );
  computer_entity_registers_entity_regs_data_6_3 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(3),
      Q => computer_entity_registers_entity_regs_data_6_3_400
    );
  computer_entity_registers_entity_regs_data_6_4 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(4),
      Q => computer_entity_registers_entity_regs_data_6_4_401
    );
  computer_entity_registers_entity_regs_data_6_5 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(5),
      Q => computer_entity_registers_entity_regs_data_6_5_402
    );
  computer_entity_registers_entity_regs_data_6_6 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(6),
      Q => computer_entity_registers_entity_regs_data_6_6_403
    );
  computer_entity_registers_entity_regs_data_6_7 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(7),
      Q => computer_entity_registers_entity_regs_data_6_7_404
    );
  computer_entity_registers_entity_regs_data_6_8 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(8),
      Q => computer_entity_registers_entity_regs_data_6_8_405
    );
  computer_entity_registers_entity_regs_data_6_9 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(9),
      Q => computer_entity_registers_entity_regs_data_6_9_406
    );
  computer_entity_registers_entity_regs_data_6_10 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(10),
      Q => computer_entity_registers_entity_regs_data_6_10_393
    );
  computer_entity_registers_entity_regs_data_6_11 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(11),
      Q => computer_entity_registers_entity_regs_data_6_11_394
    );
  computer_entity_registers_entity_regs_data_6_12 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(12),
      Q => computer_entity_registers_entity_regs_data_6_12_395
    );
  computer_entity_registers_entity_regs_data_6_13 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(13),
      Q => computer_entity_registers_entity_regs_data_6_13_396
    );
  computer_entity_registers_entity_regs_data_6_14 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(14),
      Q => computer_entity_registers_entity_regs_data_6_14_397
    );
  computer_entity_registers_entity_regs_data_6_15 : FDCE_1
    port map (
      C => clk_BUFGP_3,
      CE => computer_entity_registers_entity_regs_data_6_and0000,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_memtowb_entity_alu_result(15),
      Q => computer_entity_registers_entity_regs_data_6_15_398
    );
  computer_entity_registers_entity_mux_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux_4_f5_285,
      I1 => computer_entity_registers_entity_mux_3_f5_283,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(0)
    );
  computer_entity_registers_entity_mux_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux_6_288,
      I1 => computer_entity_registers_entity_mux_51_287,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux_4_f5_285
    );
  computer_entity_registers_entity_mux_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_0_289,
      I2 => computer_entity_registers_entity_regs_data_1_0_306,
      O => computer_entity_registers_entity_mux_6_288
    );
  computer_entity_registers_entity_mux_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_0_323,
      I2 => computer_entity_registers_entity_regs_data_3_0_340,
      O => computer_entity_registers_entity_mux_51_287
    );
  computer_entity_registers_entity_mux_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux_5_286,
      I1 => computer_entity_registers_entity_mux_4_284,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux_3_f5_283
    );
  computer_entity_registers_entity_mux_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_0_357,
      I2 => computer_entity_registers_entity_regs_data_5_0_374,
      O => computer_entity_registers_entity_mux_5_286
    );
  computer_entity_registers_entity_mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_0_391,
      I2 => computer_entity_registers_entity_regs_data_7_0_408,
      O => computer_entity_registers_entity_mux_4_284
    );
  computer_entity_registers_entity_mux7_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux7_4_f5_267,
      I1 => computer_entity_registers_entity_mux7_3_f5_265,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(1)
    );
  computer_entity_registers_entity_mux7_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux7_6_270,
      I1 => computer_entity_registers_entity_mux7_51_269,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux7_4_f5_267
    );
  computer_entity_registers_entity_mux7_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_1_290,
      I2 => computer_entity_registers_entity_regs_data_1_1_307,
      O => computer_entity_registers_entity_mux7_6_270
    );
  computer_entity_registers_entity_mux7_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_1_324,
      I2 => computer_entity_registers_entity_regs_data_3_1_341,
      O => computer_entity_registers_entity_mux7_51_269
    );
  computer_entity_registers_entity_mux7_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux7_5_268,
      I1 => computer_entity_registers_entity_mux7_4_266,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux7_3_f5_265
    );
  computer_entity_registers_entity_mux7_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_1_358,
      I2 => computer_entity_registers_entity_regs_data_5_1_375,
      O => computer_entity_registers_entity_mux7_5_268
    );
  computer_entity_registers_entity_mux7_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_1_392,
      I2 => computer_entity_registers_entity_regs_data_7_1_409,
      O => computer_entity_registers_entity_mux7_4_266
    );
  computer_entity_registers_entity_mux8_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux8_4_f5_273,
      I1 => computer_entity_registers_entity_mux8_3_f5_271,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(2)
    );
  computer_entity_registers_entity_mux8_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux8_6_276,
      I1 => computer_entity_registers_entity_mux8_51_275,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux8_4_f5_273
    );
  computer_entity_registers_entity_mux8_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_2_297,
      I2 => computer_entity_registers_entity_regs_data_1_2_314,
      O => computer_entity_registers_entity_mux8_6_276
    );
  computer_entity_registers_entity_mux8_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_2_331,
      I2 => computer_entity_registers_entity_regs_data_3_2_348,
      O => computer_entity_registers_entity_mux8_51_275
    );
  computer_entity_registers_entity_mux8_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux8_5_274,
      I1 => computer_entity_registers_entity_mux8_4_272,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux8_3_f5_271
    );
  computer_entity_registers_entity_mux8_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_2_365,
      I2 => computer_entity_registers_entity_regs_data_5_2_382,
      O => computer_entity_registers_entity_mux8_5_274
    );
  computer_entity_registers_entity_mux8_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_2_399,
      I2 => computer_entity_registers_entity_regs_data_7_2_416,
      O => computer_entity_registers_entity_mux8_4_272
    );
  computer_entity_registers_entity_mux9_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux9_4_f5_279,
      I1 => computer_entity_registers_entity_mux9_3_f5_277,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(3)
    );
  computer_entity_registers_entity_mux9_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux9_6_282,
      I1 => computer_entity_registers_entity_mux9_51_281,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux9_4_f5_279
    );
  computer_entity_registers_entity_mux9_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_3_298,
      I2 => computer_entity_registers_entity_regs_data_1_3_315,
      O => computer_entity_registers_entity_mux9_6_282
    );
  computer_entity_registers_entity_mux9_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_3_332,
      I2 => computer_entity_registers_entity_regs_data_3_3_349,
      O => computer_entity_registers_entity_mux9_51_281
    );
  computer_entity_registers_entity_mux9_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux9_5_280,
      I1 => computer_entity_registers_entity_mux9_4_278,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux9_3_f5_277
    );
  computer_entity_registers_entity_mux9_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_3_366,
      I2 => computer_entity_registers_entity_regs_data_5_3_383,
      O => computer_entity_registers_entity_mux9_5_280
    );
  computer_entity_registers_entity_mux9_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_3_400,
      I2 => computer_entity_registers_entity_regs_data_7_3_417,
      O => computer_entity_registers_entity_mux9_4_278
    );
  computer_entity_registers_entity_mux10_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux10_4_f5_195,
      I1 => computer_entity_registers_entity_mux10_3_f5_193,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(4)
    );
  computer_entity_registers_entity_mux10_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux10_6_198,
      I1 => computer_entity_registers_entity_mux10_51_197,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux10_4_f5_195
    );
  computer_entity_registers_entity_mux10_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_4_299,
      I2 => computer_entity_registers_entity_regs_data_1_4_316,
      O => computer_entity_registers_entity_mux10_6_198
    );
  computer_entity_registers_entity_mux10_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_4_333,
      I2 => computer_entity_registers_entity_regs_data_3_4_350,
      O => computer_entity_registers_entity_mux10_51_197
    );
  computer_entity_registers_entity_mux10_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux10_5_196,
      I1 => computer_entity_registers_entity_mux10_4_194,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux10_3_f5_193
    );
  computer_entity_registers_entity_mux10_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_4_367,
      I2 => computer_entity_registers_entity_regs_data_5_4_384,
      O => computer_entity_registers_entity_mux10_5_196
    );
  computer_entity_registers_entity_mux10_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_4_401,
      I2 => computer_entity_registers_entity_regs_data_7_4_418,
      O => computer_entity_registers_entity_mux10_4_194
    );
  computer_entity_registers_entity_mux11_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux11_4_f5_201,
      I1 => computer_entity_registers_entity_mux11_3_f5_199,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(5)
    );
  computer_entity_registers_entity_mux11_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux11_6_204,
      I1 => computer_entity_registers_entity_mux11_51_203,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux11_4_f5_201
    );
  computer_entity_registers_entity_mux11_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_5_300,
      I2 => computer_entity_registers_entity_regs_data_1_5_317,
      O => computer_entity_registers_entity_mux11_6_204
    );
  computer_entity_registers_entity_mux11_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_5_334,
      I2 => computer_entity_registers_entity_regs_data_3_5_351,
      O => computer_entity_registers_entity_mux11_51_203
    );
  computer_entity_registers_entity_mux11_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux11_5_202,
      I1 => computer_entity_registers_entity_mux11_4_200,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux11_3_f5_199
    );
  computer_entity_registers_entity_mux11_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_5_368,
      I2 => computer_entity_registers_entity_regs_data_5_5_385,
      O => computer_entity_registers_entity_mux11_5_202
    );
  computer_entity_registers_entity_mux11_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_5_402,
      I2 => computer_entity_registers_entity_regs_data_7_5_419,
      O => computer_entity_registers_entity_mux11_4_200
    );
  computer_entity_registers_entity_mux12_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux12_4_f5_207,
      I1 => computer_entity_registers_entity_mux12_3_f5_205,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(6)
    );
  computer_entity_registers_entity_mux12_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux12_6_210,
      I1 => computer_entity_registers_entity_mux12_51_209,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux12_4_f5_207
    );
  computer_entity_registers_entity_mux12_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_6_301,
      I2 => computer_entity_registers_entity_regs_data_1_6_318,
      O => computer_entity_registers_entity_mux12_6_210
    );
  computer_entity_registers_entity_mux12_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_6_335,
      I2 => computer_entity_registers_entity_regs_data_3_6_352,
      O => computer_entity_registers_entity_mux12_51_209
    );
  computer_entity_registers_entity_mux12_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux12_5_208,
      I1 => computer_entity_registers_entity_mux12_4_206,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux12_3_f5_205
    );
  computer_entity_registers_entity_mux12_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_6_369,
      I2 => computer_entity_registers_entity_regs_data_5_6_386,
      O => computer_entity_registers_entity_mux12_5_208
    );
  computer_entity_registers_entity_mux12_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_6_403,
      I2 => computer_entity_registers_entity_regs_data_7_6_420,
      O => computer_entity_registers_entity_mux12_4_206
    );
  computer_entity_iftoid_entity_instruction_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Mrom_if_instruction,
      Q => computer_entity_iftoid_entity_instruction_0_Q
    );
  computer_entity_iftoid_entity_instruction_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Mrom_if_instruction1_12,
      Q => computer_entity_iftoid_entity_instruction_1_Q
    );
  computer_entity_iftoid_entity_instruction_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Mrom_if_instruction10,
      Q => computer_entity_iftoid_entity_instruction_2_Q
    );
  computer_entity_iftoid_entity_instruction_11 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Mrom_if_instruction11,
      Q => computer_entity_iftoid_entity_instruction_11_Q
    );
  computer_entity_iftoid_entity_instruction_14 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Mrom_if_instruction14,
      Q => computer_entity_iftoid_entity_instruction_14_Q
    );
  computer_entity_Mcount_if_pc_xor_3_Q : XORCY
    port map (
      CI => computer_entity_Mcount_if_pc_cy(2),
      LI => computer_entity_Mcount_if_pc_xor_3_rt_10,
      O => computer_entity_Result(3)
    );
  computer_entity_Mcount_if_pc_xor_2_Q : XORCY
    port map (
      CI => computer_entity_Mcount_if_pc_cy(1),
      LI => computer_entity_Mcount_if_pc_cy_2_rt_8,
      O => computer_entity_Result(2)
    );
  computer_entity_Mcount_if_pc_cy_2_Q : MUXCY
    port map (
      CI => computer_entity_Mcount_if_pc_cy(1),
      DI => N0,
      S => computer_entity_Mcount_if_pc_cy_2_rt_8,
      O => computer_entity_Mcount_if_pc_cy(2)
    );
  computer_entity_Mcount_if_pc_xor_1_Q : XORCY
    port map (
      CI => computer_entity_Mcount_if_pc_cy(0),
      LI => computer_entity_Mcount_if_pc_cy_1_rt_6,
      O => computer_entity_Result(1)
    );
  computer_entity_Mcount_if_pc_cy_1_Q : MUXCY
    port map (
      CI => computer_entity_Mcount_if_pc_cy(0),
      DI => N0,
      S => computer_entity_Mcount_if_pc_cy_1_rt_6,
      O => computer_entity_Mcount_if_pc_cy(1)
    );
  computer_entity_Mcount_if_pc_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => computer_entity_Mcount_if_pc_lut(0),
      O => computer_entity_Result(0)
    );
  computer_entity_Mcount_if_pc_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => computer_entity_Mcount_if_pc_lut(0),
      O => computer_entity_Mcount_if_pc_cy(0)
    );
  computer_entity_if_pc_3 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Result(3),
      Q => computer_entity_if_pc(3)
    );
  computer_entity_if_pc_2 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Result(2),
      Q => computer_entity_if_pc(2)
    );
  computer_entity_if_pc_1 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Result(1),
      Q => computer_entity_if_pc(1)
    );
  computer_entity_if_pc_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => computer_entity_exetomem_entity_rst_inv,
      D => computer_entity_Result(0),
      Q => computer_entity_if_pc(0)
    );
  computer_entity_Mrom_if_instruction1111 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => computer_entity_if_pc(1),
      I1 => computer_entity_if_pc(0),
      I2 => computer_entity_if_pc(3),
      I3 => computer_entity_if_pc(2),
      O => computer_entity_Mrom_if_instruction11
    );
  computer_entity_Mrom_if_instruction111 : LUT4
    generic map(
      INIT => X"1030"
    )
    port map (
      I0 => computer_entity_if_pc(2),
      I1 => computer_entity_if_pc(3),
      I2 => computer_entity_if_pc(1),
      I3 => computer_entity_if_pc(0),
      O => computer_entity_Mrom_if_instruction1_12
    );
  computer_entity_Mrom_if_instruction101 : LUT4
    generic map(
      INIT => X"1030"
    )
    port map (
      I0 => computer_entity_if_pc(1),
      I1 => computer_entity_if_pc(3),
      I2 => computer_entity_if_pc(2),
      I3 => computer_entity_if_pc(0),
      O => computer_entity_Mrom_if_instruction10
    );
  computer_entity_Mrom_if_instruction1 : LUT4
    generic map(
      INIT => X"1030"
    )
    port map (
      I0 => computer_entity_if_pc(2),
      I1 => computer_entity_if_pc(3),
      I2 => computer_entity_if_pc(0),
      I3 => computer_entity_if_pc(1),
      O => computer_entity_Mrom_if_instruction
    );
  computer_entity_Mrom_if_instruction141 : LUT4
    generic map(
      INIT => X"1554"
    )
    port map (
      I0 => computer_entity_if_pc(3),
      I1 => computer_entity_if_pc(2),
      I2 => computer_entity_if_pc(0),
      I3 => computer_entity_if_pc(1),
      O => computer_entity_Mrom_if_instruction14
    );
  computer_entity_registers_entity_regs_data_7_and00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_signal_192,
      I1 => computer_entity_memtowb_entity_reg_wb_place(0),
      I2 => computer_entity_memtowb_entity_reg_wb_place(1),
      I3 => computer_entity_memtowb_entity_reg_wb_place(2),
      O => computer_entity_registers_entity_regs_data_7_and0000
    );
  computer_entity_registers_entity_regs_data_6_and00001 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_place(1),
      I1 => computer_entity_memtowb_entity_reg_wb_signal_192,
      I2 => computer_entity_memtowb_entity_reg_wb_place(0),
      I3 => computer_entity_memtowb_entity_reg_wb_place(2),
      O => computer_entity_registers_entity_regs_data_6_and0000
    );
  computer_entity_registers_entity_regs_data_5_and00001 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_signal_192,
      I1 => computer_entity_memtowb_entity_reg_wb_place(0),
      I2 => computer_entity_memtowb_entity_reg_wb_place(1),
      I3 => computer_entity_memtowb_entity_reg_wb_place(2),
      O => computer_entity_registers_entity_regs_data_5_and0000
    );
  computer_entity_registers_entity_regs_data_4_and00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_signal_192,
      I1 => computer_entity_memtowb_entity_reg_wb_place(0),
      I2 => computer_entity_memtowb_entity_reg_wb_place(1),
      I3 => computer_entity_memtowb_entity_reg_wb_place(2),
      O => computer_entity_registers_entity_regs_data_4_and0000
    );
  computer_entity_registers_entity_regs_data_3_and00001 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_place(1),
      I1 => computer_entity_memtowb_entity_reg_wb_place(0),
      I2 => computer_entity_memtowb_entity_reg_wb_place(2),
      I3 => computer_entity_memtowb_entity_reg_wb_signal_192,
      O => computer_entity_registers_entity_regs_data_3_and0000
    );
  computer_entity_registers_entity_regs_data_2_and00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_place(1),
      I1 => computer_entity_memtowb_entity_reg_wb_place(0),
      I2 => computer_entity_memtowb_entity_reg_wb_place(2),
      I3 => computer_entity_memtowb_entity_reg_wb_signal_192,
      O => computer_entity_registers_entity_regs_data_2_and0000
    );
  computer_entity_registers_entity_regs_data_1_and00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_signal_192,
      I1 => computer_entity_memtowb_entity_reg_wb_place(1),
      I2 => computer_entity_memtowb_entity_reg_wb_place(2),
      I3 => computer_entity_memtowb_entity_reg_wb_place(0),
      O => computer_entity_registers_entity_regs_data_1_and0000
    );
  computer_entity_registers_entity_regs_data_0_and00001 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => computer_entity_memtowb_entity_reg_wb_signal_192,
      I1 => computer_entity_memtowb_entity_reg_wb_place(0),
      I2 => computer_entity_memtowb_entity_reg_wb_place(1),
      I3 => computer_entity_memtowb_entity_reg_wb_place(2),
      O => computer_entity_registers_entity_regs_data_0_and0000
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_442
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
  computer_entity_Mcount_if_pc_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_if_pc(2),
      O => computer_entity_Mcount_if_pc_cy_2_rt_8
    );
  computer_entity_Mcount_if_pc_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_if_pc(1),
      O => computer_entity_Mcount_if_pc_cy_1_rt_6
    );
  computer_entity_Mcount_if_pc_xor_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => computer_entity_if_pc(3),
      O => computer_entity_Mcount_if_pc_xor_3_rt_10
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_1_Q : LUT4
    generic map(
      INIT => X"5AC3"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(1),
      I1 => computer_entity_idtoexe_entity_ry(1),
      I2 => computer_entity_idtoexe_entity_rx(1),
      I3 => computer_entity_idtoexe_entity_alu_src1(0),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(1)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"5AC3"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(2),
      I1 => computer_entity_idtoexe_entity_ry(2),
      I2 => computer_entity_idtoexe_entity_rx(2),
      I3 => computer_entity_idtoexe_entity_alu_src1(0),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(2)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_3_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_ry(3),
      I1 => computer_entity_idtoexe_entity_rx(3),
      I2 => computer_entity_idtoexe_entity_alu_src1(0),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(3)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_4_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(4),
      I2 => computer_entity_idtoexe_entity_ry(4),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(4)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_5_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(5),
      I2 => computer_entity_idtoexe_entity_ry(5),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(5)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(6),
      I2 => computer_entity_idtoexe_entity_ry(6),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(6)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_7_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(7),
      I2 => computer_entity_idtoexe_entity_ry(7),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(7)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_8_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(8),
      I2 => computer_entity_idtoexe_entity_ry(8),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(8)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_9_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(9),
      I2 => computer_entity_idtoexe_entity_ry(9),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(9)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_10_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(10),
      I2 => computer_entity_idtoexe_entity_ry(10),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(10)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_11_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(11),
      I2 => computer_entity_idtoexe_entity_ry(11),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(11)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_12_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(12),
      I2 => computer_entity_idtoexe_entity_ry(12),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(12)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_13_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(13),
      I2 => computer_entity_idtoexe_entity_ry(13),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(13)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_14_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(14),
      I2 => computer_entity_idtoexe_entity_ry(14),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(14)
    );
  computer_entity_registers_entity_mux1_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_10_291,
      I2 => computer_entity_registers_entity_regs_data_1_10_308,
      O => computer_entity_registers_entity_mux1_6_234
    );
  computer_entity_registers_entity_mux1_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_10_325,
      I2 => computer_entity_registers_entity_regs_data_3_10_342,
      O => computer_entity_registers_entity_mux1_51_233
    );
  computer_entity_registers_entity_mux2_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_11_292,
      I2 => computer_entity_registers_entity_regs_data_1_11_309,
      O => computer_entity_registers_entity_mux2_6_240
    );
  computer_entity_registers_entity_mux1_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_10_359,
      I2 => computer_entity_registers_entity_regs_data_5_10_376,
      O => computer_entity_registers_entity_mux1_5_232
    );
  computer_entity_registers_entity_mux1_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_10_393,
      I2 => computer_entity_registers_entity_regs_data_7_10_410,
      O => computer_entity_registers_entity_mux1_4_230
    );
  computer_entity_registers_entity_mux2_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_11_326,
      I2 => computer_entity_registers_entity_regs_data_3_11_343,
      O => computer_entity_registers_entity_mux2_51_239
    );
  computer_entity_registers_entity_mux2_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_11_360,
      I2 => computer_entity_registers_entity_regs_data_5_11_377,
      O => computer_entity_registers_entity_mux2_5_238
    );
  computer_entity_registers_entity_mux2_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_11_394,
      I2 => computer_entity_registers_entity_regs_data_7_11_411,
      O => computer_entity_registers_entity_mux2_4_236
    );
  computer_entity_registers_entity_mux3_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_12_293,
      I2 => computer_entity_registers_entity_regs_data_1_12_310,
      O => computer_entity_registers_entity_mux3_6_246
    );
  computer_entity_registers_entity_mux3_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_12_361,
      I2 => computer_entity_registers_entity_regs_data_5_12_378,
      O => computer_entity_registers_entity_mux3_5_244
    );
  computer_entity_registers_entity_mux3_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_12_395,
      I2 => computer_entity_registers_entity_regs_data_7_12_412,
      O => computer_entity_registers_entity_mux3_4_242
    );
  computer_entity_registers_entity_mux3_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_12_327,
      I2 => computer_entity_registers_entity_regs_data_3_12_344,
      O => computer_entity_registers_entity_mux3_51_245
    );
  computer_entity_registers_entity_mux4_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_13_294,
      I2 => computer_entity_registers_entity_regs_data_1_13_311,
      O => computer_entity_registers_entity_mux4_6_252
    );
  computer_entity_registers_entity_mux4_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_13_328,
      I2 => computer_entity_registers_entity_regs_data_3_13_345,
      O => computer_entity_registers_entity_mux4_51_251
    );
  computer_entity_registers_entity_mux4_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_13_362,
      I2 => computer_entity_registers_entity_regs_data_5_13_379,
      O => computer_entity_registers_entity_mux4_5_250
    );
  computer_entity_registers_entity_mux4_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_13_396,
      I2 => computer_entity_registers_entity_regs_data_7_13_413,
      O => computer_entity_registers_entity_mux4_4_248
    );
  computer_entity_registers_entity_mux5_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_14_329,
      I2 => computer_entity_registers_entity_regs_data_3_14_346,
      O => computer_entity_registers_entity_mux5_51_257
    );
  computer_entity_registers_entity_mux5_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_14_363,
      I2 => computer_entity_registers_entity_regs_data_5_14_380,
      O => computer_entity_registers_entity_mux5_5_256
    );
  computer_entity_registers_entity_mux5_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_14_295,
      I2 => computer_entity_registers_entity_regs_data_1_14_312,
      O => computer_entity_registers_entity_mux5_6_258
    );
  computer_entity_registers_entity_mux5_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_14_397,
      I2 => computer_entity_registers_entity_regs_data_7_14_414,
      O => computer_entity_registers_entity_mux5_4_254
    );
  computer_entity_registers_entity_mux6_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_15_296,
      I2 => computer_entity_registers_entity_regs_data_1_15_313,
      O => computer_entity_registers_entity_mux6_6_264
    );
  computer_entity_registers_entity_mux6_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_15_330,
      I2 => computer_entity_registers_entity_regs_data_3_15_347,
      O => computer_entity_registers_entity_mux6_51_263
    );
  computer_entity_registers_entity_mux6_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_15_364,
      I2 => computer_entity_registers_entity_regs_data_5_15_381,
      O => computer_entity_registers_entity_mux6_5_262
    );
  computer_entity_registers_entity_mux13_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_7_302,
      I2 => computer_entity_registers_entity_regs_data_1_7_319,
      O => computer_entity_registers_entity_mux13_6_216
    );
  computer_entity_registers_entity_mux6_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_15_398,
      I2 => computer_entity_registers_entity_regs_data_7_15_415,
      O => computer_entity_registers_entity_mux6_4_260
    );
  computer_entity_registers_entity_mux13_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_7_370,
      I2 => computer_entity_registers_entity_regs_data_5_7_387,
      O => computer_entity_registers_entity_mux13_5_214
    );
  computer_entity_registers_entity_mux13_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_7_336,
      I2 => computer_entity_registers_entity_regs_data_3_7_353,
      O => computer_entity_registers_entity_mux13_51_215
    );
  computer_entity_registers_entity_mux13_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_7_404,
      I2 => computer_entity_registers_entity_regs_data_7_7_421,
      O => computer_entity_registers_entity_mux13_4_212
    );
  computer_entity_registers_entity_mux14_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_8_303,
      I2 => computer_entity_registers_entity_regs_data_1_8_320,
      O => computer_entity_registers_entity_mux14_6_222
    );
  computer_entity_registers_entity_mux14_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_8_337,
      I2 => computer_entity_registers_entity_regs_data_3_8_354,
      O => computer_entity_registers_entity_mux14_51_221
    );
  computer_entity_registers_entity_mux14_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_8_405,
      I2 => computer_entity_registers_entity_regs_data_7_8_422,
      O => computer_entity_registers_entity_mux14_4_218
    );
  computer_entity_registers_entity_mux14_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_8_371,
      I2 => computer_entity_registers_entity_regs_data_5_8_388,
      O => computer_entity_registers_entity_mux14_5_220
    );
  computer_entity_registers_entity_mux15_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_2_9_338,
      I2 => computer_entity_registers_entity_regs_data_3_9_355,
      O => computer_entity_registers_entity_mux15_51_227
    );
  computer_entity_registers_entity_mux15_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_0_9_304,
      I2 => computer_entity_registers_entity_regs_data_1_9_321,
      O => computer_entity_registers_entity_mux15_6_228
    );
  computer_entity_registers_entity_mux15_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_4_9_372,
      I2 => computer_entity_registers_entity_regs_data_5_9_389,
      O => computer_entity_registers_entity_mux15_5_226
    );
  computer_entity_registers_entity_mux15_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_0_Q,
      I1 => computer_entity_registers_entity_regs_data_6_9_406,
      I2 => computer_entity_registers_entity_regs_data_7_9_423,
      O => computer_entity_registers_entity_mux15_4_224
    );
  computer_entity_registers_entity_mux1_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux1_6_234,
      I1 => computer_entity_registers_entity_mux1_51_233,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux1_4_f5_231
    );
  computer_entity_registers_entity_mux1_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux1_5_232,
      I1 => computer_entity_registers_entity_mux1_4_230,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux1_3_f5_229
    );
  computer_entity_registers_entity_mux2_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux2_5_238,
      I1 => computer_entity_registers_entity_mux2_4_236,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux2_3_f5_235
    );
  computer_entity_registers_entity_mux2_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux2_6_240,
      I1 => computer_entity_registers_entity_mux2_51_239,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux2_4_f5_237
    );
  computer_entity_registers_entity_mux3_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux3_6_246,
      I1 => computer_entity_registers_entity_mux3_51_245,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux3_4_f5_243
    );
  computer_entity_registers_entity_mux3_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux3_5_244,
      I1 => computer_entity_registers_entity_mux3_4_242,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux3_3_f5_241
    );
  computer_entity_registers_entity_mux4_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux4_6_252,
      I1 => computer_entity_registers_entity_mux4_51_251,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux4_4_f5_249
    );
  computer_entity_registers_entity_mux4_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux4_5_250,
      I1 => computer_entity_registers_entity_mux4_4_248,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux4_3_f5_247
    );
  computer_entity_registers_entity_mux5_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux5_6_258,
      I1 => computer_entity_registers_entity_mux5_51_257,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux5_4_f5_255
    );
  computer_entity_registers_entity_mux5_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux5_5_256,
      I1 => computer_entity_registers_entity_mux5_4_254,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux5_3_f5_253
    );
  computer_entity_registers_entity_mux6_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux6_6_264,
      I1 => computer_entity_registers_entity_mux6_51_263,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux6_4_f5_261
    );
  computer_entity_registers_entity_mux13_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux13_6_216,
      I1 => computer_entity_registers_entity_mux13_51_215,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux13_4_f5_213
    );
  computer_entity_registers_entity_mux6_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux6_5_262,
      I1 => computer_entity_registers_entity_mux6_4_260,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux6_3_f5_259
    );
  computer_entity_registers_entity_mux13_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux13_5_214,
      I1 => computer_entity_registers_entity_mux13_4_212,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux13_3_f5_211
    );
  computer_entity_registers_entity_mux14_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux14_6_222,
      I1 => computer_entity_registers_entity_mux14_51_221,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux14_4_f5_219
    );
  computer_entity_registers_entity_mux14_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux14_5_220,
      I1 => computer_entity_registers_entity_mux14_4_218,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux14_3_f5_217
    );
  computer_entity_registers_entity_mux15_3_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux15_5_226,
      I1 => computer_entity_registers_entity_mux15_4_224,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux15_3_f5_223
    );
  computer_entity_registers_entity_mux15_4_f5 : MUXF5
    port map (
      I0 => computer_entity_registers_entity_mux15_6_228,
      I1 => computer_entity_registers_entity_mux15_51_227,
      S => computer_entity_iftoid_entity_instruction_1_Q,
      O => computer_entity_registers_entity_mux15_4_f5_225
    );
  computer_entity_registers_entity_mux1_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux1_4_f5_231,
      I1 => computer_entity_registers_entity_mux1_3_f5_229,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(10)
    );
  computer_entity_registers_entity_mux2_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux2_4_f5_237,
      I1 => computer_entity_registers_entity_mux2_3_f5_235,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(11)
    );
  computer_entity_registers_entity_mux3_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux3_4_f5_243,
      I1 => computer_entity_registers_entity_mux3_3_f5_241,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(12)
    );
  computer_entity_registers_entity_mux4_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux4_4_f5_249,
      I1 => computer_entity_registers_entity_mux4_3_f5_247,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(13)
    );
  computer_entity_registers_entity_mux5_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux5_4_f5_255,
      I1 => computer_entity_registers_entity_mux5_3_f5_253,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(14)
    );
  computer_entity_registers_entity_mux6_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux6_4_f5_261,
      I1 => computer_entity_registers_entity_mux6_3_f5_259,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(15)
    );
  computer_entity_registers_entity_mux13_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux13_4_f5_213,
      I1 => computer_entity_registers_entity_mux13_3_f5_211,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(7)
    );
  computer_entity_registers_entity_mux14_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux14_4_f5_219,
      I1 => computer_entity_registers_entity_mux14_3_f5_217,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(8)
    );
  computer_entity_registers_entity_mux15_2_f6 : MUXF6
    port map (
      I0 => computer_entity_registers_entity_mux15_4_f5_225,
      I1 => computer_entity_registers_entity_mux15_3_f5_223,
      S => computer_entity_iftoid_entity_instruction_2_Q,
      O => computer_entity_id_rx(9)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_15_Q : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_src1(0),
      I1 => computer_entity_idtoexe_entity_rx(15),
      I2 => computer_entity_idtoexe_entity_ry(15),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(15)
    );
  computer_entity_idtoexe_entity_wb_place_chooser_Mmux_output61 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_14_Q,
      I1 => computer_entity_iftoid_entity_instruction_2_Q,
      I2 => computer_entity_iftoid_entity_instruction_11_Q,
      O => computer_entity_idtoexe_entity_reg_wb_place_cand(2)
    );
  computer_entity_idtoexe_entity_wb_place_chooser_Mmux_output41 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_14_Q,
      I1 => computer_entity_iftoid_entity_instruction_1_Q,
      I2 => computer_entity_iftoid_entity_instruction_11_Q,
      O => computer_entity_idtoexe_entity_reg_wb_place_cand(1)
    );
  computer_entity_idtoexe_entity_wb_place_chooser_Mmux_output21 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => computer_entity_iftoid_entity_instruction_14_Q,
      I1 => computer_entity_iftoid_entity_instruction_0_Q,
      I2 => computer_entity_iftoid_entity_instruction_11_Q,
      O => computer_entity_idtoexe_entity_reg_wb_place_cand(0)
    );
  computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"5AC3"
    )
    port map (
      I0 => computer_entity_idtoexe_entity_alu_immi(0),
      I1 => computer_entity_idtoexe_entity_ry(0),
      I2 => computer_entity_idtoexe_entity_rx(0),
      I3 => computer_entity_idtoexe_entity_alu_src1(0),
      O => computer_entity_exe_entity_alu_entity_Maddsub_result_addsub0000_lut(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_3
    );
  computer_entity_Mcount_if_pc_lut_0_INV_0 : INV
    port map (
      I => computer_entity_if_pc(0),
      O => computer_entity_Mcount_if_pc_lut(0)
    );
  computer_entity_rst_inv1_INV_0 : INV
    port map (
      I => rst_IBUF_442,
      O => computer_entity_exetomem_entity_rst_inv
    );
  computer_entity_exe_entity_alu_entity_result_mux00002_INV_0 : INV
    port map (
      I => computer_entity_idtoexe_entity_alu_src1(0),
      O => computer_entity_exe_entity_alu_entity_result_mux0000
    );

end Structure;

