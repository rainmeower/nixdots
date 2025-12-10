{
  if_theme,
  ...
}: if_theme "everforest_hard" { # TODO
  nv.colorschemes.everforest = {
    enable = true;
    settings = {
      background = "hard";
      disable_italic_comments = true;
      show_eob = 0; # ~ at end of buffer
    };
  };
}
