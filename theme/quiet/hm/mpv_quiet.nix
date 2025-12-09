{
  lib,
  theme,
  ...
}: let
  col = import ../colors.nix;
  n = lib.strings.removePrefix "#";
in {
  config = lib.mkIf (theme == "quiet") {
    programs.mpv.config = {
      script-opts-append = [
        "uosc-color=foreground=${n col.fg},foreground_text=${n col.fg},background=${n col.bg},background_text=${n col.fg},curtain=${n col.bg},success=${n col.green},error=${n col.red}"
      ];
    };
  };
}
