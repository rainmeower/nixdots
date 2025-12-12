{
  p,
  ...
}:{
  programs.yazi.theme.tabs = {
      active.bg = p.fg;
      inactive.fg = p.fg;
    };
    filetype.rules = [
    {
      name = "*/";
      fg = p.fg2;
    }
    ];
  };
}
