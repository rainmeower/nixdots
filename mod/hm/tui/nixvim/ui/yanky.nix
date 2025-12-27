# TODO highlight group
{
  nv.plugins.yanky = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "UIEnter"
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
