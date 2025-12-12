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
          RenderMarkdownH2Bg = { fg = "#090E13", bg = "#C5C9C7" },
          MatchParen = { fg = "#090E13", bg = "#8ba4b0" },
          ['@neorg.markup.bold'] = { fg = "#090E13", bg = "#8ba4b0" },



    NoiceCmdlinePopupTitle = { fg = "None" },
    NoiceCmdlinePopupTitleCalculator = { fg = "None" },
    NoiceCmdlinePopupTitleCmdline = { fg = "None" },
    NoiceCmdlinePopupTitleFilter = { fg = "None" },
    NoiceCmdlinePopupTitleHelp = { fg = "None" },
    NoiceCmdlinePopupTitleInput = { fg = "None" },
    NoiceCmdlinePopupTitleLua = { fg = "None" },

    NoiceCmdlinePopupBorder = { fg = "None" },
    NoiceCmdlinePopupBorderCalculator = { fg = "None" },
    NoiceCmdlinePopupBorderCmdline = { fg = "None" },
    NoiceCmdlinePopupBorderFilter = { fg = "None" },
    NoiceCmdlinePopupBorderHelp = { fg = "None" },
    NoiceCmdlinePopupBorderInput = { fg = "None" },
    NoiceCmdlinePopupBorderLua = { fg = "None" },

    NoiceCmdlineIcon = { fg = "None" },
    NoiceCmdlineIconCalculator = { fg = "None" },
    NoiceCmdlineIconCmdline = { fg = "None" },
    NoiceCmdlineIconFilter = { fg = "None" },
    NoiceCmdlineIconHelp = { fg = "None" },
    NoiceCmdlineIconInput = { fg = "None" },
    NoiceCmdlineIconLua = { fg = "None" },

    NoiceConfirmBorder = { fg = "None" },


          CursorLine = { bg = "None" },
          CursorLineNr = { fg = "#8ba4b0" },
          LineNr = { fg = "#393B44" }

          }
          end,
          theme = ${lib.strings.removePrefix "kanso_" theme},
      })
      vim.cmd("colorscheme kanso")
    '';
  };
}
