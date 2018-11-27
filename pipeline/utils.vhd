--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package utils is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--
	type reg_wb_init_control is
		record
			reg_wb_signal: std_logic;
			reg_wb_chooser: std_logic_vector(1 downto 0);
			reg_wb_data_chooser: std_logic;
		end record;
	
	constant zero_reg_wb_init_control : reg_wb_init_control :=
		(
			reg_wb_signal => '0',
			reg_wb_chooser => "00",
			reg_wb_data_chooser => '0'
		);
	
	type reg_wb_control is
		record
			reg_wb_signal: std_logic;
			reg_wb_regs: std_logic_vector(2 downto 0);
			reg_wb_data_chooser: std_logic;
		end record;
	
	constant zero_reg_wb_control : reg_wb_control :=
		(
			reg_wb_signal => '0',
			reg_wb_regs => (others=>'0'),
			reg_wb_data_chooser => '0'
		);
	
	type reg_other_control is
		record
			sp_wb_signal: std_logic;
			t_wb_signal: std_logic;
			ih_wb_signal: std_logic;
		end record;
	
	constant zero_reg_other_control : reg_other_control :=
		(
			sp_wb_signal => '0',
			t_wb_signal => '0',
			ih_wb_signal => '0'
		);
	
	type mem_control is
		record
			wb_signal: std_logic;
			wb_data_chooser: std_logic;
			read_signal: std_logic;
		end record;
	
	constant zero_mem_control : mem_control := 
		(
			wb_signal => '0',
			wb_data_chooser => '0',
			read_signal => '0'
		);
	
	type alu_control is
		record
			alu_op: std_logic_vector(2 downto 0);
			alu_src0: std_logic_vector(2 downto 0);
			alu_src1: std_logic_vector(1 downto 0);
			t_src: std_logic;
		end record;
	
	constant zero_alu_control : alu_control :=
		(
			alu_op => (others=>'0'),
			alu_src0 => (others=>'0'),
			alu_src1 => (others=>'0'),
			t_src => '0'
		);
	
	type jump_control is
		record
			pc_src: std_logic_vector(1 downto 0);
			B_signal: std_logic_vector(1 downto 0);
			B_com_chooser: std_logic_vector(1 downto 0);
			JR_signal: std_logic;
		end record;
	
	constant zero_jump_control: jump_control :=
		(
			pc_src => "00",
			B_signal => "00",
			B_com_chooser => "00",
			JR_signal => '0'
		);
		
end utils;

package body utils is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end utils;
