{
  nv.plugins.treesitter-textobjects = {
    enable = true;

    # lazyLoad.enable = true; # {{{
    # lazyLoad.settings.event = [
    #   "LspAttach"
    # ]; # }}}

    settings = {
      lookahead = true;

      select = {
        enable = true;

        keymaps = {
          "a=" = "@assignment.outer";
          "i=" = "@assignment.inner";
          "[=" = "@assignment.lhs";
          "]=" = "@assignment.rhs";
          aa   = "@parameter.outer";
          ia   = "@parameter.inner";
          ac   = "@conditional.outer";
          ic   = "@conditional.inner";
          "[i" = "@conditional.lhs";
          "]i" = "@conditional.rhs";
          al   = "@loop.outer";
          il   = "@loop.inner";
          af   = "@call.outer";
          "if" = "@call.inner";
          ad   = "@function.outer"; # d for definition
          id   = "@function.inner";
          ax   = "@class.outer";
          ix   = "@class.inner";
          "a " = "@block.outer";
          "i " = "@block.inner";
        };
      };
    };
  };
}
