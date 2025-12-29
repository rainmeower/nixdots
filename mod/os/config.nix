{
  config,
  ...
}:{
  config = {
    theme = "kanso";

    wm.hyprland = false;
    wm.niri = false;
    wm.mango = true;

    term = "foot";

    font = "iosevka";
    font_size = "small";

    rounding = false;
    border_width = 3;

    animations = true;

    prompt_sym = "󰘧";

    /* default names are too long and have yucky capitalism */
    dirs = let
      h = config.hm.home.homeDirectory;
    in {
      downloads = h + "/dl";
      documents = h + "/doc";
      music     = h + "/music";
      pictures  = h + "/pic";
      videos    = h + "/vid";

      misc  = h + "/misc";
      games = h + "/games";
    };
  };
}
