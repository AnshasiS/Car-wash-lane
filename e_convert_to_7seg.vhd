library ieee;
use ieee.std_logic_1164.all;

entity e_convert_to_7seg is
   port ( slv_hex      : in  std_logic_vector(5 downto 0);
          slv_display  : out std_logic_vector(0 to 6)
		  );
end entity e_convert_to_7seg;

architecture a_convert_to_7seg of e_convert_to_7seg is

---- Declaration Part -----------------------------------------------

	-- constants for displaying character or number in 7-seg display
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
    constant c_A 		: std_logic_vector(0 to 6) 	:= "0001000";
    constant c_B 		: std_logic_vector(0 to 6) 	:= "1100000";
    constant c_C 		: std_logic_vector(0 to 6) 	:= "0110001";
    constant c_D 		: std_logic_vector(0 to 6) 	:= "1000010";
    constant c_E 		: std_logic_vector(0 to 6) 	:= "0110000";
    constant c_F 		: std_logic_vector(0 to 6) 	:= "0111000";
    constant c_G 		: std_logic_vector(0 to 6) 	:= "0100001";
    constant c_H 		: std_logic_vector(0 to 6) 	:= "1101000";
    constant c_I 		: std_logic_vector(0 to 6) 	:= "1111001";
    constant c_J 		: std_logic_vector(0 to 6) 	:= "1000011";
    constant c_K 		: std_logic_vector(0 to 6) 	:= "0101000";
    constant c_L 		: std_logic_vector(0 to 6) 	:= "1110001";
    constant c_M 		: std_logic_vector(0 to 6) 	:= "0101011";
    constant c_N 		: std_logic_vector(0 to 6) 	:= "0001001";
    constant c_O 		: std_logic_vector(0 to 6) 	:= "0000001";
    constant c_P 		: std_logic_vector(0 to 6) 	:= "0011000";
    constant c_Q 		: std_logic_vector(0 to 6) 	:= "0001100";
    constant c_R 		: std_logic_vector(0 to 6) 	:= "1111010";
    constant c_S 		: std_logic_vector(0 to 6) 	:= "0100100";
    constant c_T 		: std_logic_vector(0 to 6) 	:= "1110000";
    constant c_U 		: std_logic_vector(0 to 6) 	:= "1000001";
    constant c_V 		: std_logic_vector(0 to 6) 	:= "1000101";
    constant c_W 		: std_logic_vector(0 to 6) 	:= "1010101";
    constant c_X 		: std_logic_vector(0 to 6) 	:= "1001000";
    constant c_Y 		: std_logic_vector(0 to 6) 	:= "1000100";
    constant c_Z 		: std_logic_vector(0 to 6) 	:= "0010110";
    constant c_comma 	: std_logic_vector(0 to 6) 	:= "1100111";
    constant c_dash 	: std_logic_vector(0 to 6)  := "1111110";
    constant c_blank 	: std_logic_vector(0 to 6) 	:= "1111111";

begin

---- Assignment Part ------------------------------------------------

   --       0  
   --      ---  
   --     |   |
   --    5|   |1
   --     | 6 |
   --      ---  
   --     |   |
   --    4|   |2
   --     |   |
   --      ---  
   --       3  

-- Concurrent Assignments:
	-- Conditional Signal Assignment to select correct output vector
	-- for 7-seg display
	p_multiplex_7seg: process (slv_hex)
	begin	
		case (slv_hex) is
			when "000000"  =>	slv_display <= c_0;
			when "000001"  =>	slv_display <= c_1;
			when "000010"  =>	slv_display <= c_2;
			when "000011"  =>	slv_display <= c_3;
			when "000100"  =>	slv_display <= c_4;
			when "000101"  =>	slv_display <= c_5;
			when "000110"  =>	slv_display <= c_6;
			when "000111"  =>	slv_display <= c_7;
			when "001000"  =>	slv_display <= c_8;
			when "001001"  =>	slv_display <= c_9;
			when "001010"  =>	slv_display <= c_A;
			when "001011"  =>	slv_display <= c_B;
			when "001100"  =>	slv_display <= c_C;
			when "001101"  =>	slv_display <= c_D;
			when "001110"  =>	slv_display <= c_E;
			when "001111"  =>	slv_display <= c_F;
			when "010000"  =>	slv_display <= c_G;
			when "010001"  =>	slv_display <= c_H;
			when "010010"  =>	slv_display <= c_I;
			when "010011"  =>	slv_display <= c_J;
			when "010100"  =>	slv_display <= c_K;
			when "010101"  =>	slv_display <= c_L;
			when "010110"  =>	slv_display <= c_M;
			when "010111"  =>	slv_display <= c_N;
			when "011000"  =>	slv_display <= c_O;
			when "011001"  =>	slv_display <= c_P;
			when "011010"  =>	slv_display <= c_Q;
			when "011011"  =>	slv_display <= c_R;
			when "011100"  =>	slv_display <= c_S;
			when "011101"  =>	slv_display <= c_T;
			when "011110"  =>	slv_display <= c_U;
			when "011111"  =>	slv_display <= c_V;
			when "100000"  =>	slv_display <= c_W;
			when "100001"  =>	slv_display <= c_X;
			when "100010"  =>	slv_display <= c_Y;
			when "100011"  =>	slv_display <= c_Z;
			when "100100"  =>	slv_display <= c_comma;
			when "100101"  =>	slv_display <= c_dash;
			when "100110"  =>	slv_display <= c_blank;
			when others    =>	slv_display <= c_blank;
		end case;										
	end process p_multiplex_7seg;

end architecture a_convert_to_7seg;
