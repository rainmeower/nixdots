{
  lib,
  theme,
  ...
}:{
  config = lib.mkIf (theme == "quiet") {
    programs.ncmpcpp.settings = {
      colors_enabled = "yes";
      empty_tag_color = "cyan";
      header_window_color = "default";
      volume_color = "default";
      state_line_color = "default";
      state_flags_color = "default:b";
      main_window_color = "magenta";
      color1 = "magenta";
      color2 = "blue";
      progressbar_color = "black:b";
      progressbar_elapsed_color = "magenta:b";
      statusbar_color = "default";
      statusbar_time_color = "default";
      player_state_color = "default";
      alternative_ui_separator_color = "blue:b";
      window_border_color = "green";
      active_window_border = "red";
    };
  };
}
