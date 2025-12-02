{
  programs.nixvim.plugins.treesitter-textobjects = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "BufRead"
    ];

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
          at   = "@function.outer"; # d for definition
          it   = "@function.inner";
          ap   = "@class.outer";
          ip   = "@class.inner";
          ar   = "@block.outer";
          ir   = "@block.inner";
        };
      };
    };
  };
}
