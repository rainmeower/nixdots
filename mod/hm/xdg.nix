{
  config,
  dirs,
  ...
}: let
  h = config.home.homeDirectory;
in {
  home.preferXdgDirectories = true;
  xdg.enable = true;
  xdg.userDirs = {
    enable = true;
    createDirectories = true;

    inherit (dirs)
      documents
      music
      pictures
      videos
    ;
    download  = h + "/dl"; # why doesnt this have an s at the end??

    /* dont need */
    publicShare = null;
    templates   = null;
    desktop     = null;

    extraConfig = {
      XDG_GAMES_DIR = dirs.games;
      XDG_MISC_DIR  = dirs.misc;

      /* idk why im setting these when theyre all default */
      XDG_CONFIG_HOME = h + "/.config";
      XDG_DATA_HOME   = h + "/.local/share";
      XDG_CACHE_HOME  = h + "/.cache";
    };
  };
}
