{
  nv.plugins.mini-indentscope = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "BufEnter"
    ]; # }}}


    settings = {
      draw.delay = 0;
      # draw.delay = 100; # BUG doesnt skip past folded folds
      symbol = "│";
    };
  };
}
