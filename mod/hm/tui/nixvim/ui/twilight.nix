{
  nv.plugins.twilight = {
    enable = true;
    
    lazyLoad.enable = true; # {{{
    lazyLoad.settings = {
      cmd = "Twilight";
      keys = [
        {
          __unkeyed-1 = "<leader>bb"; # tt toggle twilight
          __unkeyed-3 = ":Twilight<CR>";
          desc = "toggle color highlighting";
          silent = true;
        }
      ];
    }; # }}}

    settings = {
      dimming = {
        alpha = 1;
        color = [ "Comment" "#ffffff" ];
        term_bg = "#000000";
        inactive = false;
      };
      context = 10;
      treesitter = true;
      expand = [
        "function"
        "method"
        "table"
        "if_statement"
      ];
      exclude = [
        "*.md"
        "*.nord"
        "*.org"
        "*.txt"
      ];
    };

  };
}
