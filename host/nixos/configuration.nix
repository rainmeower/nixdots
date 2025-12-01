{
  pkgs,
  username,
  lib,
  config,
  ...
}: {
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  users.users.${username} = {
    isNormalUser = true;
    description = "colon three";
    extraGroups = [
      "networkmanager"
      "wheel"
      "storage"
      "plugdev"
      "video"
      "audio"
      "input"
      "uinput"
      "terraria"
    ];
    shell = pkgs.nushell;
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = lib.mkIf (config.wm == "niri") [
    pkgs.xdg-desktop-portal-gtk
    pkgs.xdg-desktop-portal-gnome
  ];

  system.stateVersion = "24.11";
}
