{
  programs.nixvim.plugins = {
    noice = {
      enable = true;

      lazyLoad.settings.event = [
        "DeferredUIEnter"
      ];

      settings = {
        cmdline = {
          enabled = true;
          format = {
            cmdline = {
              pattern = "^:";
              icon = "󰘧";
              lang = "vim";
            };
            search_down = {
              kind = "search";
              pattern = "^/";
              icon = " ";
              lang = "regex";
            };
            search_up = {
              kind = "search";
              pattern = "^%?";
              icon = " ";
              lang = "regex";
            };
            filter = {
              pattern = "^:%s*!";
              icon = "$";
              lang = "bash";
            };
            lua = { 
              pattern = [
                "^:%s*lua%s+"
                "^:%s*lua%s*=%s*"
                "^:%s*=%s*"
              ];
              icon = "";
              lang = "lua";
            };
            help = {
              pattern = "^:%s*he?l?p?%s+";
              icon = "";
            };
          };
        };
      };
    };
    nui.enable = true;
    # nvim-notify.enable = true;
  };
}
