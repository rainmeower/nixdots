{
  programs.nixvim.plugins.treesitter-textobjects = {
    enable = true;

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
          ai   = "@conditional.outer";
          ii   = "@conditional.inner";
          "[i" = "@conditional.lhs";
          "]i" = "@conditional.rhs";
          al   = "@loop.outer";
          il   = "@loop.inner";
          af   = "@call.outer";
          "if" = "@call.inner";
          am   = "@function.outer";
          im   = "@function.inner";
          ac   = "@class.outer";
          ic   = "@class.inner";
          ar   = "@block.outer";
          ir   = "@block.inner";
        };
      };
    };
  };
}
