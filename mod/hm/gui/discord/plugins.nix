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

    betterPlusReacts.enable = true;
    betterUploadButton.enable = true;

    channelTabs = {
      enable = true;
      # onStartup = "Remember tabs from last session";
      # showStatusIndicators = true;
      # showBookmarkBar = true;
      # bookmarkNotificationDot = true;
    };

    cleanChannelName.enable = true;
    clearURLs.enable = true;

    commandPalette = {
      enable = true;
      visualStyle = "classic";
      showTags = true;
      enableTagFilter = true;
      # TODO custom commands
    };

    copyFileContents.enable = true;

    crashHandler = {
      enable = true;
      attemptToPreventCrashes = true;
    };

    # CustomFolderIcons = {

    disableCallIdle.enable = true;
    disableCameras.enable = true;

    equicordToolbox.enable = true;

    fakeNitro = {
      enable = true;
      enableEmojiBypass = true;
      emojiSize = 48.0;
      transformEmojis = true;

      enableStickerBypass = true;
      stickerSize = 160.0;
      transformStickers = true;

      useStickerHyperLinks = true;
      useEmojiHyperLinks = true;

      hyperLinkText = "{{NAME}}";
    };

    # fakeProfileThemes = 

    findReply.enable = true;

    favoriteGifSearch.enable = true;

    favoriteEmojiFirst.enable = true;

    fixCodeblockGap.enable = true;

    fixImagesQuality.enable = true;

    frequentQuickSwitcher.enable = true;

    friendsSince.enable = true;

    # gifCollections TODO

    # githubRepos = {
    #   enable = true;
    #   showStars = true;
    #   showLanguage = true;
    #   showInMiniProfile = true;
    # };






  };
}
