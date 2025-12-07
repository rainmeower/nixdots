{
  pkgs,
  ...
}:{
  # TODO do i actually need these
  services.gvfs.enable = false;
  services.udisks2.enable = false;
  systemd.services.udiskie.enable = false;

  environment.systemPackages = with pkgs; [
    # udiskie
    # udisks2
    # gvfs
    cryptsetup
  ];

  # systemd.tmpfiles.rules = [
  #   "L /media - - - - run/media" # link /media to /run/media
  # ];
}
