-----------------------------------------------------
-- By Jonathan Telfort & James Tang
-- Email: telfort.jonathan@mail.mcgill.ca 
-- Email: guokai.tang@mail.mcgill.ca
-- This test bench verifies the logic the led decoder
-----------------------------------------------------

-- Import necessary libraries
library ieee;
use ieee.std_logic_1164.all;

-- A test bench entity needs no inputs or outputs

entity tb_seven_segment_decoder is
end tb_seven_segment_decoder;

architecture behavior of tb_seven_segment_decoder is
-- Component declaration of Device Under Test (DUT)
	component seven_segment_decoder is
		port(
			number		: in std_logic_vector (3 downto 0); -- Decimal number
			segments	: out std_logic_vector (6 downto 0) -- Pattern
		);
	end component;
	
	-- Inputs
	signal number_in	: std_logic_vector (3 downto 0);

	-- Outputs
	signal segment_out	: std_logic_vector (6 downto 0);

begin
	-- Instantiate the decoder
	dut: seven_segment_decoder
	port map (
		number => number_in,
		segments  => segment_out
		
	);
	-- Processes are generally the backbone of your behavioural code. They facilitate clock-edge specification as well as synchronization among signal assignments.
	verification: process
	begin
		
		-- Set the input then wait a time cycle for the logic to happen
		number_in <= x"0"; -- This is a hexadecimal shorthand
		wait for 10ns;
		assert segment_out = "1000000" report "Error, Case 0" severity Error;
		
		-- <= is a signal assignment
		number_in <= x"1";
		wait for 10ns;
		assert segment_out = "1111001" report "Error, Case 1" severity Error;

		number_in <= x"2";
		wait for 10ns;
		assert segment_out = "0100100" report "Error, Case 2" severity Error;

		number_in <= x"3";
		wait for 10ns;
		assert segment_out = "0110000" report "ErP:/VDHL/Lab1/tb_seven_seg_decoder.vhdror, Case 3" severity Error;

		number_in <= x"4";
		wait for 10ns;
		assert segment_out = "0011001" report "Error, Case 4" severity Error;

		number_in <= x"5";
		wait for 10ns;
		assert segment_out = "0010010" report "Error, Case 5" severity Error;

		number_in <= x"6";
		wait for 10ns;
		assert segment_out = "0000010" report "Error, Case 6" severity Error;

		number_in <= x"7";
		wait for 10ns;
		assert segment_out = "1111000" report "Error, Case 7" severity Error;

		number_in <= x"8";
		wait for 10ns;
		assert segment_out = "0000000" report "Error, Case 8" severity Error;

		number_in <= x"9";
		wait for 10ns;
		assert segment_out = "0010000" report "Error, Case 9" severity Error;

		report "7 Segment test Success!";	
		wait;

	end process;

end behavior;

