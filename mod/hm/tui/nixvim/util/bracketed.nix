# TODO ]z for jum to fold?
{
  programs.nixvim.plugins.mini-bracketed = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ];

    settings = {
      buffer.suffix = "r";
      comment.suffix = "w";
      conflict.suffix = "x";
      diagnostic.suffix = "t";
      file.suffix = "f";
      indent.suffix = "c";
      jump.suffix = "s";
      location.suffix = "p";
      oldfile.suffix = "h";
      quickfix.suffix = "q";
      treesitter.suffix = "b";
      undo.suffix = ""; # disables visual block mode
      window.suffix = "e";
      yank.suffix = "y";
    };
  };
}
