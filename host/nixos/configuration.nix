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
  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-termfilechooser
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
  ];

  system.stateVersion = "24.11";
}
