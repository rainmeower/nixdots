# TODO disable the popup thing next to the search
{
  prompt_sym,
  ...
}:{
  nv.plugins = {
    noice = {
      enable = true;

      lazyLoad.enable = true; # {{{
      lazyLoad.settings.event = [
        "UIEnter"
      ]; # }}}

      settings = {
        cmdline = {
          enabled = true;
          format = {
            cmdline = {
              pattern = "^:";
              icon = prompt_sym;
              lang = "vim";
            };
            search_down = {
              kind = "search";
              pattern = "^/";
              icon = "/";
              lang = "regex";
            };
            search_up = {
              kind = "search";
              pattern = "^%?";
              icon = "?";
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
