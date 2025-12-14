{
  lib,
  ...
}: let
  inherit (lib) mkOption;
  inherit (lib.types) enum bool str int anything;
in {
  options = rec {
    theme = mkOption {
      type = enum [
        "macchiato"
        "blacchiato"
        "lix"
        "everforest"
        "kanso"
        "kantsi"
        "quiet"
      ];
    };

    rounding = mkOption {
      type = bool;
    };

    border_width = mkOption {
      type = int;
    };

    border_width_css = mkOption {
      type = str;
      default = "${border_width}px";
    };

    animations = mkOption {
      type = bool;
    };

    wm = mkOption {
      type = enum [
        "hyprland"
        "niri"
        "mango"
      ];
    };

    term = mkOption {
      type = enum [
        "foot"
        "ghostty"
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

    font_pkg = mkOption {
      type = anything;
    };

    prompt_sym = mkOption {
      type = str;
    };
  };
}
