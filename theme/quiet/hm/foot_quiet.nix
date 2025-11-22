{
  lib,
  theme,
  ...
}: let
  col = import ../colors.nix;
  n = lib.strings.removePrefix "#";
in {
  config = lib.mkIf (theme == "quiet") {
    programs.foot = {
      enable = true;
      settings = {
        colors = {
          alpha = 1;

          cursor = "${n col.bg} ${n col.fg}";

          background = n col.bg;
          foreground = n col.fg;

          ## Normal/regular colors (color palette 0-7)
          regular0 = n col.black;
          regular1 = n col.red;
          regular2 = n col.green;
          regular3 = n col.yellow;
          regular4 = n col.violet; # blue
          regular5 = n col.pink;   # magenta
          regular6 = n col.cyan;
          regular7 = n col.white;

          ## Bright colors (color palette 8-15)
          bright0 = n col.black_b;
          bright1 = n col.red_b;
          bright2 = n col.green_b;
          bright3 = n col.yellow_b;
          bright4 = n col.violet_b; # blue
          bright5 = n col.pink_b;   # magenta
          bright6 = n col.cyan_b;
          bright7 = n col.white_b;
        };
        tweak.box-drawing-base-thickness = "0.05";
      };
    };
  };
}
