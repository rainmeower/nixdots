{
  if_theme,
  p,
  ...
}: if_theme "kanso" {
  programs.kitty.settings = {
    background_opacity = 0.8;

    foreground = p.fg;
    background = p.bg;
    selection_foreground = p.bg;
    selection_background = p.blue;

    cursor = p.fg;
    cursor_text_color = p.bg;

    # url underline 
    url_color = p.blue_sat;

# # Kitty window border colors
#       active_border_color     #000000
#         inactive_border_color   #000000
#         bell_border_color       #000000
#
# # OS Window titlebar colors
#         wayland_titlebar_color system
#         macos_titlebar_color system
#
# # Tab bar colors
#         active_tab_foreground   #181926
#         active_tab_background   #C6A0F6
#         inactive_tab_foreground #CAD3F5
#         inactive_tab_background #1E2030
#         tab_bar_background      #181926
#
# # Colors for marks (marked text in the terminal)
#         mark1_foreground ${p.bg}
#       mark1_background ${p.blue}
#       mark2_foreground ${p.bg}
#       mark2_background ${p.purple}
#       mark3_foreground ${p.bg}
#       mark3_background ${p.yellow}

# The 16 terminal colors

# black
    color0 = p.bg;
    color8 = p.bg;

# red
    color1 = p.red;
    color9 = p.red;

# green
    color2  = p.green;
    color10 = p.green;

# yellow
    color3  = p.yellow;
    color11 = p.yellow;

# blue
    color4  = p.blue;
    color12 = p.blue;

# magenta
    color5  = p.violet;
    color13 = p.violet;

# cyan
    color6  = p.blue4;
    color14 = p.blue4;

# white
    color7  = p.fg2;
    color15 = p.fg2;
  };
}
