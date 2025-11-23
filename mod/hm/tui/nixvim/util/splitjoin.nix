{
  lib,
  ...
}: let
inherit (lib.nixvim) emptyTable;
in {
  programs.nixvim.plugins.mini.modules.splitjoin.pairs = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "DeferredUIEnter"
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
      join = {
        hooks_post = emptyTable;
        hooks_pre = emptyTable;
      };
      split = {
        hooks_post = emptyTable;
        hooks_pre = emptyTable;
      };
    };
  };
}
