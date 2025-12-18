{
  pkgs,
  username,
  ...
}:{
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

  environment.binsh = "${pkgs.dash}/bin/dash"; # TODO

  environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];

  system.stateVersion = "24.11";
}
