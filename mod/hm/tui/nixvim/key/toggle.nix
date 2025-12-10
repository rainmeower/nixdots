{
  nv.keymaps = [
  { # toggle wrap
    key = "<Leader>bs"; # tw
    action = ":lua vim.o.wrap = not vim.o.wrap<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }
  { # toggle wrap for buffer
    key = "<Leader>bS"; # tw
    action = ":lua vim.bo.wrap = not vim.bo.wrap<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }
  { # toggle breakindent
    key = "<Leader>br"; # tb
    action = ":lua vim.o.breakindent = not vim.o.breakindent<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }
  { # toggle breakindent for buffer
    key = "<Leader>bR"; # tb
    action = ":lua vim.bo.breakindent = not vim.bo.breakindent<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }


  { # toggle rnu
    key = "<Leader>bv"; # tr
    action = ":lua vim.o.relativenumber = not vim.o.relativenumber<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }
  { # toggle rnu for buffer
    key = "<Leader>bV"; # tr
    action = ":lua vim.bo.relativenumber = not vim.bo.relativenumber<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }

  { # toggle num
    key = "<Leader>bi"; # tn
    action = ":lua vim.o.number = not vim.o.number<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }
  { # toggle num for buffer
    key = "<Leader>bI"; # tn
    action = ":lua vim.bo.number = not vim.bo.number<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }

  # FIXME
  { # toggle inlay hints
    key = "<Leader>bh"; # th
    action = ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>";
    mode = [ "n" "x" ];
    options.silent = true;
  }
  # { # toggle inlay hints for buffer
  #   key = "<Leader>bH"; # th
  #   action = ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>";
  #   mode = [ "n" "x" ];
    # options.silent = true;
  # }
  ];
}
