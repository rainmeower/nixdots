{
  lib,
  ...
}: let
  inherit (lib) mkOption;
  inherit (lib.types) enum bool str anything int;
in {
  options = {
    monitor.DP-1 = {
      height = mkOption {
        type = int;
      };
      width = mkOption {
        type = int;
      };
      refresh_rate = mkOption {
        type = int;
      };
    };

    monitor.DP-3 = {
      height = mkOption {
        type = int;
      };
      width = mkOption {
        type = int;
      };
      refresh_rate = mkOption {
        type = int;
      };
    };
  };
}
