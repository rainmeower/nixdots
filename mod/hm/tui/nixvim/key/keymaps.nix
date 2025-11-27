{
  programs.nixvim = {
    globals.mapleader = " ";
    keymaps = [
    { # duplicate and comment out line FIXME: doesnt work without :norm?
      key = "<C-l>";
      action = ":norm mzyygccp`zj<cr>";
      mode = "n";
      options.silent = true;
    }

    {
      key = "ga";
      action = ":lua require('ts-node-action').node_action<cr>";
      mode = [ "n" "x" "o" ];
      options.silent = true;
    }

    {
      key = "x"; # tw
      action = "gc";
      mode = [ "n" "x" "o" ];
    }

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

    {
      key = "<Leader>r";
      action = "mz:s/\\v(true|false)/\\={'true':'false','false':'true'}[submatch(0)]/g<cr>`z<cmd>nohlsearch<cr>";
      mode = [ "n" "x" ];
      options.silent = true;
    }

    # { # angle brackets
    #   key = "cij";
    #   action = "ci<";
    #   mode = "n";
    # }
    # { # angle brackets
    #   key = "dij";
    #   action = "di<";
    #   mode = "n";
    # }
    # { # angle brackets
    #   key = "vij";
    #   action = "vi<";
    #   mode = "n";
    # }
    # { # angle brackets
    #   key = "yij";
    #   action = "yi<";
    #   mode = "n";
    # }
    # { # angle brackets
    #   key = "caj";
    #   action = "ca<";
    #   mode = "n";
    # }
    # { # angle brackets
    #   key = "daj";
    #   action = "da<";
    #   mode = "n";
    # }
    # { # angle brackets
    #   key = "vaj";
    #   action = "va<";
    #   mode = "n";
    # }
    # { # angle brackets
    #   key = "yaj";
    #   action = "ya<";
    #   mode = "n";
    # }





    # {
    #   key = "<C-n>";
    #   action = "I";
    #   mode = [ "n" "x" ];
    # }
    # {
    #   key = "<C-s>";
    #   action = "A";
    #   mode = [ "n" "x" ];
    # }
    # {
    #   key = "gi";
    #   action = "I";
    #   mode = [ "n" "x" ];
    # }
    # {
    #   key = "ga";
    #   action = "A";
    #   mode = [ "n" "x" ];
    # }

    {
      key = "<PageDown>";
      action = "<C-d>";
      mode = [ "n" "i" "x" ];
    }

    {
      key = "<PageUp>";
      action = "<C-u>";
      mode = [ "n" "i" "x" ];
    }

    { # avoid sfb/lsb for dd
      key = "dc";
      action = "dd";
      mode = "n";
    }

    { # avoid sfb for cc
      key = "cd";
      action = "cc";
      mode = "n";
    }

    # {
    #   key = "gd";
    #   action = ":lua vim.lsp.buf.definition()<cr>";
    #   mode = [ "n" "v" "x" ];
    # }
    #
    # {
    #   key = "gD";
    #   action = ":lua vim.lsp.buf.declaration()<cr>";
    #   mode = [ "n" "v" "x" ];
    # }

    # { # write & quit
    #   key = "Zz";
    #   action = "ZZ";
    #   mode = [ "n" "v" "x" ];
    # }

    {
      key = ":x";
      action = ":echo \"use lou chord\"<cr>";
      mode = [ "n" "v" "x" ];
    }

    {
      key = ":wq";
      action = ":echo \"use lou chord\"<cr>";
      mode = [ "n" "v" "x" ];
    }

    {
      key = "i(";
      action = ":echo \"use b instead of ( or )\"<cr>";
      mode = [ "o" "x" ];
      options.silent = true;
    }
    {
      key = "i)";
      action = ":echo \"use b instead of ( or )\"<cr>";
      mode = [ "o" "x" ];
      options.silent = true;
    }

    # { # put cursor at top of screen
    #   key = "zh";
    #   action = "zo";
    #   mode = [ "n" "v" "x" ];
    # }
    #
    # { # put cursor at top of screen
    #   key = "zw";
    #   action = "zc";
    #   mode = [ "n" "v" "x" ];
    # }
    #
    # { # put cursor at top of screen
    #   key = "zK";
    #   action = "z<cr>";
    #   mode = [ "n" "v" "x" ];
    # }
    #
    # { # put cursor at bottom of screen
    #   key = "zJ";
    #   action = "z-";
    #   mode = [ "n" "v" "x" ];
    # }
    #
    # { # put top of screen at cursor
    #   key = "zj";
    #   action = "zt";
    #   mode = [ "n" "v" "x" ];
    # }
    #
    # { # put bottom of screen at cursor
    #   key = "zk";
    #   action = "zb";
    #   mode = [ "n" "v" "x" ];
    # }

    { # css important
      key = "<leader>!";
      action = "mzf;i !important<esc>`z";
      mode = [ "n" "v" "x" ];
    }

    { # append semicolon
      key = "<leader>;";
      action = "mzA;<esc>`z";
      mode = [ "n" "v" "x" ];
    }

    { # append comma
      key = "<leader>,";
      action = "mzA,<esc>`z";
      mode = [ "n" "v" "x" ];
    }

    { # insert line below
      key = "<C-k>";
      action = "o<esc>k";
      mode = "n";
    }

    { # insert line above
      key = "<C-S-k>";
      action = "O<esc>j";
      mode = "n";
    }

    {
      key = "<C-r>";
      action = "<C-v>";
      mode = "n";
    }

    {
      key = "<esc>";
      action = ":nohlsearch<cr>";
      mode = "n";
      options.silent = true;
    }

    {
      key = "<backspace>";
      action = "\"_x";
      mode = "n";
    }

    {
      key = "x";
      action = "\"_x";
      mode = "n";
    }

    {
      key = "<C-backspace>";
      action = "<C-w>";
      mode = [ "i" "c" "t" ];
    }

    {
      key = "<C-h>";
      action = "d";
      mode = [ "n" "v" "x" "o" ];
    }

    {
      key = "gj";
      action = "^";
      mode = "n";
    }

    {
      key = "gk";
      action = "$";
      mode = "n";
    }

    { key = "{"; action = "("; mode = [ "n" "v" "x" "o" ]; }
    { key = "}"; action = ")"; mode = [ "n" "v" "x" "o" ]; }
    { key = "("; action = "}"; mode = [ "n" "v" "x" "o" ]; }
    { key = ")"; action = "{"; mode = [ "n" "v" "x" "o" ]; }

    {
      key = "<C-t>";
      action = "<C-o>";
      mode = [ "n" "v" "x" ];
    }

    {
      key = "<C-c>";
      action = "<C-i>";
      mode = [ "n" "v" "x" ];
    }

    # {
    #   key = "<tab>";
    #   action = "%";
    #   mode = [ "n" "v" "x" ];
    # }

    {
      key = "<C-r>";
      action = "<C-v>";
      mode = "n" ;
    }

    {
      key = "U";
      action = "<C-r>";
      mode = ["n" "v" "x" ];
    }

    {
      key = "<C-a>";
      action = "<C-d>";
      mode = [ "n" "v" "x" ];
    }

    {
      key = "<C-j>";
      action = "<C-a>";
      mode = [ "n" "v" "x" ];
    }

    {
      key = "<C-e>";
      action = "<C-u>";
      mode = [ "n" "v" "x" ];
    }

    {
      key = "<leader>d";
      action = ":bp<cr>";
      mode = [ "n" "v" "x" ];
      options.silent = true;
    }

    {
      key = "<leader>c";
      action = ":bn<cr>";
      mode = [ "n" "v" "x" ];
      options.silent = true;
    }

    {
      key = "<leader>a";
      action = "<C-6>";
      mode = "n";
    }

    {
      key = "<C-S-a>";
      action = ":m .+1<CR>==";
      mode = "n";
      options.silent = true;
    }
    {
      key = "<C-S-e>";
      action = ":m .-2<CR>==";
      mode = "n";
      options.silent = true;
    }

    {
      key = "<C-S-a>";
      action = ":'<,'>m .+1<CR>==";
      mode = "v";
      options.silent = true;
    }
    {
      key = "<C-S-e>";
      action = ":'<,'>m .-2<CR>==";
      mode = "v";
      options.silent = true;
    }

    # { key = "<left>"; action = ""; mode = [ "i" "n" "v" "x" ]; }
    # { key = "<down>"; action = ""; mode = [ "i" "n" "v" "x" ]; }
    # { key = "<up>"; action = ""; mode = [ "i" "n" "v" "x" ]; }
    # { key = "<right>"; action = ""; mode = [ "i" "n" "v" "x" ]; }


    ];
  };
}
