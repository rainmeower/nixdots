{
  config,
  lib,
  pkgs,
  ...
}:{
  programs.tofi.settings_secondary = {
    test = "meow";
  };
}
