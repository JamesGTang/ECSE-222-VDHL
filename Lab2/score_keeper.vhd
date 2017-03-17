-----------------------------------
-- By Jonathan Telfort & James Tang
-- Email: telfort.jonathan@mail.mcgill.ca 
-- Email: guokai.tang@mail.mcgill.ca
-- This is a module to keep score of the players
-----------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity score_keeper is 
	Port (
		clk				: in std_logic; -- Clock for the system
		rst				: in std_logic; -- Reset the score
		paddle_left		: in std_logic;
		paddle_right	: in std_logic;
		counter			: in std_logic-vector (3 downto 0);
		score_left		: out std_logic_vecotr (3 downto 0);
		score_right		: out std_logic_vector (3 downto 0)
		);
end score_keeper;

architecture behaviour of score_keeper is 
begin
	process(clk,rst)
		-- internal values for the pong module
		variable score_left_reg		:unsigned (3 downto 0);
		variable score_right_reg	:unsigned (3 downto 0);
	begin
		-- Reset all variables
		if rst = '1' then
			score_left_reg 	:= "0000";
			score_right_reg :="0000";
		elsif (clk'event and clk = '1') then
		-- This is where all the core logic belongs
			-- Left player missed a ball
			if(counter = x"0" and paddle_left = '0') then
				score_right_reg := score_right_reg + 1;
			-- Right plater missed a ball
			elsif(counter = x"9" and paddle_right = '0') then
				score_left_reg := core_left_reg + 1;
			end if;	

			-- Set outputs to register values
			score_left <= std_logic_vector(score_left_reg);
			score_right <= std_logic_vector(score_right_reg);
		end if;
	end process;
end behaviour;















