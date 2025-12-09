{
  nv = {
    plugins.mini.modules.comment = {
      enable = true;

      lazyLoad.enable = true; # {{{
      lazyLoad.settings.event = [
        "BufEnter"
      ]; # }}}

      settings = {
        ignore_blank_line = true;
      };

      keymaps = {
        comment = "<bs>";
        comment_line = "g<bs>";
        comment_visual = "<bs>";
        textobject = "<bs>";
      };
    };
  };
}
