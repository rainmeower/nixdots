{
  lib,
  config,
  pkgs,
  ...
}:{
  imports = [
    ./horizontal.nix
    ./vertical.nix
  ];

  config.programs.tofi = {
    enable = true;
    package = pkgs.tofi-modules;
  };

  options.programs.tofi.settings_secondary = lib.mkOption { # {{{
    type = with lib.types;
      let
        primitive = either (either str int) bool;
      in attrsOf primitive;
    default = { };
  };

  config.xdg.configFile."tofi/config_secondary" = {
    text = let
      renderedSettings = lib.generators.toINIWithGlobalSection { } {
        globalSection = config.programs.tofi.settings_secondary;
      };
    in lib.removeSuffix "\n\n" renderedSettings;
  }; # }}}
}
