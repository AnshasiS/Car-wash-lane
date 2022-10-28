library ieee;
use ieee.std_logic_1164.all;

entity e_my_car_wash_project is
	generic (	ClkHz: 								natural := 50000000;
				Clk_mHz: 							natural := 50000;
				e_axis_e_modulo_counter_ms_n: 		natural := 16;
				e_axis_wrk: 						integer := 6000;
				e_car_wash_FSM_e_modulo_counter_n: 	natural := 29 );
	port(	CLOCK_50:	in		std_logic;
			SW:			in		std_logic_vector(9 downto 0);
			KEY:		in		std_logic_vector(3 downto 0);
			LEDR:		out		std_logic_vector(9 downto 0);
			HEX0:		out		std_logic_vector(0 to 6);
			HEX1:		out		std_logic_vector(0 to 6);
			HEX2:		out		std_logic_vector(0 to 6);
			HEX3:		out		std_logic_vector(0 to 6);
			HEX4:		out		std_logic_vector(0 to 6);
			HEX5:		out		std_logic_vector(0 to 6)
	);
end entity e_my_car_wash_project;

architecture a_my_car_wash_project of e_my_car_wash_project is

---- Declaration Part -----------------------------------------------

-- Component Declarations:
    -- declare component for finite state machine
	component e_car_wash_FSM
		generic( ClkHz: natural := 50000000; e_modulo_counter_n: natural := 29);
		port(	sl_clock, sl_reset_n:			in	std_logic;
				sl_ack_button_n:				in 	std_logic;
				sl_pay_button_n:				in 	std_logic;
				sl_back_button_n:				in 	std_logic;
				sl_emergency_stop_n:			in 	std_logic;
				sl_home_request:				in 	std_logic;
				slv_program_selection:			in	std_logic_vector (4 downto 0);
				
				sl_axis_in_bas_pos:				in	std_logic;
				sl_axis_in_wrk_pos:				in	std_logic;
				
				i_axis_speed_s_pro_m:			out	integer range 0 to 99; -- min. speed is 99 s/m
				sl_axis_to_bas_pos_activate: 	out	std_logic;
				sl_axis_to_wrk_pos_activate: 	out	std_logic;
				
				sl_selection_enable:			out	std_logic;
				sl_sequence_busy:				out	std_logic;
				sl_sequence_done:				out	std_logic;
				
				sl_washing_jets_activate: 		out	std_logic;
				sl_drying_jets_activate: 		out	std_logic;
				sl_rims_activate: 				out	std_logic;
				sl_undercarriage_activate: 		out	std_logic;
				sl_wax_activate: 				out	std_logic;
				sl_polish_activate: 			out	std_logic;
				sl_shine_activate: 				out	std_logic;
			
				slv_current_seq_state:			out std_logic_vector(3 downto 0)
		);
	end component e_car_wash_FSM;
	
	-- declare component for simulated moving axis which contains fans, washer nozzles, etc.	
	component e_axis
		generic( Clk_mHz: natural:= 50000; e_modulo_counter_ms_n: natural := 16; wrk: integer := 6000);
		port (	sl_clock:				in		std_logic;
				sl_cmd_to_bas_pos:		in		std_logic;
				sl_cmd_to_wrk_pos:		in		std_logic;
				i_speed_s_pro_m:		in		integer range 0 to 99; 	-- min. speed is 99 s/m
				i_pos:					out		integer range 0 to wrk;
				sl_axis_moving:			out		std_logic;
				sl_in_bas_pos:			out		std_logic;
				sl_in_wrk_pos:			out		std_logic
		);
	end component e_axis;

	-- declare component that handles option selection from end user (-> switches)
	component e_option_selection
		port ( 	sl_store_params :        	in     std_logic;
				sl_selection_enable:      	in     std_logic;
				sl_rim_cleaning :        	in     std_logic;
				sl_undercarriage_wash :  	in     std_logic;
				sl_waxing :              	in     std_logic;
				sl_polishing :           	in     std_logic;
				sl_shine_wash:           	in     std_logic;
				sl_storage_execute :    	out    std_logic;
				slv_params :             	out    std_logic_vector(4 downto 0)
		);
    end component e_option_selection;
	
	-- declare component that calculates totales price out of selected options from user and basis program
	component e_price_calculation
		port ( 	slv_program_selection	: in 	std_logic_vector(4 downto 0); 	-- input switch for selection 
				slv_price_result_out 	: out 	std_logic_vector(4 downto 0)	-- output calculated price to be displayed
		); 
	end component e_price_calculation;
	
	-- declare component that handles 7-seg displays and LEDs depending on current sequencer state, activated e-stop, etc.
	component e_display_and_LED_handler
		port ( 	slv_current_seq_state		:	in		std_logic_vector(3 downto 0);	-- current SM state
				slv_active_options 			:	in		std_logic_vector(4 downto 0);	-- selected options from user
				slv_saved_options 			:	in		std_logic_vector(4 downto 0);	-- saved options after acknowledge
				slv_price					:	in		std_logic_vector(4 downto 0);	-- calculated price
				sl_emergency_stop_n			:	in		std_logic;	-- emergency stop
				sl_axis_moving				:	in		std_logic;
				sl_washing_jets_activate	: 	in		std_logic;
				sl_drying_jets_activate		: 	in		std_logic;
				sl_rims_activate			: 	in		std_logic;
				sl_undercarriage_activate	: 	in		std_logic;
				sl_wax_activate				: 	in		std_logic;
				sl_polish_activate			: 	in		std_logic;
				sl_shine_activate			: 	in		std_logic;
				slv_ledr					:	out 	std_logic_vector(9 downto 0);
				slv_display_0 				: 	out 	std_logic_vector(0 to 6);
				slv_display_1 				: 	out 	std_logic_vector(0 to 6);
				slv_display_2 				: 	out 	std_logic_vector(0 to 6);
				slv_display_3 				: 	out 	std_logic_vector(0 to 6);
				slv_display_4 				: 	out 	std_logic_vector(0 to 6);
				slv_display_5 				: 	out		std_logic_vector(0 to 6)
			);
	end component e_display_and_LED_handler;
	
	-- declare component for storing selected options from user
	-- -> storage is needed because user is not allowed to switch options while system is already running
	component e_RAM is
		generic (addr_width : integer := 1; data_width : integer := 5);
		port (	sl_clk 			: in 	std_logic;
				sl_wr 			: in 	std_logic;
				slv_address_int : in 	std_logic_vector(addr_width-1 downto 0);
				slv_datain_int 	: in 	std_logic_vector(data_width-1 downto 0);
				slv_dataout_int : out 	std_logic_vector(data_width-1 downto 0)
			);
	end component e_RAM;
	
	-----------------KEYS-AND-SWITCHES-------------------------
	
	signal sl_reset_n_int:				std_logic;
	signal sl_ack_button_n_int:			std_logic;
	signal sl_pay_button_n_int:			std_logic;
	signal sl_back_button_n_int:		std_logic;	
	
	signal sl_rim_cleaning_int:	    	std_logic;	
	signal sl_undercarriage_wash_int:	std_logic;
	signal sl_waxing_int:	        	std_logic;
	signal sl_polishing_int:      	    std_logic;
	signal sl_shine_wash_int:	    	std_logic;
	
	signal sl_emergency_stop_n_int:		std_logic;
	signal sl_home_request_int:			std_logic;
		
	-------------------------SEQUENCER-------------------------
	signal sl_selection_enable_int:			std_logic;		
	signal sl_sequence_busy_int:			std_logic;	
	signal sl_sequence_done_int:			std_logic;
	
	signal sl_washing_jets_activate_int: 	std_logic;	
	signal sl_drying_jets_activate_int: 	std_logic;
	signal sl_rims_activate_int: 			std_logic;
	signal sl_undercarriage_activate_int: 	std_logic;
	signal sl_wax_activate_int: 			std_logic;
	signal sl_polish_activate_int: 			std_logic;
	signal sl_shine_activate_int: 			std_logic;
			
	signal slv_current_seq_state_int:		std_logic_vector(3 downto 0);
	
	-------------------------AXIS-------------------------
	signal i_pos_x_axis_int: integer range 0 to 6000;
	signal sl_axis_moving_int: 	std_logic;
	
	signal sl_in_bas_pos_int:	std_logic;	
	signal sl_in_wrk_pos_int:	std_logic;	
	
	signal i_axis_speed_s_pro_m_int:		integer range 0 to 99; -- min. speed is 99 s/m
	signal sl_axis_to_bas_pos_activate_int: std_logic;
	signal sl_axis_to_wrk_pos_activate_int: std_logic;
	
	
	-------------------------SELECTION-------------------------
	signal slv_program_selection_int:			std_logic_vector(4 downto 0);	
	signal slv_program_selection_stored_int:	std_logic_vector(4 downto 0);	
	signal sl_storage_execute_int: 				std_logic;
	
	-------------------------PRICE-CALCULATION-------------------------
	signal slv_total_price_int:				std_logic_vector(4 downto 0);	
	
begin

---- Assignment Part ------------------------------------------------

-- Concurrent Assignments:

	sl_reset_n_int			<=	KEY(0);
	sl_ack_button_n_int		<=	KEY(1);
	sl_pay_button_n_int		<=	KEY(2);
	sl_back_button_n_int	<=	KEY(3);
	
	sl_rim_cleaning_int	       	<= 	SW(0);
	sl_undercarriage_wash_int  	<= 	SW(1);
	sl_waxing_int	         	<= 	SW(2);
	sl_polishing_int	      	<= 	SW(3);
	sl_shine_wash_int	      	<= 	SW(4);
	
	sl_home_request_int			<=	SW(8);
	sl_emergency_stop_n_int		<=	SW(9);
	
-- Component Instantiations:

	I_x_axis: e_axis 
	generic map (Clk_mHz => Clk_mHz, e_modulo_counter_ms_n=> e_axis_e_modulo_counter_ms_n, wrk => e_axis_wrk)
	port map (	sl_clock			=>	CLOCK_50,
				sl_cmd_to_bas_pos	=>	sl_axis_to_bas_pos_activate_int,
				sl_cmd_to_wrk_pos	=>	sl_axis_to_wrk_pos_activate_int,
				i_speed_s_pro_m		=>	i_axis_speed_s_pro_m_int,
				i_pos				=>	i_pos_x_axis_int,
				sl_axis_moving		=>	sl_axis_moving_int,
				sl_in_bas_pos		=> 	sl_in_bas_pos_int,
				sl_in_wrk_pos		=>	sl_in_wrk_pos_int
			);	
												
	I_car_wash_FSM: e_car_wash_FSM 
	generic map ( ClkHz => ClkHz, e_modulo_counter_n => e_car_wash_FSM_e_modulo_counter_n)
	port map (	sl_clock					=>	CLOCK_50,
				sl_reset_n					=>	sl_reset_n_int,
				sl_ack_button_n				=>	sl_ack_button_n_int,
				sl_pay_button_n				=>	sl_pay_button_n_int,	
				sl_back_button_n			=>	sl_back_button_n_int,
				sl_emergency_stop_n			=>	sl_emergency_stop_n_int,
				sl_home_request				=>	sl_home_request_int,
				slv_program_selection		=>	slv_program_selection_stored_int,
				
				sl_axis_in_bas_pos			=> 	sl_in_bas_pos_int,
				sl_axis_in_wrk_pos			=>	sl_in_wrk_pos_int,
				i_axis_speed_s_pro_m		=>	i_axis_speed_s_pro_m_int,		
				sl_axis_to_bas_pos_activate =>	sl_axis_to_bas_pos_activate_int,
				sl_axis_to_wrk_pos_activate =>  sl_axis_to_wrk_pos_activate_int,
				
				sl_selection_enable			=> 	sl_selection_enable_int,
				sl_sequence_busy			=>	sl_sequence_busy_int,
				sl_sequence_done			=> 	sl_sequence_done_int,
				
				sl_washing_jets_activate 	=> 	sl_washing_jets_activate_int,
				sl_drying_jets_activate 	=> 	sl_drying_jets_activate_int,
				sl_rims_activate 			=>	sl_rims_activate_int,		
				sl_undercarriage_activate 	=>	sl_undercarriage_activate_int,
				sl_wax_activate 			=>	sl_wax_activate_int,
				sl_polish_activate 			=>	sl_polish_activate_int,		
				sl_shine_activate 			=>	sl_shine_activate_int,
			
				slv_current_seq_state		=>	slv_current_seq_state_int
			); 	

	I_selection: e_option_selection
	port map( 	sl_store_params        		=> sl_ack_button_n_int,
				sl_selection_enable        	=> sl_selection_enable_int,
				sl_rim_cleaning            	=> sl_rim_cleaning_int,
				sl_undercarriage_wash    	=> sl_undercarriage_wash_int,
				sl_waxing               	=> sl_waxing_int,
				sl_polishing                => sl_polishing_int,
				sl_shine_wash             	=> sl_shine_wash_int,      
				sl_storage_execute        	=> sl_storage_execute_int,
				slv_params               	=> slv_program_selection_int
			);
			
	I_price_calc: e_price_calculation
	port map (	slv_program_selection	=>	slv_program_selection_stored_int,
				slv_price_result_out 	=>	slv_total_price_int
			); 
	
	I_7Seg_LED_handler: e_display_and_LED_handler
	port map ( 	slv_current_seq_state		=>	slv_current_seq_state_int,
				slv_active_options 			=>	slv_program_selection_int,
				slv_saved_options			=>	slv_program_selection_stored_int,
				slv_price					=>	slv_total_price_int,
				sl_emergency_stop_n			=>	sl_emergency_stop_n_int,
				sl_axis_moving				=>	sl_axis_moving_int,
				sl_washing_jets_activate	=> 	sl_washing_jets_activate_int,	
				sl_drying_jets_activate		=> 	sl_drying_jets_activate_int,	
				sl_rims_activate			=> 	sl_rims_activate_int,			
				sl_undercarriage_activate	=> 	sl_undercarriage_activate_int,	
				sl_wax_activate				=> 	sl_wax_activate_int,				
				sl_polish_activate			=> 	sl_polish_activate_int,			
				sl_shine_activate			=> 	sl_shine_activate_int,			
				slv_ledr					=>	LEDR,
				slv_display_0 				=>	HEX0,
				slv_display_1 				=>	HEX1,
				slv_display_2 				=> 	HEX2,
				slv_display_3 				=> 	HEX3,
				slv_display_4 				=> 	HEX4,
				slv_display_5 				=> 	HEX5
			);
	
	I_RAM: e_RAM
	generic map (addr_width => 4, data_width => 5)
	port map (	sl_clk 			=>	CLOCK_50,
				sl_wr 			=>	sl_storage_execute_int,
				slv_address_int =>	"0001",
				slv_datain_int 	=>	slv_program_selection_int,
				slv_dataout_int	=>	slv_program_selection_stored_int
			);
	
end architecture a_my_car_wash_project;