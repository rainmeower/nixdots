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

      move = {
        enable = true;
        set_jumps = true;

        goto_next_start = {
          "]m" = "@function.outer";
          "]f" = "@call.outer";
          "]d" = "@conditional.outer";
          "]o" = "@loop.outer";
          "]s" = "@statement.outer";
          "]a" = "@parameter.outer";
          "]c" = "@comment.outer";
          "]b" = "@block.outer";
          "]l" = { query = "@class.outer"; desc = "next class start"; };
          "]]m" = "@function.inner";
          "]]f" = "@call.inner";
          "]]d" = "@conditional.inner";
          "]]o" = "@loop.inner";
          "]]a" = "@parameter.inner";
          "]]b" = "@block.inner";
          "]]l" = { query = "@class.inner"; desc = "next class start inner"; };
        };

        goto_next_end = {
          "]M" = "@function.outer";
          "]F" = "@call.outer";
          "]D" = "@conditional.outer";
          "]O" = "@loop.outer";
          "]S" = "@statement.outer";
          "]A" = "@parameter.outer";
          "]C" = "@comment.outer";
          "]B" = "@block.outer";
          "]L" = "@class.outer";
          "]]M" = "@function.inner";
          "]]F" = "@call.inner";
          "]]D" = "@conditional.inner";
          "]]O" = "@loop.inner";
          "]]A" = "@parameter.inner";
          "]]B" = "@block.inner";
          "]]L" = "@class.inner";
        };

        goto_previous_start = {
          "[m" = "@function.outer";
          "[f" = "@call.outer";
          "[d" = "@conditional.outer";
          "[o" = "@loop.outer";
          "[s" = "@statement.outer";
          "[a" = "@parameter.outer";
          "[c" = "@comment.outer";
          "[b" = "@block.outer";
          "[l" = "@class.outer";
          "[[m" = "@function.inner";
          "[[f" = "@call.inner";
          "[[d" = "@conditional.inner";
          "[[o" = "@loop.inner";
          "[[a" = "@parameter.inner";
          "[[b" = "@block.inner";
          "[[l" = "@class.inner";
        };

        goto_previous_end = {
          "[M" = "@function.outer";
          "[F" = "@call.outer";
          "[D" = "@conditional.outer";
          "[O" = "@loop.outer";
          "[S" = "@statement.outer";
          "[A" = "@parameter.outer";
          "[C" = "@comment.outer";
          "[B" = "@block.outer";
          "[L" = "@class.outer";
          "[[M" = "@function.inner";
          "[[F" = "@call.inner";
          "[[D" = "@conditional.inner";
          "[[O" = "@loop.inner";
          "[[A" = "@parameter.inner";
          "[[B" = "@block.inner";
          "[[L" = "@class.inner";
        };
      };
    };
  };
}
