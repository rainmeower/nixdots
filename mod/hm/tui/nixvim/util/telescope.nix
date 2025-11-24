{
  rounding,
  lib,
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
in {
  programs.nixvim.plugins.telescope = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ];

    settings = {
      defaults = {
        selection_caret = "";
        entry_prefix = "";
        prompt_prefix = " 󰘧 ";

        inherit borderchars;
        file_ignore_patterns = [
          "^/nix/store/"
        ];
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
