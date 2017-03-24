-----------------------------------
-- By Jonathan Telfort & James Tang
-- March 17th 2017
-- Email: telfort.jonathan@mail.mcgill.ca 
-- Email: guokai.tang@mail.mcgill.ca
-- This is a module to slow down the clock to human speeds
-----------------------------------

-- Import the necessary libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Declare entity
entity tb_clock_divider is
end tb_clock_divider;

architecture behaviour of tb_clock_divider is
	-- Declare the deivce as a component
	component clock_divider is 
	Generic( slow_factor : integer := 1000 -- The generic statement has a small factor in order to run fast
	);
	Port (
		clk 		: in std_logic; -- Clock for the system
		rst			: in std_logic;	-- Reset counter
		slow_clk 	: out std_logic -- Slow clock value
		);
	end component;

	-- Inputs 
	signal clk_in	: std_logic;
	signal rst_in	: std_logic;

	-- Outputs
	signal clk_out	:std_logic;

	-- Helper
	constant clk_period		: time 		:= 10 ns;
	constant run_time		: integer 	:= 5000;

begin 
	
	-- Instantiate the divicer
	clk_div: clock_divider
	port map (
			clk => clk_in,
			rst => rst_in,
			slow_clk => clk_out
			);
	
	-- This process creates a clock signal
	clk_process: process
	begin
		clk in <= '0';
		wait for clk_period/2;
		clk_in <= '1';
		wait for clk_period/2;
	end process;
	
	-- This is the actual unit test
	test: process
	begin
		rst_in <= '1';
		wait for clk_period;
		-- Check that there is a pulse after 1 million cycles
		assert clk_out = '0' report "Error" severity Error;
		rst_in <= '0';

		wait for clk_period * (run_time);
		assert clk_out = '1' report "Error" severity Error;

		-- This will stop the simulation
		assert false report "Clock divider test success!" severity failure;
	end process;
end behaviour;			

















