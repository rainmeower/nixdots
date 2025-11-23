{
  programs.nixvim.plugins.mini.modules.bracketed = {
    enable = true;

    # lazyLoad.enable = true;
    # lazyLoad.settings.event = [
    #   "DeferredUIEnter"
    # ];

    settings = {
      keymaps = [
      { buffer = "r"; }
      { comment = "w"; }
      { conflict = "x"; }
      { diagnostic = "t"; }
      { file = "f"; }
      { indent = "l"; }
      { jump = "s"; }
      { location = "p"; }
      { oldfile = "h"; }
      { quickfix = "q"; }
      { treesitter = "b"; }
      { undo = "u"; }
      { window = "v"; }
      { yank = "y"; }
      ];
    };
  };
}
