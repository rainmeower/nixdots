{
  programs.uwsm = {
    enable = true;
    waylandCompositors.mango = {
      prettyName = "mango";
      comment = "mangowc managed by uwsm";
      binPath = "/run/current-system/sw/bin/mango";
    };
  };
}
