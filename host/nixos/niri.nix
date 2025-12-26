{
  monitor,
  lib,
  wm,
  ...
}:{
  config = lib.mkIf wm.niri {
    programs.niri.settings.outputs = {
      "DP-1" = {
        enable = true;

        focus-at-startup = true;
        variable-refresh-rate = false;

        mode = {
          inherit (monitor.primary)
            width
            height
            ;
          refresh = monitor.primary.refresh_f; # TODO better way to do this?
        };
      };

      "DP-3" = {
        enable = true;

        focus-at-startup = false;
        variable-refresh-rate = false;

        transform.rotation = 270;

        mode = {
          inherit (monitor.secondary)
            width
            height
            ;
          refresh = monitor.secondary.refresh_f; # TODO better way to do this?
        };

# dont move the mouse to the other monitor
        position.x = -5000;
        position.y = 5000;
      };
    };
  };
}
