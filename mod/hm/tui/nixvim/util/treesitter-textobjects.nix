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
          ac   = "@comment.outer";
          ic   = "@comment.inner";
          ai   = "@conditional.outer";
          ii   = "@conditional.inner";
          "[i" = "@conditional.lhs";
          "]i" = "@conditional.rhs";
          al   = "@loop.outer";
          il   = "@loop.inner";
          af   = "@call.outer";
          "if" = "@call.inner";
          ad   = "@function.outer"; # d for definition
          id   = "@function.inner";
          ak   = "@class.outer";
          ik   = "@class.inner";
          "a " = "@block.outer";
          "i " = "@block.inner";
        };
      };

      # TODO functions to make this more concise
      move = {
        enable = true;
        set_jumps = true;

        goto_next_start = {
          "] "  = "@block.outer";
          "]] " = "@block.inner";
          "]f"  = "@call.outer";
          "]]f" = "@call.inner";
          "]k"  = "@class.outer";
          "]]k" = "@class.inner";
          "]c"  = "@comment.outer";
          "]]c" = "@comment.inner";
          "]i"  = "@conditional.outer";
          "]]i" = "@conditional.inner";
          "]d"  = "@function.outer";
          "]]d" = "@function.inner";
          "]l"  = "@loop.outer";
          "]]l" = "@loop.inner";
          "]a"  = "@parameter.outer";
          "]]a" = "@parameter.inner";
          "]s"  = "@statement.outer";
          "]]s" = "@statement.inner";
        };

        goto_next_end = {
          "]<S- >"  = "@block.outer";
          "]]<S- >" = "@block.inner";
          "]F"  = "@call.outer";
          "]]F" = "@call.inner";
          "]K"  = "@class.outer";
          "]]K" = "@class.inner";
          "]C"  = "@comment.outer";
          "]]C" = "@comment.inner";
          "]I"  = "@conditional.outer";
          "]]I" = "@conditional.inner";
          "]D"  = "@function.outer";
          "]]D" = "@function.inner";
          "]L"  = "@loop.outer";
          "]]L" = "@loop.inner";
          "]A"  = "@parameter.inner";
          "]]A" = "@parameter.inner";
          "]S"  = "@statement.outer";
          "]]S" = "@statement.inner";
        };

        goto_previous_start = {
          "[ "  = "@block.outer";
          "[[ " = "@block.inner";
          "[f"  = "@call.outer";
          "[[f" = "@call.inner";
          "[k"  = "@class.outer";
          "[[k" = "@class.inner";
          "[c"  = "@comment.outer";
          "[[c" = "@comment.inner";
          "[i"  = "@conditional.outer";
          "[[i" = "@conditional.inner";
          "[d"  = "@function.outer";
          "[[d" = "@function.inner";
          "[l"  = "@loop.outer";
          "[[l" = "@loop.inner";
          "[a"  = "@parameter.outer";
          "[[a" = "@parameter.inner";
          "[s"  = "@statement.outer";
          "[[s" = "@statement.inner";
        };

        goto_previous_end = {
          "[<S- >"  = "@block.outer";
          "[[<S- >" = "@block.inner";
          "[F" = "@call.outer";
          "[[F" = "@call.inner";
          "[K" = "@class.outer";
          "[[K" = "@class.inner";
          "[C" = "@comment.outer";
          "[[C" = "@comment.inner";
          "[I" = "@conditional.outer";
          "[[I" = "@conditional.inner";
          "[D" = "@function.outer";
          "[[D" = "@function.inner";
          "[L" = "@loop.outer";
          "[[L" = "@loop.inner";
          "[A" = "@parameter.outer";
          "[[A" = "@parameter.inner";
          "[S" = "@statement.outer";
          "[[S" = "@statement.inner";
        };
      };
    };
  };
}
