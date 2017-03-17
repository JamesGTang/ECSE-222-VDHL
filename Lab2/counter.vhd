-----------------------------------
-- By Jonathan Telfort & James Tang
-- Email: telfort.jonathan@mail.mcgill.ca 
-- Email: guokai.tang@mail.mcgill.ca
-- This is a special counter that counts up and then counts down
-----------------------------------

-- Import the necessary libraries
library ieee;
use ieee.std_logic_1164.all;

entity counter is
	-- A generic statement can be overwritten in the top level entity. This allows for design flexibility
	Generic (
			Constant maximum : unsigned := x"9" -Unsigned is a special type which can be used for arithmetic
			);
	Port (
		clk			: in std_logic; -- Clock for the system
		rst			: in std_logic; -- Reset the count
		count 		: out std_logic_vector (3 downto 0) --Value of counter 
		);
end counter;

architecture behaviour of counter is

begin
	-- Concurrent process
	process(clk,rst)
		-- Internal variables
		variable count_reg : unsigned (3 downto 0);
		variable count_up  : std)logic;
	begin
		-- Asynchronous reset logic
		if(rst = '1') then
			count_reg := (others => '0');
			count_up  := '1';
		-- Do work on the risisng edge of clock
		elsif （ clk'event and clk = "0000") then
				-- Concurrent assignment
				count <= std_logic_vecotr(count_reg);
			-- Set count up or count down
			if(count_reg = maximum) then
				count_up :='0';
			elsif (count_reg = "0000") then
				count_up :='1';
			end if;
			
			-- update the counter
			if ( count_up = '1') then
				count_reg :=count_reg + 1;
			else
				count_reg :=count_reg - 1;
			end if;
		end if;

	end process;		
end behaviour;















