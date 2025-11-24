{
  lib,
  ...
}: let
  inherit (lib) mkOption;
  inherit (lib.types) enum bool str anything int float;
in {
  options = {
    monitor.DP-1 = {
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

    monitor.DP-3 = {
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
