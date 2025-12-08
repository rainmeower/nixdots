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
    # amITyping.enable = true; # jumpscared me
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

    gitHubRepos = {
      enable = true;
      showStars = true;
      showLanguage = true;
      showInMiniProfile = true;
    };

    greetStickerPicker.enable = true;
    guildPickerDumper.enable = true; # download servers emojis and stickers
    holyNotes.enable = true;
    ignoreTerms.enable = true;
    imageFilename.enable = true;

    imageZoom = {
      enable = true;
      saveZoomValues = false;
      invertScroll = false;
      nearestNeighbour = true;
      square = false; # handled by unrounding

      zoom = 2.0;
      size = 100.0;
      zoomSpeed = 0.5;
    };

    # ircColors.enable = true;
    # ingtonator.enable = true; # funny  TODO probably disable this
    jumpTo.enable = true;

    limitMiddleClickPaste.enable = true;

    # keywordNotify.enable = true;

    # keyboardNavigation = {

    loadingQuotes = {
      enable = true;
      enablePluginPresetQuotes = false;
      enableDiscordPresetQuotes = false;
    };

    messageColors = {
      enable = true;
      # renderType = "background color";
      # enableShortHexCodes = true;
    };

    messageLinkEmbeds.enable = true;
    messageLoggerEnhanced = {
      enable = true;
      # saveImages = true;
    };

    # moreCommands = {
    #   enable = true;
    #   uwuEveryMessage = true;
    # };

    mutualGroupDMs.enable = true;
    neverPausePreviews.enable = true;
    noBulletPoints.enable = true;
    noDevtoolsWarning.enable = true;
    noF1.enable = true;
    noMaskedUrlPaste.enable = true;
    noModalAnimation.enable = true;
    noNitroUpsell.enable = true;
    noOnboardingDelay.enable = true;
    noProfileThemes.enable = true;

    # notificationVolume = {
    #   enable = true;
    #   notificationVolume = 50.0; # percent
    # };

    noTypingAnimation.enable = true;
    onePingPerDM.enable = true;
    plainFolderIcon.enable = true;

    platformIndicators = {
      enable = true;
      list = false;
      profiles = true;
      messages = false;
      colorMobileIndicator = true;
      showBots = false;
    };

    replyPingControl = {
      enable = true;
      alwaysPingOnReply = true;
    };

    saveFavoriteGiFs.enable = true; # why is the i lowercase?
    serverSearch.enable = true;
    showHiddenChannels = {
      enable = true;
      channelStyle = 1; # muted
    };

    sidebarChat.enable = true;

    silentTyping = {
      enable = true;
      chatIcon = false;
    };

    spotifyCrack.enable = true;

    splitLargeMessages.enable = true;

    themeAttributes.enable = true;

    tidalEmbeds.enable = true;

    timezones = {
      enable = true;
      showOwnTimezone = false;
      _24hTime = true;
      showTimezoneInfo = false;
      showMessageHeaderTime = false;
      showProfileTime = true;
    };

    typingIndicator.enable = true;
    unitConverter = {
      enable = true;
      myUnits = "metric";
    };
    typingTweaks.enable = true;

    unlockedAvatarZoom.enable = true;

    userMessagesPronouns = {
      enable = true;
      showSelf = false;
      pronounsFormat = "LOWERCASE";
    };

    userVoiceShow.enable = true;
    userPfp.enable = true;
    USRBG.enable = true;
    validReply.enable = true;
    validUser.enable = true;
    viewIcons.enable = true;
    viewRawVariant.enable = true;

    volumeBooster.enable = true;
    whosWatching.enable = true;
    # wigglyText.enable = true;
    youtubeAdblock.enable = true;

  };
}
