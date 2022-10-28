library ieee;
use ieee.std_logic_1164.all;

entity e_option_selection is
   port ( 	sl_store_params 			:  in     	std_logic;
			sl_selection_enable			:  in		std_logic;
			sl_rim_cleaning 			:  in     	std_logic;
			sl_undercarriage_wash 		:  in     	std_logic;
			sl_waxing 					:  in     	std_logic;
			sl_polishing 				:  in     	std_logic;
			sl_shine_wash				:  in     	std_logic;
			sl_storage_execute	 		:  out    	std_logic;
			slv_params 					:  out    	std_logic_vector(4 downto 0)
        );

end entity e_option_selection;

architecture a_option_selection of e_option_selection is

---- Declaration Part -----------------------------------------------

-- internal signal declaration
	signal slv_selected_params_int 		:		std_logic_vector(4 downto 0) := "00000";
	signal sl_storage_int 				:		std_logic := '0';
	signal sl_trigger_storage_int 		:		std_logic;

begin

---- Assignment Part ------------------------------------------------

--Concurrent Assignments
	sl_trigger_storage_int <= ((not sl_store_params) and sl_selection_enable);

	slv_params <= slv_selected_params_int;
	sl_storage_execute <= sl_storage_int;
	
	slv_selected_params_int(0) <= sl_rim_cleaning;
	slv_selected_params_int(1) <= sl_undercarriage_wash;
	slv_selected_params_int(2) <= sl_waxing;
	slv_selected_params_int(3) <= sl_polishing;
	slv_selected_params_int(4) <= sl_shine_wash;

-- process to set output flag (sl_storage_int -> sl_storage_execute) which 
-- gives a trigger to store current options
	p_store_options: process(sl_trigger_storage_int)
      begin
         if(sl_trigger_storage_int = '1') then
            sl_storage_int <= '1';
         else
			sl_storage_int <= '0';
         end if;
      end process p_store_options;

end architecture a_option_selection;

