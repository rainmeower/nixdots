{
  config,
  ...
}: let
  h = config.home.homeDirectory;
in {
  home.preferXdgDirectories = true;
  xdg.userDirs = {
    enable = true;
    createDirectories = true;

    download  = h + "/dl";
    documents = h + "/doc";
    music     = h + "/music";
    pictures  = h + "/pic";
    videos    = h + "/vid";

    publicShare = null;
    templates = null;
    desktop   = null;

    extraConfig = {
      XDG_GAMES_DIR = h + "/games";
      XDG_MISC_DIR  = h + "/misc";

      XDG_CONFIG_HOME = h + "/.config";
      XDG_DATA_HOME   = h + "/.local/share";
      XDG_CACHE_HOME  = h + "/.cache";
    };
  };
}
