{ config, ... }: {
  programs.tofi = {
    enable = true;
    settings = {
      background-color = "#000000";
      border-width = 0;
      font = "${config.stylix.fonts.monospace.name}";
      height = "50%";
      num-results = 5;
      outline-width = 0;
      # padding-left = "35%";
      # padding-top = "35%";
      result-spacing = 25;
      width = "20%";
    };

  };
}






















