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


            TelescopeBorder = { fg = "#22262D" },
            TelescopeTitle = { fg = "#22262D" },
            -- TelescopeSelection = { fg = "#22262D" },
            -- TelescopeSelectionCaret = { fg = "#22262D" },
            -- TelescopePromptPrefix = { fg = "#22262D" },
            TelescopePromptCounter = { fg = "#22262D" },
            TelescopePreviewBorder = { fg = "#22262D" },
            TelescopeResultsBorder = { fg = "#22262D" },

            NoiceCmdlinePopupTitle = { fg = "#22262D" },
            NoiceCmdlinePopupTitleCalculator = { fg = "#22262D" },
            NoiceCmdlinePopupTitleCmdline = { fg = "#22262D" },
            NoiceCmdlinePopupTitleFilter = { fg = "#22262D" },
            NoiceCmdlinePopupTitleHelp = { fg = "#22262D" },
            NoiceCmdlinePopupTitleInput = { fg = "#22262D" },
            NoiceCmdlinePopupTitleLua = { fg = "#22262D" },

            NoiceCmdlinePopupBorder = { fg = "#22262D" },
            NoiceCmdlinePopupBorderCalculator = { fg = "#22262D" },
            NoiceCmdlinePopupBorderCmdline = { fg = "#22262D" },
            NoiceCmdlinePopupBorderFilter = { fg = "#22262D" },
            NoiceCmdlinePopupBorderHelp = { fg = "#22262D" },
            NoiceCmdlinePopupBorderInput = { fg = "#22262D" },
            NoiceCmdlinePopupBorderLua = { fg = "#22262D" },

            -- NoiceCmdlineIcon = { fg = "#22262D" },
            -- NoiceCmdlineIconCalculator = { fg = "#22262D" },
            -- NoiceCmdlineIconCmdline = { fg = "#22262D" },
            -- NoiceCmdlineIconFilter = { fg = "#22262D" },
            -- NoiceCmdlineIconHelp = { fg = "#22262D" },
            -- NoiceCmdlineIconInput = { fg = "#22262D" },
            -- NoiceCmdlineIconLua = { fg = "#22262D" },

            NoiceConfirmBorder = { fg = "#22262D" },


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
