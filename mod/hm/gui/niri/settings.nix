{
  lib,
  wm,
  config,
  monitor,
  ...
}: lib.mkIf wm.niri {
  programs.niri.settings = {

    # debug.preview-render = "screencast";
    # debug.preview-render = "screen-capture";

    #   xwayland-satellite = {
    #     enable = true;
    #     path = "xwayland-satellite";
    #   };


    prefer-no-csd = true;
    screenshot-path = "/tmp/screenshots";
    hotkey-overlay.skip-at-startup = true;
    gestures.hot-corners.enable = false;


    overview = {
      backdrop-color = "transparent";
      # zoom = 0.70;
      workspace-shadow.enable = false;
    };
    # cursor = {
    #   xcursor-theme = config.gtk.cursorTheme.name;
    #   xcursor-size = config.gtk.cursorTheme.size;
    # };

    workspaces = { # {{{
      "1" = {
        name = "left";
        open-on-output = monitor.primary.name;
      };
      "2" = {
        name = "right";
        open-on-output = monitor.primary.name;
      };
      "3" = {
        name = "spacer1";
        open-on-output = monitor.primary.name;
      };
      "4" = {
        name = "media";
        open-on-output = monitor.primary.name;
      };
      "5" = {
        name = "spacer2";
        open-on-output = monitor.primary.name;
      };
      "6" = {
        name = "discord";
        open-on-output = monitor.primary.name;
      };
      "7" = {
        name = "spacer3";
        open-on-output = monitor.primary.name;
      };
      "8" = {
        name = "one";
        open-on-output = monitor.primary.name;
      };
      "9" = {
        name = "spacer4";
        open-on-output = monitor.primary.name;
      };
      "a" = {
        name = "two";
        open-on-output = monitor.primary.name;
      };
      "b" = {
        name = "spacer5";
        open-on-output = monitor.primary.name;
      };
      "c" = {
        name = "three";
        open-on-output = monitor.primary.name;
      };
      "d" = {
        name = "spacer6";
        open-on-output = monitor.primary.name;
      };
      "e" = {
        name = "four";
        open-on-output = monitor.primary.name;
      };
      "zzz" = {
        name = "alt";
        open-on-output = monitor.secondary.name;
      };

      "xxx" = {
        name = "ghostty_nvim";
        open-on-output = monitor.primary.name;
      };
      "xxy" = {
        name = "ghostty_term";
        open-on-output = monitor.primary.name;
      };
      "xxz" = {
        name = "ghostty_yazi";
        open-on-output = monitor.primary.name;
      };
    }; # }}}
  };
}
