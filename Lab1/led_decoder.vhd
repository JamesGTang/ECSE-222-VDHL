-----------------------------------
-- By Jonathan Telfort & James Tang
-- Email: telfort.jonathan@mail.mcgill.ca 
-- Email: guokai.tang@mail.mcgill.ca
-- This decodes the counter values into an outpt to drive the LEDs
-- This design is combinational logic and dose not require a clock
-----------------------------------


--import the mecsessary libraries
library ieee;
-- Std_Logic_1164 Package contains definitions of types, subtypes, and functions, which extend the VHDL into a multi-value logic --
use ieee.std_logic_1164.all;

-- declare entitity
entity led_decoder is
	Port (  
	        -- std_logic_vector is an arrays of std_logic variables and signals --
	        -- downto correspond to little endian, the least significant bit is stored in lowest pos --
			count: in std_logic_vector (3 downto 0); -- value of counter
			leds: out std_logic_vector (9 downto 0) -- which of the leds are on
			);
end led_decoder;

architecture behaviour of led_decoder is
begin 

	leds(9) <= not count(0) and not count(1) and not count(2) and not count(3);
	leds(8) <= count(0) and not count(1) and not count(2) and not count(3);
	leds(7) <= not count(0) and count(1) and not count(2) and not count(3);
	leds(6) <= count(0) and count(1) and not count(2) and not count(3);
	leds(5) <= not count(0) and not count(1) and count(2) and not count(3);
	leds(4) <= count(0) and not count(1) and count(2) and not count(3);
	leds(3) <= not count(0) and count(1) and count(2) and not count(3);
	leds(2) <= count(0) and count(1) and count(2) and not count(3);
	leds(1) <= not count(0) and not count(1) and not count(2) and count(3);
	leds(0) <= count(0) and not count(1) and not count(2) and count(3);

end behaviour; 