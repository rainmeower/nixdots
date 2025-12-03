{
  programs.nixvim.plugins.ccc = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ]; # }}}

    settings.auto_enable = true;
  };
}
