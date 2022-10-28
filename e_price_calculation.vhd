library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

 
entity e_price_calculation is

	port ( 	slv_program_selection	: in 	std_logic_vector(4 downto 0); 	-- input switch for selection 
			slv_price_result_out 	: out 	std_logic_vector(4 downto 0)); 	-- output - calculated price to be displayed, maximum possible price (if constants get changed in program) is 31 Euro
			 		
end entity e_price_calculation;

architecture a_price_calculation of e_price_calculation is

---- Declaration Part -----------------------------------------------

-- internal signal declaration
	signal 		u_total_price_int: 				unsigned( 4 downto 0 )	:= "00000";
	signal 		u_intermediate_price_1_int: 	unsigned( 4 downto 0 )	:= "00000";
	signal 		u_intermediate_price_2_int: 	unsigned( 4 downto 0 )	:= "00000";
	signal 		u_intermediate_price_3_int: 	unsigned( 4 downto 0 )	:= "00000";
	
	signal 		u_rims_price_int: 			unsigned( 4 downto 0 )	:= "00000";
	signal 		u_undercarriage_price_int:	unsigned( 4 downto 0 )	:= "00000";
	signal 		u_wax_price_int: 			unsigned( 4 downto 0 )	:= "00000";
	signal 		u_polish_price_int: 		unsigned( 4 downto 0 )	:= "00000";
	signal 		u_shine_price_int: 			unsigned( 4 downto 0 )	:= "00000";
	
	
	constant 	c_base_price: 			unsigned( 4 downto 0 ) 	:= "00100";
	constant 	c_null_price: 			unsigned( 4 downto 0 ) 	:= "00000";
	
	constant 	c_rims_price: 			unsigned( 4 downto 0 ) 	:= "00001";
	constant 	c_undercarriage_price: 	unsigned( 4 downto 0 ) 	:= "00010";
	constant 	c_wax_price: 			unsigned( 4 downto 0 ) 	:= "00011";
	constant 	c_polish_price: 		unsigned( 4 downto 0 ) 	:= "00010";
	constant 	c_shine_price: 			unsigned( 4 downto 0 ) 	:= "00001";
	
	begin

---- Assignment Part ------------------------------------------------
	
--all prices are summed up here, the unsigned price values of the options get written in the process below, if the options are not activated, their price is written to 0, 
--adding up into intermediate signals using an adder tree, to optimize the timing and avoid a longer daisy chain of summing up the individual prices	
	u_intermediate_price_1_int <= 	c_base_price + u_rims_price_int;
	u_intermediate_price_2_int <=	u_undercarriage_price_int + u_wax_price_int;
	u_intermediate_price_3_int <=	u_polish_price_int + u_shine_price_int;

--sum up the three intermediate values to the total price	
--note: splitting up the adding of the intermediate values one more time would not result in any improvement,
--because in any case it will need two steps to sum up, so the three intermediate values are just added as they are	
	u_total_price_int <= u_intermediate_price_1_int + u_intermediate_price_2_int + u_intermediate_price_3_int; 

	
--Process that handles cost per operations. 
--Basic price is 4 Euro
--Each extra selection costs an extra amount of money as defined in the constants. 
--The total sum adds up from the basic price and the costs of the activated options
--The total sum will be returned as slv output.

	price_calc:	process (slv_program_selection) is
	
	begin
		if (slv_program_selection(0) = '1') then
			u_rims_price_int <= c_rims_price;
		else
			u_rims_price_int <= c_null_price;		
		end if;
		
		if (slv_program_selection(1) = '1') then
			u_undercarriage_price_int <= c_undercarriage_price;
		else
			u_undercarriage_price_int <= c_null_price;		
		end if;
		
		if (slv_program_selection(2) = '1') then
			u_wax_price_int <= c_wax_price;
		else
			u_wax_price_int <= c_null_price;		
		end if;
		
		if (slv_program_selection(3) = '1') then
			u_polish_price_int <= c_polish_price;
		else
			u_polish_price_int <= c_null_price;		
		end if;
		
		if (slv_program_selection(4) = '1') then
			u_shine_price_int <= c_shine_price;
		else
			u_shine_price_int <= c_null_price;		
		end if;
				
	end process price_calc;

	slv_price_result_out <= std_logic_vector(u_total_price_int);

end architecture a_price_calculation;