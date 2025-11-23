{
  lib,
  ...
}: let
  inherit (lib.nixvim) emptyTable;
in {
  programs.nixvim.plugins.mini-bracketed = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ];

    settings = {
      buffer = {
        # options = emptyTable;
        suffix = "r";
      };
      comment = {
        # options = emptyTable;
        suffix = "w";
      };
      conflict = {
        # options = emptyTable;
        suffix = "x";
      };
      diagnostic = {
        # options = emptyTable;
        suffix = "t";
      };
      file = {
        # options = emptyTable;
        suffix = "f";
      };
      indent = {
        # options = emptyTable;
        suffix = "c";
      };
      jump = {
        # options = emptyTable;
        suffix = "s";
      };
      location = {
        # options = emptyTable;
        suffix = "p";
      };
      oldfile = {
        # options = emptyTable;
        suffix = "h";
      };
      quickfix = {
        # options = emptyTable;
        suffix = "q";
      };
      treesitter = {
        # options = emptyTable;
        suffix = "b";
      };
      undo = {
        # options = emptyTable;
        suffix = "u";
      };
      window = {
        # options = emptyTable;
        suffix = "e";
      };
      yank = {
        # options = emptyTable;
        suffix = "y";
      };
    };
  };
}
