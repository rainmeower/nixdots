{
  pkgs,
  username,
  specialArgs,
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
    ];
    shell = pkgs.nushell;
  };

  environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];

  system.stateVersion = "24.11";
}
