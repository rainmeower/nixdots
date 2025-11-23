{
  inputs,
  config,
  username,
  ...
}: {
  imports = [
    inputs.slippi.homeManagerModules.default
    {
      slippi-launcher = let
        data = config.xdg.userDirs.extraConfig.XDG_DATA_HOME;
      in {
        isoPath = "/home/${username}/melee/meow.iso";
        rootSlpPath = data + "/Slippi";
        spectateSlpPath = data + "/Slippi/Spectate";
        launchMeleeOnPlay = false;
        enableJukebox = false;
        useMonthlySubfolders = true; # for replays
      };
    }
  ];
}
