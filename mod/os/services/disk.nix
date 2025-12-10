{
  pkgs,
  ...
}:{
  # services.gvfs.enable = true;
  # services.udisks2.enable = true;
  # systemd.services.udiskie.enable = true;

  environment.systemPackages = with pkgs; [
    cryptsetup
  ];

  # systemd.tmpfiles.rules = [
  #   "L /media - - - - run/media" # link /media to /run/media
  # ];
}
