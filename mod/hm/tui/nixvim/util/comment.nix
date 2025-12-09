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
        comment = "x";
        comment_line = "gx";
        comment_visual = "x";
        textobject = "x";
      };
    };
  };
}
