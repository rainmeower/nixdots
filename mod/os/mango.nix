{
  lib,
  pkgs,
  config,
  ...
}:{
  # FIXME doesnt do anything :(
  systemd.user.targets.nixos-fake-graphical-session = lib.mkForce {};

  # FIXME `A compositor or graphical-session* target is already active!`
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
