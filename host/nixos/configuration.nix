{
  pkgs,
  username,
  ...
}:{
  networking.hostName = "nixos";

  users.users.${username} = {
    isNormalUser = true;
    description = "colon three";
    shell = pkgs.nushell;
    extraGroups = [
      "networkmanager"
      "wheel"
      "storage"
      "plugdev"
      "video"
      "audio"
      "input"
      "uinput"
      "ssh"
    ];
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-termfilechooser
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
  ];

  xdg.portal = {
    config = {
      common = {
        default = ["termfilechooser"];
        "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
      };
      niri = {
        default = ["termfilechooser"];
        "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
      };
    };
  };

  system.stateVersion = "24.11";
}
