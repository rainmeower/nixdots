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

  system.stateVersion = "24.11";
}
