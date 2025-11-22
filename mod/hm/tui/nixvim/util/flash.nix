{
  programs.nixvim = {
  plugins.flash = {
    enable = true;
    settings = {
      label.uppercase = false;
      labels = "nisetachr";
      prompt = {
        win_config.col = 1000;
        prefix = null;
      };
    };
  };
    keymaps = [
    {
      key = "<cr>";
      action.__raw = "function() require('flash').jump() end";
      mode = [ "n" "v" "x" ];
    }
    ];
  };
}
