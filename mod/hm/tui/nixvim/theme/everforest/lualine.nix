{
  p,
  if_theme,
  ... 
}: if_theme "everforest" {
  nv.plugins.lualine.settings.options = {
    theme = {
      # FIXME
      normal.a = { 
        fg = p.bg;
        bg = p.gray1;
      }; 
      insert.a = { 
        fg = p.bg;
        bg = p.fg;
      }; 
      visual.a = { 
        fg = p.bg;
        bg = p.fg;
      }; 
      replace.a = { 
        fg = p.bg;
        bg = p.fg;
      }; 
      inactive.a = {
        fg = p.gray1;
        bg = p.bg;
      }; 
    };
  };
}
