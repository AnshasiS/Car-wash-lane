library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity e_axis is
	generic(Clk_mHz: natural:= 50000; e_modulo_counter_ms_n: natural := 16; wrk: integer := 6000);
	port (	sl_clock:				in		std_logic;
			sl_cmd_to_bas_pos:		in		std_logic;
			sl_cmd_to_wrk_pos:		in		std_logic;
			i_speed_s_pro_m:		in		integer range 0 to 99; 	-- min. speed is 99 s/m
			i_pos:					out		integer range 0 to wrk;
			sl_axis_moving:			out		std_logic;
			sl_in_bas_pos:			out		std_logic;
			sl_in_wrk_pos:			out		std_logic
	);
end entity e_axis;

architecture a_axis of e_axis is

---- Declaration Part ----------------------------------------------

-- internal signal declaration
	signal i_pos_int:				integer range 0 to wrk;
	signal sl_axis_moving_int:		std_logic;
	signal sl_in_bas_pos_int:		std_logic := '0';
	signal sl_in_wrk_pos_int:		std_logic := '0';
	
	signal sl_rollover_value_1ms_int:	std_logic_vector(e_modulo_counter_ms_n-1 downto 0);
	signal sl_rollover_value_1mm_int:	std_logic_vector(6 downto 0);	-- min. speed is 99 ms/mm
	
	signal sl_rollover_slow_enable_1mm_int:	std_logic;
	signal sl_rollover_slow_enable_1ms_int:	std_logic;
	signal sl_slow_enable_1mm_int:			std_logic;
	
	signal sl_rollover_1mm_int:				std_logic;
	
	
	-- declare modulo counter component
	component e_modulo_counter
	generic( n: natural := 31);
	port (	sl_clock, sl_reset_n:	in		std_logic;
			sl_enable:				in		std_logic;
			slv_rollover_value:		in		std_logic_vector(n-1 downto 0);
			slv_Q:					out		std_logic_vector(n-1 downto 0);
			sl_rollover:			out		std_logic
	);
	end component;
	
begin

---- Assignment Part ------------------------------------------------

-- Concurrent Assignments:
	i_pos 			<= i_pos_int;
	sl_axis_moving 	<= sl_axis_moving_int;
	sl_in_bas_pos	<=	sl_in_bas_pos_int;
	sl_in_wrk_pos 	<=	sl_in_wrk_pos_int;
	
	sl_rollover_value_1ms_int	<=	std_logic_vector(to_unsigned(((Clk_mHz)), e_modulo_counter_ms_n)); 	--Clk_mHz because distance is 1mm and not 1m
	sl_rollover_value_1mm_int	<=	std_logic_vector(to_unsigned(((i_speed_s_pro_m)), 7));
	
-- Conditional Signal Assignments:
	
	sl_axis_moving_int <= '1' when ((i_speed_s_pro_m /= 0) and (((sl_cmd_to_bas_pos = '1') and (sl_in_bas_pos_int = '0')) or ((sl_cmd_to_wrk_pos = '1')  and (sl_in_wrk_pos_int = '0')))) else '0';
	
	-- signal that 1ms will be passed on the next cycle (while axis movement)
	sl_slow_enable_1mm_int <= '1' when ((sl_rollover_slow_enable_1ms_int = '1') and (sl_axis_moving_int = '1')) else '0';
	
	-- signal that axis will pass 1mm on the next cycle
	sl_rollover_1mm_int <= '1' when ((sl_rollover_slow_enable_1ms_int = '1') and (sl_rollover_slow_enable_1mm_int = '1')) else '0';
	
-- Sequential process with async. low-active reset:
	p_move_axis: process(sl_clock)
	begin
		if(rising_edge(sl_clock)) then
			if(sl_rollover_1mm_int = '1') then
				if(sl_cmd_to_bas_pos = '1') then
					i_pos_int <= i_pos_int-1;
				elsif(sl_cmd_to_wrk_pos = '1') then
					i_pos_int <= i_pos_int+1;
				end if;
			end if;
			if (((i_pos_int = 0) and ((sl_rollover_1mm_int = '0') or (sl_cmd_to_wrk_pos = '0'))) or ((i_pos_int = 1) and (sl_rollover_1mm_int = '1') and (sl_cmd_to_bas_pos = '1'))) then
				sl_in_bas_pos_int <= '1';
			else
				sl_in_bas_pos_int <= '0';
			end if;	
			if (((i_pos_int = wrk) and ((sl_rollover_1mm_int = '0') or (sl_cmd_to_bas_pos = '0'))) or ((i_pos_int = wrk-1) and (sl_rollover_1mm_int = '1') and (sl_cmd_to_wrk_pos = '1'))) then
				sl_in_wrk_pos_int <= '1';
			else
				sl_in_wrk_pos_int <= '0';
			end if;	
		end if;
	end process p_move_axis;
	
	
	-- Component Instantiations:
	I_my_slow_enable_1ms: e_modulo_counter	
		generic map (	n => e_modulo_counter_ms_n)
		port map (	sl_clock			=>	sl_clock,
					sl_reset_n			=>	sl_axis_moving_int,
					sl_enable 			=>	sl_axis_moving_int,
					slv_rollover_value 	=>	sl_rollover_value_1ms_int,
					slv_Q				=>	open,
					sl_rollover			=>	sl_rollover_slow_enable_1ms_int
				);
				
	I_my_slow_enable_1mm: e_modulo_counter	
		generic map (	n => 7)
		port map (	sl_clock			=>	sl_clock,
					sl_reset_n			=>	sl_axis_moving_int,
					sl_enable 			=>	sl_slow_enable_1mm_int,
					slv_rollover_value 	=>	sl_rollover_value_1mm_int,
					slv_Q				=>	open,
					sl_rollover			=>	sl_rollover_slow_enable_1mm_int
				);
	
end architecture a_axis;