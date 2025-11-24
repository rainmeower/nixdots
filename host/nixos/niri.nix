{
  monitor,
  ...
}: {
  programs.niri.settings.outputs = {
    "DP-1" = {
      enable = true;

      focus-at-startup = true;
      variable-refresh-rate = false;

      mode = {
        inherit (monitor.DP-1)
          width
          height
        ;
        refresh = monitor.DP-1.refresh - 0.029; # TODO better way to do this?
      };
    };

    "DP-3" = {
      enable = true;

      focus-at-startup = false;
      variable-refresh-rate = false;

      transform.rotation = 270;

      mode = {
        inherit (monitor.DP-3)
          width
          height
        ;
        refresh = monitor.DP-3.refresh + 0.08; # TODO better way to do this?
      };

# dont move the mouse to the other monitor
      position.x = -5000;
      position.y = 5000;
    };
  };
}
