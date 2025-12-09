{
  nv.plugins.ccc = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings = {
      cmd = "CccHighlighterEnable";
      keys = [
      {
        __unkeyed-1 = "<leader>bw"; # tc toggle color
        __unkeyed-3 = ":CccHighlighterEnable<CR>";
        desc = "toggle color highlighting";
        silent = true;
      }
      ];
    }; # }}}

    settings.auto_enable = true;
  };
}
