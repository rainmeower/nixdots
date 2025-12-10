{
  username,
lib,
  ...
}:{
  home.username = username;
  home.homeDirectory = "/home/${username}";
  systemd.user.targets.nixos-fake-graphical-session = lib.mkForce {};
}
