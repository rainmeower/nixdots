{
  nv.plugins.yanky = {
    enable = false;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "VimEnter"
    ]; # }}}

    settings = {
      highlight = {
        on_yank = true;
        on_put = true;
        timer = 200;
      };
    };
  };
}
