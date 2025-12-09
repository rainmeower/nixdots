{
  nv = {
    plugins.flash = {
      enable = true;

      lazyLoad.enable = true; # {{{
      # lazyLoad.settings.event = [
      #   "UIEnter"
      # ]; # }}}

      lazyLoad.settings = {
      cmd.__raw = "function() require('flash').jump() end";
    keymaps = [
    {
      __unkeyed-1 = "<cr>";
      __unkeyed-3.__raw = "function() require('flash').jump() end";
      mode = [ "n" "v" "x" "o" ];
      desc = "jump with flash";
    }
    ];
      };

      settings = {
        label.uppercase = false;
        labels = "nisetachr";
        prompt = {
          win_config.col = 1000;
          prefix = null;
        };
      };
    };
  };
}
