{
  nv = {
    globals.mapleader = " ";
    keymaps = [
    { # duplicate and comment out line  NOTE: doesnt work without :norm?
      key = "<C-l>";
      action = ":norm mzyygccp`zj<cr>";
      mode = "n";
      options.silent = true;
    }

    # { # down in lists
    #   key = "<C-a>";
    #   action = "<C-n>";
    #   mode = [ "c" "i" ];
    # }
    # { # up in lists
    #   key = "<C-e>";
    #   action = "<C-p>";
    #   mode = [ "c" "i" ];
    # }
    # { key = "up"; action = ""; mode = "i"; }
    # { key = "down"; action = ""; mode = "i"; }

    {
      key = "ga";
      action = ":lua require('ts-node-action').node_action<cr>";
      mode = [ "n" "x" "o" ];
      options.silent = true;
    }

    {
      key = "<bs>";
      action = "\"_x";
      mode = "n";
    }
    {
      key = "<bs>";
      action = "x";
      mode = "o";
    }

    # toggles {{{
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
    # }}}

    {
      key = "<Leader>r";
      action = "mz:s/\\v(true|false)/\\={'true':'false','false':'true'}[submatch(0)]/g<cr>`z:nohlsearch<cr>";
      mode = [ "n" "x" ];
      options.silent = true;
    }

    # angle brackets {{{
    # {
    #   key = "cij";
    #   action = "ci<";
    #   mode = "n";
    # }
    # {
    #   key = "dij";
    #   action = "di<";
    #   mode = "n";
    # }
    # {
    #   key = "vij";
    #   action = "vi<";
    #   mode = "n";
    # }
    # {
    #   key = "yij";
    #   action = "yi<";
    #   mode = "n";
    # }
    # {
    #   key = "caj";
    #   action = "ca<";
    #   mode = "n";
    # }
    # {
    #   key = "daj";
    #   action = "da<";
    #   mode = "n";
    # }
    # {
    #   key = "vaj";
    #   action = "va<";
    #   mode = "n";
    # }
    # {
    #   key = "yaj";
    #   action = "ya<";
    #   mode = "n";
    # }
    # }}}





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

    { # goto prev fold
      key = "zb";
      action = "zk";
      mode = [ "n" "v" "x" ];
    }

    { # goto next fold
      key = "zw";
      action = "zj";
      mode = [ "n" "v" "x" ];
    }

    # habits {{{

    # # FIXME delays the cmdline opening
    # {
    #   key = ":x";
    #   action = ":echo \"use lou chord\"<cr>";
    #   mode = [ "n" "v" "x" ];
    # }
    # {
    #   key = ":wq";
    #   action = ":echo \"use lou chord\"<cr>";
    #   mode = [ "n" "v" "x" ];
    # }

    {
      key = "<C-S-x>";
      action = ":w<cr>";
      mode = [ "n" "v" "x" ];
      options.silent = true;
    }

    {
      key = "<C-S-x>";
      action = "<esc>:w<cr>";
      mode = "i";
      options.silent = true;
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

    {
      key = "i{";
      action = ":echo \"use B instead of { or }\"<cr>";
      mode = [ "o" "x" ];
      options.silent = true;
    }
    {
      key = "i}";
      action = ":echo \"use B instead of { or }\"<cr>";
      mode = [ "o" "x" ];
      options.silent = true;
    } # }}}

    # cursor {{{
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
    # }}}}

    # appending {{{
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
    } # }}}

    { # insert line below
      key = "<C-k>";
      action = "mzo<esc>k`z";
      mode = "n";
    }

    { # insert line above
      key = "<C-S-k>";
      action = "mzO<esc>j`z";
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

    # jump list {{{
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
    # }}}

    # { # frees up a key
    #   key = "<tab>";
    #   action = "%";
    #   mode = [ "n" "v" "x" ];
    # }

    {
      key = "<C-r>";
      action = "<C-v>";
      mode = "n" ;
    }

    { # redo with uppercase undo
      key = "U";
      action = "<C-r>";
      mode = ["n" "v" "x" ];
    }

    # half pages {{{
    {
      key = "<C-a>";
      action = "<C-d>";
      mode = [ "n" "v" "x" ];
    }
    {
      key = "<C-e>";
      action = "<C-u>";
      mode = [ "n" "v" "x" ];
    }
    # }}}

    {
      key = "<C-j>";
      action = "<C-a>";
      mode = [ "n" "v" "x" ];
    }

    # buffers {{{
    { # TODO
      key = "<leader>d";
      action = ":bp<cr>";
      # action = '':echo "use <spc><@>"<cr>'';
      mode = [ "n" "v" "x" ];
      options.silent = true;
    }

    { # TODO
      key = "<leader>c";
      action = ":bn<cr>";
      # action = '':echo "use <spc><@>"<cr>'';
      mode = [ "n" "v" "x" ];
      options.silent = true;
    }

    # buffer jump by number {{{
    {
      key = "<F1>";
      action = ":LualineBuffersJump 1<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F2>";
      action = ":LualineBuffersJump 2<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F3>";
      action = ":LualineBuffersJump 3<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F4>";
      action = ":LualineBuffersJump 4<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F5>";
      action = ":LualineBuffersJump 5<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F6>";
      action = ":LualineBuffersJump 6<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F7>";
      action = ":LualineBuffersJump 7<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F8>";
      action = ":LualineBuffersJump 8<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F9>";
      action = ":LualineBuffersJump 9<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F10>";
      action = ":LualineBuffersJump 10<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F11>";
      action = ":LualineBuffersJump 11<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    {
      key = "<F12>";
      action = ":LualineBuffersJump 12<cr>";
      mode = [ "n" "v" "x" "i" ];
      options.silent = true;
    }

    # }}}

    {
      key = "<leader>a";
      action = "<C-6>";
      mode = "n";
    } # }}}

    # moving lines {{{
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
    } # }}}

    # { key = "<left>"; action = ""; mode = [ "i" "n" "v" "x" ]; }
    # { key = "<down>"; action = ""; mode = [ "i" "n" "v" "x" ]; }
    # { key = "<up>"; action = ""; mode = [ "i" "n" "v" "x" ]; }
    # { key = "<right>"; action = ""; mode = [ "i" "n" "v" "x" ]; }


    ];
  };
}
