{
  pkgs,
  ...
}: {
# FIXME
#   programs.nixvim = {
#     extraPlugins = with pkgs.vimPlugins; [
#       (pkgs.vimUtils.buildVimPlugin {
#         pname = "tiny-code-action.nvim";
#         version = "188122ee2ea278eb74f55c6d39b5f6b5f8eefe8c";
#         src = pkgs.fetchFromGitHub {
#           owner = "rachartier";
#           repo = "tiny-code-action.nvim";
#           rev = "188122ee2ea278eb74f55c6d39b5f6b5f8eefe8c";
#           sha256 = "sha256-wmaYyOPYsmaYdGDe18wNL4ErNxuUvBVjM8wwy4Fk3Wc=";
#         };
#       }.overrideAttrs {
#         nvimSkipModules = [
#         ];
#       })
#     ];
#     extraConfigLua = ''
#       require('tiny-code-action').setup()
#       --   picker = {
#         --     "buffer",
#         --     opts = {
#           --       hotkeys = true, -- Enable hotkeys for quick selection of actions
#             --       hotkeys_mode = "text_diff_based", -- Modes for generating hotkeys
#             --       auto_preview = false, -- Enable or disable automatic preview
#             --       auto_accept = false, -- Automatically accept the selected action (with hotkeys)
#             --       position = "cursor", -- Position of the picker window
#             --       -- winborder = "single", -- Border style for picker and preview windows
#             --       keymaps = {
#               --         preview = "K", -- Key to show preview
#                 --         close = { "q", "<Esc>" }, -- Keys to close the window (can be string or table)
#                 --         select = "<CR>", -- Keys to select action (can be string or table)
#                 --         preview_close = { "q", "<Esc>" }, -- Keys to return from preview to main window (can be string or table)
#                 --       },
#           --       custom_keys = {
#             --         { key = 'm', pattern = 'Fill match arms' },
#             --         { key = 'r', pattern = 'Rename.*' }, -- Lua pattern matching
#               --       },
#           --       group_icon = " └",
#           --     },
#         --   },
#       -- })
#         '';
# };
}
