{
  lib,
  ...
}: let
  inherit (lib) mkOption;
  inherit (lib.types) enum bool str anything int float;
in {
  options = {
    monitor.primary = {
      name = mkOption {
        type = str;
      };
      height = mkOption {
        type = int;
      };
      width = mkOption {
        type = int;
      };
      refresh = mkOption {
        type = int;
      };
      refresh_f = mkOption {
        type = float;
      };
    };

    monitor.secondary = {
      name = mkOption {
        type = str;
      };
      height = mkOption {
        type = int;
      };
      width = mkOption {
        type = int;
      };
      refresh = mkOption {
        type = int;
      };
      refresh_f = mkOption {
        type = float;
      };
    };
  };
}
