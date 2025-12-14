{
  networking.networkmanager.enable = true;
  systemd.services.NetworkManager.wantedBy = [ "default.target" ];

  services.tailscale.enable = true;
  systemd.services.tailscaled.wantedBy = [ "graphical.target" ];
}
