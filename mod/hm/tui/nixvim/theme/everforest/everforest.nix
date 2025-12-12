{
  if_theme,
  p,
  ...
}: if_theme "everforest" {
  # TODO change visual bg to gray1 or something

  nv = {
    colorschemes.everforest = {
      enable = true;
      settings = {
        background = "soft";
        transparent_background = 2;
        disable_italic_comments = true;
        show_eob = 0; # ~ at end of buffer

        on_highlights = {
          #   lualine_transparent.fg = p.gray1;
          #   lualine_a_normal = { fg = p.bg; bg = p.gray1; };
          #   lualine_a_insert = { fg = p.bg; bg = p.fg; };
          #   lualine_a_inactive.fg = p.gray1;
          LineNr.fg = p.gray0;
        };

        colors_override = {
          fg = [ "#9DA9A0" "247" ];
        };
      };
    };
  };
}
