-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/22/2021 10:41:43"
                                                            
-- Vhdl Test Bench template for design  :  e_my_car_wash_project
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;                               

ENTITY e_my_car_wash_project_vhd_tst IS
END e_my_car_wash_project_vhd_tst;

ARCHITECTURE e_my_car_wash_project_arch OF e_my_car_wash_project_vhd_tst IS
-- constants                                                 
-- signals                                                   
	SIGNAL CLOCK_50 : 	std_logic := '0';
	SIGNAL KEY : 		std_logic_vector(3 downto 0) := "1111";
	SIGNAL SW:			std_logic_vector(9 downto 0) := "0000000000";
	SIGNAL LEDR : 		std_logic_vector(9 downto 0);
	SIGNAL HEX0:		std_logic_vector(0 to 6);
	SIGNAL HEX1:		std_logic_vector(0 to 6);
	SIGNAL HEX2:		std_logic_vector(0 to 6);
	SIGNAL HEX3:		std_logic_vector(0 to 6);
	SIGNAL HEX4:		std_logic_vector(0 to 6);
	SIGNAL HEX5:		std_logic_vector(0 to 6);
	
	constant c_0 		: std_logic_vector(0 to 6) 	:= "0000001";
    constant c_1 		: std_logic_vector(0 to 6) 	:= "1001111";
    constant c_2 		: std_logic_vector(0 to 6) 	:= "0010010";
    constant c_3 		: std_logic_vector(0 to 6) 	:= "0000110";
    constant c_4 		: std_logic_vector(0 to 6) 	:= "1001100";
    constant c_5 		: std_logic_vector(0 to 6) 	:= "0100100";
    constant c_6 		: std_logic_vector(0 to 6) 	:= "0100000";
    constant c_7 		: std_logic_vector(0 to 6) 	:= "0001111";
    constant c_8 		: std_logic_vector(0 to 6) 	:= "0000000";
    constant c_9 		: std_logic_vector(0 to 6) 	:= "0000100";
	
COMPONENT e_my_car_wash_project
	generic (	ClkHz: 								natural := 50000000;
				Clk_mHz: 							natural := 50000;
				e_axis_e_modulo_counter_ms_n: 		natural := 16;
				e_axis_wrk: 						integer := 6000;
				e_car_wash_FSM_e_modulo_counter_n: 	natural := 29 );
	PORT (
		CLOCK_50 : 	in std_logic;
		KEY : 		in std_logic_vector(3 downto 0);
		SW:			in std_logic_vector(9 downto 0);
		LEDR : 		out std_logic_vector(9 downto 0);
		HEX0:		out	std_logic_vector(0 to 6);
		HEX1:		out	std_logic_vector(0 to 6);
		HEX2:		out	std_logic_vector(0 to 6);
		HEX3:		out	std_logic_vector(0 to 6);
		HEX4:		out	std_logic_vector(0 to 6);
		HEX5:		out	std_logic_vector(0 to 6)
	);
END COMPONENT;

-- for self-checking testbench
signal b_check_7seg_price: boolean := false;
shared variable slv_expected_value_HEX5: std_logic_vector(0 to 6);
shared variable slv_expected_value_HEX4: std_logic_vector(0 to 6);

BEGIN
	i1 : e_my_car_wash_project
	generic map(	ClkHz								=> 10,	--scaled down to 10 instead of 50000000 for simulation purposes
					Clk_mHz								=> 3,	--rounded up to 3 instead of 5/1000, for simulation correct length scale is not important
					e_axis_e_modulo_counter_ms_n		=> 2,	--needs to count up to max. Clk_mHz  in this case until 3 (->data_width:2)
					e_axis_wrk 							=> 60,	--scaled down to 60(mm) instead of 6000(mm) for simulation purposes
					e_car_wash_FSM_e_modulo_counter_n 	=> 7 )	--    !!!!!APAPT TO ClkHz!!!!!   ->needs to count up to max. 10*ClkHz (10seconds), in this case until 100
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	KEY => KEY,
	SW => SW,
	LEDR => LEDR,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5
	);
	
	CLOCK_50 <= not CLOCK_50 after 10 ns;

	
	p_stimulus: process
	
	procedure P_sync_app(constant c_loop: integer) is
		variable v_count: integer := 0;
	begin
		loop_cnt: while v_count <= c_loop loop
			wait until rising_edge(CLOCK_50);
				v_count := v_count + 1;
		end loop loop_cnt;
	end procedure P_sync_app;

	
	procedure P_press_reset is
	begin
		report "P_press_reset" severity note;
		KEY(0)	<= '0';
		wait for 30 ns;
		KEY(0)	<= '1';
	end procedure P_press_reset;

	procedure P_press_ack_button is
	begin
		report "P_press_ack_button" severity note;
		KEY(1)	<= '0';
		wait for 30 ns;
		KEY(1)	<= '1';		
	end procedure P_press_ack_button;

	procedure P_press_pay_button is
	begin
		report "P_press_pay_button" severity note;
		KEY(2)	<= '0';
		wait for 30 ns;
		KEY(2)	<= '1';		
	end procedure P_press_pay_button;

	procedure P_press_back_button is
	begin
		report "P_press_back_button" severity note;
		KEY(3)	<= '0';
		wait for 30 ns;
		KEY(3)	<= '1';		
	end procedure P_press_back_button;

	
	
	procedure P_press_emerg_stop_button is
	begin
		report "P_press_emerg_stop_button" severity note;
		SW(9)	<= '0';	
	end procedure P_press_emerg_stop_button;
	
	procedure P_release_emerg_stop_button is
	begin
		report "P_release_emerg_stop_button" severity note;
		SW(9)	<= '1';	
	end procedure P_release_emerg_stop_button;
	
	procedure P_deactivate_home_request_switch is
	begin
		report "P_deactivate_home_request_switch" severity note;
		SW(8)	<= '0';	
	end procedure P_deactivate_home_request_switch;
	
	procedure P_activate_home_request_switch is
	begin
		report "P_activate_home_request_switch" severity note;
		SW(8)	<= '1';	
	end procedure P_activate_home_request_switch;
	
	
	-----------------------------------------------------------------------------------
	procedure P_deactivate_rim_cleaning is
	begin
		report "P_deactivate_rim_cleaning" severity note;
		SW(0)	<= '0';	
	end procedure P_deactivate_rim_cleaning;
	
	procedure P_activate_rim_cleaning is
	begin
		report "P_activate_rim_cleaning" severity note;
		SW(0)	<= '1';	
	end procedure P_activate_rim_cleaning;
	
	
	procedure P_deactivate_undercarriage_wash is
	begin
		report "P_deactivate_undercarriage_wash" severity note;
		SW(1)	<= '0';	
	end procedure P_deactivate_undercarriage_wash;
	
	procedure P_activate_undercarriage_wash is
	begin
		report "P_activate_undercarriage_wash" severity note;
		SW(1)	<= '1';	
	end procedure P_activate_undercarriage_wash;
	
	
	procedure P_deactivate_waxing is
	begin
		report "P_deactivate_waxing" severity note;
		SW(2)	<= '0';	
	end procedure P_deactivate_waxing;
	
	procedure P_activate_waxing is
	begin
		report "P_activate_waxing" severity note;
		SW(2)	<= '1';	
	end procedure P_activate_waxing;
	
	
	procedure P_deactivate_polishing is
	begin
		report "P_deactivate_polishing" severity note;
		SW(3)	<= '0';	
	end procedure P_deactivate_polishing;
	
	procedure P_activate_polishing is
	begin
		report "P_activate_polishing" severity note;
		SW(3)	<= '1';	
	end procedure P_activate_polishing;
	
	
	procedure P_deactivate_shine_wash is
	begin
		report "P_deactivate_shine_wash" severity note;
		SW(4)	<= '0';	
	end procedure P_deactivate_shine_wash;
	
	procedure P_activate_shine_wash is
	begin
		report "P_activate_shine_wash" severity note;
		SW(4)	<= '1';	
	end procedure P_activate_shine_wash;
	
	procedure P_change_option_selection_binary (constant c_options: std_logic_vector(4 downto 0)) is
	begin
		report "P_change_option_selection_binary" severity note;
		SW(4 downto 0)	<= c_options;
	end procedure P_change_option_selection_binary;	
	
	procedure P_read_check_7Seg_price (constant c_expected_value_HEX5: std_logic_vector(0 to 6); constant c_expected_value_HEX4: std_logic_vector(0 to 6)) is
	begin
		slv_expected_value_HEX5 :=	c_expected_value_HEX5;
		slv_expected_value_HEX4 :=	c_expected_value_HEX4;
		b_check_7seg_price <=	true;
		wait for 5 ns;
		b_check_7seg_price <=	false;
	end procedure P_read_check_7Seg_price;
		
	-----------------------------------------------------------------------------------

	begin
	
--------------- Start Test 1: start process and interrupt with emergency stop, afterwards driving to home position, then starting process again ----------------------
		P_sync_app(2);
		P_release_emerg_stop_button;
		P_sync_app(2);
		P_activate_rim_cleaning;
		P_activate_undercarriage_wash;
		P_activate_waxing;
		P_activate_polishing;
		P_activate_shine_wash;
		P_sync_app(5);
		P_press_ack_button;
		P_sync_app(5);
		P_press_pay_button;
		P_sync_app(5000);
		P_press_emerg_stop_button;
		P_sync_app(10);
		P_release_emerg_stop_button;
		P_sync_app(10);
		P_activate_home_request_switch;
		P_sync_app(10);
		P_deactivate_home_request_switch;
		P_sync_app(200);
		P_activate_rim_cleaning;
		P_deactivate_undercarriage_wash;
		P_activate_waxing;
		P_deactivate_polishing;
		P_activate_shine_wash;
		P_sync_app(5);
		P_press_ack_button;
		P_sync_app(5);
		P_press_pay_button;
		P_sync_app(5000);
--------------- End Test 1 -------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 2: acknowledge selected options and try to change options before start, without pressing back button --------------------------------------
--		P_sync_app(2);
--		P_release_emerg_stop_button;
--		P_sync_app(2);
--		P_activate_rim_cleaning;
--		P_sync_app(2);
--		P_activate_undercarriage_wash;
--		P_sync_app(2);
--		P_activate_waxing;
--		P_sync_app(2);
--		P_activate_polishing;
--		P_sync_app(2);
--		P_activate_shine_wash;
--		P_sync_app(5);
--		P_press_ack_button;
--		P_sync_app(5);
--		P_deactivate_rim_cleaning;
--		P_sync_app(2);
--		P_deactivate_undercarriage_wash;
--		P_sync_app(2);
--		P_deactivate_waxing;
--		P_sync_app(2);
--		P_deactivate_polishing;
--		P_sync_app(2);
--		P_deactivate_shine_wash;
--		P_sync_app(5);
--		P_press_pay_button;
--		P_sync_app(10000);
------------- End Test 2 -------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 3: acknowledge selected options, push back button, deselect all options, acknowledge and start base program -------------------------------
--		P_sync_app(2);
--		P_release_emerg_stop_button;
--		P_sync_app(2);
--		P_activate_rim_cleaning;
--		P_sync_app(2);
--		P_activate_undercarriage_wash;
--		P_sync_app(2);
--		P_activate_shine_wash;
--		P_sync_app(5);
--		P_press_ack_button;
--		P_sync_app(5);
--		P_press_back_button;
--		P_sync_app(2);
--		P_deactivate_rim_cleaning;
--		P_sync_app(2);
--		P_deactivate_undercarriage_wash;
--		P_sync_app(2);
--		P_deactivate_shine_wash;
--		P_sync_app(5);
--		P_press_ack_button;
--		P_sync_app(5);
--		P_press_pay_button;
--		P_sync_app(10000);
------------- End Test 3 -------------------------------------------------------------------------------------------------------------------------------------------	

------------- Start Test 4: start base program and push ack, back and pay buttons multiple times (must not affect the system) --------------------------------------
--		P_sync_app(2);
--		P_release_emerg_stop_button;
--		P_sync_app(5);
--		P_press_ack_button;
--		P_sync_app(5);
--		P_press_pay_button;
--		p_sync_app(100);
--		P_press_ack_button;
--		P_sync_app(100);
--		P_press_back_button;	
--		P_sync_app(100);
--		P_press_pay_button;
--		P_sync_app(100);
--		P_press_ack_button;
--		P_sync_app(100);
--		P_press_back_button;	
--		P_sync_app(100);
--		P_press_pay_button;
--		P_sync_app(100);
--		P_press_ack_button;
--		P_sync_app(100);
--		P_press_back_button;	
--		P_sync_app(100);
--		P_press_pay_button;			
--		P_sync_app(8000);
------------- End Test 4 -------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 5: start base program and push reset button -----------------------------------------------------------------------------------------------
--		P_sync_app(2);
--		P_release_emerg_stop_button;
--		P_sync_app(5);
--		P_activate_rim_cleaning;
--		P_sync_app(2);
--		P_activate_undercarriage_wash;
--		P_sync_app(2);
--		P_activate_waxing;
--		P_sync_app(2);
--		P_activate_polishing;
--		P_sync_app(2);
--		P_activate_shine_wash;
--		P_sync_app(5);
--		P_press_ack_button;
--		P_sync_app(5);
--		P_press_pay_button;
--		p_sync_app(500);
--		P_press_reset;
--		P_sync_app(10000);
------------- End Test 5 -------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 6: try to start car wash lane while emergency stop is active ------------------------------------------------------------------------------
--		P_sync_app(2);
--		P_change_option_selection_binary("01000");
--		P_sync_app(2);
--		P_press_ack_button;
--		P_sync_app(5);
------------- End Test 6 -------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 7: press pay button after program selection without pressing ack button -------------------------------------------------------------------
--		P_sync_app(2);
--		P_release_emerg_stop_button;
--		P_change_option_selection_binary("01000");
--		P_sync_app(2);
--		P_press_pay_button;
--		P_sync_app(5);	
------------- End Test 7 -------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 8: press back button after program selection without pressing ack button ------------------------------------------------------------------
--		P_sync_app(2);
--		P_release_emerg_stop_button;
--		P_change_option_selection_binary("01000");
--		P_sync_app(2);
--		P_press_back_button;
--		P_sync_app(5);	
------------- End Test 8 -------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 9: select option, press ack button, press pay button and interrupt system with home request (must not affect the system) ------------------
--		P_sync_app(2);
--		P_release_emerg_stop_button;
--		P_change_option_selection_binary("01000");
--		P_sync_app(2);
--		P_press_ack_button;
--		P_sync_app(2);
--		P_press_pay_button;
--		P_sync_app(2000);
--		P_activate_home_request_switch;
--		P_sync_app(2000);
------------- End Test 9 -------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 10: test calculation and display of all possible options-----------------------------------------------------------------------------------
--		P_sync_app(1);
--		P_release_emerg_stop_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("00000");	--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_4); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("00001");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_5); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("00010");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_6); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("00011");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_7); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("00100");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_7); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("00101");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_8); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("00110");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_9); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("00111");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_0); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("01000");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_6); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("01001");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_7); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("01010");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_8); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("01011");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_9); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("01100");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_9); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("01101");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_0); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("01110");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_1); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("01111");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_2); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("10000");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_5); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("10001");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_6); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("10010");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_7); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("10011");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_8); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("10100");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_8); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("10101");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_9); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("10110");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_0); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("10111");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_1); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("11000");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_7); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("11001");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_8); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("11010");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_0, c_9); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("11011");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_0); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("11100");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_0); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("11101");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_1); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("11110");		--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_2); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
--		P_change_option_selection_binary("11111");	--base 4+(1,2,3,2,1)
--		P_sync_app(1);
--		P_press_ack_button;
--		P_sync_app(1);
--		P_read_check_7Seg_price(c_1, c_3); 
--		P_sync_app(1);
--		P_press_back_button;
--		P_sync_app(1);
------------- End Test 10 ------------------------------------------------------------------------------------------------------------------------------------------

------------- Start Test 11: press request-home button after program selection without pressing ack button ---------------------------------------------------------
--		P_sync_app(2);
--		P_release_emerg_stop_button;
--		P_change_option_selection_binary("01000");
--		P_sync_app(2);
--		P_activate_home_request_switch;
--		P_sync_app(5);
------------- End Test 11 ------------------------------------------------------------------------------------------------------------------------------------------
		
		
		assert false report "--- END OF SIMULATION ---" severity failure;
	
	end process p_stimulus;
	
	p_check_7Seg_price: process (b_check_7seg_price)
	variable l: line;
	begin
		if(b_check_7seg_price = true) then
			if(HEX5 /= slv_expected_value_HEX5) then
				writeline(output,l); -- prints a blank line, since l is blank
				write(l, string'("*******************************************************************************"));
				writeline(output,l);
				write(l, string'("*** FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE ***"));
				writeline(output,l);
				write(l, string'("*******************************************************************************"));
				writeline(output,l);
				assert false report "Output on HEX5 is NOT correct" severity warning;
				write(l, string'("On HEX5 expected: "));
				write(l, slv_expected_value_HEX5);
				write(l, string'(" but got:  "));
				write(l, HEX5);
				writeline(output,l);
				write(l, string'("*******************************************************************************"));
				writeline(output,l);
				writeline(output,l);
			end if;
			if (HEX4 /= slv_expected_value_HEX4) then
				writeline(output,l); -- prints a blank line, since l is blank
				write(l, string'("*******************************************************************************"));
				writeline(output,l);
				write(l, string'("*** FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE ***"));
				writeline(output,l);
				write(l, string'("*******************************************************************************"));
				writeline(output,l);
				assert false report "Output on HEX4 is NOT correct" severity warning;
				write(l, string'("On HEX4 expected: "));
				write(l, slv_expected_value_HEX4);
				write(l, string'(" but got:  "));
				write(l, HEX4);
				writeline(output,l);
				write(l, string'("*******************************************************************************"));
				writeline(output,l);
				writeline(output,l);
			end if;
			if ((HEX5 = slv_expected_value_HEX5) and (HEX4 = slv_expected_value_HEX4)) then
				write(l, string'("*******************************************************************************"));
				writeline(output,l);
				assert false report "calculated price on 7Seg is correct" severity note;
			end if;
		end if;
	end process p_check_7Seg_price;
	
END e_my_car_wash_project_arch;
