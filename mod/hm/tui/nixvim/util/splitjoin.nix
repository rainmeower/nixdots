{
  lib,
  ...
}:{
  nv.plugins.mini-splitjoin = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "BufRead"
    ];

    settings = {
      detect = {
        brackets.__raw = "nil";
        exclude_regions.__raw = "nil";
        separator = ",";
      };
      mappings = {
        join = "ga";
        split = "gA";
      };
      # join = {
      #   hooks_post = lib.nixvim.emptyTable;
      #   hooks_pre = lib.nixvim.emptyTable;
      # };
      # split = {
      #   hooks_post = lib.nixvim.emptyTable;
      #   hooks_pre = lib.nixvim.emptyTable;
      # };
    };
  };
}
