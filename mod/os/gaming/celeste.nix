{
  pkgs,
  config,
  username,
  ...
}: let
  celeste_dir = config.hm.xdg.userDirs.extraConfig.XDG_GAMES_DIR + "/celeste";
in {
  environment.systemPackages = with pkgs; [
    (celestegame.override {
      gameDir = celeste_dir + "/game"; 
      withEverest = true;
      writableDir = celeste_dir + "/everest"; 
      overrideSrc = requireFile {
        name = "celeste-linux.zip";
        hash = "sha256-UOzlNrMlJBfXczTChFyk98EANjZmi67Yl9lsJxzbbI8=";
        url = "https://example.com"; # TODO what is this for
      };

      # desktopItem = null; # dont make a .desktop file
      # desktopItem = makeDesktopItem {
      #   name = "Celeste";
      #   desktopName = "Celeste";
      #   genericName = "Celeste";
      #   comment = celeste.meta.description;
      #   exec = "gamemoderun Celeste";
      #   icon = "Celeste";
      #   categories = [ "Game" ];
      # };
      })

    (olympus.override {
      finderHints = celeste_dir + "/game";
    })
  ];
}
