{
  lib,
  pkgs,
  p,
  font_path,
  monitor,
  prompt_sym,
  border_width,
  rounding,
  ...
}:{
  programs.tofi = {
    enable = true;
    settings = rec {
      font = font_path;

      # Point size of text.
      font-size = 30;

      hint-font = false;

      # theme {{{
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
      selection-background-corner-radius = if rounding then 10 else 0;
      selection-match-color = "#00000000";


      background-color = p.bg_trans;

      outline-color = "#00000000";
      border-color = "#00000000";
      # }}}

      text-cursor-style = "bar";
      text-cursor-corner-radius = 0;
      text-cursor-thickness = 2;

      # Prompt to display.
      prompt-text = "\"${prompt_sym} \"";

      # Extra horizontal padding between prompt and input.
      prompt-padding = 0;

      # Placeholder input text.
      placeholder-text = "meow";

      # layout {{{
      num-results = 0;
      result-spacing = 40;
      horizontal = true;
      min-input-width = 80;

      # 2534
      width = monitor.primary.width - margin-top * 2 - border_width * 2;
      height = 80;

      # Width of the border outlines in pixels.
      outline-width = 0;


      # Width of the border in pixels.
      border-width = 0;


      # Radius of window corners in pixels.
      corner-radius = if rounding then 10 else 0;

      # Padding between borders and text. Can be pixels or a percentage.
      padding-top = 14;
      padding-bottom = 0;
      padding-left = 24;
      padding-right = 24;

      clip-to-padding = false;
      scale = false;

      output = "";

      anchor = "top";

      exclusive-zone = 80;

      # Window offset from edge of screen. Only has an effect when anchored
      # to the relevant edge. Can be pixels or a percentage.
      margin-top = 10;
      margin-bottom = 0;
      margin-left = 0;
      margin-right = 0;
      # }}}

      hide-cursor = false;
      text-cursor = true;

      # Sort results by number of usages in run and drun modes.
      history = true;


      matching-algorithm = "fuzzy";

      # If true, require a match to allow a selection to be made. If false,
      # making a selection with no matches will print input to stdout.
      # In drun mode, this is always true.
      require-match = true;

      auto-accept-single = false;

      hide-input = false;
      hidden-character = "";

      physical-keybindings = false;

      print-index = false;

      drun-launch = true;

      terminal = lib.getExe pkgs.foot;

      late-keyboard-init = false;
      multi-instance = false;
      ascii-input = true;
    };
  };
}
