{
  config,
  lib,
  namespace,
  pkgs,
  ...
}:{
  xdg.portal = {
    config = {
      common = {
        "org.freedesktop.impl.portal.Screenshot" = ["wlr"];
        "org.freedesktop.impl.portal.ScreenCast" = ["wlr"];
      };
    };

    wlr = {
      enable = true;
      settings = {
        screencast = {
          chooser_type = "dmenu"; # simple, dmenu
          chooser_cmd = "fuzzel -d"; # Optional: use slurp for region selection
        };
      };
    };
  };
}
