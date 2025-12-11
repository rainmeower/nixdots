{
  if_theme,
  ...
}: if_theme "kanso" {
  programs.ncmpcpp.settings = {
    colors_enabled = "yes";
    empty_tag_color = "cyan";
    header_window_color = "blue";
    volume_color = "blue";
    state_line_color = "blue";
    state_flags_color = "blue:b";
    main_window_color = "blue";
    color1 = "blue";
    color2 = "green";
    progressbar_color = "black:b";
    progressbar_elapsed_color = "blue:b";
    statusbar_color = "blue";
    statusbar_time_color = "blue:b";
    player_state_color = "default:b";
    alternative_ui_separator_color = "blue:b";
    window_border_color = "green";
    active_window_border = "red";
  };
}
