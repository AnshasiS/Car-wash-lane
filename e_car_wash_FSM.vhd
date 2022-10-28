library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity e_car_wash_FSM is
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
end entity e_car_wash_FSM;


architecture a_car_wash_FSM of e_car_wash_FSM is

---- Declaration Part -----------------------------------------------
	type t_car_wash_states is (	S_IDLE, S_PRICE, S_WASH_START, S_WASH_UNDERCARR_START, S_WASH_AXIS_BACK, S_RIM_CLEANING, S_SHINE_START, S_SHINE_AXIS_BACK,
								S_WAXING_START, S_WAXING_AXIS_BACK, S_DRY_START, S_DRY_AXIS_BACK, S_POLISH_START, S_POLISH_AXIS_BACK, S_HOME, S_DONE);
	-- Synthesis Attribute Declarations
	attribute syn_encoding : string;
	attribute syn_encoding of t_car_wash_states : type is "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111";							
	
	-- internal signal declaration
	signal car_wash_state, car_wash_nextstate : t_car_wash_states := S_IDLE;
   
	signal	i_axis_speed_s_pro_m_int:			integer range 0 to 511; -- max. speed is 511 mm/s
   
	signal sl_program_selection_rims_int:			std_logic;
	signal sl_program_selection_undercarriage_int:	std_logic;
	signal sl_program_selection_wax_int:			std_logic;
	signal sl_program_selection_polish_int:			std_logic;
	signal sl_program_selection_shine_int:			std_logic;
	
	signal sl_timer_enable_int: 				std_logic;
	signal sl_rollover_slow_enable_int: 		std_logic;
	signal sl_rollover_value_slow_enable_int: 	std_logic_vector(e_modulo_counter_n-1 downto 0);
	
	
	-- declare modulo counter component
	component e_modulo_counter
	generic( n: natural := 29);
	port (	sl_clock, sl_reset_n:	in		std_logic;
			sl_enable:				in		std_logic;
			slv_rollover_value:		in		std_logic_vector(n-1 downto 0);
			slv_Q:					out		std_logic_vector(n-1 downto 0);
			sl_rollover:			out		std_logic
	);
	end component;
   
begin

---- Assignment Part ------------------------------------------------

--Concurrent Assignments
	sl_program_selection_shine_int			<= slv_program_selection(4);
	sl_program_selection_polish_int			<= slv_program_selection(3);
	sl_program_selection_wax_int			<= slv_program_selection(2);
	sl_program_selection_undercarriage_int	<= slv_program_selection(1);
	sl_program_selection_rims_int			<= slv_program_selection(0);
	
	sl_rollover_value_slow_enable_int	<=	std_logic_vector(to_unsigned(ClkHz*10, e_modulo_counter_n));	
	
	slv_current_seq_state				<=	std_logic_vector(to_unsigned(t_car_wash_states'POS(car_wash_state),4));
	
	
	p_car_wash_FSM_determine_nextstate: process (	car_wash_state, sl_ack_button_n, sl_pay_button_n, sl_back_button_n, sl_axis_in_bas_pos, sl_axis_in_wrk_pos, sl_rollover_slow_enable_int, sl_home_request,
													sl_program_selection_shine_int, sl_program_selection_polish_int, sl_program_selection_wax_int , sl_program_selection_undercarriage_int , sl_program_selection_rims_int )
	begin				
		case(car_wash_state) is
			when S_IDLE => 
				if ((sl_ack_button_n='0') and (sl_axis_in_bas_pos = '1')) then
					car_wash_nextstate <= S_PRICE;
				elsif((sl_home_request='1') and (sl_axis_in_bas_pos = '0')) then
					car_wash_nextstate <= S_HOME;
				else
					car_wash_nextstate <= S_IDLE;
				end if;
			when S_PRICE =>
				if (sl_pay_button_n='0') then
					if (sl_program_selection_undercarriage_int = '1') then
						car_wash_nextstate <= S_WASH_UNDERCARR_START;
					else
						car_wash_nextstate <= S_WASH_START;
					end if;
				elsif(sl_back_button_n='0') then
					car_wash_nextstate <= S_IDLE;
				else
					car_wash_nextstate <= S_PRICE;
				end if;
			when S_WASH_START =>
				if (sl_axis_in_wrk_pos = '1') then
					car_wash_nextstate <= S_WASH_AXIS_BACK;
				else
					car_wash_nextstate <= S_WASH_START;
				end if;
			when S_WASH_UNDERCARR_START =>
				if (sl_axis_in_wrk_pos = '1') then
					car_wash_nextstate <= S_WASH_AXIS_BACK;
				else
					car_wash_nextstate <= S_WASH_UNDERCARR_START;
				end if;
			when S_WASH_AXIS_BACK =>
				if (sl_axis_in_bas_pos = '1') then
					if 	  (sl_program_selection_rims_int = '1') then
						car_wash_nextstate <= S_RIM_CLEANING;
					elsif (sl_program_selection_shine_int = '1') then
						car_wash_nextstate <= S_SHINE_START;
					elsif (sl_program_selection_wax_int = '1') then
						car_wash_nextstate <= S_WAXING_START;		
					else
						car_wash_nextstate <= S_DRY_START;						
					end if;
				else
					car_wash_nextstate <= S_WASH_AXIS_BACK;
				end if;
			when S_RIM_CLEANING =>
				if (sl_rollover_slow_enable_int = '1') then
					if    (sl_program_selection_shine_int = '1') then
						car_wash_nextstate <= S_SHINE_START;
					elsif (sl_program_selection_wax_int = '1') then
						car_wash_nextstate <= S_WAXING_START;		
					else
						car_wash_nextstate <= S_DRY_START;						
					end if;
				else
					car_wash_nextstate <= S_RIM_CLEANING;
				end if;		
			when S_SHINE_START =>
				if (sl_axis_in_wrk_pos = '1') then
					car_wash_nextstate <= S_SHINE_AXIS_BACK;
				else
					car_wash_nextstate <= S_SHINE_START;
				end if;
			when S_SHINE_AXIS_BACK =>
				if (sl_axis_in_bas_pos = '1') then
					if (sl_program_selection_wax_int = '1') then
						car_wash_nextstate <= S_WAXING_START;		
					else
						car_wash_nextstate <= S_DRY_START;						
					end if;
				else
					car_wash_nextstate <= S_SHINE_AXIS_BACK;
				end if;	
			when S_WAXING_START =>
				if (sl_axis_in_wrk_pos = '1') then
					car_wash_nextstate <= S_WAXING_AXIS_BACK;
				else
					car_wash_nextstate <= S_WAXING_START;
				end if;
			when S_WAXING_AXIS_BACK =>
				if (sl_axis_in_bas_pos = '1') then
					car_wash_nextstate <= S_DRY_START;						
				else
					car_wash_nextstate <= S_WAXING_AXIS_BACK;
				end if;
			when S_DRY_START =>
				if (sl_axis_in_wrk_pos = '1') then
					car_wash_nextstate <= S_DRY_AXIS_BACK;
				else
					car_wash_nextstate <= S_DRY_START;
				end if;
			when S_DRY_AXIS_BACK =>
				if (sl_axis_in_bas_pos = '1') then
					if (sl_program_selection_polish_int = '1') then
						car_wash_nextstate <= S_POLISH_START;		
					else
						car_wash_nextstate <= S_DONE;						
					end if;					
				else
					car_wash_nextstate <= S_DRY_AXIS_BACK;
				end if;
			when S_POLISH_START =>
				if (sl_axis_in_wrk_pos = '1') then
					car_wash_nextstate <= S_POLISH_AXIS_BACK;
				else
					car_wash_nextstate <= S_POLISH_START;
				end if;
			when S_POLISH_AXIS_BACK =>
				if (sl_axis_in_bas_pos = '1') then
					car_wash_nextstate <= S_DONE;	
				else
					car_wash_nextstate <= S_POLISH_AXIS_BACK;
				end if;
			when S_HOME =>
				if (sl_axis_in_bas_pos = '1') then
					car_wash_nextstate <= S_DONE;	
				else
					car_wash_nextstate <= S_HOME;
				end if;
			when S_DONE =>
				if (sl_rollover_slow_enable_int = '1') then
					car_wash_nextstate <= S_IDLE;
				else
					car_wash_nextstate <= S_DONE;
				end if;
			when others =>
				car_wash_nextstate <= S_IDLE;
		end case;
	end process p_car_wash_FSM_determine_nextstate;


	p_car_wash_FSM_refresh_nextstate: process(sl_clock, sl_reset_n, sl_emergency_stop_n)
	begin
		if (sl_reset_n = '0' or sl_emergency_stop_n = '0') then         --asynchronous reset and emergency stop
            car_wash_state <= S_IDLE;
		elsif (rising_edge(sl_clock)) then
			car_wash_state <= car_wash_nextstate;
		end if;
	end process p_car_wash_FSM_refresh_nextstate;


	p_car_wash_FSM_output: process (car_wash_state)
	begin
		case(car_wash_state) is
			when S_IDLE =>
				i_axis_speed_s_pro_m		<=	0;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'1';
				sl_sequence_busy			<=	'0';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_PRICE =>	
				i_axis_speed_s_pro_m		<=	0;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_WASH_START =>	
				i_axis_speed_s_pro_m		<=	15;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'1';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'1';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate 	<= 	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_WASH_UNDERCARR_START =>	
				i_axis_speed_s_pro_m		<=	15;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'1';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'1';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate 	<= 	'1';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_WASH_AXIS_BACK =>
				i_axis_speed_s_pro_m		<=	5;
				sl_axis_to_bas_pos_activate	<=	'1';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_RIM_CLEANING =>	
				i_axis_speed_s_pro_m		<=	0;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'1';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'1';
			when S_SHINE_START =>	
				i_axis_speed_s_pro_m		<=	10;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'1';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'1';
				sl_timer_enable_int			<=	'0';
			when S_SHINE_AXIS_BACK =>	
				i_axis_speed_s_pro_m		<=	10;
				sl_axis_to_bas_pos_activate	<=	'1';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'1';
				sl_timer_enable_int			<=	'0';
			when S_WAXING_START =>	
				i_axis_speed_s_pro_m		<=	15;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'1';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'1';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_WAXING_AXIS_BACK =>	
				i_axis_speed_s_pro_m		<=	5;
				sl_axis_to_bas_pos_activate	<=	'1';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_DRY_START =>	
				i_axis_speed_s_pro_m		<=	10;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'1';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'1';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_DRY_AXIS_BACK =>	
				i_axis_speed_s_pro_m		<=	10;
				sl_axis_to_bas_pos_activate	<=	'1';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'1';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_POLISH_START =>	
				i_axis_speed_s_pro_m		<=	15;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'1';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'1';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_POLISH_AXIS_BACK =>	
				i_axis_speed_s_pro_m		<=	5;
				sl_axis_to_bas_pos_activate	<=	'1';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_HOME =>	
				i_axis_speed_s_pro_m		<=	15;
				sl_axis_to_bas_pos_activate	<=	'1';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'1';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
			when S_DONE =>	
				i_axis_speed_s_pro_m		<=	0;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'0';
				sl_sequence_done			<=	'1';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'1';
			when others =>	
				i_axis_speed_s_pro_m		<=	0;
				sl_axis_to_bas_pos_activate	<=	'0';
				sl_axis_to_wrk_pos_activate	<=	'0';
				sl_selection_enable			<=	'0';
				sl_sequence_busy			<=	'0';
				sl_sequence_done			<=	'0';
				sl_washing_jets_activate	<=	'0';
				sl_drying_jets_activate		<=	'0';
				sl_rims_activate			<=	'0';
				sl_undercarriage_activate	<=	'0';
				sl_wax_activate				<=	'0';
				sl_polish_activate			<=	'0';
				sl_shine_activate			<=	'0';
				sl_timer_enable_int			<=	'0';
		end case;
	end process p_car_wash_FSM_output;
	
	I_my_slow_enable: e_modulo_counter	
	generic map (	n => e_modulo_counter_n)
	port map (	sl_clock			=>	sl_clock,
				sl_reset_n			=>	sl_reset_n,
				sl_enable 			=>	sl_timer_enable_int,
				slv_rollover_value 	=>	sl_rollover_value_slow_enable_int,
				slv_Q				=>	open,
				sl_rollover			=>	sl_rollover_slow_enable_int
			);   
	
end architecture a_car_wash_FSM;
   