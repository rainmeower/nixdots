{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.programs.tofi;
in {
  options.programs.tofi = { # {{{
    settings_secondary = lib.mkOption {
      type =
        with lib.types;
        let
          primitive = either (either str int) bool;
        in
        attrsOf primitive;
      default = { };
    };
  }; # }}}

  config = {
    programs.tofi.settings_secondary = {
      test = "meow";
    };

    xdg.configFile."tofi/config_secondary" = {
      text =
        let
          renderedSettings = lib.generators.toINIWithGlobalSection { } {
            globalSection = cfg.settings_secondary;
          };
        in
        lib.removeSuffix "\n\n" ''${renderedSettings}'';
    };
  };
}
