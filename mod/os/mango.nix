{
  lib,
  pkgs,
  config,
  ...
}:{
  # systemd.user.targets.nixos-fake-graphical-session = lib.mkForce {};

  programs.uwsm = {
    enable = true;
    waylandCompositors.mango = {
      prettyName = "mango";
      comment = "mangowc managed by uwsm";
      # binPath = "/run/current-system/sw/bin/mango"; # doesnt exist?
      # binPath = "/usr/bin/env mango";
      binPath = "${config.programs.mango.package}/bin/mango";
    };
  };
}
