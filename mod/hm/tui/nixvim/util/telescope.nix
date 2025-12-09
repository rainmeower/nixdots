{
  rounding,
  prompt_sym,
  ...
}: let
  borderchars = [ # {{{
    "─"
    "│"
    "─"
    "│"
  ] ++ (if rounding then [
    "╭"
    "╮"
    "╯"
    "╰"
  ] else [
    "┌"
    "┐"
    "┘"
    "└"
  ]); # }}}

  file_ignore_patterns = [
    "secret"
    "^/nix/store/" # nix store
    "^/tmp/.*nu$" # <C-o> in nushell
    "^/tmp/tmp_.*txt$" # tridactyl
    "^/tmp/yazi-1000/bulk" # yazi bulk rename
  ];
in {
  nv.plugins.telescope = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "BufRead"
    ];

    settings = {
      defaults = {
        selection_caret = " ";
        entry_prefix = " ";
        prompt_prefix = " ${prompt_sym} ";

        inherit
          borderchars
          file_ignore_patterns
        ;
      };

      pickers = {
        colorscheme = {
          enable_preview = true;
        };
        git_commits = {
          preview_width = 0.5;
          preview_cutoff = 1;
        };
      };
      side_by_side = false;
      layout_strategy = "horizontal";
      layout_config = {
        preview_width = 0.5;
      };
    };

    keymaps = {
      "<leader>v" = "oldfiles";
      "<leader><leader>" = "buffers";
      "<leader>gw" = "git_commits";
      "<leader>ga" = "git_status";
      # "<leader>f" = "live_grep { cwd = '${flake_dir}' }";
      "<leader>/" = "current_buffer_fuzzy_find";

      # "<leader>i" = "oldfiles { cwd = '${flake_dir}' }";
    };
  };
}
