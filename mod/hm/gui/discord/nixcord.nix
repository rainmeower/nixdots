{
  inputs,
  config,
  ...
}:{
  imports = [
    inputs.nixcord.homeModules.nixcord
    ./plugins.nix
        ./system24.nix
  ];

  programs.nixcord = {
    enable = true;          # Enable Nixcord (It also installs Discord)
    discord = {
      vencord.enable = false;  # Use Vencord (default)
      equicord.enable = true;  # Or use Equicord instead (cannot enable both)
    };
    vesktop.enable = false;  # Vesktop
    equibop.enable = true;  # Equibop
    dorion.enable = false;   # Dorion
    # quickCss = "some CSS";  # quickCSS file
    config = {
      useQuickCss = false;
      themeLinks = [
        (config.home.homeDirectory + ".config/vesktop/themes/system24_2.css")
      ];

      frameless = true;
      # startWithSystem = false;
      # minimizeToTray = false;
      # staticTitle = true;
      # # customTrayIcons = TODO
      disableMinSize = false;
      # smoothScrolling = false;
      # # notificationBadge = false;
      # richPresence = false;
      # openLinksInApp = false;
      #
      # splashScreen = false;
    };
    extraConfig = {
      # Some extra JSON config here
      # ...
    };
  };
}
