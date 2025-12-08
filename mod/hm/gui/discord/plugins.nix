{
  programs.nixcord.config.plugins = {
    ignoreActivities = {
      enable = true;
      ignorePlaying = true;
      ignoreWatching = true;
      # ignoredActivities = [ "someActivity" ];
    };
    allCallTimers = {
      enable = true;
      showWithoutHover = false;
      showRoleColor = false;
      trackSelf = true;
      showSeconds = false;
      watchLargeGuilds = false;
    };
    alwaysTrust = {
      enable = true;
      domain = true;
      file = true;
      noDeleteSafety = false;
      confirmModal = true;
    };
    amITyping.enable = true;
    # animalese.enable = true;

    anammox = {
      enable = true;
      dms = true;
      serverBoost = true;
      billing = true;
      gift = true;
      emojiList = true;
    };

    betterAudioPlayer = {
      enable = true;
      oscilloscope = true;
      spectrograph = true;
      # oscilloscopeSolidColor = true;
      # oscilloscopeColor = TODO (rgb format)
      # spectrographSolidColor = true;
      # spectrographColor = TODO (rgb format)
      forceMoveBelow = true;
    };

    # autoZipper = {
    #   enable = true;
    #   extensions = ".psd,.blend,.exe,.dmg,.app,.apk,.iso";
    # };

    betterCommands = {
      enable = true;
      allowNewlinesInCommands = true;
    };


  };
}
