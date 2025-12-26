{
  pkgs,
  config,
  pkgs_stable,
  ...
}: let
  home = config.hm.home.homeDirectory;
in {
  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = home + "/.steam/root/compatibilitytools.d"; # protonup install path
  };

  environment.systemPackages = with pkgs; [
    steamcmd
  ];

  programs.steam = {
    enable = true;
    package = pkgs_stable.steam; # why did this install fucking systemd and wayland and gtk4 and 597 other packages and two gigabytes wtf
    extraCompatPackages = [ pkgs.proton-ge-bin ];
    fontPackages = [ config.font_pkg ];
    gamescopeSession.enable = false;
    remotePlay.openFirewall = false; # remote play port
    dedicatedServer.openFirewall = false; # source dedicated server port
    localNetworkGameTransfers.openFirewall = false; # steam local network game transfers

    platformOptimizations.enable = true; # nix-gaming
  };

  # programs.gamescope = {
  #   enable = true;
  #   args = let
  #     inherit (config.monitor.DP-1) width height refresh;
  #   s = toString;
  #   in [
  #     "-w ${s width}"
  #       "-h ${s height}"
  #       "-r ${s refresh}"
  #       "--expose-wayland"
  #   ];
  # };
}
