{
  pkgs,
  config,
  username,
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
    extraCompatPackages = [ pkgs.proton-ge-bin ];
    fontPackages = [ config.font_package ];
    gamescopeSession.enable = false;
    remotePlay.openFirewall = false; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = false; # Open ports in the firewall for Source Dedicated Server
      localNetworkGameTransfers.openFirewall = false; # Open ports in the firewall for Steam Local Network Game Transfers

      # nix-gaming
      platformOptimizations.enable = true;
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
