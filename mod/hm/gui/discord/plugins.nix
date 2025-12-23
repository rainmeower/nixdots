{
  # TODO wtf is going on with these plugin names




  # programs.nixcord.config.plugins = {
  #   IgnoreActivities = {
  #     enable = true;
  #     ignorePlaying = true;
  #     ignoreWatching = true;
  #     # ignoredActivities = [ "someActivity" ];
  #   };
  #   AllCallTimers = {
  #     enable = true;
  #     showWithoutHover = false;
  #     showRoleColor = false;
  #     trackSelf = true;
  #     showSeconds = false;
  #     watchLargeGuilds = false;
  #   };
  #   AlwaysTrust = {
  #     enable = true;
  #     domain = true;
  #     file = true;
  #     noDeleteSafety = false;
  #     confirmModal = true;
  #   };
  #   # amITyping.enable = true; # jumpscared me
  #   # animalese.enable = true;
  #
  #   Anammox = {
  #     enable = true;
  #     dms = true;
  #     serverBoost = true;
  #     billing = true;
  #     gift = true;
  #     emojiList = true;
  #   };
  #
  #   BetterAudioPlayer = {
  #     enable = true;
  #     oscilloscope = true;
  #     spectrograph = true;
  #     # oscilloscopeSolidColor = true;
  #     # oscilloscopeColor = TODO (rgb format)
  #     # spectrographSolidColor = true;
  #     # spectrographColor = TODO (rgb format)
  #     forceMoveBelow = true;
  #   };
  #
  #   # AutoZipper = {
  #   #   enable = true;
  #   #   extensions = ".psd,.blend,.exe,.dmg,.app,.apk,.iso";
  #   # };
  #
  #   BetterCommands = {
  #     enable = true;
  #     allowNewlinesInCommands = true;
  #   };
  #
  #   BetterPlusReacts.enable = true;
  #   BetterUploadButton.enable = true;
  #
  #   ChannelTabs = {
  #     enable = true;
  #     # onStartup = "Remember tabs from last session";
  #     # showStatusIndicators = true;
  #     # showBookmarkBar = true;
  #     # bookmarkNotificationDot = true;
  #   };
  #
  #   CleanChannelName.enable = true;
  #   ClearURLs.enable = true;
  #
  #   CommandPalette = {
  #     enable = true;
  #     visualStyle = "classic";
  #     showTags = true;
  #     enableTagFilter = true;
  #     # TODO custom commands
  #   };
  #
  #   CopyFileContents.enable = true;
  #
  #   CrashHandler = {
  #     enable = true;
  #     attemptToPreventCrashes = true;
  #   };
  #
  #   # CustomFolderIcons = {
  #
  #   DisableCallIdle.enable = true;
  #   DisableCameras.enable = true;
  #
  #   EquicordToolbox.enable = true;
  #
  #   FakeNitro = {
  #     enable = true;
  #     enableEmojiBypass = true;
  #     emojiSize = 48.0;
  #     transformEmojis = true;
  #
  #     enableStickerBypass = true;
  #     stickerSize = 160.0;
  #     transformStickers = true;
  #
  #     useStickerHyperLinks = true;
  #     useEmojiHyperLinks = true;
  #
  #     hyperLinkText = "{{NAME}}";
  #   };
  #
  #   # fakeProfileThemes = 
  #
  #   FindReply.enable = true;
  #
  #   FavoriteGifSearch.enable = true;
  #
  #   FavoriteEmojiFirst.enable = true;
  #
  #   FixCodeblockGap.enable = true;
  #
  #   FixImagesQuality.enable = true;
  #
  #   FrequentQuickSwitcher.enable = true;
  #
  #   FriendsSince.enable = true;
  #
  #   # gifCollections TODO
  #
  #   GitHubRepos = {
  #     enable = true;
  #     showStars = true;
  #     showLanguage = true;
  #     showInMiniProfile = true;
  #   };
  #
  #   GreetStickerPicker.enable = true;
  #   GuildPickerDumper.enable = true; # download servers emojis and stickers
  #   HolyNotes.enable = true;
  #   IgnoreTerms.enable = true;
  #   ImageFilename.enable = true;
  #
  #   ImageZoom = {
  #     enable = true;
  #     saveZoomValues = false;
  #     invertScroll = false;
  #     nearestNeighbour = true;
  #     square = false; # handled by unrounding
  #
  #     zoom = 2.5;
  #     size = 200.0;
  #     zoomSpeed = 0.5;
  #   };
  #
  #   # IrcColors.enable = true;
  #   # Ingtonator.enable = true; # funny  TODO probably disable this
  #   JumpTo.enable = true;
  #
  #   LimitMiddleClickPaste.enable = true;
  #
  #   # KeywordNotify.enable = true;
  #
  #   # KeyboardNavigation = {
  #
  #   LoadingQuotes = {
  #     enable = true;
  #     enablePluginPresetQuotes = false;
  #     enableDiscordPresetQuotes = false;
  #   };
  #
  #   MessageColors = {
  #     enable = true;
  #     # renderType = "background color";
  #     # enableShortHexCodes = true;
  #   };
  #
  #   MessageLinkEmbeds.enable = true;
  #   MessageLoggerEnhanced = {
  #     enable = true;
  #     # saveImages = true;
  #   };
  #
  #   # MoreCommands = {
  #   #   enable = true;
  #   #   uwuEveryMessage = true;
  #   # };
  #
  #   MutualGroupDMs.enable = true;
  #   NeverPausePreviews.enable = true;
  #   NoBulletPoints.enable = true;
  #   NoDevtoolsWarning.enable = true;
  #   NoF1.enable = true;
  #   NoMaskedUrlPaste.enable = true;
  #   NoModalAnimation.enable = true;
  #   NoNitroUpsell.enable = true;
  #   NoOnboardingDelay.enable = true;
  #   NoProfileThemes.enable = true;
  #
  #   # NotificationVolume = {
  #   #   enable = true;
  #   #   notificationVolume = 50.0; # percent
  #   # };
  #
  #   NoTypingAnimation.enable = true;
  #   OnePingPerDm.enable = true;
  #   PlainFolderIcon.enable = true;
  #
  #   PlatformIndicators = {
  #     enable = true;
  #     list = false;
  #     profiles = true;
  #     messages = false;
  #     colorMobileIndicator = true;
  #     showBots = false;
  #   };
  #
  #   ReplyPingControl = {
  #     enable = true;
  #     alwaysPingOnReply = true;
  #   };
  #
  #   SaveFavoriteGiFs.enable = true; # why is the i lowercase?
  #   ServerSearch.enable = true;
  #   ShowHiddenChannels = {
  #     enable = true;
  #     channelStyle = 1; # muted
  #   };
  #
  #   SidebarChat.enable = true;
  #
  #   SilentTyping = {
  #     enable = true;
  #     chatIcon = false;
  #   };
  #
  #   SpotifyCrack.enable = true;
  #
  #   SplitLargeMessages.enable = true;
  #
  #   ThemeAttributes.enable = true;
  #
  #   TidalEmbeds.enable = true;
  #
  #   Timezones = {
  #     enable = true;
  #     showOwnTimezone = false;
  #     _24hTime = true;
  #     showTimezoneInfo = false;
  #     showMessageHeaderTime = false;
  #     showProfileTime = true;
  #   };
  #
  #   TypingIndicator.enable = true;
  #   UnitConverter = {
  #     enable = true;
  #     myUnits = "metric";
  #   };
  #   TypingTweaks.enable = true;
  #
  #   UnlockedAvatarZoom.enable = true;
  #
  #   UserMessagesPronouns = {
  #     enable = true;
  #     showSelf = false;
  #     pronounsFormat = "LOWERCASE";
  #   };
  #
  #   UserVoiceShow.enable = true;
  #   UserPfp.enable = true;
  #   Usrbg.enable = true;
  #   ValidReply.enable = true;
  #   ValidUser.enable = true;
  #   ViewIcons.enable = true;
  #   ViewRawVariant.enable = true;
  #
  #   VolumeBooster.enable = true;
  #   WhosWatching.enable = true;
  #   # WigglyText.enable = true;
  #   YoutubeAdblock.enable = true;
  # };
}
