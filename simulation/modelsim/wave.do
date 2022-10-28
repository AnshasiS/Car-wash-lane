onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/SW
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/KEY
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/LEDR
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_selection_enable_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_sequence_done_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_washing_jets_activate_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_drying_jets_activate_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_rims_activate_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_undercarriage_activate_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_wax_activate_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_polish_activate_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_shine_activate_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/slv_current_seq_state_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_car_wash_FSM/sl_rollover_value_slow_enable_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_car_wash_FSM/I_my_slow_enable/slv_Q
add wave -noupdate -divider Axis
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/i_pos_x_axis_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_axis_moving_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_in_bas_pos_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_in_wrk_pos_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_x_axis/i_speed_s_pro_m
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_x_axis/sl_slow_enable_1mm_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_x_axis/sl_rollover_value_1mm_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_x_axis/I_my_slow_enable_1mm/slv_Q
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_x_axis/sl_rollover_slow_enable_1mm_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_x_axis/sl_rollover_1mm_int
add wave -noupdate -divider <NULL>
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_x_axis/sl_rollover_value_1ms_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_x_axis/I_my_slow_enable_1ms/slv_Q
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_x_axis/sl_rollover_slow_enable_1ms_int
add wave -noupdate -divider SelectionOptions
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/CLOCK_50
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/slv_program_selection_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/slv_program_selection_stored_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_RAM/slv_address_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_RAM/i_address_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_RAM/i_address_reg_int
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/I_RAM/sl_wr
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/sl_storage_execute_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/slv_total_price_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_price_calc/u_total_price_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_price_calc/u_rims_price_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_price_calc/u_undercarriage_price_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_price_calc/u_wax_price_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_price_calc/u_polish_price_int
add wave -noupdate -radix unsigned /e_my_car_wash_project_vhd_tst/i1/I_price_calc/u_shine_price_int
add wave -noupdate -divider 7Seg
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/HEX5
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/HEX4
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/HEX3
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/HEX2
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/HEX1
add wave -noupdate /e_my_car_wash_project_vhd_tst/i1/HEX0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {98953261 ps} 0} {{Cursor 2} {5252677 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 195
configure wave -valuecolwidth 92
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {13852734 ps}
