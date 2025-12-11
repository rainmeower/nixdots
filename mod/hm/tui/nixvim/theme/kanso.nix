# NOTE run :KansoCompile when changing anything
{
  pkgs,
  lib,
  theme,
  p,
  if_theme,
  ...
}: if_theme "kanso" {
  nv = {
    extraPlugins = [ pkgs.vimPlugins.kanso-nvim ];
    extraConfigLua = ''
      -- Default options:
      require('kanso').setup({
          bold = true,                 -- enable bold fonts
          italics = false,             -- enable italics
          compile = true,             -- enable compiling the colorscheme
          undercurl = false,            -- enable undercurls
          commentStyle = { italic = true },
          functionStyle = {},
          keywordStyle = { italic = false},
          statementStyle = {},
          typeStyle = {},
          transparent = true,         -- do not set background color
          dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
          terminalColors = true,       -- define vim.g.terminal_color_{0,17}
          colors = {                   -- add/modify theme and palette colors
          palette = {},
          theme = { zen = {}, pearl = {}, ink = {}, all = {} },
          },
          overrides = function(colors)
          return {

          RenderMarkdownH1Bg = { fg = "#090E13", bg = "#f2f1ef" },
          MatchParen = { reverse = true },
          RenderMarkdownH2Bg = { fg = "#090E13", bg = "#C5C9C7" },

          }
          end,
          theme = ${lib.strings.removePrefix "kanso_" theme},
      })
      vim.cmd("colorscheme kanso")
    '';
  };
}
