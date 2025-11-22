{
  lib,
  theme,
  wm,
  ...
}:
let
  col = import ../colors.nix;
in {
  config = lib.mkIf (theme == "quiet" && wm == "niri") {
    programs.niri.settings.layout = {

    background-color = "transparent";
      focus-ring = {
        active.color = col.accent;
        inactive.color = "#00000000";
      };
      tab-indicator = {
        active.color = col.accent;
        inactive.color = col.grey;
      };
    };
  };
}
