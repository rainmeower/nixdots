{
  programs.nixvim.plugins.mini-surround = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ];
  };
}
