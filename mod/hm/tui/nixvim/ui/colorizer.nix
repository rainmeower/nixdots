{
  programs.nixvim.plugins.colorizer = {
    enable = true;
    settings = {
      RGB      = true;
      RRGGBB   = true;
      names    = false; # BUG doesnt do anything
      RRGGBBAA = true;
      rgb_fn   = true;
      hsl_fn   = true;
      css      = false;
      css_fn   = false;  
    };
  };
}
