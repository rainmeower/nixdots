{
  lib,
  pkgs,
  p,
  font_path,
  monitor,
  prompt_sym,
  border_width,
  ...
}:{
  programs.tofi = {
  enable = true;
    settings = rec {


# Default config for tofi
#
# Copy this file to ~/.config/tofi/config and get customising!
#
# A complete reference of available options can be found in `man 5 tofi`.

#
### Fonts
#
	# Font to use, either a path to a font file or a name.
	#
	# If a path is given, tofi will startup much quicker, but any
	# characters not in the chosen font will fail to render.
	#
	# Otherwise, fonts are interpreted in Pango format.
	font = font_path;

	# Point size of text.
	font-size = 30;

	hint-font = false;

	text-color = p.fg;

	# Prompt text theme
	prompt-color = p.accent;
	prompt-background = "#00000000";
	prompt-background-padding = 0;
	prompt-background-corner-radius = 0;

	# Placeholder text theme
	placeholder-color = p.comment;
	placeholder-background = "#00000000";
	placeholder-background-padding = 0;
	placeholder-background-corner-radius = 0;

	# Input text theme
	input-color = p.fg;
	input-background = "#00000000";
	input-background-padding = 0;
	input-background-corner-radius = 0;

	# Default result text theme
	# default-result-color = #FFFFFF
	default-result-background = "#00000000";
	default-result-background-padding = 0;
	default-result-background-corner-radius = 0;

	# Selection text
	selection-color = p.bg;
	selection-background = p.accent;
	selection-background-padding = 4;
	selection-background-corner-radius = 0;
	selection-match-color = "#00000000";

	text-cursor-style = "bar";
	text-cursor-corner-radius = 0;
	text-cursor-thickness = 2;

#
### Text layout
#
	# Prompt to display.
	prompt-text = "󰘧 ";

	# Extra horizontal padding between prompt and input.
	prompt-padding = 0;

	# Placeholder input text.
	placeholder-text = "meow";

	num-results = 0;
	result-spacing = 40;
	horizontal = true;
	min-input-width = 80;

	# width = 2534;
	width = monitor.primary.width - padding-left * 2 - border_width * 2;
	height = 80;

	# Window background color
	background-color = p.bg_trans;

	# Width of the border outlines in pixels.
	outline-width = 0;

	# Border outline color
	outline-color = "#00000000";

	# Width of the border in pixels.
	border-width = 0;

	# Border color
	border-color = "#00000000";

	# Radius of window corners in pixels.
	corner-radius = 0;

	# Padding between borders and text. Can be pixels or a percentage.
	padding-top = 14;
	padding-bottom = 0;
	padding-left = 24;
	padding-right = 24;

	clip-to-padding = false;
	scale = false;

	output = "";

	# Location on screen to anchor the window to.
	#
	# Supported values: top-left, top, top-right, right, bottom-right,
	# bottom, bottom-left, left, center.
	anchor = "top";

	# Set the size of the exclusive zone.
	#
	# A value of -1 means ignore exclusive zones completely.
	# A value of 0 will move tofi out of the way of other windows' zones.
	# A value greater than 0 will set that much space as an exclusive zone.
	#
	# Values greater than 0 are only meaningful when tofi is anchored to a
	# single edge.
	exclusive-zone = 80;

	# Window offset from edge of screen. Only has an effect when anchored
	# to the relevant edge. Can be pixels or a percentage.
	margin-top = 10;
	margin-bottom = 0;
	margin-left = 0;
	margin-right = 0;

#
### Behaviour
#
	# Hide the mouse cursor.
	hide-cursor = false;

	# Show a text cursor in the input field.
	text-cursor = true;

	# Sort results by number of usages in run and drun modes.
	history = true;

	# Specify an alternate file to read and store history information
	# from / to. This shouldn't normally be needed, and is intended to
	# facilitate the creation of custom modes.
	# history-file = /path/to/histfile

	# Select the matching algorithm used. If normal, substring matching is
	# used, weighted to favour matches closer to the beginning of the
	# string. If prefix, only substrings at the beginning of the string are
	# matched. If fuzzy, searching is performed via a simple fuzzy matching
	# algorithm.
	#
	# Supported values: normal, prefix, fuzzy
	matching-algorithm = "fuzzy";

	# If true, require a match to allow a selection to be made. If false,
	# making a selection with no matches will print input to stdout.
	# In drun mode, this is always true.
	require-match = true;

	auto-accept-single = false;

	# If true, typed input will be hidden, and what is displayed (if
	# anything) is determined by the hidden-character option.
	hide-input = false;

	# Replace displayed input characters with a character. If the empty
	# string is given, input will be completely hidden.
	# This option only has an effect when hide-input is set to true.
	hidden-character = "*";

	# If true, use physical keys for shortcuts, regardless of the current
	# keyboard layout. If false, use the current layout's keys.
	physical-keybindings = false;

	# Instead of printing the selected entry, print the 1-based index of
	# the selection. This option has no effect in run or drun mode. If
	# require-match is set to false, non-matching input will still result
	# in the input being printed.
	print-index = false;

	# If true, directly launch applications on selection when in drun mode.
	# Otherwise, just print the command line to stdout.
	drun-launch = false;

	terminal = lib.getExe pkgs.foot;

	late-keyboard-init = false;
	multi-instance = false;
	ascii-input = true;

  };
  };






  # programs.tofi = {
  #   enable = true;
  #   settings = {
  #     border-width = 2;
  #     corner-radius = 10;
  #     font = "${font_name}";
  #     font-size = 26;
  #     height = "50%";
  #     num-results = 5;
  #     outline-width = 0;
  #     # padding-left = "35%";
  #     # padding-top = "35%";
  #     width = "20%";
  #
  #     prompt-text = prompt_sym + " ";
  #     result-spacing = 0;
  #
  #     padding-top = 8;
  #     padding-bottom = 8;
  #     padding-left = 8;
  #     padding-right = 8;
  #
  #     anchor = "center";
  #   };
  #
  # };
}
