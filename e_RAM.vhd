library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity e_RAM is
	generic (
			addr_width : integer := 1; -- addr_width : total number of elements to store (put exact number)
			data_width : integer := 5  -- data_width : number of bits in each elements
			);
  
		port (	sl_clk : in std_logic; 	
				sl_wr : in std_logic;
				slv_address_int : in std_logic_vector(addr_width-1 downto 0);
				slv_datain_int : in std_logic_vector(data_width-1 downto 0);
				slv_dataout_int : out std_logic_vector(data_width-1 downto 0));
end entity e_RAM;

 

architecture a_RAM of e_RAM is
 
---- Declaration Part -----------------------------------------------
 
--Type Declarations
	type t_mem is array(0 to 2**addr_width-1 ) of std_logic_vector(data_width-1 downto 0);
	
-- internal signal declaration
	signal a_mem : t_mem :=	(others => (others => '0'));
	
	signal i_address_int,i_address_reg_int : integer range 0 to 2**addr_width-1;
	
	begin

---- Assignment Part ------------------------------------------------	
	
--Concurrent Assignments

	i_address_int <= to_integer(unsigned(slv_address_int));
	slv_dataout_int <= a_mem(i_address_reg_int);

	p_memory : process(sl_clk)
	begin
		if(rising_edge(sl_clk)) then
			if(sl_wr = '1') then                         -- write data to address slv_address_int
				a_mem(i_address_int) <= slv_datain_int;
			end if;
			i_address_reg_int <=	i_address_int;
		end if;
	end process p_memory;
	
end architecture a_RAM;