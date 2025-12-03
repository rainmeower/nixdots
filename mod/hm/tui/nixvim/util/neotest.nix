{
  programs.nixvim.plugins.neotest = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ]; # }}}
  };
}
