{
  programs.atuin = {
    enable = true;

    enableNushellIntegration = true;

    flags = [
      "--disable-up-arrow"
    ];

    settings = {
      auto_sync = false;

    };
  };
}
