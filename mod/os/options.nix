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
      default = "blacchiato";
    };

    rounding = mkOption {
      type = bool;
      default = true;
    };

    animations = mkOption {
      type = bool;
      default = true;
    };

    wm = mkOption {
      type = enum [
        "hyprland"
        "niri"
        # "mango" TODO
      ];
      default = "niri";
    };

    font = mkOption {
      type = enum [
        "mononoki"
        "iosevka"
      ];
      default = "mononoki";
    };

    font_size = mkOption {
      type = enum [
        "small"
        "medium"
        "large"
      ];
      default = "medium";
    };

    font_path = mkOption {
      type = str;
      default = "";
    };

    font_path_bold = mkOption {
      type = str;
      default = "";
    };
  };
}
