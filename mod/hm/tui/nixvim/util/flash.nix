{
  nv = {
    plugins.flash = {
      enable = true;

      lazyLoad.enable = true; # {{{
      lazyLoad.settings.event = [
        "UIEnter"
      ]; # }}}

      settings = {
        label.uppercase = false;
        labels = "nisetachr";
        prompt = {
          win_config.col = 1000;
          prefix = [ "" ];
        };
      };
    };
    keymaps = [
    {
      key = "<cr>";
      action.__raw = "function() require('flash').jump() end";
      mode = [ "n" "v" "x" "o" ];
    }
    ];
  };
}
