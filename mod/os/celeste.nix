{
  pkgs,
  username,
  ...
}: {
  environment.systemPackages = with pkgs; [
    (celestegame.override {
      gameDir = "/home/${username}/games/celeste/game"; 
      withEverest = true;
      writableDir = "/home/${username}/games/celeste/everest"; 
      overrideSrc = requireFile {
        name = "celeste-linux.zip";
        hash = "sha256-UOzlNrMlJBfXczTChFyk98EANjZmi67Yl9lsJxzbbI8=";
        url = "https://example.com"; # TODO what is this for
      };
    })

    (olympus.override {
      finderHints = "/home/${username}/games/celeste/game";
    })
  ];
}
