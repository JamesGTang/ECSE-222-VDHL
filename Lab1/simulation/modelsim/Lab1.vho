-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "03/10/2017 17:09:19"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	led_decoder IS
    PORT (
	count : IN std_logic_vector(3 DOWNTO 0);
	leds : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END led_decoder;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF led_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \count[3]~input_o\ : std_logic;
SIGNAL \count[0]~input_o\ : std_logic;
SIGNAL \count[2]~input_o\ : std_logic;
SIGNAL \count[1]~input_o\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \leds~2_combout\ : std_logic;
SIGNAL \leds~3_combout\ : std_logic;
SIGNAL \leds~4_combout\ : std_logic;
SIGNAL \leds~5_combout\ : std_logic;
SIGNAL \leds~6_combout\ : std_logic;
SIGNAL \leds~7_combout\ : std_logic;
SIGNAL \leds~8_combout\ : std_logic;
SIGNAL \leds~9_combout\ : std_logic;
SIGNAL \ALT_INV_count[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_leds~9_combout\ : std_logic;

BEGIN

ww_count <= count;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_count[2]~input_o\ <= NOT \count[2]~input_o\;
\ALT_INV_count[1]~input_o\ <= NOT \count[1]~input_o\;
\ALT_INV_count[3]~input_o\ <= NOT \count[3]~input_o\;
\ALT_INV_count[0]~input_o\ <= NOT \count[0]~input_o\;
\ALT_INV_leds~9_combout\ <= NOT \leds~9_combout\;

-- Location: IOOBUF_X52_Y0_N2
\leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(0));

-- Location: IOOBUF_X52_Y0_N19
\leds[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~1_combout\,
	devoe => ww_devoe,
	o => ww_leds(1));

-- Location: IOOBUF_X60_Y0_N2
\leds[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~2_combout\,
	devoe => ww_devoe,
	o => ww_leds(2));

-- Location: IOOBUF_X80_Y0_N2
\leds[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~3_combout\,
	devoe => ww_devoe,
	o => ww_leds(3));

-- Location: IOOBUF_X60_Y0_N19
\leds[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~4_combout\,
	devoe => ww_devoe,
	o => ww_leds(4));

-- Location: IOOBUF_X80_Y0_N19
\leds[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~5_combout\,
	devoe => ww_devoe,
	o => ww_leds(5));

-- Location: IOOBUF_X84_Y0_N2
\leds[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~6_combout\,
	devoe => ww_devoe,
	o => ww_leds(6));

-- Location: IOOBUF_X89_Y6_N5
\leds[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~7_combout\,
	devoe => ww_devoe,
	o => ww_leds(7));

-- Location: IOOBUF_X89_Y8_N5
\leds[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~8_combout\,
	devoe => ww_devoe,
	o => ww_leds(8));

-- Location: IOOBUF_X89_Y6_N22
\leds[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_leds~9_combout\,
	devoe => ww_devoe,
	o => ww_leds(9));

-- Location: IOIBUF_X4_Y0_N52
\count[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(3),
	o => \count[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(0),
	o => \count[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\count[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(2),
	o => \count[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\count[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(1),
	o => \count[1]~input_o\);

-- Location: LABCELL_X57_Y2_N30
\leds~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = ( !\count[2]~input_o\ & ( !\count[1]~input_o\ & ( (\count[3]~input_o\ & \count[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[3]~input_o\,
	datac => \ALT_INV_count[0]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~0_combout\);

-- Location: LABCELL_X57_Y2_N9
\leds~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = ( !\count[2]~input_o\ & ( !\count[1]~input_o\ & ( (!\count[0]~input_o\ & \count[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~input_o\,
	datac => \ALT_INV_count[3]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~1_combout\);

-- Location: LABCELL_X57_Y2_N12
\leds~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~2_combout\ = ( \count[2]~input_o\ & ( \count[1]~input_o\ & ( (!\count[3]~input_o\ & \count[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[3]~input_o\,
	datac => \ALT_INV_count[0]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~2_combout\);

-- Location: LABCELL_X57_Y2_N21
\leds~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~3_combout\ = ( \count[2]~input_o\ & ( \count[1]~input_o\ & ( (!\count[0]~input_o\ & !\count[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~input_o\,
	datac => \ALT_INV_count[3]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~3_combout\);

-- Location: LABCELL_X57_Y2_N54
\leds~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~4_combout\ = ( \count[2]~input_o\ & ( !\count[1]~input_o\ & ( (!\count[3]~input_o\ & \count[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[3]~input_o\,
	datac => \ALT_INV_count[0]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~4_combout\);

-- Location: LABCELL_X57_Y2_N3
\leds~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~5_combout\ = ( \count[2]~input_o\ & ( !\count[1]~input_o\ & ( (!\count[0]~input_o\ & !\count[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~input_o\,
	datac => \ALT_INV_count[3]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~5_combout\);

-- Location: LABCELL_X57_Y2_N36
\leds~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~6_combout\ = ( !\count[2]~input_o\ & ( \count[1]~input_o\ & ( (!\count[3]~input_o\ & \count[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[3]~input_o\,
	datac => \ALT_INV_count[0]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~6_combout\);

-- Location: LABCELL_X57_Y2_N45
\leds~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~7_combout\ = ( !\count[2]~input_o\ & ( \count[1]~input_o\ & ( (!\count[0]~input_o\ & !\count[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~input_o\,
	datac => \ALT_INV_count[3]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~7_combout\);

-- Location: LABCELL_X57_Y2_N48
\leds~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~8_combout\ = ( !\count[2]~input_o\ & ( !\count[1]~input_o\ & ( (!\count[3]~input_o\ & \count[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[3]~input_o\,
	datac => \ALT_INV_count[0]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~8_combout\);

-- Location: LABCELL_X57_Y2_N27
\leds~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds~9_combout\ = ( \count[2]~input_o\ & ( \count[1]~input_o\ ) ) # ( !\count[2]~input_o\ & ( \count[1]~input_o\ ) ) # ( \count[2]~input_o\ & ( !\count[1]~input_o\ ) ) # ( !\count[2]~input_o\ & ( !\count[1]~input_o\ & ( (\count[3]~input_o\) # 
-- (\count[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~input_o\,
	datac => \ALT_INV_count[3]~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \ALT_INV_count[1]~input_o\,
	combout => \leds~9_combout\);

-- Location: LABCELL_X17_Y39_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


