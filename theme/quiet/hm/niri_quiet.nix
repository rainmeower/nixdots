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

    # background-color = "#000000";
    background-color = "transparent";
      focus-ring = {
        active.color = col.accent;
        # active.gradient = {
        #   angle = 45;
        #   # relative-to = "workspace-view";
        #   from = col.accent;
        #   to = col.violet_sat;
        # };
        # inactive.color = col.accent;
        inactive.color = "#00000000";
      };
      tab-indicator = {
        active.color = col.accent;
        inactive.color = col.grey;
      };
    };
  };
}
