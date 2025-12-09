{
  inputs,
  ...
}:{
  imports = [
    inputs.nixvim.homeModules.nixvim

    ./autocommands.nix
    ./lazy.nix
    ./misc.nix
    ./nixvim.nix
    ./options.nix

    ./theme/everforest/hard/hard.nix
    ./theme/everforest/medium/medium.nix
    ./theme/everforest/soft/soft.nix
    ./theme/everforest/soft/lualine.nix
    ./theme/everforest/medium/medium.nix
    ./theme/everforest/medium/lualine.nix
    ./theme/everforest/hard/hard.nix
    ./theme/everforest/hard/lualine.nix
    ./theme/blacchiato.nix
    ./theme/lix.nix
    ./theme/macchiato.nix
    ./theme/kanso.nix
    ./theme/highlight.nix

    ./key/keymaps.nix
    ./key/langmap.nix
    ./key/no_yank_del.nix

    # ./ui/colorizer.nix
    # ./ui/indentscope.nix
    # ./ui/smear-cursor.nix
    # ./ui/tiny-glimmer.nix
    ./ui/yank_highlight.nix
    ./ui/twilight.nix
    ./ui/ccc.nix
    ./ui/diagnostic.nix
    ./ui/lualine.nix
    ./ui/noice.nix
    ./ui/render-markdown.nix
    ./ui/yazi.nix

    # ./util/firenvim.nix
    # ./util/luasnip.nix
    # ./util/pairs.nix
    # ./util/picker.nix
    # ./util/splitjoin.nix
    # ./util/treesitter-context.nix
    # ./util/treesj.nix
    ./util/bracketed.nix
    # ./util/orgmode.nix
    ./util/neorg.nix
    ./util/completion.nix
    ./util/comment.nix
    ./util/flash.nix
    ./util/rustaceanvim.nix
    ./util/godot.nix
    ./util/gx.nix
    ./util/lsp.nix
    ./util/lspconfig.nix
    ./util/matchup.nix
    ./util/neotest.nix
    ./util/repeat.nix
    ./util/surround.nix
    ./util/code-action.nix
    ./util/telescope.nix
    ./util/treesitter-textobjects.nix
    ./util/treesitter.nix
    ./util/ts-node-action.nix
  ];
}
