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
    enable = true;
    discord = {
      # NOTE mutually exclusive
      vencord.enable = false;
      equicord.enable = true;
    };
    vesktop.enable = false;  # Vesktop
    equibop.enable = true;  # Equibop
    dorion.enable = false;   # Dorion
    # quickCss = "some CSS";  # quickCSS file
    config = {
      useQuickCss = false;
      themeLinks = [
        # (config.home.homeDirectory + "/.config/vesktop/themes/system24_1.css")
        # (config.home.homeDirectory + "/.config/vesktop/themes/system24_2.css")
        "/home/meow/.config/vesktop/themes/system24_1.css"
        "/home/meow/.config/vesktop/themes/system24_2.css"
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
