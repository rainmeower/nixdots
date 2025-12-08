{
  inputs,
  ...
}:{
  imports = [
    inputs.nixcord.homeModules.nixcord
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
      # themeLinks = [
      #   "https://raw.githubusercontent.com/link/to/some/theme.css"
      # ];
      frameless = true;                   # Set some Vencord/Equicord options
      plugins = {
        # hideAttachments.enable = true;    # Enable a plugin (works with both Vencord and Equicord)
        # ignoreActivities = {              # Enable a plugin and set some options
        #   enable = true;
        #   ignorePlaying = true;
        #   ignoreWatching = true;
        #   ignoredActivities = [ "someActivity" ];
        # };
      };
    };
    # dorion = {
    #   theme = "dark";
    #   zoom = "1.1";
    #   blur = "none";       # "none", "blur", or "acrylic"
    #   sysTray = true;
    #   openOnStartup = true;
    #   autoClearCache = true;
    #   disableHardwareAccel = false;
    #   rpcServer = true;
    #   rpcProcessScanner = true;
    #   pushToTalk = true;
    #   pushToTalkKeys = ["RControl"];
    #   desktopNotifications = true;
    #   unreadBadge = true;
    # };
    extraConfig = {
      # Some extra JSON config here
      # ...
    };
  };
}
