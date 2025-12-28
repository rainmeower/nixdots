{
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
          # FIXME
          chooser_type = "dmenu"; # simple, dmenu
          chooser_cmd = "tofi";
        };
      };
    };
  };
}
