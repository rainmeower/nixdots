{
  lib,
  wm,
  os_config,
  ...
}:{
  config = lib.mkIf (wm == "niri") {
    programs.niri.settings.animations = {
      enable = os_config.animations;
      workspace-switch = {
        enable = false;
# kind = "easing";
# easing = {
#   curve = "linear";
#   duration-ms = 150;
# };
      };
    };
  };
}
