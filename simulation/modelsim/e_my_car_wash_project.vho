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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/30/2021 20:49:45"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	e_my_car_wash_project IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(0 TO 6);
	HEX1 : BUFFER std_logic_vector(0 TO 6);
	HEX2 : BUFFER std_logic_vector(0 TO 6);
	HEX3 : BUFFER std_logic_vector(0 TO 6);
	HEX4 : BUFFER std_logic_vector(0 TO 6);
	HEX5 : BUFFER std_logic_vector(0 TO 6)
	);
END e_my_car_wash_project;

-- Design Ports Information
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF e_my_car_wash_project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~1_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|WideOr22~combout\ : std_logic;
SIGNAL \I_x_axis|Add1~1_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|WideOr23~combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~13_sumout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~4_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~21_sumout\ : std_logic;
SIGNAL \I_x_axis|Equal0~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|WideOr20~combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~10\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~13_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Equal0~4_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~26\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~53_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~54\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~49_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~50\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~45_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~46\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~41_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Equal0~6_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~42\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~61_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~62\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~57_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Equal0~5_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|LessThan0~0_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Equal0~0_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Equal0~2_combout\ : std_logic;
SIGNAL \I_x_axis|sl_slow_enable_1mm_int~combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|LessThan0~2_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|WideOr21~combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|LessThan0~1_combout\ : std_logic;
SIGNAL \I_x_axis|sl_rollover_1mm_int~0_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~22\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~17_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~18\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~25_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~26\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~1_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~2\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~5_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~6\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Add1~9_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|LessThan0~0_combout\ : std_logic;
SIGNAL \I_x_axis|sl_rollover_1mm_int~1_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Equal0~1_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Equal0~0_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Equal0~3_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|Equal0~2_combout\ : std_logic;
SIGNAL \I_x_axis|sl_rollover_1mm_int~combout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~6_combout\ : std_logic;
SIGNAL \I_x_axis|Add1~10\ : std_logic;
SIGNAL \I_x_axis|Add1~49_sumout\ : std_logic;
SIGNAL \I_x_axis|Add1~50\ : std_logic;
SIGNAL \I_x_axis|Add1~29_sumout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~7_combout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~5_combout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~8_combout\ : std_logic;
SIGNAL \I_x_axis|sl_in_wrk_pos_int~q\ : std_logic;
SIGNAL \I_x_axis|sl_axis_moving_int~0_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|u_counter_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~14\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~5_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~6\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~1_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~2\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~9_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|u_counter_int[3]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~10\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~37_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~38\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~33_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~34\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~21_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~22\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~17_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~18\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~29_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~30\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Add1~25_sumout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|Equal0~1_combout\ : std_logic;
SIGNAL \I_x_axis|sl_rollover_1mm_int~2_combout\ : std_logic;
SIGNAL \I_x_axis|i_pos_int[2]~0_combout\ : std_logic;
SIGNAL \I_x_axis|i_pos_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|Add1~2\ : std_logic;
SIGNAL \I_x_axis|Add1~37_sumout\ : std_logic;
SIGNAL \I_x_axis|i_pos_int[1]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|Add1~38\ : std_logic;
SIGNAL \I_x_axis|Add1~33_sumout\ : std_logic;
SIGNAL \I_x_axis|i_pos_int[2]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|Add1~34\ : std_logic;
SIGNAL \I_x_axis|Add1~41_sumout\ : std_logic;
SIGNAL \I_x_axis|Add1~42\ : std_logic;
SIGNAL \I_x_axis|Add1~13_sumout\ : std_logic;
SIGNAL \I_x_axis|i_pos_int[4]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|Add1~14\ : std_logic;
SIGNAL \I_x_axis|Add1~17_sumout\ : std_logic;
SIGNAL \I_x_axis|Add1~18\ : std_logic;
SIGNAL \I_x_axis|Add1~21_sumout\ : std_logic;
SIGNAL \I_x_axis|Add1~22\ : std_logic;
SIGNAL \I_x_axis|Add1~45_sumout\ : std_logic;
SIGNAL \I_x_axis|Add1~46\ : std_logic;
SIGNAL \I_x_axis|Add1~25_sumout\ : std_logic;
SIGNAL \I_x_axis|Add1~26\ : std_logic;
SIGNAL \I_x_axis|Add1~5_sumout\ : std_logic;
SIGNAL \I_x_axis|Add1~6\ : std_logic;
SIGNAL \I_x_axis|Add1~9_sumout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~0_combout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~1_combout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~2_combout\ : std_logic;
SIGNAL \I_x_axis|p_move_axis~3_combout\ : std_logic;
SIGNAL \I_x_axis|sl_in_bas_pos_int~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \I_selection|sl_storage_execute~combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector15~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state.S_DONE~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~26_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~13_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state.S_PRICE~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~14_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~15_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|p_car_wash_FSM_refresh_nextstate~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~4_q\ : std_logic;
SIGNAL \I_car_wash_FSM|sl_timer_enable_int~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~2\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~17_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~18\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~21_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~22\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~25_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[3]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~26\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~30\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~5_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~6\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~9_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~10\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~13_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~14\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~97_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~98\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~93_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~94\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~77_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~78\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~105_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~106\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~101_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~102\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~109_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[13]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~110\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~113_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[14]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~114\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~89_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[15]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~90\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~81_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[16]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~82\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~85_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~86\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~65_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[18]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~66\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~69_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~70\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~45_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~46\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~49_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~50\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~53_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~54\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~57_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~58\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~61_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[22]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~9_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[21]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~7_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~62\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~73_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~74\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~41_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[26]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~42\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~37_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~38\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~33_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~8_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|LessThan0~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|LessThan0~3_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|LessThan0~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int[4]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Add1~29_sumout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~2_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~4_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~5_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~3_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~21_combout\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~10_combout\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector10~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector10~2_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector10~3_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector10~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state.S_POLISH_START~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state.S_DRY_AXIS_BACK~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~11_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~19_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~20_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~12_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~7_q\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~22_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector15~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector6~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector6~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~16_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~5_q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \I_car_wash_FSM|Selector14~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~17_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~18_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~8_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~9_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|car_wash_state~6_q\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[0]~20_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[1]~16_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[2]~12_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[1]~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[1]~1_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[3]~2_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[4]~8_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[5]~3_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[6]~4_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[7]~5_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[8]~6_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_ledr[9]~7_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_0|Mux6~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_0|Mux5~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_0|Mux4~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_0|Mux3~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_0|Mux2~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_0|Mux0~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_1|Mux6~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_1|Mux5~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_1|Mux4~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_1|Mux3~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_1|Mux2~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_1|Mux1~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_1|Mux0~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_2|Mux6~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_2|Mux5~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_2|Mux4~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_2|Mux3~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_2|Mux2~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_2|Mux1~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_2|Mux0~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_3|Mux6~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_3|Mux5~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_3|Mux4~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_3|Mux3~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_3|Mux2~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_3|Mux1~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_3|Mux0~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_hex_input_4_int[3]~3_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_hex_input_4_int[0]~5_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_hex_input_4_int[2]~0_combout\ : std_logic;
SIGNAL \I_price_calc|Add3~0_combout\ : std_logic;
SIGNAL \I_price_calc|Add3~1_combout\ : std_logic;
SIGNAL \I_price_calc|Add3~2_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|LessThan0~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_4|Mux6~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_4|Mux5~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_4|Mux4~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_4|Mux3~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_4|Mux2~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_4|Mux1~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_4|Mux0~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_5|Mux6~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_5|Mux5~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_5|Mux4~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_5|Mux3~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_5|Mux2~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_5|Mux1~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|I_Display_5|Mux0~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|u_counter_int\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \I_x_axis|I_my_slow_enable_1mm|u_counter_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \I_x_axis|I_my_slow_enable_1ms|u_counter_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I_x_axis|i_pos_int\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_i_pos_int[1]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_i_pos_int[2]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_i_pos_int[4]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_i_pos_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int[3]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[14]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[13]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[9]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[15]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[17]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[16]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[18]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[22]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[21]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[26]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[4]~DUPLICATE_q\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~21_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~20_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~19_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector10~3_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~18_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~17_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_WideOr21~combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_p_move_axis~7_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_p_move_axis~6_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_p_move_axis~5_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_p_move_axis~4_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_sl_rollover_1mm_int~combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_p_move_axis~2_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_p_move_axis~1_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_i_pos_int\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \I_x_axis|ALT_INV_p_move_axis~0_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_sl_rollover_1mm_int~2_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_sl_rollover_1mm_int~1_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_sl_rollover_1mm_int~0_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_WideOr20~combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_WideOr23~combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_WideOr22~combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~14_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~13_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~11_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state.S_DRY_START~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~10_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_p_car_wash_FSM_refresh_nextstate~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~8_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state.S_DRY_AXIS_BACK~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state.S_DONE~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~5_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~3_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~0_combout\ : std_logic;
SIGNAL \I_price_calc|ALT_INV_Add3~2_combout\ : std_logic;
SIGNAL \I_price_calc|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \I_price_calc|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state.S_PRICE~0_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\ : std_logic;
SIGNAL \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state.S_POLISH_START~0_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_ledr[1]~1_combout\ : std_logic;
SIGNAL \I_7Seg_LED_handler|ALT_INV_slv_ledr[1]~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state.S_RIM_CLEANING~0_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~26_combout\ : std_logic;
SIGNAL \I_car_wash_FSM|ALT_INV_car_wash_state~22_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\);

\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= vcc;

\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ <= \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ <= \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ <= \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ <= \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(2) <= NOT \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2);
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(0) <= NOT \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(14) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(14);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(15) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(15);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(10) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(10);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(11) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(11);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(12) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(12);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(13) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(13);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(4) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(4);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(5) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(5);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(8) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(8);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(9) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(9);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(6) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(6);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(7) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(7);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(0) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(0);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(3) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(3);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(1) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(1);
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(2) <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(2);
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(1) <= NOT \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1);
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(6) <= NOT \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6);
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(5) <= NOT \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5);
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(4) <= NOT \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4);
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(3) <= NOT \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(14) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(14);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(13) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(13);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(11) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(11);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(12) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(12);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(8) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(8);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(9) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(9);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(15) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(15);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(17) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(17);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(16) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(16);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(10) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(10);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(25) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(19) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(19);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(18) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(18);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(24) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(24);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(23) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(23);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(22) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(22);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(21) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(21);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(20) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(20);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(26) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(26);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(27) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(27);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(28) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(28);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(4) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(4);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(3) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(3);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(2) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(2);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(1) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(1);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(7) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(7);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(6) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(6);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(5) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(5);
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(0) <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(0);
\I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\;
\I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\;
\I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\;
\I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\;
\I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\;
\I_x_axis|ALT_INV_i_pos_int[1]~DUPLICATE_q\ <= NOT \I_x_axis|i_pos_int[1]~DUPLICATE_q\;
\I_x_axis|ALT_INV_i_pos_int[2]~DUPLICATE_q\ <= NOT \I_x_axis|i_pos_int[2]~DUPLICATE_q\;
\I_x_axis|ALT_INV_i_pos_int[4]~DUPLICATE_q\ <= NOT \I_x_axis|i_pos_int[4]~DUPLICATE_q\;
\I_x_axis|ALT_INV_i_pos_int[0]~DUPLICATE_q\ <= NOT \I_x_axis|i_pos_int[0]~DUPLICATE_q\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int[0]~DUPLICATE_q\ <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int[0]~DUPLICATE_q\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int[3]~DUPLICATE_q\ <= NOT \I_x_axis|I_my_slow_enable_1ms|u_counter_int[3]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[14]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[14]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[13]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[13]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[11]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[11]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[9]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[15]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[15]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[17]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[16]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[16]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[10]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[10]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[18]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[18]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[22]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[22]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[21]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[21]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[26]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[26]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[4]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[4]~DUPLICATE_q\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[3]~DUPLICATE_q\ <= NOT \I_car_wash_FSM|I_my_slow_enable|u_counter_int[3]~DUPLICATE_q\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\I_car_wash_FSM|ALT_INV_car_wash_state~21_combout\ <= NOT \I_car_wash_FSM|car_wash_state~21_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~20_combout\ <= NOT \I_car_wash_FSM|car_wash_state~20_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~19_combout\ <= NOT \I_car_wash_FSM|car_wash_state~19_combout\;
\I_car_wash_FSM|ALT_INV_Selector10~3_combout\ <= NOT \I_car_wash_FSM|Selector10~3_combout\;
\I_car_wash_FSM|ALT_INV_Selector10~2_combout\ <= NOT \I_car_wash_FSM|Selector10~2_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~18_combout\ <= NOT \I_car_wash_FSM|car_wash_state~18_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~17_combout\ <= NOT \I_car_wash_FSM|car_wash_state~17_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~3_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|LessThan0~3_combout\;
\I_car_wash_FSM|ALT_INV_Selector6~1_combout\ <= NOT \I_car_wash_FSM|Selector6~1_combout\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_LessThan0~0_combout\ <= NOT \I_x_axis|I_my_slow_enable_1ms|LessThan0~0_combout\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~6_combout\ <= NOT \I_x_axis|I_my_slow_enable_1ms|Equal0~6_combout\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~5_combout\ <= NOT \I_x_axis|I_my_slow_enable_1ms|Equal0~5_combout\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~4_combout\ <= NOT \I_x_axis|I_my_slow_enable_1ms|Equal0~4_combout\;
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~2_combout\ <= NOT \I_x_axis|I_my_slow_enable_1mm|LessThan0~2_combout\;
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~1_combout\ <= NOT \I_x_axis|I_my_slow_enable_1mm|LessThan0~1_combout\;
\I_car_wash_FSM|ALT_INV_WideOr21~combout\ <= NOT \I_car_wash_FSM|WideOr21~combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~1_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|LessThan0~1_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~0_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|LessThan0~0_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~9_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~9_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~8_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~8_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~7_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~7_combout\;
\I_x_axis|ALT_INV_p_move_axis~7_combout\ <= NOT \I_x_axis|p_move_axis~7_combout\;
\I_x_axis|ALT_INV_p_move_axis~6_combout\ <= NOT \I_x_axis|p_move_axis~6_combout\;
\I_x_axis|ALT_INV_p_move_axis~5_combout\ <= NOT \I_x_axis|p_move_axis~5_combout\;
\I_x_axis|ALT_INV_p_move_axis~4_combout\ <= NOT \I_x_axis|p_move_axis~4_combout\;
\I_x_axis|ALT_INV_sl_rollover_1mm_int~combout\ <= NOT \I_x_axis|sl_rollover_1mm_int~combout\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~3_combout\ <= NOT \I_x_axis|I_my_slow_enable_1ms|Equal0~3_combout\;
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~0_combout\ <= NOT \I_x_axis|I_my_slow_enable_1mm|LessThan0~0_combout\;
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~2_combout\ <= NOT \I_x_axis|I_my_slow_enable_1mm|Equal0~2_combout\;
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~1_combout\ <= NOT \I_x_axis|I_my_slow_enable_1mm|Equal0~1_combout\;
\I_x_axis|ALT_INV_p_move_axis~2_combout\ <= NOT \I_x_axis|p_move_axis~2_combout\;
\I_x_axis|ALT_INV_p_move_axis~1_combout\ <= NOT \I_x_axis|p_move_axis~1_combout\;
\I_x_axis|ALT_INV_i_pos_int\(11) <= NOT \I_x_axis|i_pos_int\(11);
\I_x_axis|ALT_INV_i_pos_int\(7) <= NOT \I_x_axis|i_pos_int\(7);
\I_x_axis|ALT_INV_i_pos_int\(3) <= NOT \I_x_axis|i_pos_int\(3);
\I_x_axis|ALT_INV_i_pos_int\(1) <= NOT \I_x_axis|i_pos_int\(1);
\I_x_axis|ALT_INV_i_pos_int\(2) <= NOT \I_x_axis|i_pos_int\(2);
\I_x_axis|ALT_INV_i_pos_int\(12) <= NOT \I_x_axis|i_pos_int\(12);
\I_x_axis|ALT_INV_p_move_axis~0_combout\ <= NOT \I_x_axis|p_move_axis~0_combout\;
\I_x_axis|ALT_INV_i_pos_int\(8) <= NOT \I_x_axis|i_pos_int\(8);
\I_x_axis|ALT_INV_i_pos_int\(6) <= NOT \I_x_axis|i_pos_int\(6);
\I_x_axis|ALT_INV_i_pos_int\(5) <= NOT \I_x_axis|i_pos_int\(5);
\I_x_axis|ALT_INV_i_pos_int\(4) <= NOT \I_x_axis|i_pos_int\(4);
\I_x_axis|ALT_INV_i_pos_int\(10) <= NOT \I_x_axis|i_pos_int\(10);
\I_x_axis|ALT_INV_i_pos_int\(9) <= NOT \I_x_axis|i_pos_int\(9);
\I_x_axis|ALT_INV_sl_rollover_1mm_int~2_combout\ <= NOT \I_x_axis|sl_rollover_1mm_int~2_combout\;
\I_x_axis|ALT_INV_sl_rollover_1mm_int~1_combout\ <= NOT \I_x_axis|sl_rollover_1mm_int~1_combout\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~2_combout\ <= NOT \I_x_axis|I_my_slow_enable_1ms|Equal0~2_combout\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~1_combout\ <= NOT \I_x_axis|I_my_slow_enable_1ms|Equal0~1_combout\;
\I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~0_combout\ <= NOT \I_x_axis|I_my_slow_enable_1ms|Equal0~0_combout\;
\I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~0_combout\ <= NOT \I_x_axis|I_my_slow_enable_1mm|Equal0~0_combout\;
\I_x_axis|ALT_INV_i_pos_int\(0) <= NOT \I_x_axis|i_pos_int\(0);
\I_x_axis|ALT_INV_sl_rollover_1mm_int~0_combout\ <= NOT \I_x_axis|sl_rollover_1mm_int~0_combout\;
\I_x_axis|ALT_INV_Equal0~0_combout\ <= NOT \I_x_axis|Equal0~0_combout\;
\I_car_wash_FSM|ALT_INV_WideOr20~combout\ <= NOT \I_car_wash_FSM|WideOr20~combout\;
\I_car_wash_FSM|ALT_INV_WideOr23~combout\ <= NOT \I_car_wash_FSM|WideOr23~combout\;
\I_car_wash_FSM|ALT_INV_WideOr22~combout\ <= NOT \I_car_wash_FSM|WideOr22~combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~14_combout\ <= NOT \I_car_wash_FSM|car_wash_state~14_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~13_combout\ <= NOT \I_car_wash_FSM|car_wash_state~13_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~11_combout\ <= NOT \I_car_wash_FSM|car_wash_state~11_combout\;
\I_car_wash_FSM|ALT_INV_Selector10~1_combout\ <= NOT \I_car_wash_FSM|Selector10~1_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state.S_DRY_START~0_combout\ <= NOT \I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~10_combout\ <= NOT \I_car_wash_FSM|car_wash_state~10_combout\;
\I_car_wash_FSM|ALT_INV_Selector10~0_combout\ <= NOT \I_car_wash_FSM|Selector10~0_combout\;
\I_car_wash_FSM|ALT_INV_Selector15~0_combout\ <= NOT \I_car_wash_FSM|Selector15~0_combout\;
\I_car_wash_FSM|ALT_INV_p_car_wash_FSM_refresh_nextstate~0_combout\ <= NOT \I_car_wash_FSM|p_car_wash_FSM_refresh_nextstate~0_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~8_combout\ <= NOT \I_car_wash_FSM|car_wash_state~8_combout\;
\I_car_wash_FSM|ALT_INV_Selector14~0_combout\ <= NOT \I_car_wash_FSM|Selector14~0_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state.S_DRY_AXIS_BACK~0_combout\ <= NOT \I_car_wash_FSM|car_wash_state.S_DRY_AXIS_BACK~0_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state.S_DONE~0_combout\ <= NOT \I_car_wash_FSM|car_wash_state.S_DONE~0_combout\;
\I_car_wash_FSM|ALT_INV_Selector6~0_combout\ <= NOT \I_car_wash_FSM|Selector6~0_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~5_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~5_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~4_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~4_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~3_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~3_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~2_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~2_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~1_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\;
\I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~0_combout\ <= NOT \I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\ <= NOT \I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\ <= NOT \I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~5_combout\ <= NOT \I_7Seg_LED_handler|slv_hex_input_4_int[0]~5_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\ <= NOT \I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~3_combout\ <= NOT \I_7Seg_LED_handler|slv_hex_input_4_int[3]~3_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\ <= NOT \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\;
\I_7Seg_LED_handler|ALT_INV_LessThan0~0_combout\ <= NOT \I_7Seg_LED_handler|LessThan0~0_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\ <= NOT \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~0_combout\ <= NOT \I_7Seg_LED_handler|slv_hex_input_4_int[2]~0_combout\;
\I_price_calc|ALT_INV_Add3~2_combout\ <= NOT \I_price_calc|Add3~2_combout\;
\I_price_calc|ALT_INV_Add3~1_combout\ <= NOT \I_price_calc|Add3~1_combout\;
\I_price_calc|ALT_INV_Add3~0_combout\ <= NOT \I_price_calc|Add3~0_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state.S_PRICE~0_combout\ <= NOT \I_car_wash_FSM|car_wash_state.S_PRICE~0_combout\;
\I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\ <= NOT \I_x_axis|sl_axis_moving_int~0_combout\;
\I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\ <= NOT \I_x_axis|sl_in_wrk_pos_int~q\;
\I_x_axis|ALT_INV_sl_in_bas_pos_int~q\ <= NOT \I_x_axis|sl_in_bas_pos_int~q\;
\I_car_wash_FSM|ALT_INV_car_wash_state.S_POLISH_START~0_combout\ <= NOT \I_car_wash_FSM|car_wash_state.S_POLISH_START~0_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_ledr[1]~1_combout\ <= NOT \I_7Seg_LED_handler|slv_ledr[1]~1_combout\;
\I_7Seg_LED_handler|ALT_INV_slv_ledr[1]~0_combout\ <= NOT \I_7Seg_LED_handler|slv_ledr[1]~0_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state.S_RIM_CLEANING~0_combout\ <= NOT \I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~5_q\ <= NOT \I_car_wash_FSM|car_wash_state~5_q\;
\I_car_wash_FSM|ALT_INV_car_wash_state~4_q\ <= NOT \I_car_wash_FSM|car_wash_state~4_q\;
\I_car_wash_FSM|ALT_INV_car_wash_state~7_q\ <= NOT \I_car_wash_FSM|car_wash_state~7_q\;
\I_car_wash_FSM|ALT_INV_car_wash_state~6_q\ <= NOT \I_car_wash_FSM|car_wash_state~6_q\;
\I_car_wash_FSM|ALT_INV_Selector15~1_combout\ <= NOT \I_car_wash_FSM|Selector15~1_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~26_combout\ <= NOT \I_car_wash_FSM|car_wash_state~26_combout\;
\I_car_wash_FSM|ALT_INV_car_wash_state~22_combout\ <= NOT \I_car_wash_FSM|car_wash_state~22_combout\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[0]~20_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[2]~12_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[7]~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[8]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|slv_ledr[9]~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I_7Seg_LED_handler|I_Display_5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X73_Y7_N30
\I_car_wash_FSM|I_my_slow_enable|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~1_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~2\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(0),
	cin => GND,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~1_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~2\);

-- Location: LABCELL_X73_Y5_N27
\I_car_wash_FSM|WideOr22\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|WideOr22~combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_car_wash_FSM|car_wash_state~5_q\ $ (!\I_car_wash_FSM|car_wash_state~4_q\ $ (!\I_car_wash_FSM|car_wash_state~7_q\)) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( 
-- (\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~7_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|WideOr22~combout\);

-- Location: MLABCELL_X72_Y7_N0
\I_x_axis|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~1_sumout\ = SUM(( \I_x_axis|i_pos_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \I_x_axis|Add1~2\ = CARRY(( \I_x_axis|i_pos_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|ALT_INV_i_pos_int[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \I_x_axis|Add1~1_sumout\,
	cout => \I_x_axis|Add1~2\);

-- Location: LABCELL_X73_Y5_N30
\I_car_wash_FSM|WideOr23\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|WideOr23~combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ $ (!\I_car_wash_FSM|car_wash_state~5_q\))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( 
-- (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_car_wash_FSM|car_wash_state~5_q\)) # (\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|WideOr23~combout\);

-- Location: LABCELL_X75_Y7_N0
\I_x_axis|I_my_slow_enable_1ms|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~13_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~14\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~13_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~14\);

-- Location: FF_X72_Y7_N7
\I_x_axis|i_pos_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~33_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(2));

-- Location: FF_X72_Y7_N4
\I_x_axis|i_pos_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~37_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(1));

-- Location: FF_X72_Y7_N13
\I_x_axis|i_pos_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~13_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(4));

-- Location: LABCELL_X74_Y7_N33
\I_x_axis|p_move_axis~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~4_combout\ = ( \I_car_wash_FSM|WideOr23~combout\ & ( (\I_x_axis|i_pos_int\(2) & (\I_x_axis|i_pos_int\(1) & (\I_x_axis|i_pos_int\(3) & !\I_x_axis|i_pos_int\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(2),
	datab => \I_x_axis|ALT_INV_i_pos_int\(1),
	datac => \I_x_axis|ALT_INV_i_pos_int\(3),
	datad => \I_x_axis|ALT_INV_i_pos_int\(4),
	dataf => \I_car_wash_FSM|ALT_INV_WideOr23~combout\,
	combout => \I_x_axis|p_move_axis~4_combout\);

-- Location: LABCELL_X74_Y5_N0
\I_x_axis|I_my_slow_enable_1mm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Add1~21_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))
-- \I_x_axis|I_my_slow_enable_1mm|Add1~22\ = CARRY(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(0),
	cin => GND,
	sumout => \I_x_axis|I_my_slow_enable_1mm|Add1~21_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1mm|Add1~22\);

-- Location: LABCELL_X73_Y5_N24
\I_x_axis|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Equal0~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ $ (\I_car_wash_FSM|car_wash_state~7_q\))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( 
-- (!\I_car_wash_FSM|car_wash_state~5_q\ & !\I_car_wash_FSM|car_wash_state~7_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_x_axis|Equal0~0_combout\);

-- Location: LABCELL_X73_Y5_N15
\I_car_wash_FSM|WideOr20\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|WideOr20~combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\)) # (\I_car_wash_FSM|car_wash_state~7_q\ & ((\I_car_wash_FSM|car_wash_state~4_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~5_q\ & ((!\I_car_wash_FSM|car_wash_state~7_q\) # (\I_car_wash_FSM|car_wash_state~4_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|WideOr20~combout\);

-- Location: LABCELL_X74_Y5_N15
\I_x_axis|I_my_slow_enable_1mm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Add1~9_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~6\ ))
-- \I_x_axis|I_my_slow_enable_1mm|Add1~10\ = CARRY(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(5),
	cin => \I_x_axis|I_my_slow_enable_1mm|Add1~6\,
	sumout => \I_x_axis|I_my_slow_enable_1mm|Add1~9_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1mm|Add1~10\);

-- Location: LABCELL_X74_Y5_N18
\I_x_axis|I_my_slow_enable_1mm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Add1~13_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(6),
	cin => \I_x_axis|I_my_slow_enable_1mm|Add1~10\,
	sumout => \I_x_axis|I_my_slow_enable_1mm|Add1~13_sumout\);

-- Location: LABCELL_X74_Y7_N30
\I_x_axis|I_my_slow_enable_1ms|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Equal0~4_combout\ = ( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(8) & ( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(9),
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(8),
	combout => \I_x_axis|I_my_slow_enable_1ms|Equal0~4_combout\);

-- Location: LABCELL_X75_Y7_N27
\I_x_axis|I_my_slow_enable_1ms|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~25_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(9) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~30\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~26\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(9) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(9),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~30\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~25_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~26\);

-- Location: LABCELL_X75_Y7_N30
\I_x_axis|I_my_slow_enable_1ms|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~53_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(10) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~26\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~54\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(10) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(10),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~26\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~53_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~54\);

-- Location: FF_X75_Y7_N32
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~53_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(10));

-- Location: LABCELL_X75_Y7_N33
\I_x_axis|I_my_slow_enable_1ms|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~49_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(11) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~54\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~50\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(11) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(11),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~54\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~49_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~50\);

-- Location: FF_X75_Y7_N35
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~49_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(11));

-- Location: LABCELL_X75_Y7_N36
\I_x_axis|I_my_slow_enable_1ms|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~45_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(12) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~50\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~46\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(12) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(12),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~50\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~45_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~46\);

-- Location: FF_X75_Y7_N38
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~45_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(12));

-- Location: LABCELL_X75_Y7_N39
\I_x_axis|I_my_slow_enable_1ms|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~41_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(13) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~46\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~42\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(13) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(13),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~46\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~41_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~42\);

-- Location: FF_X75_Y7_N41
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~41_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(13));

-- Location: LABCELL_X75_Y7_N54
\I_x_axis|I_my_slow_enable_1ms|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Equal0~6_combout\ = ( !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(13) & ( (!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(10) & (!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(11) & 
-- !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(10),
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(11),
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(12),
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(13),
	combout => \I_x_axis|I_my_slow_enable_1ms|Equal0~6_combout\);

-- Location: LABCELL_X75_Y7_N42
\I_x_axis|I_my_slow_enable_1ms|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~61_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(14) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~42\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~62\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(14) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(14),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~42\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~61_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~62\);

-- Location: FF_X75_Y7_N44
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~61_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(14));

-- Location: LABCELL_X75_Y7_N45
\I_x_axis|I_my_slow_enable_1ms|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~57_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(15) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(15),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~62\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~57_sumout\);

-- Location: FF_X75_Y7_N47
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~57_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(15));

-- Location: LABCELL_X75_Y7_N57
\I_x_axis|I_my_slow_enable_1ms|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Equal0~5_combout\ = ( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(14) & ( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(15),
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(14),
	combout => \I_x_axis|I_my_slow_enable_1ms|Equal0~5_combout\);

-- Location: FF_X75_Y7_N1
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~13_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(0));

-- Location: LABCELL_X74_Y7_N12
\I_x_axis|I_my_slow_enable_1ms|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|LessThan0~0_combout\ = ( !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(5) & ( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(0) & ( (!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(4) & 
-- ((!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(1)) # ((!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(2)) # (!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(3))))) ) ) ) # ( !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(5) & ( 
-- !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(0) & ( !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(1),
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(4),
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(2),
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(3),
	datae => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(5),
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(0),
	combout => \I_x_axis|I_my_slow_enable_1ms|LessThan0~0_combout\);

-- Location: LABCELL_X74_Y7_N42
\I_x_axis|I_my_slow_enable_1ms|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\ = ( \I_x_axis|I_my_slow_enable_1ms|Equal0~5_combout\ & ( \I_x_axis|I_my_slow_enable_1ms|LessThan0~0_combout\ & ( (!\I_x_axis|I_my_slow_enable_1ms|Equal0~6_combout\) # 
-- ((\I_x_axis|I_my_slow_enable_1ms|Equal0~4_combout\ & \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(7))) ) ) ) # ( \I_x_axis|I_my_slow_enable_1ms|Equal0~5_combout\ & ( !\I_x_axis|I_my_slow_enable_1ms|LessThan0~0_combout\ & ( 
-- (!\I_x_axis|I_my_slow_enable_1ms|Equal0~6_combout\) # ((\I_x_axis|I_my_slow_enable_1ms|Equal0~4_combout\ & ((\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(7)) # (\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110001010100000000000000001111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~4_combout\,
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(6),
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(7),
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~6_combout\,
	datae => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~5_combout\,
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_LessThan0~0_combout\,
	combout => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\);

-- Location: FF_X75_Y7_N10
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~9_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(3));

-- Location: LABCELL_X74_Y7_N9
\I_x_axis|I_my_slow_enable_1ms|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Equal0~0_combout\ = ( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(0) & ( (\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(1) & (\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(3) & 
-- \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(1),
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(3),
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(2),
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(0),
	combout => \I_x_axis|I_my_slow_enable_1ms|Equal0~0_combout\);

-- Location: LABCELL_X75_Y7_N48
\I_x_axis|I_my_slow_enable_1ms|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Equal0~2_combout\ = ( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(15) & ( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(14) & ( (!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(12) & 
-- (!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(10) & (!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(11) & !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(12),
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(10),
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(11),
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(13),
	datae => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(15),
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(14),
	combout => \I_x_axis|I_my_slow_enable_1ms|Equal0~2_combout\);

-- Location: LABCELL_X74_Y7_N39
\I_x_axis|sl_slow_enable_1mm_int\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|sl_slow_enable_1mm_int~combout\ = ( !\I_x_axis|sl_axis_moving_int~0_combout\ & ( (\I_x_axis|I_my_slow_enable_1ms|Equal0~1_combout\ & (\I_x_axis|I_my_slow_enable_1ms|Equal0~0_combout\ & \I_x_axis|I_my_slow_enable_1ms|Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~1_combout\,
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~0_combout\,
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~2_combout\,
	dataf => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	combout => \I_x_axis|sl_slow_enable_1mm_int~combout\);

-- Location: FF_X74_Y5_N20
\I_x_axis|I_my_slow_enable_1mm|u_counter_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1mm|Add1~13_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\,
	ena => \I_x_axis|sl_slow_enable_1mm_int~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6));

-- Location: LABCELL_X73_Y5_N42
\I_x_axis|I_my_slow_enable_1mm|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|LessThan0~2_combout\ = ( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & ( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & ( (\I_x_axis|Equal0~0_combout\ & ((!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4)) # 
-- ((\I_car_wash_FSM|WideOr20~combout\ & !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3))))) ) ) ) # ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & ( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & ( \I_x_axis|Equal0~0_combout\ ) ) ) # ( 
-- \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & ( \I_x_axis|Equal0~0_combout\ ) ) ) # ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & ( 
-- ((!\I_car_wash_FSM|WideOr20~combout\ & (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) & !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4)))) # (\I_x_axis|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010101010101010101010101010101010101010101010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_Equal0~0_combout\,
	datab => \I_car_wash_FSM|ALT_INV_WideOr20~combout\,
	datac => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(3),
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(4),
	datae => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(5),
	dataf => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(6),
	combout => \I_x_axis|I_my_slow_enable_1mm|LessThan0~2_combout\);

-- Location: LABCELL_X73_Y5_N12
\I_car_wash_FSM|WideOr21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|WideOr21~combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & ((\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~5_q\))) # (\I_car_wash_FSM|car_wash_state~7_q\ & 
-- (\I_car_wash_FSM|car_wash_state~5_q\ & \I_car_wash_FSM|car_wash_state~4_q\)) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_car_wash_FSM|car_wash_state~7_q\ $ (\I_car_wash_FSM|car_wash_state~5_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|WideOr21~combout\);

-- Location: LABCELL_X73_Y5_N0
\I_x_axis|I_my_slow_enable_1mm|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|LessThan0~1_combout\ = ( \I_car_wash_FSM|WideOr21~combout\ & ( (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) & (!\I_car_wash_FSM|WideOr20~combout\ & ((\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1)) # 
-- (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2))))) # (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) & ((!\I_car_wash_FSM|WideOr20~combout\) # ((\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2) & \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1))))) ) 
-- ) # ( !\I_car_wash_FSM|WideOr21~combout\ & ( (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2) & ((\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1)) # (\I_car_wash_FSM|WideOr20~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111101001100110011010100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(0),
	datab => \I_car_wash_FSM|ALT_INV_WideOr20~combout\,
	datac => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(2),
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(1),
	dataf => \I_car_wash_FSM|ALT_INV_WideOr21~combout\,
	combout => \I_x_axis|I_my_slow_enable_1mm|LessThan0~1_combout\);

-- Location: LABCELL_X73_Y5_N6
\I_x_axis|sl_rollover_1mm_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|sl_rollover_1mm_int~0_combout\ = ( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & ( \I_car_wash_FSM|WideOr20~combout\ & ( (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) & (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & 
-- (\I_x_axis|Equal0~0_combout\ & \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4)))) ) ) ) # ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & ( \I_car_wash_FSM|WideOr20~combout\ & ( (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) & 
-- (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & (!\I_x_axis|Equal0~0_combout\ & !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4)))) ) ) ) # ( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & ( !\I_car_wash_FSM|WideOr20~combout\ & ( 
-- (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) & (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & (\I_x_axis|Equal0~0_combout\ & \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4)))) ) ) ) # ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & ( 
-- !\I_car_wash_FSM|WideOr20~combout\ & ( (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) & (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & (!\I_x_axis|Equal0~0_combout\ & !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000001010000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(3),
	datab => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(6),
	datac => \I_x_axis|ALT_INV_Equal0~0_combout\,
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(4),
	datae => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(5),
	dataf => \I_car_wash_FSM|ALT_INV_WideOr20~combout\,
	combout => \I_x_axis|sl_rollover_1mm_int~0_combout\);

-- Location: LABCELL_X73_Y5_N3
\I_x_axis|I_my_slow_enable_1mm|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\ = ( \I_x_axis|sl_rollover_1mm_int~0_combout\ & ( (!\I_x_axis|I_my_slow_enable_1mm|LessThan0~2_combout\ & \I_x_axis|I_my_slow_enable_1mm|LessThan0~1_combout\) ) ) # ( 
-- !\I_x_axis|sl_rollover_1mm_int~0_combout\ & ( !\I_x_axis|I_my_slow_enable_1mm|LessThan0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~2_combout\,
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~1_combout\,
	dataf => \I_x_axis|ALT_INV_sl_rollover_1mm_int~0_combout\,
	combout => \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\);

-- Location: FF_X74_Y5_N2
\I_x_axis|I_my_slow_enable_1mm|u_counter_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1mm|Add1~21_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\,
	ena => \I_x_axis|sl_slow_enable_1mm_int~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0));

-- Location: LABCELL_X74_Y5_N3
\I_x_axis|I_my_slow_enable_1mm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Add1~17_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~22\ ))
-- \I_x_axis|I_my_slow_enable_1mm|Add1~18\ = CARRY(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(1),
	cin => \I_x_axis|I_my_slow_enable_1mm|Add1~22\,
	sumout => \I_x_axis|I_my_slow_enable_1mm|Add1~17_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1mm|Add1~18\);

-- Location: FF_X74_Y5_N5
\I_x_axis|I_my_slow_enable_1mm|u_counter_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1mm|Add1~17_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\,
	ena => \I_x_axis|sl_slow_enable_1mm_int~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1));

-- Location: LABCELL_X74_Y5_N6
\I_x_axis|I_my_slow_enable_1mm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Add1~25_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~18\ ))
-- \I_x_axis|I_my_slow_enable_1mm|Add1~26\ = CARRY(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(2),
	cin => \I_x_axis|I_my_slow_enable_1mm|Add1~18\,
	sumout => \I_x_axis|I_my_slow_enable_1mm|Add1~25_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1mm|Add1~26\);

-- Location: FF_X74_Y5_N8
\I_x_axis|I_my_slow_enable_1mm|u_counter_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1mm|Add1~25_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\,
	ena => \I_x_axis|sl_slow_enable_1mm_int~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2));

-- Location: LABCELL_X74_Y5_N9
\I_x_axis|I_my_slow_enable_1mm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Add1~1_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~26\ ))
-- \I_x_axis|I_my_slow_enable_1mm|Add1~2\ = CARRY(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(3),
	cin => \I_x_axis|I_my_slow_enable_1mm|Add1~26\,
	sumout => \I_x_axis|I_my_slow_enable_1mm|Add1~1_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1mm|Add1~2\);

-- Location: FF_X74_Y5_N11
\I_x_axis|I_my_slow_enable_1mm|u_counter_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1mm|Add1~1_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\,
	ena => \I_x_axis|sl_slow_enable_1mm_int~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3));

-- Location: LABCELL_X74_Y5_N12
\I_x_axis|I_my_slow_enable_1mm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Add1~5_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~2\ ))
-- \I_x_axis|I_my_slow_enable_1mm|Add1~6\ = CARRY(( \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1mm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(4),
	cin => \I_x_axis|I_my_slow_enable_1mm|Add1~2\,
	sumout => \I_x_axis|I_my_slow_enable_1mm|Add1~5_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1mm|Add1~6\);

-- Location: FF_X74_Y5_N14
\I_x_axis|I_my_slow_enable_1mm|u_counter_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1mm|Add1~5_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\,
	ena => \I_x_axis|sl_slow_enable_1mm_int~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4));

-- Location: FF_X74_Y5_N17
\I_x_axis|I_my_slow_enable_1mm|u_counter_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1mm|Add1~9_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1mm|LessThan0~3_combout\,
	ena => \I_x_axis|sl_slow_enable_1mm_int~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5));

-- Location: LABCELL_X73_Y5_N54
\I_x_axis|I_my_slow_enable_1mm|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|LessThan0~0_combout\ = ( \I_car_wash_FSM|car_wash_state~4_q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & 
-- (!\I_car_wash_FSM|car_wash_state~5_q\ $ (!\I_car_wash_FSM|car_wash_state~7_q\)))) # (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & (!\I_car_wash_FSM|car_wash_state~5_q\ $ 
-- (\I_car_wash_FSM|car_wash_state~7_q\)))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~4_q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6)) ) ) ) # ( 
-- \I_car_wash_FSM|car_wash_state~4_q\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & ((\I_car_wash_FSM|car_wash_state~7_q\) # 
-- (\I_car_wash_FSM|car_wash_state~5_q\)))) # (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & (!\I_car_wash_FSM|car_wash_state~5_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6)))) ) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~4_q\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6) & ((\I_car_wash_FSM|car_wash_state~7_q\) # 
-- (\I_car_wash_FSM|car_wash_state~5_q\)))) # (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(5) & (!\I_car_wash_FSM|car_wash_state~5_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001000000001010100100000010101010000000000010100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(5),
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(6),
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_x_axis|I_my_slow_enable_1mm|LessThan0~0_combout\);

-- Location: LABCELL_X74_Y5_N24
\I_x_axis|sl_rollover_1mm_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|sl_rollover_1mm_int~1_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) & 
-- ((!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2))))) # (\I_car_wash_FSM|car_wash_state~7_q\ & (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2) & (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) $ (\I_car_wash_FSM|car_wash_state~4_q\)))) ) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~6_q\ & ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) & (!\I_car_wash_FSM|car_wash_state~7_q\ & \I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2))) # 
-- (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) & (\I_car_wash_FSM|car_wash_state~7_q\ & !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2))) ) ) ) # ( \I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( 
-- (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2) & (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) $ (((!\I_car_wash_FSM|car_wash_state~7_q\ & \I_car_wash_FSM|car_wash_state~4_q\))))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(2) & (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(0) $ (!\I_car_wash_FSM|car_wash_state~7_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000001010011000010001100010000100010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(0),
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(2),
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_x_axis|sl_rollover_1mm_int~1_combout\);

-- Location: LABCELL_X73_Y5_N48
\I_x_axis|I_my_slow_enable_1mm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Equal0~1_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) $ (((!\I_car_wash_FSM|car_wash_state~5_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ $ 
-- (\I_car_wash_FSM|car_wash_state~4_q\))))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(3) $ (((\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & 
-- \I_car_wash_FSM|car_wash_state~4_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010110100111100001011010001111000101101000111100010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(3),
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_x_axis|I_my_slow_enable_1mm|Equal0~1_combout\);

-- Location: LABCELL_X74_Y5_N57
\I_x_axis|I_my_slow_enable_1mm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Equal0~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_car_wash_FSM|car_wash_state~7_q\ $ (!\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1) $ (((!\I_car_wash_FSM|car_wash_state~4_q\) # 
-- (\I_car_wash_FSM|car_wash_state~5_q\)))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(1) $ (((!\I_car_wash_FSM|car_wash_state~7_q\) # ((!\I_car_wash_FSM|car_wash_state~4_q\ & 
-- !\I_car_wash_FSM|car_wash_state~5_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100010110100010010111011010001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(1),
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_x_axis|I_my_slow_enable_1mm|Equal0~0_combout\);

-- Location: LABCELL_X74_Y7_N57
\I_x_axis|I_my_slow_enable_1ms|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Equal0~3_combout\ = ( \I_x_axis|I_my_slow_enable_1ms|Equal0~1_combout\ & ( (\I_x_axis|I_my_slow_enable_1ms|Equal0~0_combout\ & \I_x_axis|I_my_slow_enable_1ms|Equal0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~0_combout\,
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~2_combout\,
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~1_combout\,
	combout => \I_x_axis|I_my_slow_enable_1ms|Equal0~3_combout\);

-- Location: LABCELL_X73_Y5_N33
\I_x_axis|I_my_slow_enable_1mm|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1mm|Equal0~2_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4) $ (((\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ $ 
-- (\I_car_wash_FSM|car_wash_state~5_q\))))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_x_axis|I_my_slow_enable_1mm|u_counter_int\(4) $ (((!\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~5_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100011110000011010011111000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_u_counter_int\(4),
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_x_axis|I_my_slow_enable_1mm|Equal0~2_combout\);

-- Location: LABCELL_X74_Y7_N0
\I_x_axis|sl_rollover_1mm_int\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|sl_rollover_1mm_int~combout\ = ( \I_x_axis|I_my_slow_enable_1ms|Equal0~3_combout\ & ( \I_x_axis|I_my_slow_enable_1mm|Equal0~2_combout\ & ( (\I_x_axis|I_my_slow_enable_1mm|LessThan0~0_combout\ & (\I_x_axis|sl_rollover_1mm_int~1_combout\ & 
-- (!\I_x_axis|I_my_slow_enable_1mm|Equal0~1_combout\ & \I_x_axis|I_my_slow_enable_1mm|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_LessThan0~0_combout\,
	datab => \I_x_axis|ALT_INV_sl_rollover_1mm_int~1_combout\,
	datac => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~1_combout\,
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~0_combout\,
	datae => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~3_combout\,
	dataf => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~2_combout\,
	combout => \I_x_axis|sl_rollover_1mm_int~combout\);

-- Location: MLABCELL_X72_Y7_N42
\I_x_axis|p_move_axis~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~6_combout\ = ( \I_x_axis|i_pos_int\(6) & ( (\I_x_axis|i_pos_int\(8) & (\I_x_axis|i_pos_int\(5) & \I_x_axis|i_pos_int\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(8),
	datab => \I_x_axis|ALT_INV_i_pos_int\(5),
	datac => \I_x_axis|ALT_INV_i_pos_int\(9),
	dataf => \I_x_axis|ALT_INV_i_pos_int\(6),
	combout => \I_x_axis|p_move_axis~6_combout\);

-- Location: MLABCELL_X72_Y7_N30
\I_x_axis|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~9_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(10) ) + ( \I_x_axis|Add1~6\ ))
-- \I_x_axis|Add1~10\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(10) ) + ( \I_x_axis|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	dataf => \I_x_axis|ALT_INV_i_pos_int\(10),
	cin => \I_x_axis|Add1~6\,
	sumout => \I_x_axis|Add1~9_sumout\,
	cout => \I_x_axis|Add1~10\);

-- Location: MLABCELL_X72_Y7_N33
\I_x_axis|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~49_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(11) ) + ( \I_x_axis|Add1~10\ ))
-- \I_x_axis|Add1~50\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(11) ) + ( \I_x_axis|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	dataf => \I_x_axis|ALT_INV_i_pos_int\(11),
	cin => \I_x_axis|Add1~10\,
	sumout => \I_x_axis|Add1~49_sumout\,
	cout => \I_x_axis|Add1~50\);

-- Location: FF_X72_Y7_N35
\I_x_axis|i_pos_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~49_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(11));

-- Location: MLABCELL_X72_Y7_N36
\I_x_axis|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~29_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(12) ) + ( \I_x_axis|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(12),
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	cin => \I_x_axis|Add1~50\,
	sumout => \I_x_axis|Add1~29_sumout\);

-- Location: FF_X72_Y7_N38
\I_x_axis|i_pos_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~29_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(12));

-- Location: MLABCELL_X72_Y7_N54
\I_x_axis|p_move_axis~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~7_combout\ = ( !\I_x_axis|i_pos_int\(11) & ( (\I_x_axis|i_pos_int\(10) & (\I_x_axis|p_move_axis~6_combout\ & (!\I_x_axis|i_pos_int\(7) & \I_x_axis|i_pos_int\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(10),
	datab => \I_x_axis|ALT_INV_p_move_axis~6_combout\,
	datac => \I_x_axis|ALT_INV_i_pos_int\(7),
	datad => \I_x_axis|ALT_INV_i_pos_int\(12),
	dataf => \I_x_axis|ALT_INV_i_pos_int\(11),
	combout => \I_x_axis|p_move_axis~7_combout\);

-- Location: FF_X74_Y7_N29
\I_x_axis|i_pos_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_x_axis|Add1~1_sumout\,
	sload => VCC,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(0));

-- Location: LABCELL_X74_Y7_N54
\I_x_axis|p_move_axis~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~5_combout\ = ( !\I_x_axis|i_pos_int\(1) & ( (\I_x_axis|i_pos_int\(4) & (!\I_x_axis|i_pos_int\(3) & (!\I_x_axis|i_pos_int\(2) & !\I_x_axis|i_pos_int\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(4),
	datab => \I_x_axis|ALT_INV_i_pos_int\(3),
	datac => \I_x_axis|ALT_INV_i_pos_int\(2),
	datad => \I_x_axis|ALT_INV_i_pos_int\(0),
	dataf => \I_x_axis|ALT_INV_i_pos_int\(1),
	combout => \I_x_axis|p_move_axis~5_combout\);

-- Location: LABCELL_X74_Y7_N18
\I_x_axis|p_move_axis~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~8_combout\ = ( \I_x_axis|p_move_axis~5_combout\ & ( \I_x_axis|i_pos_int[0]~DUPLICATE_q\ & ( (\I_x_axis|p_move_axis~7_combout\ & (((!\I_car_wash_FSM|WideOr22~combout\) # (!\I_x_axis|sl_rollover_1mm_int~combout\)) # 
-- (\I_x_axis|p_move_axis~4_combout\))) ) ) ) # ( !\I_x_axis|p_move_axis~5_combout\ & ( \I_x_axis|i_pos_int[0]~DUPLICATE_q\ & ( (\I_x_axis|p_move_axis~4_combout\ & (\I_x_axis|sl_rollover_1mm_int~combout\ & \I_x_axis|p_move_axis~7_combout\)) ) ) ) # ( 
-- \I_x_axis|p_move_axis~5_combout\ & ( !\I_x_axis|i_pos_int[0]~DUPLICATE_q\ & ( (\I_x_axis|p_move_axis~7_combout\ & ((!\I_car_wash_FSM|WideOr22~combout\) # (!\I_x_axis|sl_rollover_1mm_int~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111110000000000000001010000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_p_move_axis~4_combout\,
	datab => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	datac => \I_x_axis|ALT_INV_sl_rollover_1mm_int~combout\,
	datad => \I_x_axis|ALT_INV_p_move_axis~7_combout\,
	datae => \I_x_axis|ALT_INV_p_move_axis~5_combout\,
	dataf => \I_x_axis|ALT_INV_i_pos_int[0]~DUPLICATE_q\,
	combout => \I_x_axis|p_move_axis~8_combout\);

-- Location: FF_X74_Y7_N20
\I_x_axis|sl_in_wrk_pos_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|p_move_axis~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|sl_in_wrk_pos_int~q\);

-- Location: LABCELL_X74_Y5_N42
\I_x_axis|sl_axis_moving_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|sl_axis_moving_int~0_combout\ = ( \I_x_axis|sl_in_bas_pos_int~q\ & ( \I_x_axis|sl_in_wrk_pos_int~q\ ) ) # ( !\I_x_axis|sl_in_bas_pos_int~q\ & ( \I_x_axis|sl_in_wrk_pos_int~q\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\ & 
-- ((!\I_car_wash_FSM|car_wash_state~7_q\) # ((!\I_car_wash_FSM|car_wash_state~4_q\)))) # (\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ $ (!\I_car_wash_FSM|car_wash_state~5_q\ $ (\I_car_wash_FSM|car_wash_state~4_q\)))) ) ) ) # 
-- ( \I_x_axis|sl_in_bas_pos_int~q\ & ( !\I_x_axis|sl_in_wrk_pos_int~q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~5_q\) # ((\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~6_q\)))) # 
-- (\I_car_wash_FSM|car_wash_state~7_q\ & (((\I_car_wash_FSM|car_wash_state~5_q\ & \I_car_wash_FSM|car_wash_state~6_q\)) # (\I_car_wash_FSM|car_wash_state~4_q\))) ) ) ) # ( !\I_x_axis|sl_in_bas_pos_int~q\ & ( !\I_x_axis|sl_in_wrk_pos_int~q\ & ( 
-- (!\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\))) # (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ $ 
-- (\I_car_wash_FSM|car_wash_state~5_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001001100011011001111111111010011010011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datae => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	dataf => \I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\,
	combout => \I_x_axis|sl_axis_moving_int~0_combout\);

-- Location: FF_X75_Y7_N2
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~13_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int[0]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y7_N3
\I_x_axis|I_my_slow_enable_1ms|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~5_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(1) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~14\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~6\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(1) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(1),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~14\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~5_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~6\);

-- Location: FF_X75_Y7_N5
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~5_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(1));

-- Location: LABCELL_X75_Y7_N6
\I_x_axis|I_my_slow_enable_1ms|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~1_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(2) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~6\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~2\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(2) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(2),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~6\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~1_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~2\);

-- Location: FF_X75_Y7_N7
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~1_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(2));

-- Location: LABCELL_X75_Y7_N9
\I_x_axis|I_my_slow_enable_1ms|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~9_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int[3]~DUPLICATE_q\ ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~2\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~10\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int[3]~DUPLICATE_q\ ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int[3]~DUPLICATE_q\,
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~2\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~9_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~10\);

-- Location: FF_X75_Y7_N11
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~9_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int[3]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y7_N12
\I_x_axis|I_my_slow_enable_1ms|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~37_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(4) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~10\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~38\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(4) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(4),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~10\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~37_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~38\);

-- Location: FF_X75_Y7_N14
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~37_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(4));

-- Location: LABCELL_X75_Y7_N15
\I_x_axis|I_my_slow_enable_1ms|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~33_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(5) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~38\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~34\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(5) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(5),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~38\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~33_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~34\);

-- Location: FF_X75_Y7_N17
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~33_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(5));

-- Location: LABCELL_X75_Y7_N18
\I_x_axis|I_my_slow_enable_1ms|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~21_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(6) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~34\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~22\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(6) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(6),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~34\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~21_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~22\);

-- Location: FF_X75_Y7_N20
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~21_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(6));

-- Location: LABCELL_X75_Y7_N21
\I_x_axis|I_my_slow_enable_1ms|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~17_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(7) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~22\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~18\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(7) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(7),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~22\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~17_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~18\);

-- Location: FF_X75_Y7_N23
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~17_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(7));

-- Location: LABCELL_X75_Y7_N24
\I_x_axis|I_my_slow_enable_1ms|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Add1~29_sumout\ = SUM(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(8) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~18\ ))
-- \I_x_axis|I_my_slow_enable_1ms|Add1~30\ = CARRY(( \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(8) ) + ( GND ) + ( \I_x_axis|I_my_slow_enable_1ms|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(8),
	cin => \I_x_axis|I_my_slow_enable_1ms|Add1~18\,
	sumout => \I_x_axis|I_my_slow_enable_1ms|Add1~29_sumout\,
	cout => \I_x_axis|I_my_slow_enable_1ms|Add1~30\);

-- Location: FF_X75_Y7_N26
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~29_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(8));

-- Location: FF_X75_Y7_N29
\I_x_axis|I_my_slow_enable_1ms|u_counter_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|I_my_slow_enable_1ms|Add1~25_sumout\,
	clrn => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	sclr => \I_x_axis|I_my_slow_enable_1ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(9));

-- Location: LABCELL_X74_Y7_N24
\I_x_axis|I_my_slow_enable_1ms|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|I_my_slow_enable_1ms|Equal0~1_combout\ = ( !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(7) & ( !\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(4) & ( (\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(9) & 
-- (\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(8) & (!\I_x_axis|I_my_slow_enable_1ms|u_counter_int\(5) & \I_x_axis|I_my_slow_enable_1ms|u_counter_int\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(9),
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(8),
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(5),
	datad => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(6),
	datae => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(7),
	dataf => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_u_counter_int\(4),
	combout => \I_x_axis|I_my_slow_enable_1ms|Equal0~1_combout\);

-- Location: LABCELL_X74_Y7_N36
\I_x_axis|sl_rollover_1mm_int~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|sl_rollover_1mm_int~2_combout\ = ( \I_x_axis|sl_rollover_1mm_int~1_combout\ & ( (\I_x_axis|I_my_slow_enable_1ms|Equal0~1_combout\ & (\I_x_axis|I_my_slow_enable_1ms|Equal0~0_combout\ & (\I_x_axis|I_my_slow_enable_1ms|Equal0~2_combout\ & 
-- \I_x_axis|I_my_slow_enable_1mm|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~1_combout\,
	datab => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~0_combout\,
	datac => \I_x_axis|I_my_slow_enable_1ms|ALT_INV_Equal0~2_combout\,
	datad => \I_x_axis|I_my_slow_enable_1mm|ALT_INV_Equal0~0_combout\,
	dataf => \I_x_axis|ALT_INV_sl_rollover_1mm_int~1_combout\,
	combout => \I_x_axis|sl_rollover_1mm_int~2_combout\);

-- Location: LABCELL_X74_Y7_N6
\I_x_axis|i_pos_int[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|i_pos_int[2]~0_combout\ = ( \I_x_axis|sl_rollover_1mm_int~0_combout\ & ( (\I_x_axis|sl_rollover_1mm_int~2_combout\ & ((\I_car_wash_FSM|WideOr23~combout\) # (\I_car_wash_FSM|WideOr22~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	datac => \I_car_wash_FSM|ALT_INV_WideOr23~combout\,
	datad => \I_x_axis|ALT_INV_sl_rollover_1mm_int~2_combout\,
	dataf => \I_x_axis|ALT_INV_sl_rollover_1mm_int~0_combout\,
	combout => \I_x_axis|i_pos_int[2]~0_combout\);

-- Location: FF_X74_Y7_N28
\I_x_axis|i_pos_int[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_x_axis|Add1~1_sumout\,
	sload => VCC,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int[0]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y7_N3
\I_x_axis|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~37_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int[1]~DUPLICATE_q\ ) + ( \I_x_axis|Add1~2\ ))
-- \I_x_axis|Add1~38\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int[1]~DUPLICATE_q\ ) + ( \I_x_axis|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int[1]~DUPLICATE_q\,
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	cin => \I_x_axis|Add1~2\,
	sumout => \I_x_axis|Add1~37_sumout\,
	cout => \I_x_axis|Add1~38\);

-- Location: FF_X72_Y7_N5
\I_x_axis|i_pos_int[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~37_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int[1]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y7_N6
\I_x_axis|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~33_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int[2]~DUPLICATE_q\ ) + ( \I_x_axis|Add1~38\ ))
-- \I_x_axis|Add1~34\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int[2]~DUPLICATE_q\ ) + ( \I_x_axis|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_x_axis|ALT_INV_i_pos_int[2]~DUPLICATE_q\,
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	cin => \I_x_axis|Add1~38\,
	sumout => \I_x_axis|Add1~33_sumout\,
	cout => \I_x_axis|Add1~34\);

-- Location: FF_X72_Y7_N8
\I_x_axis|i_pos_int[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~33_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int[2]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y7_N9
\I_x_axis|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~41_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(3) ) + ( \I_x_axis|Add1~34\ ))
-- \I_x_axis|Add1~42\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(3) ) + ( \I_x_axis|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|ALT_INV_i_pos_int\(3),
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	cin => \I_x_axis|Add1~34\,
	sumout => \I_x_axis|Add1~41_sumout\,
	cout => \I_x_axis|Add1~42\);

-- Location: FF_X72_Y7_N11
\I_x_axis|i_pos_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~41_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(3));

-- Location: MLABCELL_X72_Y7_N12
\I_x_axis|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~13_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int[4]~DUPLICATE_q\ ) + ( \I_x_axis|Add1~42\ ))
-- \I_x_axis|Add1~14\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int[4]~DUPLICATE_q\ ) + ( \I_x_axis|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_x_axis|ALT_INV_i_pos_int[4]~DUPLICATE_q\,
	datac => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	cin => \I_x_axis|Add1~42\,
	sumout => \I_x_axis|Add1~13_sumout\,
	cout => \I_x_axis|Add1~14\);

-- Location: FF_X72_Y7_N14
\I_x_axis|i_pos_int[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~13_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int[4]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y7_N15
\I_x_axis|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~17_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(5) ) + ( \I_x_axis|Add1~14\ ))
-- \I_x_axis|Add1~18\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(5) ) + ( \I_x_axis|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_x_axis|ALT_INV_i_pos_int\(5),
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	cin => \I_x_axis|Add1~14\,
	sumout => \I_x_axis|Add1~17_sumout\,
	cout => \I_x_axis|Add1~18\);

-- Location: FF_X72_Y7_N17
\I_x_axis|i_pos_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~17_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(5));

-- Location: MLABCELL_X72_Y7_N18
\I_x_axis|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~21_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(6) ) + ( \I_x_axis|Add1~18\ ))
-- \I_x_axis|Add1~22\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(6) ) + ( \I_x_axis|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	dataf => \I_x_axis|ALT_INV_i_pos_int\(6),
	cin => \I_x_axis|Add1~18\,
	sumout => \I_x_axis|Add1~21_sumout\,
	cout => \I_x_axis|Add1~22\);

-- Location: FF_X72_Y7_N20
\I_x_axis|i_pos_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~21_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(6));

-- Location: MLABCELL_X72_Y7_N21
\I_x_axis|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~45_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(7) ) + ( \I_x_axis|Add1~22\ ))
-- \I_x_axis|Add1~46\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(7) ) + ( \I_x_axis|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(7),
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	cin => \I_x_axis|Add1~22\,
	sumout => \I_x_axis|Add1~45_sumout\,
	cout => \I_x_axis|Add1~46\);

-- Location: FF_X72_Y7_N23
\I_x_axis|i_pos_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~45_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(7));

-- Location: MLABCELL_X72_Y7_N24
\I_x_axis|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~25_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(8) ) + ( \I_x_axis|Add1~46\ ))
-- \I_x_axis|Add1~26\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(8) ) + ( \I_x_axis|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	dataf => \I_x_axis|ALT_INV_i_pos_int\(8),
	cin => \I_x_axis|Add1~46\,
	sumout => \I_x_axis|Add1~25_sumout\,
	cout => \I_x_axis|Add1~26\);

-- Location: FF_X72_Y7_N26
\I_x_axis|i_pos_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~25_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(8));

-- Location: MLABCELL_X72_Y7_N27
\I_x_axis|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|Add1~5_sumout\ = SUM(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(9) ) + ( \I_x_axis|Add1~26\ ))
-- \I_x_axis|Add1~6\ = CARRY(( \I_car_wash_FSM|WideOr22~combout\ ) + ( \I_x_axis|i_pos_int\(9) ) + ( \I_x_axis|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(9),
	datad => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	cin => \I_x_axis|Add1~26\,
	sumout => \I_x_axis|Add1~5_sumout\,
	cout => \I_x_axis|Add1~6\);

-- Location: FF_X72_Y7_N29
\I_x_axis|i_pos_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~5_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(9));

-- Location: FF_X72_Y7_N31
\I_x_axis|i_pos_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|Add1~9_sumout\,
	ena => \I_x_axis|i_pos_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|i_pos_int\(10));

-- Location: MLABCELL_X72_Y7_N45
\I_x_axis|p_move_axis~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~0_combout\ = ( !\I_x_axis|i_pos_int\(6) & ( (!\I_x_axis|i_pos_int\(8) & (!\I_x_axis|i_pos_int\(5) & !\I_x_axis|i_pos_int[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(8),
	datab => \I_x_axis|ALT_INV_i_pos_int\(5),
	datac => \I_x_axis|ALT_INV_i_pos_int[4]~DUPLICATE_q\,
	dataf => \I_x_axis|ALT_INV_i_pos_int\(6),
	combout => \I_x_axis|p_move_axis~0_combout\);

-- Location: MLABCELL_X72_Y7_N48
\I_x_axis|p_move_axis~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~1_combout\ = ( !\I_x_axis|i_pos_int[1]~DUPLICATE_q\ & ( !\I_x_axis|i_pos_int\(11) & ( (!\I_x_axis|i_pos_int\(7) & (!\I_x_axis|i_pos_int\(3) & (!\I_x_axis|i_pos_int\(12) & !\I_x_axis|i_pos_int[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(7),
	datab => \I_x_axis|ALT_INV_i_pos_int\(3),
	datac => \I_x_axis|ALT_INV_i_pos_int\(12),
	datad => \I_x_axis|ALT_INV_i_pos_int[2]~DUPLICATE_q\,
	datae => \I_x_axis|ALT_INV_i_pos_int[1]~DUPLICATE_q\,
	dataf => \I_x_axis|ALT_INV_i_pos_int\(11),
	combout => \I_x_axis|p_move_axis~1_combout\);

-- Location: MLABCELL_X72_Y7_N57
\I_x_axis|p_move_axis~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~2_combout\ = ( \I_x_axis|p_move_axis~1_combout\ & ( (!\I_x_axis|i_pos_int\(10) & (\I_x_axis|p_move_axis~0_combout\ & !\I_x_axis|i_pos_int\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_i_pos_int\(10),
	datac => \I_x_axis|ALT_INV_p_move_axis~0_combout\,
	datad => \I_x_axis|ALT_INV_i_pos_int\(9),
	dataf => \I_x_axis|ALT_INV_p_move_axis~1_combout\,
	combout => \I_x_axis|p_move_axis~2_combout\);

-- Location: LABCELL_X74_Y7_N48
\I_x_axis|p_move_axis~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_x_axis|p_move_axis~3_combout\ = ( \I_x_axis|sl_rollover_1mm_int~2_combout\ & ( \I_x_axis|i_pos_int[0]~DUPLICATE_q\ & ( (\I_x_axis|p_move_axis~2_combout\ & (\I_car_wash_FSM|WideOr22~combout\ & \I_x_axis|sl_rollover_1mm_int~0_combout\)) ) ) ) # ( 
-- \I_x_axis|sl_rollover_1mm_int~2_combout\ & ( !\I_x_axis|i_pos_int[0]~DUPLICATE_q\ & ( (\I_x_axis|p_move_axis~2_combout\ & ((!\I_car_wash_FSM|WideOr23~combout\) # (!\I_x_axis|sl_rollover_1mm_int~0_combout\))) ) ) ) # ( 
-- !\I_x_axis|sl_rollover_1mm_int~2_combout\ & ( !\I_x_axis|i_pos_int[0]~DUPLICATE_q\ & ( \I_x_axis|p_move_axis~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_p_move_axis~2_combout\,
	datab => \I_car_wash_FSM|ALT_INV_WideOr22~combout\,
	datac => \I_car_wash_FSM|ALT_INV_WideOr23~combout\,
	datad => \I_x_axis|ALT_INV_sl_rollover_1mm_int~0_combout\,
	datae => \I_x_axis|ALT_INV_sl_rollover_1mm_int~2_combout\,
	dataf => \I_x_axis|ALT_INV_i_pos_int[0]~DUPLICATE_q\,
	combout => \I_x_axis|p_move_axis~3_combout\);

-- Location: FF_X74_Y7_N49
\I_x_axis|sl_in_bas_pos_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_x_axis|p_move_axis~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_x_axis|sl_in_bas_pos_int~q\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X79_Y5_N0
\I_selection|sl_storage_execute\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_selection|sl_storage_execute~combout\ = ( !\I_car_wash_FSM|car_wash_state~7_q\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & (!\KEY[1]~input_o\ & !\I_car_wash_FSM|car_wash_state~4_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	combout => \I_selection|sl_storage_execute~combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: M10K_X76_Y5_N0
\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/e_my_car_wash_project.ram0_e_RAM_89e91499.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "e_RAM:I_RAM|altsyncram:a_mem_rtl_0|altsyncram_oag1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 1,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_selection|sl_storage_execute~combout\,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X74_Y5_N48
\I_car_wash_FSM|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector15~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~4_q\ & (\I_x_axis|sl_in_bas_pos_int~q\ & \I_car_wash_FSM|car_wash_state~7_q\)) ) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~6_q\ & ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|car_wash_state~4_q\ & (\I_x_axis|sl_in_bas_pos_int~q\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & \I_car_wash_FSM|car_wash_state~7_q\))) ) ) ) # ( 
-- \I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|car_wash_state~4_q\ & (\I_x_axis|sl_in_bas_pos_int~q\ & \I_car_wash_FSM|car_wash_state~7_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000100000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datab => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_car_wash_FSM|Selector15~0_combout\);

-- Location: LABCELL_X75_Y6_N12
\I_car_wash_FSM|car_wash_state.S_DONE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state.S_DONE~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~7_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|car_wash_state.S_DONE~0_combout\);

-- Location: LABCELL_X75_Y6_N18
\I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ = (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~5_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\);

-- Location: LABCELL_X75_Y5_N0
\I_car_wash_FSM|car_wash_state~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~26_combout\ = ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_x_axis|sl_in_bas_pos_int~q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & (!\KEY[1]~input_o\ & (!\I_car_wash_FSM|car_wash_state~4_q\ & 
-- !\I_car_wash_FSM|car_wash_state~5_q\)))) ) ) # ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_x_axis|sl_in_bas_pos_int~q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- (!\I_car_wash_FSM|car_wash_state~4_q\ & !\I_car_wash_FSM|car_wash_state~5_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datag => \ALT_INV_KEY[1]~input_o\,
	combout => \I_car_wash_FSM|car_wash_state~26_combout\);

-- Location: LABCELL_X77_Y5_N18
\I_car_wash_FSM|car_wash_state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~13_combout\ = ( \I_car_wash_FSM|car_wash_state~7_q\ & ( \I_x_axis|sl_in_bas_pos_int~q\ & ( (\I_x_axis|sl_in_wrk_pos_int~q\ & (!\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_car_wash_FSM|car_wash_state~6_q\) # 
-- (!\I_car_wash_FSM|car_wash_state~5_q\)))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~7_q\ & ( \I_x_axis|sl_in_bas_pos_int~q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_x_axis|sl_in_wrk_pos_int~q\ & 
-- \I_car_wash_FSM|car_wash_state~4_q\)) # (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_x_axis|sl_in_wrk_pos_int~q\ & !\I_car_wash_FSM|car_wash_state~4_q\)))) ) ) ) # ( \I_car_wash_FSM|car_wash_state~7_q\ & ( !\I_x_axis|sl_in_bas_pos_int~q\ & ( 
-- (!\I_car_wash_FSM|car_wash_state~6_q\ & (((\I_car_wash_FSM|car_wash_state~4_q\) # (\I_x_axis|sl_in_wrk_pos_int~q\)))) # (\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & ((\I_car_wash_FSM|car_wash_state~4_q\) # 
-- (\I_x_axis|sl_in_wrk_pos_int~q\)))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~7_q\ & ( !\I_x_axis|sl_in_bas_pos_int~q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\ & ((!\I_x_axis|sl_in_wrk_pos_int~q\ & ((\I_car_wash_FSM|car_wash_state~4_q\))) # 
-- (\I_x_axis|sl_in_wrk_pos_int~q\ & (\I_car_wash_FSM|car_wash_state~6_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011101110111000000001001000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	combout => \I_car_wash_FSM|car_wash_state~13_combout\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X77_Y5_N3
\I_car_wash_FSM|car_wash_state.S_PRICE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state.S_PRICE~0_combout\ = ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & !\I_car_wash_FSM|car_wash_state~7_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|car_wash_state.S_PRICE~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X77_Y5_N6
\I_car_wash_FSM|car_wash_state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~14_combout\ = ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\I_car_wash_FSM|car_wash_state~13_combout\ & ((!\I_car_wash_FSM|car_wash_state.S_PRICE~0_combout\) # ((!\KEY[3]~input_o\ & \KEY[2]~input_o\)))) ) ) # ( 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\I_car_wash_FSM|car_wash_state~13_combout\ & ((!\KEY[3]~input_o\) # ((!\I_car_wash_FSM|car_wash_state.S_PRICE~0_combout\) # (!\KEY[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010100000101010001010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~13_combout\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state.S_PRICE~0_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \I_car_wash_FSM|car_wash_state~14_combout\);

-- Location: LABCELL_X74_Y5_N36
\I_car_wash_FSM|car_wash_state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~15_combout\ = ( \I_car_wash_FSM|car_wash_state~26_combout\ & ( \I_car_wash_FSM|car_wash_state~14_combout\ ) ) # ( !\I_car_wash_FSM|car_wash_state~26_combout\ & ( \I_car_wash_FSM|car_wash_state~14_combout\ & ( 
-- ((!\I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ & ((\I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\) # (\I_car_wash_FSM|car_wash_state.S_DONE~0_combout\)))) # (\I_car_wash_FSM|Selector15~0_combout\) ) ) ) # ( 
-- \I_car_wash_FSM|car_wash_state~26_combout\ & ( !\I_car_wash_FSM|car_wash_state~14_combout\ ) ) # ( !\I_car_wash_FSM|car_wash_state~26_combout\ & ( !\I_car_wash_FSM|car_wash_state~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_Selector15~0_combout\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state.S_DONE~0_combout\,
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state.S_RIM_CLEANING~0_combout\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~26_combout\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~14_combout\,
	combout => \I_car_wash_FSM|car_wash_state~15_combout\);

-- Location: LABCELL_X77_Y5_N33
\I_car_wash_FSM|p_car_wash_FSM_refresh_nextstate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|p_car_wash_FSM_refresh_nextstate~0_combout\ = ( \SW[9]~input_o\ & ( !\KEY[0]~input_o\ ) ) # ( !\SW[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \I_car_wash_FSM|p_car_wash_FSM_refresh_nextstate~0_combout\);

-- Location: FF_X74_Y5_N38
\I_car_wash_FSM|car_wash_state~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|car_wash_state~15_combout\,
	clrn => \I_car_wash_FSM|ALT_INV_p_car_wash_FSM_refresh_nextstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|car_wash_state~4_q\);

-- Location: LABCELL_X75_Y6_N21
\I_car_wash_FSM|sl_timer_enable_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|sl_timer_enable_int~0_combout\ = ( \I_car_wash_FSM|car_wash_state~7_q\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~5_q\)) ) ) # ( !\I_car_wash_FSM|car_wash_state~7_q\ & ( 
-- (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & !\I_car_wash_FSM|car_wash_state~5_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	combout => \I_car_wash_FSM|sl_timer_enable_int~0_combout\);

-- Location: FF_X73_Y7_N32
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(0));

-- Location: LABCELL_X73_Y7_N33
\I_car_wash_FSM|I_my_slow_enable|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~17_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(1) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~2\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~18\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(1) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(1),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~2\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~17_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~18\);

-- Location: FF_X73_Y7_N35
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(1));

-- Location: LABCELL_X73_Y7_N36
\I_car_wash_FSM|I_my_slow_enable|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~21_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(2) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~18\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~22\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(2) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(2),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~18\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~21_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~22\);

-- Location: FF_X73_Y7_N38
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(2));

-- Location: LABCELL_X73_Y7_N39
\I_car_wash_FSM|I_my_slow_enable|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~25_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[3]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~22\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~26\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[3]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[3]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~22\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~25_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~26\);

-- Location: FF_X73_Y7_N41
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[3]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y7_N42
\I_car_wash_FSM|I_my_slow_enable|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~29_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[4]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~26\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~30\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[4]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[4]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~26\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~29_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~30\);

-- Location: LABCELL_X73_Y7_N45
\I_car_wash_FSM|I_my_slow_enable|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~5_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(5) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~30\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~6\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(5) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(5),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~30\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~5_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~6\);

-- Location: FF_X73_Y7_N47
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(5));

-- Location: LABCELL_X73_Y7_N48
\I_car_wash_FSM|I_my_slow_enable|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~9_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(6) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~6\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~10\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(6) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(6),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~6\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~9_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~10\);

-- Location: FF_X73_Y7_N50
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(6));

-- Location: LABCELL_X73_Y7_N51
\I_car_wash_FSM|I_my_slow_enable|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~13_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(7) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~10\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~14\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(7) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(7),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~10\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~13_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~14\);

-- Location: FF_X73_Y7_N52
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(7));

-- Location: LABCELL_X73_Y7_N54
\I_car_wash_FSM|I_my_slow_enable|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~97_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(8) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~14\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~98\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(8) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(8),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~14\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~97_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~98\);

-- Location: FF_X73_Y7_N56
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~97_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(8));

-- Location: LABCELL_X73_Y7_N57
\I_car_wash_FSM|I_my_slow_enable|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~93_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(9) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~98\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~94\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(9) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(9),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~98\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~93_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~94\);

-- Location: FF_X73_Y7_N59
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~93_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(9));

-- Location: LABCELL_X73_Y6_N0
\I_car_wash_FSM|I_my_slow_enable|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~77_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[10]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~94\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~78\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[10]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[10]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~94\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~77_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~78\);

-- Location: FF_X73_Y6_N2
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~77_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[10]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N3
\I_car_wash_FSM|I_my_slow_enable|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~105_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[11]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~78\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~106\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[11]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[11]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~78\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~105_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~106\);

-- Location: FF_X73_Y6_N5
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~105_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[11]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N6
\I_car_wash_FSM|I_my_slow_enable|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~101_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(12) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~106\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~102\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(12) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(12),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~106\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~101_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~102\);

-- Location: FF_X73_Y6_N7
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~101_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(12));

-- Location: LABCELL_X73_Y6_N9
\I_car_wash_FSM|I_my_slow_enable|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~109_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[13]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~102\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~110\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[13]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[13]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~102\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~109_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~110\);

-- Location: FF_X73_Y6_N11
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~109_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[13]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N12
\I_car_wash_FSM|I_my_slow_enable|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~113_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[14]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~110\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~114\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[14]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[14]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~110\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~113_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~114\);

-- Location: FF_X73_Y6_N14
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~113_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[14]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N15
\I_car_wash_FSM|I_my_slow_enable|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~89_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[15]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~114\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~90\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[15]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[15]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~114\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~89_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~90\);

-- Location: FF_X73_Y6_N17
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~89_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[15]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N18
\I_car_wash_FSM|I_my_slow_enable|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~81_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[16]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~90\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~82\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[16]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[16]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~90\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~81_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~82\);

-- Location: FF_X73_Y6_N20
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~81_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[16]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N21
\I_car_wash_FSM|I_my_slow_enable|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~85_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(17) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~82\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~86\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(17) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(17),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~82\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~85_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~86\);

-- Location: FF_X73_Y6_N23
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~85_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(17));

-- Location: LABCELL_X73_Y6_N24
\I_car_wash_FSM|I_my_slow_enable|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~65_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[18]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~86\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~66\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[18]~DUPLICATE_q\ ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[18]~DUPLICATE_q\,
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~86\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~65_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~66\);

-- Location: FF_X73_Y6_N26
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~65_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[18]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N27
\I_car_wash_FSM|I_my_slow_enable|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~69_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(19) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~66\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~70\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(19) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(19),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~66\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~69_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~70\);

-- Location: FF_X73_Y6_N28
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~69_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(19));

-- Location: LABCELL_X73_Y6_N30
\I_car_wash_FSM|I_my_slow_enable|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~45_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(20) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~70\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~46\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(20) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(20),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~70\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~45_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~46\);

-- Location: FF_X73_Y6_N31
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~45_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(20));

-- Location: LABCELL_X73_Y6_N33
\I_car_wash_FSM|I_my_slow_enable|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~49_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(21) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~46\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~50\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(21) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(21),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~46\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~49_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~50\);

-- Location: FF_X73_Y6_N35
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~49_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(21));

-- Location: LABCELL_X73_Y6_N36
\I_car_wash_FSM|I_my_slow_enable|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~53_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(22) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~50\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~54\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(22) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(22),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~50\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~53_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~54\);

-- Location: FF_X73_Y6_N38
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~53_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(22));

-- Location: LABCELL_X73_Y6_N39
\I_car_wash_FSM|I_my_slow_enable|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~57_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(23) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~54\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~58\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(23) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(23),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~54\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~57_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~58\);

-- Location: FF_X73_Y6_N40
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~57_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(23));

-- Location: LABCELL_X73_Y6_N42
\I_car_wash_FSM|I_my_slow_enable|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~61_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(24) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~58\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~62\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(24) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(24),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~58\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~61_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~62\);

-- Location: FF_X73_Y6_N44
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~61_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(24));

-- Location: FF_X73_Y6_N37
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~53_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[22]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y6_N36
\I_car_wash_FSM|I_my_slow_enable|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~9_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[22]~DUPLICATE_q\ & ( (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(23) & \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(24)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(23),
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(24),
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[22]~DUPLICATE_q\,
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~9_combout\);

-- Location: FF_X73_Y6_N34
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~49_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[21]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y6_N45
\I_car_wash_FSM|I_my_slow_enable|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~7_combout\ = ( !\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(20) & ( !\I_car_wash_FSM|I_my_slow_enable|u_counter_int[21]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[21]~DUPLICATE_q\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(20),
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~7_combout\);

-- Location: LABCELL_X73_Y6_N45
\I_car_wash_FSM|I_my_slow_enable|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~73_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~62\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~74\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(25),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~62\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~73_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~74\);

-- Location: FF_X73_Y6_N46
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~73_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25));

-- Location: FF_X73_Y6_N50
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~41_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(26));

-- Location: LABCELL_X73_Y6_N48
\I_car_wash_FSM|I_my_slow_enable|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~41_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(26) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~74\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~42\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(26) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(26),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~74\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~41_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~42\);

-- Location: FF_X73_Y6_N49
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~41_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[26]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N51
\I_car_wash_FSM|I_my_slow_enable|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~37_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(27) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~42\ ))
-- \I_car_wash_FSM|I_my_slow_enable|Add1~38\ = CARRY(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(27) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(27),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~42\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~37_sumout\,
	cout => \I_car_wash_FSM|I_my_slow_enable|Add1~38\);

-- Location: FF_X73_Y6_N52
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(27));

-- Location: LABCELL_X73_Y6_N54
\I_car_wash_FSM|I_my_slow_enable|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Add1~33_sumout\ = SUM(( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(28) ) + ( GND ) + ( \I_car_wash_FSM|I_my_slow_enable|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(28),
	cin => \I_car_wash_FSM|I_my_slow_enable|Add1~38\,
	sumout => \I_car_wash_FSM|I_my_slow_enable|Add1~33_sumout\);

-- Location: FF_X73_Y6_N55
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(28));

-- Location: LABCELL_X74_Y6_N57
\I_car_wash_FSM|I_my_slow_enable|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~8_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(27) & ( (\I_car_wash_FSM|I_my_slow_enable|u_counter_int[26]~DUPLICATE_q\ & \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[26]~DUPLICATE_q\,
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(28),
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(27),
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~8_combout\);

-- Location: FF_X73_Y6_N25
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~65_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(18));

-- Location: FF_X73_Y6_N22
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~85_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]~DUPLICATE_q\);

-- Location: FF_X73_Y6_N19
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~81_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(16));

-- Location: LABCELL_X74_Y6_N27
\I_car_wash_FSM|I_my_slow_enable|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|LessThan0~1_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(16) & ( (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(19) & \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(18)) ) ) # ( 
-- !\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(16) & ( (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(19) & (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(18) & \I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(19),
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(18),
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[17]~DUPLICATE_q\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(16),
	combout => \I_car_wash_FSM|I_my_slow_enable|LessThan0~1_combout\);

-- Location: FF_X73_Y6_N13
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~113_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(14));

-- Location: FF_X73_Y6_N16
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~89_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(15));

-- Location: FF_X73_Y6_N10
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~109_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(13));

-- Location: FF_X73_Y6_N4
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~105_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(11));

-- Location: FF_X73_Y7_N58
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~93_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]~DUPLICATE_q\);

-- Location: FF_X73_Y6_N1
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~77_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(10));

-- Location: LABCELL_X73_Y7_N0
\I_car_wash_FSM|I_my_slow_enable|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(7) & ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(1) & ( (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(6) & 
-- (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(5) & (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(2) & \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(6),
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(5),
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(2),
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(0),
	datae => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(7),
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(1),
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\);

-- Location: LABCELL_X74_Y6_N48
\I_car_wash_FSM|I_my_slow_enable|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|LessThan0~3_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\ & ( \I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\ & ( (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(11) & 
-- !\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(10)) ) ) ) # ( !\I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\ & ( \I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\ & ( (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(11) & 
-- ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(10)) # ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(8) & !\I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]~DUPLICATE_q\)))) ) ) ) # ( \I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\ & ( 
-- !\I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\ & ( (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(11) & ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(10)) # ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(8) & 
-- !\I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]~DUPLICATE_q\)))) ) ) ) # ( !\I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\ & ( !\I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\ & ( (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(11) & 
-- ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(10)) # ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(8) & !\I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011001000000011001100100000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(8),
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(11),
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[9]~DUPLICATE_q\,
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(10),
	datae => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~0_combout\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~1_combout\,
	combout => \I_car_wash_FSM|I_my_slow_enable|LessThan0~3_combout\);

-- Location: LABCELL_X74_Y6_N12
\I_car_wash_FSM|I_my_slow_enable|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|LessThan0~0_combout\ = ( !\I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]~DUPLICATE_q\ & ( \I_car_wash_FSM|I_my_slow_enable|LessThan0~3_combout\ & ( (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(15) & 
-- ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(14)) # ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(12)) # (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(13))))) ) ) ) # ( !\I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]~DUPLICATE_q\ & ( 
-- !\I_car_wash_FSM|I_my_slow_enable|LessThan0~3_combout\ & ( (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(15) & ((!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(14)) # (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000000000000000000011001100110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(14),
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(15),
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(12),
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(13),
	datae => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[17]~DUPLICATE_q\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~3_combout\,
	combout => \I_car_wash_FSM|I_my_slow_enable|LessThan0~0_combout\);

-- Location: LABCELL_X74_Y6_N18
\I_car_wash_FSM|I_my_slow_enable|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|LessThan0~1_combout\ & ( \I_car_wash_FSM|I_my_slow_enable|LessThan0~0_combout\ & ( (\I_car_wash_FSM|I_my_slow_enable|Equal0~8_combout\ & 
-- (((\I_car_wash_FSM|I_my_slow_enable|Equal0~9_combout\ & !\I_car_wash_FSM|I_my_slow_enable|Equal0~7_combout\)) # (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25)))) ) ) ) # ( !\I_car_wash_FSM|I_my_slow_enable|LessThan0~1_combout\ & ( 
-- \I_car_wash_FSM|I_my_slow_enable|LessThan0~0_combout\ & ( (\I_car_wash_FSM|I_my_slow_enable|Equal0~8_combout\ & (((\I_car_wash_FSM|I_my_slow_enable|Equal0~9_combout\ & !\I_car_wash_FSM|I_my_slow_enable|Equal0~7_combout\)) # 
-- (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25)))) ) ) ) # ( \I_car_wash_FSM|I_my_slow_enable|LessThan0~1_combout\ & ( !\I_car_wash_FSM|I_my_slow_enable|LessThan0~0_combout\ & ( (\I_car_wash_FSM|I_my_slow_enable|Equal0~8_combout\ & 
-- ((\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25)) # (\I_car_wash_FSM|I_my_slow_enable|Equal0~9_combout\))) ) ) ) # ( !\I_car_wash_FSM|I_my_slow_enable|LessThan0~1_combout\ & ( !\I_car_wash_FSM|I_my_slow_enable|LessThan0~0_combout\ & ( 
-- (\I_car_wash_FSM|I_my_slow_enable|Equal0~8_combout\ & (((\I_car_wash_FSM|I_my_slow_enable|Equal0~9_combout\ & !\I_car_wash_FSM|I_my_slow_enable|Equal0~7_combout\)) # (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001111000000000101111100000000010011110000000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~9_combout\,
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~7_combout\,
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(25),
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~8_combout\,
	datae => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~1_combout\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_LessThan0~0_combout\,
	combout => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\);

-- Location: FF_X73_Y7_N44
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int[4]~DUPLICATE_q\);

-- Location: FF_X73_Y7_N43
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(4));

-- Location: FF_X73_Y7_N40
\I_car_wash_FSM|I_my_slow_enable|u_counter_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|I_my_slow_enable|Add1~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \I_car_wash_FSM|I_my_slow_enable|LessThan0~2_combout\,
	ena => \I_car_wash_FSM|sl_timer_enable_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(3));

-- Location: LABCELL_X74_Y6_N24
\I_car_wash_FSM|I_my_slow_enable|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(3) & ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(4),
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(3),
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\);

-- Location: LABCELL_X74_Y6_N42
\I_car_wash_FSM|I_my_slow_enable|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~2_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(27) & ( (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(20) & (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int[21]~DUPLICATE_q\ & 
-- (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(28) & \I_car_wash_FSM|I_my_slow_enable|u_counter_int[26]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(20),
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[21]~DUPLICATE_q\,
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(28),
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[26]~DUPLICATE_q\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(27),
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~2_combout\);

-- Location: LABCELL_X74_Y6_N54
\I_car_wash_FSM|I_my_slow_enable|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~4_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(10) & ( (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(25) & (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(15) & 
-- (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int[17]~DUPLICATE_q\ & \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(25),
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(15),
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[17]~DUPLICATE_q\,
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(16),
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(10),
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~4_combout\);

-- Location: LABCELL_X74_Y6_N0
\I_car_wash_FSM|I_my_slow_enable|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~5_combout\ = ( !\I_car_wash_FSM|I_my_slow_enable|u_counter_int[9]~DUPLICATE_q\ & ( !\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(12) & ( (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(14) & 
-- (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(13) & (!\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(8) & !\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(14),
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(13),
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(8),
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(11),
	datae => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[9]~DUPLICATE_q\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(12),
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~5_combout\);

-- Location: LABCELL_X74_Y6_N39
\I_car_wash_FSM|I_my_slow_enable|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~3_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|u_counter_int[22]~DUPLICATE_q\ & ( (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(23) & (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(24) & 
-- (\I_car_wash_FSM|I_my_slow_enable|u_counter_int\(18) & \I_car_wash_FSM|I_my_slow_enable|u_counter_int\(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(23),
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(24),
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(18),
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int\(19),
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_u_counter_int[22]~DUPLICATE_q\,
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~3_combout\);

-- Location: LABCELL_X74_Y6_N6
\I_car_wash_FSM|I_my_slow_enable|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|Equal0~5_combout\ & ( \I_car_wash_FSM|I_my_slow_enable|Equal0~3_combout\ & ( (\I_car_wash_FSM|I_my_slow_enable|Equal0~1_combout\ & 
-- (\I_car_wash_FSM|I_my_slow_enable|Equal0~2_combout\ & (\I_car_wash_FSM|I_my_slow_enable|Equal0~4_combout\ & \I_car_wash_FSM|I_my_slow_enable|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~1_combout\,
	datab => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~2_combout\,
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~4_combout\,
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~0_combout\,
	datae => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~5_combout\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~3_combout\,
	combout => \I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\);

-- Location: LABCELL_X75_Y6_N3
\I_car_wash_FSM|car_wash_state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~21_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_x_axis|sl_in_bas_pos_int~q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ $ (\I_car_wash_FSM|car_wash_state~4_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100001000000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|car_wash_state~21_combout\);

-- Location: LABCELL_X75_Y5_N24
\I_car_wash_FSM|car_wash_state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~10_combout\ = ( \I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ & ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( (\I_car_wash_FSM|car_wash_state~21_combout\ & \I_car_wash_FSM|car_wash_state~5_q\) ) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ & ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( (\I_car_wash_FSM|car_wash_state~21_combout\ & \I_car_wash_FSM|car_wash_state~5_q\) ) ) ) # ( 
-- \I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( ((\I_car_wash_FSM|car_wash_state~21_combout\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (\I_car_wash_FSM|car_wash_state~5_q\)))) # (\I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\) ) ) ) # ( !\I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( 
-- (\I_car_wash_FSM|car_wash_state~21_combout\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\I_car_wash_FSM|car_wash_state~5_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011011101010111011100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~21_combout\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state.S_RIM_CLEANING~0_combout\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \I_car_wash_FSM|car_wash_state~10_combout\);

-- Location: LABCELL_X75_Y5_N6
\I_car_wash_FSM|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector10~0_combout\ = ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( (\I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ & (\I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ & 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state.S_RIM_CLEANING~0_combout\,
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \I_car_wash_FSM|Selector10~0_combout\);

-- Location: LABCELL_X73_Y5_N51
\I_car_wash_FSM|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector10~2_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_x_axis|sl_in_bas_pos_int~q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ $ (\I_car_wash_FSM|car_wash_state~4_q\)))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & (\I_x_axis|sl_in_bas_pos_int~q\ & \I_car_wash_FSM|car_wash_state~4_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000001000000000100000100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|Selector10~2_combout\);

-- Location: LABCELL_X75_Y6_N24
\I_car_wash_FSM|car_wash_state.S_DRY_START~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( \I_car_wash_FSM|car_wash_state~7_q\ & ( (!\I_car_wash_FSM|car_wash_state~4_q\ & !\I_car_wash_FSM|car_wash_state~6_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	combout => \I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\);

-- Location: LABCELL_X74_Y5_N54
\I_car_wash_FSM|Selector10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector10~3_combout\ = ( \I_x_axis|sl_in_wrk_pos_int~q\ & ( (\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & \I_car_wash_FSM|Selector10~2_combout\)) ) ) # ( !\I_x_axis|sl_in_wrk_pos_int~q\ & ( 
-- ((\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & \I_car_wash_FSM|Selector10~2_combout\))) # (\I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_Selector10~2_combout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state.S_DRY_START~0_combout\,
	dataf => \I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\,
	combout => \I_car_wash_FSM|Selector10~3_combout\);

-- Location: LABCELL_X75_Y5_N54
\I_car_wash_FSM|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector10~1_combout\ = ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\I_car_wash_FSM|Selector10~3_combout\ & ((!\I_car_wash_FSM|Selector10~2_combout\) # 
-- ((!\I_car_wash_FSM|car_wash_state~5_q\) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\)))) ) ) ) # ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( 
-- (!\I_car_wash_FSM|Selector10~3_combout\ & ((!\I_car_wash_FSM|Selector10~2_combout\) # ((!\I_car_wash_FSM|car_wash_state~5_q\) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\)))) ) ) ) # ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\I_car_wash_FSM|Selector10~3_combout\ & ((!\I_car_wash_FSM|Selector10~2_combout\) # ((!\I_car_wash_FSM|car_wash_state~5_q\) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\)))) ) ) ) # ( 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\I_car_wash_FSM|Selector10~3_combout\ & ((!\I_car_wash_FSM|Selector10~2_combout\) # 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010101010101000101010101010100010101010101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_Selector10~3_combout\,
	datab => \I_car_wash_FSM|ALT_INV_Selector10~2_combout\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datae => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \I_car_wash_FSM|Selector10~1_combout\);

-- Location: LABCELL_X73_Y7_N6
\I_car_wash_FSM|car_wash_state.S_POLISH_START~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state.S_POLISH_START~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~5_q\ & (!\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~7_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|car_wash_state.S_POLISH_START~0_combout\);

-- Location: LABCELL_X75_Y6_N15
\I_car_wash_FSM|car_wash_state.S_DRY_AXIS_BACK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state.S_DRY_AXIS_BACK~0_combout\ = ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~7_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|car_wash_state.S_DRY_AXIS_BACK~0_combout\);

-- Location: LABCELL_X75_Y6_N33
\I_car_wash_FSM|car_wash_state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~11_combout\ = ( \I_car_wash_FSM|car_wash_state~7_q\ & ( (!\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\))) # (\I_car_wash_FSM|car_wash_state~4_q\ & 
-- (!\I_x_axis|sl_in_bas_pos_int~q\ & ((!\I_car_wash_FSM|car_wash_state~6_q\) # (!\I_car_wash_FSM|car_wash_state~5_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000111000001000100011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	combout => \I_car_wash_FSM|car_wash_state~11_combout\);

-- Location: LABCELL_X74_Y6_N30
\I_car_wash_FSM|car_wash_state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~19_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ & ( \I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\ & ( (!\I_car_wash_FSM|car_wash_state~11_combout\ & (!\I_x_axis|sl_in_wrk_pos_int~q\ & 
-- !\I_car_wash_FSM|Selector14~0_combout\)) ) ) ) # ( !\I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ & ( \I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\ & ( (!\I_car_wash_FSM|car_wash_state~11_combout\ & 
-- (!\I_car_wash_FSM|car_wash_state.S_DONE~0_combout\ & (!\I_x_axis|sl_in_wrk_pos_int~q\ & !\I_car_wash_FSM|Selector14~0_combout\))) ) ) ) # ( \I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ & ( !\I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\ & ( 
-- (!\I_car_wash_FSM|car_wash_state~11_combout\ & !\I_car_wash_FSM|Selector14~0_combout\) ) ) ) # ( !\I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ & ( !\I_car_wash_FSM|car_wash_state.S_DRY_START~0_combout\ & ( 
-- (!\I_car_wash_FSM|car_wash_state~11_combout\ & (!\I_car_wash_FSM|car_wash_state.S_DONE~0_combout\ & !\I_car_wash_FSM|Selector14~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000101010100000000010000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~11_combout\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state.S_DONE~0_combout\,
	datac => \I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\,
	datad => \I_car_wash_FSM|ALT_INV_Selector14~0_combout\,
	datae => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state.S_DRY_START~0_combout\,
	combout => \I_car_wash_FSM|car_wash_state~19_combout\);

-- Location: LABCELL_X75_Y5_N51
\I_car_wash_FSM|car_wash_state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~20_combout\ = ( \I_car_wash_FSM|car_wash_state~19_combout\ & ( (!\I_car_wash_FSM|car_wash_state.S_POLISH_START~0_combout\ & ((!\I_car_wash_FSM|car_wash_state.S_DRY_AXIS_BACK~0_combout\) # 
-- (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state.S_POLISH_START~0_combout\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state.S_DRY_AXIS_BACK~0_combout\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~19_combout\,
	combout => \I_car_wash_FSM|car_wash_state~20_combout\);

-- Location: LABCELL_X75_Y5_N42
\I_car_wash_FSM|car_wash_state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~12_combout\ = ( \I_car_wash_FSM|Selector10~1_combout\ & ( \I_car_wash_FSM|car_wash_state~20_combout\ & ( (((\I_car_wash_FSM|car_wash_state~10_combout\ & \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\)) # 
-- (\I_car_wash_FSM|Selector10~0_combout\)) # (\I_car_wash_FSM|Selector15~0_combout\) ) ) ) # ( !\I_car_wash_FSM|Selector10~1_combout\ & ( \I_car_wash_FSM|car_wash_state~20_combout\ ) ) # ( \I_car_wash_FSM|Selector10~1_combout\ & ( 
-- !\I_car_wash_FSM|car_wash_state~20_combout\ ) ) # ( !\I_car_wash_FSM|Selector10~1_combout\ & ( !\I_car_wash_FSM|car_wash_state~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~10_combout\,
	datab => \I_car_wash_FSM|ALT_INV_Selector15~0_combout\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \I_car_wash_FSM|ALT_INV_Selector10~0_combout\,
	datae => \I_car_wash_FSM|ALT_INV_Selector10~1_combout\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~20_combout\,
	combout => \I_car_wash_FSM|car_wash_state~12_combout\);

-- Location: FF_X75_Y5_N44
\I_car_wash_FSM|car_wash_state~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|car_wash_state~12_combout\,
	clrn => \I_car_wash_FSM|ALT_INV_p_car_wash_FSM_refresh_nextstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|car_wash_state~7_q\);

-- Location: LABCELL_X75_Y6_N48
\I_car_wash_FSM|car_wash_state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~22_combout\ = ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (!\KEY[2]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\))))) ) ) # ( 
-- \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ & (((!\I_x_axis|sl_in_wrk_pos_int~q\)))) # (\I_car_wash_FSM|car_wash_state~6_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\ & 
-- (\I_x_axis|sl_in_wrk_pos_int~q\)) # (\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_x_axis|sl_in_bas_pos_int~q\))))))) # (\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~6_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\ & 
-- (\I_x_axis|sl_in_wrk_pos_int~q\)) # (\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_x_axis|sl_in_bas_pos_int~q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000000100000101101011010010000000000000000000010101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\,
	datad => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datag => \ALT_INV_KEY[2]~input_o\,
	combout => \I_car_wash_FSM|car_wash_state~22_combout\);

-- Location: LABCELL_X75_Y5_N18
\I_car_wash_FSM|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector15~1_combout\ = ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_x_axis|sl_in_bas_pos_int~q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & (\I_car_wash_FSM|car_wash_state~5_q\ & 
-- \I_car_wash_FSM|car_wash_state~7_q\)))) ) ) # ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\ & (\I_x_axis|sl_in_bas_pos_int~q\ & ((\I_car_wash_FSM|car_wash_state~5_q\)))) # 
-- (\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_car_wash_FSM|car_wash_state~5_q\ & (\I_x_axis|sl_in_bas_pos_int~q\)) # (\I_car_wash_FSM|car_wash_state~5_q\ & ((!\I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000000000000100000001000101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datag => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \I_car_wash_FSM|Selector15~1_combout\);

-- Location: LABCELL_X75_Y6_N6
\I_car_wash_FSM|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector6~1_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_x_axis|sl_in_wrk_pos_int~q\ & (!\I_car_wash_FSM|car_wash_state~4_q\ & !\I_car_wash_FSM|car_wash_state~7_q\)) ) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & \I_x_axis|sl_in_bas_pos_int~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|Selector6~1_combout\);

-- Location: LABCELL_X75_Y5_N30
\I_car_wash_FSM|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector6~0_combout\ = ( \I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ & ( \I_car_wash_FSM|car_wash_state~5_q\ & ( ((\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & \I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\)) # 
-- (\I_car_wash_FSM|Selector6~1_combout\) ) ) ) # ( !\I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ & ( \I_car_wash_FSM|car_wash_state~5_q\ & ( \I_car_wash_FSM|Selector6~1_combout\ ) ) ) # ( \I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ 
-- & ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & (((\I_car_wash_FSM|Selector6~1_combout\ & !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\)) # 
-- (\I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\ & ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|Selector6~1_combout\ & 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000011001101010101010101010101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_Selector6~1_combout\,
	datab => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state.S_RIM_CLEANING~0_combout\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_car_wash_FSM|Selector6~0_combout\);

-- Location: LABCELL_X75_Y5_N12
\I_car_wash_FSM|car_wash_state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~16_combout\ = ( \I_car_wash_FSM|Selector10~1_combout\ & ( \I_car_wash_FSM|Selector10~0_combout\ ) ) # ( !\I_car_wash_FSM|Selector10~1_combout\ & ( \I_car_wash_FSM|Selector10~0_combout\ ) ) # ( 
-- \I_car_wash_FSM|Selector10~1_combout\ & ( !\I_car_wash_FSM|Selector10~0_combout\ & ( (((\I_car_wash_FSM|Selector6~0_combout\) # (\I_car_wash_FSM|Selector15~1_combout\)) # (\I_car_wash_FSM|car_wash_state~22_combout\)) # 
-- (\I_car_wash_FSM|Selector14~0_combout\) ) ) ) # ( !\I_car_wash_FSM|Selector10~1_combout\ & ( !\I_car_wash_FSM|Selector10~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_Selector14~0_combout\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~22_combout\,
	datac => \I_car_wash_FSM|ALT_INV_Selector15~1_combout\,
	datad => \I_car_wash_FSM|ALT_INV_Selector6~0_combout\,
	datae => \I_car_wash_FSM|ALT_INV_Selector10~1_combout\,
	dataf => \I_car_wash_FSM|ALT_INV_Selector10~0_combout\,
	combout => \I_car_wash_FSM|car_wash_state~16_combout\);

-- Location: FF_X75_Y5_N14
\I_car_wash_FSM|car_wash_state~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|car_wash_state~16_combout\,
	clrn => \I_car_wash_FSM|ALT_INV_p_car_wash_FSM_refresh_nextstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|car_wash_state~5_q\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X75_Y6_N42
\I_car_wash_FSM|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|Selector14~0_combout\ = ( !\I_x_axis|sl_in_bas_pos_int~q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\ & (\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~4_q\)) ) ) ) # ( 
-- !\I_x_axis|sl_in_bas_pos_int~q\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~5_q\ & (\SW[8]~input_o\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~4_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datae => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_car_wash_FSM|Selector14~0_combout\);

-- Location: LABCELL_X74_Y5_N30
\I_car_wash_FSM|car_wash_state~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~17_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\ & (\I_x_axis|sl_in_wrk_pos_int~q\)) # 
-- (\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_x_axis|sl_in_bas_pos_int~q\))))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_x_axis|sl_in_wrk_pos_int~q\)) # 
-- (\I_car_wash_FSM|car_wash_state~7_q\ & (((\I_car_wash_FSM|car_wash_state~4_q\ & \I_x_axis|sl_in_bas_pos_int~q\)))) ) ) ) # ( \I_car_wash_FSM|car_wash_state~6_q\ & ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & 
-- (!\I_car_wash_FSM|car_wash_state~4_q\)) # (\I_car_wash_FSM|car_wash_state~7_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & !\I_x_axis|sl_in_bas_pos_int~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010000000100010001001110010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_x_axis|ALT_INV_sl_in_wrk_pos_int~q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_car_wash_FSM|car_wash_state~17_combout\);

-- Location: LABCELL_X75_Y5_N9
\I_car_wash_FSM|car_wash_state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~18_combout\ = ( \I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ & ( (\I_car_wash_FSM|car_wash_state~17_combout\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & \I_car_wash_FSM|car_wash_state~5_q\)) ) ) # ( 
-- !\I_car_wash_FSM|I_my_slow_enable|Equal0~6_combout\ & ( ((\I_car_wash_FSM|car_wash_state~17_combout\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & \I_car_wash_FSM|car_wash_state~5_q\))) # (\I_car_wash_FSM|car_wash_state.S_RIM_CLEANING~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011001100110111001100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~17_combout\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state.S_RIM_CLEANING~0_combout\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|I_my_slow_enable|ALT_INV_Equal0~6_combout\,
	combout => \I_car_wash_FSM|car_wash_state~18_combout\);

-- Location: LABCELL_X75_Y5_N36
\I_car_wash_FSM|car_wash_state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~8_combout\ = ( \I_car_wash_FSM|car_wash_state~17_combout\ & ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & ( (\I_x_axis|sl_in_bas_pos_int~q\ & (!\I_car_wash_FSM|car_wash_state~18_combout\ & 
-- (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\I_car_wash_FSM|car_wash_state~5_q\))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~17_combout\ & ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & ( 
-- !\I_car_wash_FSM|car_wash_state~18_combout\ ) ) ) # ( \I_car_wash_FSM|car_wash_state~17_combout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & ( (\I_x_axis|sl_in_bas_pos_int~q\ & (!\I_car_wash_FSM|car_wash_state~18_combout\ & 
-- ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\I_car_wash_FSM|car_wash_state~5_q\)))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~17_combout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & ( 
-- !\I_car_wash_FSM|car_wash_state~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010000000100010011001100110011000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_x_axis|ALT_INV_sl_in_bas_pos_int~q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~18_combout\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~17_combout\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \I_car_wash_FSM|car_wash_state~8_combout\);

-- Location: LABCELL_X75_Y5_N48
\I_car_wash_FSM|car_wash_state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_car_wash_FSM|car_wash_state~9_combout\ = ( \I_car_wash_FSM|Selector6~0_combout\ ) # ( !\I_car_wash_FSM|Selector6~0_combout\ & ( (((!\I_car_wash_FSM|car_wash_state~8_combout\) # (\I_car_wash_FSM|Selector15~1_combout\)) # 
-- (\I_car_wash_FSM|car_wash_state.S_POLISH_START~0_combout\)) # (\I_car_wash_FSM|Selector14~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_Selector14~0_combout\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state.S_POLISH_START~0_combout\,
	datac => \I_car_wash_FSM|ALT_INV_Selector15~1_combout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~8_combout\,
	dataf => \I_car_wash_FSM|ALT_INV_Selector6~0_combout\,
	combout => \I_car_wash_FSM|car_wash_state~9_combout\);

-- Location: FF_X75_Y5_N50
\I_car_wash_FSM|car_wash_state~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_car_wash_FSM|car_wash_state~9_combout\,
	clrn => \I_car_wash_FSM|ALT_INV_p_car_wash_FSM_refresh_nextstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_car_wash_FSM|car_wash_state~6_q\);

-- Location: LABCELL_X73_Y5_N18
\I_7Seg_LED_handler|slv_ledr[0]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[0]~20_combout\ = ( !\I_car_wash_FSM|car_wash_state~4_q\ & ( (\SW[9]~input_o\ & (!\I_car_wash_FSM|car_wash_state~6_q\ & (\SW[0]~input_o\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~5_q\)))) ) ) # ( 
-- \I_car_wash_FSM|car_wash_state~4_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ & (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~5_q\))) # 
-- (\I_car_wash_FSM|car_wash_state~6_q\ & ((!\I_car_wash_FSM|car_wash_state~7_q\ $ (\I_car_wash_FSM|car_wash_state~5_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000101010000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datag => \ALT_INV_SW[0]~input_o\,
	combout => \I_7Seg_LED_handler|slv_ledr[0]~20_combout\);

-- Location: LABCELL_X77_Y5_N24
\I_7Seg_LED_handler|slv_ledr[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[1]~16_combout\ = ( !\I_car_wash_FSM|car_wash_state~4_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~5_q\ & (\SW[1]~input_o\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~6_q\))) # 
-- (\I_car_wash_FSM|car_wash_state~5_q\ & (((\I_car_wash_FSM|car_wash_state~7_q\ & \I_car_wash_FSM|car_wash_state~6_q\)))))) ) ) # ( \I_car_wash_FSM|car_wash_state~4_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~5_q\ & 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~6_q\))) # (\I_car_wash_FSM|car_wash_state~5_q\ & ((!\I_car_wash_FSM|car_wash_state~7_q\ $ (\I_car_wash_FSM|car_wash_state~6_q\)))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000101010000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datag => \ALT_INV_SW[1]~input_o\,
	combout => \I_7Seg_LED_handler|slv_ledr[1]~16_combout\);

-- Location: LABCELL_X73_Y5_N36
\I_7Seg_LED_handler|slv_ledr[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[2]~12_combout\ = ( !\I_car_wash_FSM|car_wash_state~4_q\ & ( (\SW[9]~input_o\ & (!\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & ((\I_car_wash_FSM|car_wash_state~7_q\) # (\SW[2]~input_o\))))) ) ) 
-- # ( \I_car_wash_FSM|car_wash_state~4_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ & (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & !\I_car_wash_FSM|car_wash_state~5_q\))) # 
-- (\I_car_wash_FSM|car_wash_state~6_q\ & (((\I_car_wash_FSM|car_wash_state~7_q\ & \I_car_wash_FSM|car_wash_state~5_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010001000100000001000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datag => \ALT_INV_SW[2]~input_o\,
	combout => \I_7Seg_LED_handler|slv_ledr[2]~12_combout\);

-- Location: LABCELL_X73_Y7_N15
\I_7Seg_LED_handler|slv_ledr[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[1]~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~7_q\) # (!\I_car_wash_FSM|car_wash_state~5_q\))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ 
-- & (((\I_car_wash_FSM|car_wash_state~5_q\) # (\I_car_wash_FSM|car_wash_state~7_q\)) # (\I_car_wash_FSM|car_wash_state~4_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|slv_ledr[1]~0_combout\);

-- Location: LABCELL_X73_Y7_N12
\I_7Seg_LED_handler|slv_ledr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[1]~1_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~7_q\) # (!\I_car_wash_FSM|car_wash_state~5_q\))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ 
-- & ((!\I_car_wash_FSM|car_wash_state~4_q\) # ((\I_car_wash_FSM|car_wash_state~5_q\) # (\I_car_wash_FSM|car_wash_state~7_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|slv_ledr[1]~1_combout\);

-- Location: LABCELL_X73_Y7_N24
\I_7Seg_LED_handler|slv_ledr[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[3]~2_combout\ = ( \SW[9]~input_o\ & ( \I_7Seg_LED_handler|slv_ledr[1]~1_combout\ & ( (!\I_7Seg_LED_handler|slv_ledr[1]~0_combout\ & ((\SW[3]~input_o\))) # (\I_7Seg_LED_handler|slv_ledr[1]~0_combout\ & 
-- (\I_car_wash_FSM|car_wash_state.S_POLISH_START~0_combout\)) ) ) ) # ( !\SW[9]~input_o\ & ( \I_7Seg_LED_handler|slv_ledr[1]~1_combout\ & ( (!\I_7Seg_LED_handler|slv_ledr[1]~0_combout\ & ((\SW[3]~input_o\))) # (\I_7Seg_LED_handler|slv_ledr[1]~0_combout\ & 
-- (\I_car_wash_FSM|car_wash_state.S_POLISH_START~0_combout\)) ) ) ) # ( \SW[9]~input_o\ & ( !\I_7Seg_LED_handler|slv_ledr[1]~1_combout\ & ( (!\I_7Seg_LED_handler|slv_ledr[1]~0_combout\) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\) ) ) ) # ( 
-- !\SW[9]~input_o\ & ( !\I_7Seg_LED_handler|slv_ledr[1]~1_combout\ & ( (\I_7Seg_LED_handler|slv_ledr[1]~0_combout\ & \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state.S_POLISH_START~0_combout\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_ledr[1]~0_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \I_7Seg_LED_handler|ALT_INV_slv_ledr[1]~1_combout\,
	combout => \I_7Seg_LED_handler|slv_ledr[3]~2_combout\);

-- Location: LABCELL_X79_Y5_N24
\I_7Seg_LED_handler|slv_ledr[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[4]~8_combout\ = ( !\I_car_wash_FSM|car_wash_state~4_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~5_q\ & (\SW[4]~input_o\ & !\I_car_wash_FSM|car_wash_state~6_q\)) # 
-- (\I_car_wash_FSM|car_wash_state~5_q\ & ((\I_car_wash_FSM|car_wash_state~6_q\)))))) ) ) # ( \I_car_wash_FSM|car_wash_state~4_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~5_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & !\I_car_wash_FSM|car_wash_state~6_q\))) # (\I_car_wash_FSM|car_wash_state~5_q\ & (((\I_car_wash_FSM|car_wash_state~6_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000000000000100000000000001000100000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datag => \ALT_INV_SW[4]~input_o\,
	combout => \I_7Seg_LED_handler|slv_ledr[4]~8_combout\);

-- Location: LABCELL_X77_Y5_N57
\I_7Seg_LED_handler|slv_ledr[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[5]~3_combout\ = ( \SW[9]~input_o\ & ( (\I_car_wash_FSM|car_wash_state~7_q\ & \I_car_wash_FSM|car_wash_state~5_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \I_7Seg_LED_handler|slv_ledr[5]~3_combout\);

-- Location: LABCELL_X75_Y6_N0
\I_7Seg_LED_handler|slv_ledr[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[6]~4_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\ & (\I_car_wash_FSM|car_wash_state~7_q\ & (\SW[9]~input_o\ & \I_car_wash_FSM|car_wash_state~4_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & \SW[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|slv_ledr[6]~4_combout\);

-- Location: LABCELL_X79_Y5_N6
\I_7Seg_LED_handler|slv_ledr[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[7]~5_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\ & (\I_car_wash_FSM|car_wash_state~7_q\ & \SW[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|slv_ledr[7]~5_combout\);

-- Location: LABCELL_X79_Y5_N12
\I_7Seg_LED_handler|slv_ledr[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[8]~6_combout\ = ( \SW[9]~input_o\ & ( (\I_car_wash_FSM|car_wash_state~7_q\ & (\I_car_wash_FSM|car_wash_state~5_q\ & (\I_car_wash_FSM|car_wash_state~6_q\ & \I_car_wash_FSM|car_wash_state~4_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \I_7Seg_LED_handler|slv_ledr[8]~6_combout\);

-- Location: LABCELL_X75_Y6_N30
\I_7Seg_LED_handler|slv_ledr[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_ledr[9]~7_combout\ = ( \I_x_axis|sl_axis_moving_int~0_combout\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~5_q\ & (\SW[9]~input_o\ & \I_car_wash_FSM|car_wash_state~7_q\))) ) ) # ( 
-- !\I_x_axis|sl_axis_moving_int~0_combout\ & ( (\SW[9]~input_o\ & (((\I_car_wash_FSM|car_wash_state~7_q\) # (\I_car_wash_FSM|car_wash_state~5_q\)) # (\I_car_wash_FSM|car_wash_state~6_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_x_axis|ALT_INV_sl_axis_moving_int~0_combout\,
	combout => \I_7Seg_LED_handler|slv_ledr[9]~7_combout\);

-- Location: LABCELL_X79_Y5_N9
\I_7Seg_LED_handler|I_Display_0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_0|Mux6~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~7_q\) # (\I_car_wash_FSM|car_wash_state~5_q\))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( 
-- (\SW[9]~input_o\ & ((\I_car_wash_FSM|car_wash_state~5_q\) # (\I_car_wash_FSM|car_wash_state~7_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_0|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y15_N15
\I_7Seg_LED_handler|I_Display_0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_0|Mux5~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_car_wash_FSM|car_wash_state~7_q\))) # (\I_car_wash_FSM|car_wash_state~4_q\ & 
-- (\I_car_wash_FSM|car_wash_state~6_q\)))) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\SW[9]~input_o\ & ((\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~6_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111000000000000110100010000000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_0|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y15_N18
\I_7Seg_LED_handler|I_Display_0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_0|Mux4~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_car_wash_FSM|car_wash_state~7_q\))) # (\I_car_wash_FSM|car_wash_state~4_q\ & 
-- (\I_car_wash_FSM|car_wash_state~6_q\)))) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & (\SW[9]~input_o\ & !\I_car_wash_FSM|car_wash_state~7_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000001101000000010000110100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_0|Mux4~0_combout\);

-- Location: LABCELL_X75_Y6_N39
\I_7Seg_LED_handler|I_Display_0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_0|Mux3~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~7_q\) # (\I_car_wash_FSM|car_wash_state~4_q\)) ) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ ) ) # ( \I_car_wash_FSM|car_wash_state~5_q\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~7_q\ & 
-- !\I_car_wash_FSM|car_wash_state~4_q\)) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~7_q\ & \I_car_wash_FSM|car_wash_state~4_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110111010101110101011111111111111111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_0|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y15_N9
\I_7Seg_LED_handler|I_Display_0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_0|Mux2~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\) # ((!\SW[9]~input_o\) # ((\I_car_wash_FSM|car_wash_state~6_q\ & \I_car_wash_FSM|car_wash_state~4_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\) # (!\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100011111111111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_0|Mux2~0_combout\);

-- Location: LABCELL_X75_Y6_N57
\I_7Seg_LED_handler|I_Display_0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_0|Mux0~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & (((!\I_car_wash_FSM|car_wash_state~7_q\) # (!\I_car_wash_FSM|car_wash_state~5_q\)) # (\I_car_wash_FSM|car_wash_state~4_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\) # (!\I_car_wash_FSM|car_wash_state~5_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001000000010100000100000001010101010100010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_0|Mux0~0_combout\);

-- Location: LABCELL_X73_Y7_N9
\I_7Seg_LED_handler|I_Display_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_1|Mux6~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\SW[9]~input_o\) # (!\I_car_wash_FSM|car_wash_state~5_q\ $ (\I_car_wash_FSM|car_wash_state~7_q\)) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111001111110011111100111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_1|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y15_N27
\I_7Seg_LED_handler|I_Display_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_1|Mux5~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~4_q\ & !\I_car_wash_FSM|car_wash_state~7_q\)) # 
-- (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~7_q\)))) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & 
-- \SW[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000100000010000000010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_1|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y15_N45
\I_7Seg_LED_handler|I_Display_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_1|Mux4~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~4_q\ & !\I_car_wash_FSM|car_wash_state~7_q\)) # 
-- (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~7_q\)))) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000100000010000000010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_1|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y15_N21
\I_7Seg_LED_handler|I_Display_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_1|Mux3~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & (((!\I_car_wash_FSM|car_wash_state~6_q\ & !\I_car_wash_FSM|car_wash_state~4_q\)) # (\I_car_wash_FSM|car_wash_state~7_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & (!\I_car_wash_FSM|car_wash_state~6_q\ $ (!\I_car_wash_FSM|car_wash_state~7_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000100011110000000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_1|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y15_N12
\I_7Seg_LED_handler|I_Display_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_1|Mux2~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_car_wash_FSM|car_wash_state~7_q\))) # (\I_car_wash_FSM|car_wash_state~4_q\ & 
-- (\I_car_wash_FSM|car_wash_state~6_q\)))) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~6_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000000000011010000000000001101000000010000110100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_1|Mux2~0_combout\);

-- Location: LABCELL_X79_Y5_N33
\I_7Seg_LED_handler|I_Display_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_1|Mux1~0_combout\ = ( \I_car_wash_FSM|car_wash_state~7_q\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~5_q\) # (\I_car_wash_FSM|car_wash_state~4_q\)))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~7_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~6_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100000000010100010000000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	combout => \I_7Seg_LED_handler|I_Display_1|Mux1~0_combout\);

-- Location: LABCELL_X75_Y6_N54
\I_7Seg_LED_handler|I_Display_1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_1|Mux0~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~5_q\))) # (\I_car_wash_FSM|car_wash_state~7_q\ & 
-- (\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~5_q\)))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & ((\I_car_wash_FSM|car_wash_state~5_q\) # 
-- (\I_car_wash_FSM|car_wash_state~4_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000001010000000000010101000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_1|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y15_N0
\I_7Seg_LED_handler|I_Display_2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_2|Mux6~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ & ((\I_car_wash_FSM|car_wash_state~7_q\))) # (\I_car_wash_FSM|car_wash_state~6_q\ & 
-- ((!\I_car_wash_FSM|car_wash_state~4_q\) # (!\I_car_wash_FSM|car_wash_state~7_q\))))) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & \I_car_wash_FSM|car_wash_state~7_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000011100000010100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_2|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y15_N3
\I_7Seg_LED_handler|I_Display_2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_2|Mux5~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ & \SW[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_2|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y15_N36
\I_7Seg_LED_handler|I_Display_2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_2|Mux4~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (\SW[9]~input_o\ & !\I_car_wash_FSM|car_wash_state~7_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (\SW[9]~input_o\ & !\I_car_wash_FSM|car_wash_state~7_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_2|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y15_N30
\I_7Seg_LED_handler|I_Display_2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_2|Mux3~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\) # ((!\I_car_wash_FSM|car_wash_state~4_q\) # (!\I_car_wash_FSM|car_wash_state~7_q\)))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & (((\I_car_wash_FSM|car_wash_state~6_q\ & !\I_car_wash_FSM|car_wash_state~4_q\)) # (\I_car_wash_FSM|car_wash_state~7_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001111000001000000111100001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_2|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y15_N33
\I_7Seg_LED_handler|I_Display_2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_2|Mux2~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( ((!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~6_q\ & \I_car_wash_FSM|car_wash_state~4_q\))) # (\I_car_wash_FSM|car_wash_state~7_q\) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\) # ((!\SW[9]~input_o\) # (\I_car_wash_FSM|car_wash_state~7_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111111111111001011111111111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_2|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y15_N57
\I_7Seg_LED_handler|I_Display_2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_2|Mux1~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\) # ((!\SW[9]~input_o\) # (\I_car_wash_FSM|car_wash_state~7_q\)) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_2|Mux1~0_combout\);

-- Location: LABCELL_X79_Y5_N30
\I_7Seg_LED_handler|I_Display_2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_2|Mux0~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\) # ((!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~4_q\ & \I_car_wash_FSM|car_wash_state~7_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( ((!\SW[9]~input_o\) # ((\I_car_wash_FSM|car_wash_state~6_q\ & !\I_car_wash_FSM|car_wash_state~4_q\))) # (\I_car_wash_FSM|car_wash_state~7_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101001111111111110100111111111111101011101111111110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_2|Mux0~0_combout\);

-- Location: LABCELL_X79_Y5_N3
\I_7Seg_LED_handler|I_Display_3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_3|Mux6~0_combout\ = ( \I_car_wash_FSM|car_wash_state~7_q\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & \SW[9]~input_o\) ) ) # ( !\I_car_wash_FSM|car_wash_state~7_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ 
-- & (!\I_car_wash_FSM|car_wash_state~5_q\)) # (\I_car_wash_FSM|car_wash_state~6_q\ & ((\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~5_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001101000010010000110100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	combout => \I_7Seg_LED_handler|I_Display_3|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y15_N24
\I_7Seg_LED_handler|I_Display_3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_3|Mux5~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|car_wash_state~6_q\ & (!\I_car_wash_FSM|car_wash_state~4_q\ & (\SW[9]~input_o\ & \I_car_wash_FSM|car_wash_state~7_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\I_car_wash_FSM|car_wash_state~4_q\ & (\SW[9]~input_o\ & !\I_car_wash_FSM|car_wash_state~7_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_3|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y15_N42
\I_7Seg_LED_handler|I_Display_3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_3|Mux4~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~6_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~7_q\)))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~6_q\ $ (!\I_car_wash_FSM|car_wash_state~4_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011011110000111101101111000011111000111110101111100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_3|Mux4~0_combout\);

-- Location: LABCELL_X79_Y5_N15
\I_7Seg_LED_handler|I_Display_3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_3|Mux3~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & (((!\I_car_wash_FSM|car_wash_state~7_q\ & \I_car_wash_FSM|car_wash_state~4_q\)) # (\I_car_wash_FSM|car_wash_state~5_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~7_q\ & ((\I_car_wash_FSM|car_wash_state~4_q\))) # (\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001110000001000000111000000011000010110000001100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_3|Mux3~0_combout\);

-- Location: LABCELL_X79_Y5_N57
\I_7Seg_LED_handler|I_Display_3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_3|Mux2~0_combout\ = ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\SW[9]~input_o\ & (!\I_car_wash_FSM|car_wash_state~7_q\ $ (!\I_car_wash_FSM|car_wash_state~5_q\))) ) ) # ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( 
-- (!\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~5_q\ & \SW[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_3|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y15_N39
\I_7Seg_LED_handler|I_Display_3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_3|Mux1~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\) # ((!\SW[9]~input_o\) # ((\I_car_wash_FSM|car_wash_state~6_q\ & !\I_car_wash_FSM|car_wash_state~4_q\))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( ((!\I_car_wash_FSM|car_wash_state~7_q\) # (!\SW[9]~input_o\)) # (\I_car_wash_FSM|car_wash_state~6_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101111111111111010111111111111101001111111111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_3|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y15_N6
\I_7Seg_LED_handler|I_Display_3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_3|Mux0~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\ & ((\I_car_wash_FSM|car_wash_state~7_q\) # (\I_car_wash_FSM|car_wash_state~4_q\))) # 
-- (\I_car_wash_FSM|car_wash_state~6_q\ & ((!\I_car_wash_FSM|car_wash_state~7_q\))))) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\) # (\I_car_wash_FSM|car_wash_state~7_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100000111000010100000011100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_3|Mux0~0_combout\);

-- Location: LABCELL_X77_Y5_N54
\I_7Seg_LED_handler|slv_hex_input_4_int[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_hex_input_4_int[3]~3_combout\ = ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\)) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ $ 
-- (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\))))) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\)))) ) ) # ( 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & ((\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\)))) # 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ $ (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\))) # 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001100010000101000110001001000110001010000100011000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datab => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \I_7Seg_LED_handler|slv_hex_input_4_int[3]~3_combout\);

-- Location: LABCELL_X77_Y5_N48
\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ = ( !\I_car_wash_FSM|car_wash_state~7_q\ & ( (!\I_car_wash_FSM|car_wash_state~5_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~3_combout\) # 
-- (\I_car_wash_FSM|car_wash_state~6_q\)))) # (\I_car_wash_FSM|car_wash_state~5_q\ & (\I_car_wash_FSM|car_wash_state~6_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010101000100011101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~3_combout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	combout => \I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\);

-- Location: LABCELL_X77_Y5_N51
\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ = ( \SW[9]~input_o\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\ & (\I_car_wash_FSM|car_wash_state~5_q\ & ((\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~7_q\)))) # 
-- (\I_car_wash_FSM|car_wash_state~6_q\ & (((\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~7_q\)) # (\I_car_wash_FSM|car_wash_state~5_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\);

-- Location: LABCELL_X77_Y5_N9
\I_7Seg_LED_handler|slv_hex_input_4_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_hex_input_4_int[0]~5_combout\ = ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ $ (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\) ) ) # ( 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ $ (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \I_7Seg_LED_handler|slv_hex_input_4_int[0]~5_combout\);

-- Location: LABCELL_X77_Y5_N36
\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( \SW[9]~input_o\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ $ (\I_car_wash_FSM|car_wash_state~7_q\) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( 
-- \SW[9]~input_o\ & ( ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~5_combout\) # ((!\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~7_q\))) # (\I_car_wash_FSM|car_wash_state~6_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101111111111010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~5_combout\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\);

-- Location: LABCELL_X77_Y5_N0
\I_7Seg_LED_handler|slv_hex_input_4_int[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_hex_input_4_int[2]~0_combout\ = ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~4_q\ $ (\I_car_wash_FSM|car_wash_state~5_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|slv_hex_input_4_int[2]~0_combout\);

-- Location: LABCELL_X77_Y5_N45
\I_price_calc|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_price_calc|Add3~0_combout\ = ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & ( (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\) # 
-- (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & ((\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\)))) ) ) # ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & ( (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\) # 
-- ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & 
-- ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\) # (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010000000111111101000000011001000000100111100100000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \I_price_calc|Add3~0_combout\);

-- Location: LABCELL_X77_Y5_N12
\I_price_calc|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_price_calc|Add3~1_combout\ = ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ $ (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ $ (((\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\)))) ) ) # ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ $ (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ $ 
-- (((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010010110001111001001011001101001001111000110100100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \I_price_calc|Add3~1_combout\);

-- Location: LABCELL_X77_Y5_N42
\I_price_calc|Add3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_price_calc|Add3~2_combout\ = ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\) 
-- # (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\))) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\)))) ) ) # ( 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\) # ((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & 
-- !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\)))) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & (((!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010000000111111001000000011101000000000001110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \I_price_calc|Add3~2_combout\);

-- Location: LABCELL_X77_Y5_N30
\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ = ( \I_price_calc|Add3~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[2]~0_combout\ & ((!\I_price_calc|Add3~0_combout\) # (!\I_car_wash_FSM|car_wash_state.S_PRICE~0_combout\))) ) ) # ( 
-- !\I_price_calc|Add3~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[2]~0_combout\ & ((!\I_price_calc|Add3~0_combout\) # ((!\I_car_wash_FSM|car_wash_state.S_PRICE~0_combout\) # (!\I_price_calc|Add3~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~0_combout\,
	datab => \I_price_calc|ALT_INV_Add3~0_combout\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state.S_PRICE~0_combout\,
	datad => \I_price_calc|ALT_INV_Add3~1_combout\,
	dataf => \I_price_calc|ALT_INV_Add3~2_combout\,
	combout => \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\);

-- Location: LABCELL_X77_Y5_N15
\I_7Seg_LED_handler|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|LessThan0~0_combout\ = ( \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & 
-- ((\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\)))) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\ & (((\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & 
-- \I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\))) ) ) # ( !\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a1\ & ( (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a3\ & 
-- (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a2\ & ((\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\I_RAM|a_mem_rtl_0|auto_generated|ram_block1a4\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000001011111110000000101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datac => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \I_RAM|a_mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \I_7Seg_LED_handler|LessThan0~0_combout\);

-- Location: LABCELL_X79_Y5_N42
\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ = ( \I_car_wash_FSM|car_wash_state~4_q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\) # (\I_car_wash_FSM|car_wash_state~7_q\) ) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~4_q\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~5_q\) # (\I_car_wash_FSM|car_wash_state~7_q\) ) ) ) # ( \I_car_wash_FSM|car_wash_state~4_q\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( 
-- (!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_price_calc|Add3~1_combout\ $ (\I_7Seg_LED_handler|LessThan0~0_combout\)) # (\I_car_wash_FSM|car_wash_state~5_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000100010101001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datac => \I_price_calc|ALT_INV_Add3~1_combout\,
	datad => \I_7Seg_LED_handler|ALT_INV_LessThan0~0_combout\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\);

-- Location: LABCELL_X83_Y9_N36
\I_7Seg_LED_handler|I_Display_4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_4|Mux6~0_combout\ = ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & 
-- (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & ((\SW[9]~input_o\)))) # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ $ (\SW[9]~input_o\)))) ) ) ) # ( 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & 
-- (\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & \SW[9]~input_o\))) # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & ((!\SW[9]~input_o\) # 
-- (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\)))) ) ) ) # ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & 
-- ((!\SW[9]~input_o\ & ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\))) # (\SW[9]~input_o\ & (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\)))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & \SW[9]~input_o\))) # 
-- (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\) # (\SW[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110011001100000001000100110000000110000011000001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\,
	datac => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\,
	dataf => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\,
	combout => \I_7Seg_LED_handler|I_Display_4|Mux6~0_combout\);

-- Location: LABCELL_X83_Y9_N30
\I_7Seg_LED_handler|I_Display_4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_4|Mux5~0_combout\ = ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # ((\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & 
-- (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & !\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( 
-- (!\SW[9]~input_o\) # ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & !\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\))) ) ) ) # ( 
-- \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # ((!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\)) # 
-- (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( 
-- (!\SW[9]~input_o\) # ((\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ $ (\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000001111111110111010011111111100000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\,
	datac => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\,
	dataf => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\,
	combout => \I_7Seg_LED_handler|I_Display_4|Mux5~0_combout\);

-- Location: LABCELL_X83_Y9_N24
\I_7Seg_LED_handler|I_Display_4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_4|Mux4~0_combout\ = ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & 
-- ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\) # (!\SW[9]~input_o\))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( 
-- (!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & ((!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & ((!\SW[9]~input_o\))) # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & 
-- \SW[9]~input_o\)))) # (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\)) ) ) ) # ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & ((!\SW[9]~input_o\) # ((\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & !\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)))) 
-- # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & (\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & \SW[9]~input_o\))) ) ) ) # ( 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\ & (((!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\)))) # (\SW[9]~input_o\ & 
-- (!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ $ (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001100000110011000100001011001100010001101100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\,
	datac => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\,
	dataf => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\,
	combout => \I_7Seg_LED_handler|I_Display_4|Mux4~0_combout\);

-- Location: LABCELL_X83_Y9_N6
\I_7Seg_LED_handler|I_Display_4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_4|Mux3~0_combout\ = ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & 
-- ((\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\) # (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\)))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( 
-- (!\SW[9]~input_o\) # ((\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & \I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)) ) ) ) # ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & ((\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\) # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\))) 
-- # (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & \I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # ((!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\))) # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ 
-- & (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111010001111111110010101111111111000001011111111101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\,
	datac => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\,
	dataf => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\,
	combout => \I_7Seg_LED_handler|I_Display_4|Mux3~0_combout\);

-- Location: LABCELL_X83_Y9_N12
\I_7Seg_LED_handler|I_Display_4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_4|Mux2~0_combout\ = ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & 
-- (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & !\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( 
-- (!\SW[9]~input_o\) # ((!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & \I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)) # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & 
-- ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)))) ) ) ) # ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # 
-- ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & !\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)) # (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & 
-- ((\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # 
-- ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & !\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001000111111110010010111111111001110001111111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\,
	datac => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\,
	dataf => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\,
	combout => \I_7Seg_LED_handler|I_Display_4|Mux2~0_combout\);

-- Location: LABCELL_X83_Y9_N18
\I_7Seg_LED_handler|I_Display_4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_4|Mux1~0_combout\ = ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & 
-- (((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & !\SW[9]~input_o\)))) # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & (((!\SW[9]~input_o\)) # (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\))) ) ) ) # ( 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ $ (((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & \SW[9]~input_o\)))) 
-- # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\) ) ) ) # ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & 
-- ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\) # ((!\SW[9]~input_o\)))) # (\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ & (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\ & ((!\SW[9]~input_o\) # 
-- (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\)))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\ & 
-- (((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\) # (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\)))) # (\SW[9]~input_o\ & ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & 
-- (!\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\)) # (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & ((\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001110001101111100111010000111110011011110111111001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\,
	datac => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\,
	dataf => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\,
	combout => \I_7Seg_LED_handler|I_Display_4|Mux1~0_combout\);

-- Location: LABCELL_X83_Y9_N48
\I_7Seg_LED_handler|I_Display_4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_4|Mux0~0_combout\ = ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # ((\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\)) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( \I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # 
-- (!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\ $ (((\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & !\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\)))) ) ) ) # ( \I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( 
-- !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & ((!\I_7Seg_LED_handler|slv_hex_input_4_int[0]~6_combout\))) # (\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ 
-- & (\I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\))) ) ) ) # ( !\I_7Seg_LED_handler|slv_hex_input_4_int[2]~1_combout\ & ( !\I_7Seg_LED_handler|slv_hex_input_4_int[1]~2_combout\ & ( (!\SW[9]~input_o\) # 
-- ((!\I_7Seg_LED_handler|slv_hex_input_4_int[3]~4_combout\ & \I_7Seg_LED_handler|slv_hex_input_4_int[4]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100100010111111111011000111111111101101001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[3]~4_combout\,
	datab => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[4]~7_combout\,
	datac => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[0]~6_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[2]~1_combout\,
	dataf => \I_7Seg_LED_handler|ALT_INV_slv_hex_input_4_int[1]~2_combout\,
	combout => \I_7Seg_LED_handler|I_Display_4|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y15_N48
\I_7Seg_LED_handler|I_Display_5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_5|Mux6~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\I_car_wash_FSM|car_wash_state~6_q\ & (\SW[9]~input_o\ & !\I_car_wash_FSM|car_wash_state~7_q\)) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( (\SW[9]~input_o\ 
-- & (!\I_car_wash_FSM|car_wash_state~6_q\ $ (((!\I_car_wash_FSM|car_wash_state~4_q\ & !\I_car_wash_FSM|car_wash_state~7_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001010000001100000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_5|Mux6~0_combout\);

-- Location: LABCELL_X79_Y5_N36
\I_7Seg_LED_handler|I_Display_5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_5|Mux5~0_combout\ = ( \SW[9]~input_o\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (\I_car_wash_FSM|car_wash_state~4_q\ & (!\I_car_wash_FSM|car_wash_state~7_q\ $ (\I_car_wash_FSM|car_wash_state~5_q\))) ) ) ) # ( 
-- \SW[9]~input_o\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (\I_7Seg_LED_handler|LessThan0~0_combout\ & !\I_car_wash_FSM|car_wash_state~5_q\))) # 
-- (\I_car_wash_FSM|car_wash_state~7_q\ & (((\I_car_wash_FSM|car_wash_state~5_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100101010100000000000000000010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_7Seg_LED_handler|ALT_INV_LessThan0~0_combout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_5|Mux5~0_combout\);

-- Location: LABCELL_X79_Y5_N48
\I_7Seg_LED_handler|I_Display_5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_5|Mux4~0_combout\ = ( \SW[9]~input_o\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~5_q\))) ) ) ) # ( 
-- \SW[9]~input_o\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\) # ((\I_car_wash_FSM|car_wash_state~5_q\) # (\I_7Seg_LED_handler|LessThan0~0_combout\)))) # 
-- (\I_car_wash_FSM|car_wash_state~7_q\ & (((!\I_car_wash_FSM|car_wash_state~5_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111111010101000000000000000001000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_7Seg_LED_handler|ALT_INV_LessThan0~0_combout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_5|Mux4~0_combout\);

-- Location: LABCELL_X79_Y5_N18
\I_7Seg_LED_handler|I_Display_5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_5|Mux3~0_combout\ = ( \SW[9]~input_o\ & ( \I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~4_q\ & (\I_car_wash_FSM|car_wash_state~7_q\)) # (\I_car_wash_FSM|car_wash_state~4_q\ & 
-- ((!\I_car_wash_FSM|car_wash_state~5_q\))) ) ) ) # ( \SW[9]~input_o\ & ( !\I_car_wash_FSM|car_wash_state~6_q\ & ( (!\I_car_wash_FSM|car_wash_state~7_q\ & (\I_car_wash_FSM|car_wash_state~4_q\ & (\I_7Seg_LED_handler|LessThan0~0_combout\ & 
-- !\I_car_wash_FSM|car_wash_state~5_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000111011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_7Seg_LED_handler|ALT_INV_LessThan0~0_combout\,
	datad => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	combout => \I_7Seg_LED_handler|I_Display_5|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y15_N54
\I_7Seg_LED_handler|I_Display_5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_5|Mux2~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~6_q\ & !\I_car_wash_FSM|car_wash_state~7_q\)) ) ) # ( !\I_car_wash_FSM|car_wash_state~5_q\ & ( 
-- ((!\SW[9]~input_o\) # (\I_car_wash_FSM|car_wash_state~7_q\)) # (\I_car_wash_FSM|car_wash_state~6_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_5|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y15_N51
\I_7Seg_LED_handler|I_Display_5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_5|Mux1~0_combout\ = ( \I_car_wash_FSM|car_wash_state~5_q\ & ( (!\SW[9]~input_o\) # ((\I_car_wash_FSM|car_wash_state~6_q\ & ((!\I_car_wash_FSM|car_wash_state~4_q\) # (!\I_car_wash_FSM|car_wash_state~7_q\)))) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~5_q\ & ( (!\SW[9]~input_o\) # ((!\I_car_wash_FSM|car_wash_state~7_q\ & (!\I_car_wash_FSM|car_wash_state~6_q\ $ (\I_car_wash_FSM|car_wash_state~4_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110010000111111111001000011111111010101001111111101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	combout => \I_7Seg_LED_handler|I_Display_5|Mux1~0_combout\);

-- Location: LABCELL_X73_Y7_N18
\I_7Seg_LED_handler|I_Display_5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_7Seg_LED_handler|I_Display_5|Mux0~0_combout\ = ( \I_car_wash_FSM|car_wash_state~7_q\ & ( \I_7Seg_LED_handler|LessThan0~0_combout\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\) # (\I_car_wash_FSM|car_wash_state~5_q\))) ) ) ) # ( 
-- !\I_car_wash_FSM|car_wash_state~7_q\ & ( \I_7Seg_LED_handler|LessThan0~0_combout\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~5_q\ & ((\I_car_wash_FSM|car_wash_state~4_q\) # (\I_car_wash_FSM|car_wash_state~6_q\))) # 
-- (\I_car_wash_FSM|car_wash_state~5_q\ & (!\I_car_wash_FSM|car_wash_state~6_q\)))) ) ) ) # ( \I_car_wash_FSM|car_wash_state~7_q\ & ( !\I_7Seg_LED_handler|LessThan0~0_combout\ & ( (\SW[9]~input_o\ & ((!\I_car_wash_FSM|car_wash_state~6_q\) # 
-- (\I_car_wash_FSM|car_wash_state~5_q\))) ) ) ) # ( !\I_car_wash_FSM|car_wash_state~7_q\ & ( !\I_7Seg_LED_handler|LessThan0~0_combout\ & ( (\SW[9]~input_o\ & (!\I_car_wash_FSM|car_wash_state~5_q\ $ (!\I_car_wash_FSM|car_wash_state~6_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000001101110100000000011011100000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_car_wash_FSM|ALT_INV_car_wash_state~5_q\,
	datab => \I_car_wash_FSM|ALT_INV_car_wash_state~6_q\,
	datac => \I_car_wash_FSM|ALT_INV_car_wash_state~4_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \I_car_wash_FSM|ALT_INV_car_wash_state~7_q\,
	dataf => \I_7Seg_LED_handler|ALT_INV_LessThan0~0_combout\,
	combout => \I_7Seg_LED_handler|I_Display_5|Mux0~0_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X42_Y9_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


