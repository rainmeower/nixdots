{
  programs.nixvim.plugins.mini-indentscope = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ]; # }}}


    settings = {
      draw.delay = 0;
      # draw.delay = 100; # BUG doesnt skip past folded folds
      symbol = "│";
    };
  };
}
