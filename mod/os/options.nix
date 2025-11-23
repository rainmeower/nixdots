{
  lib,
  ...
}: let
  inherit (lib) mkOption;
  inherit (lib.types) enum bool str;
in {
  options = {
    theme = mkOption {
      type = enum [
        "macchiato"
        "blacchiato"
        "lix"
        "everforest_hard"
        "everforest_medium"
        "everforest_soft"
        "kanso_mist"
        "kanso_ink"
        "kanso_zen"
        "kantsi"
        "quiet"
      ];
    };

    rounding = mkOption {
      type = bool;
    };

    animations = mkOption {
      type = bool;
    };

    wm = mkOption {
      type = enum [
        "hyprland"
        "niri"
        # "mango" TODO
      ];
    };

    font = mkOption {
      type = enum [
        "mononoki"
        "iosevka"
      ];
    };

    font_size = mkOption {
      type = enum [
        "small"
        "medium"
        "large"
      ];
    };

    font_name = mkOption {
      type = str;
    };

    font_path = mkOption {
      type = str;
    };

    font_path_bold = mkOption {
      type = str;
    };
  };
}
