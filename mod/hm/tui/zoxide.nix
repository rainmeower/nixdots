{
  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = false;
    options = [
      "--cmd c"
    ];
  };
}
