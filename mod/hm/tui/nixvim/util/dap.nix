{
  nv = {
    plugins.dap = {
      enable = true;

      lazyLoad.enable = true; # {{{
      lazyLoad.settings.event = [
        "LspAttach"
      ]; # }}}

      settings = {
      };
    };

    keymaps = [
      # hjkl {{{
      {
        key = "<leader>th"; # dh
        action = ":DapStepOut<cr>";
        mode = "n";
        options.silent = true;
      }
      {
        key = "<leader>tl"; # di
        action = ":DapStepInto<cr>";
        mode = "n";
        options.silent = true;
      }
      {
        key = "<leader>tj"; # da
        action = ":DapStepOver<cr>";
        mode = "n";
        options.silent = true;
      }
      {
        key = "<leader>tk"; # de
        action = ":DapRestartFrame<cr>";
        mode = "n";
        options.silent = true;
      }
      # }}}

    { # pause
      key = "<leader>tu"; # dp
      action = ":DapPause<cr>";
      mode = "n";
      options.silent = true;
    }

    { # clear
      key = "<leader>tm"; # d-
      action = ":DapClearBreakpoints<cr>";
      mode = "n";
      options.silent = true;
    }

    { # continue
      key = "<leader>tw"; # dc
      action = ":DapContinue<cr>";
      mode = "n";
      options.silent = true;
    }

    { # new
      key = "<leader>ti"; # dn
      action = ":DapNew<cr>";
      mode = "n";
      options.silent = true;
    }

    { # breakpoint
      key = "<leader>tr"; # db
      action = ":DapToggleBreakpoint<cr>";
      mode = "n";
      options.silent = true;
    }

    { # repl
      key = "<leader>tv"; # dr
      action = ":DapToggleRepl<cr>";
      mode = "n";
      options.silent = true;
    }

    ];
  };
}
