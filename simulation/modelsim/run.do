vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_modulo_counter.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_RAM.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_price_calculation.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_option_selection.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_convert_to_7seg.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_display_and_LED_handler.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_axis.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_car_wash_FSM.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/e_my_car_wash_project.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/_PStA_CarWash/simulation/modelsim/e_my_car_wash_project.vht
vsim work.e_my_car_wash_project_vhd_tst
do wave.do
run -all