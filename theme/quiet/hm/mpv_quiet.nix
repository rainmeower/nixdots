{
  lib,
  theme,
  ...
}:
let
  col = import ../colors.nix;
  n = lib.strings.removePrefix "#";
in {
  config = lib.mkIf (theme == "quiet") {
    programs.mpv.config = {
      background-color = col.bg;
      osd-back-color = col.bg;
      osd-border-color = col.bg;
      osd-color = col.fg;
      osd-shadow-color = col.bg;

      script-opts-append = [ # TODO
"uosc-color=\
foreground=${n col.fg}\
,foreground_text=${n col.fg}\
,background=${n col.bg}\
,background_text=${n col.fg}\
,curtain=${n col.bg}\
,success=${n col.green}\
,error=${n col.red}"
      ];
    };
  };
}
