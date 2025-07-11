{ lib, theme, ... }:
let
col = import ../../../../../themes/macchiato/colors.nix;
in {
  config = lib.mkIf (theme == "macchiato") {

    programs.nixvim.colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "macchiato";
        transparent_background = true;
        show_end_of_buffer = false;
        integrations = {
          treesitter = true;
          gitsigns = true;
          noice = true;
          lualine = false;
          mini = {
            enable = true;
            indentscope_color = "#a5adcb";
          };

        };
        no_italic = true;
        no_bold = true;
        no_underline = true;

        highlight_overrides.all = {

          lualine_a_normal = { fg = col.base; bg = col.lavender; };
          lualine_a_insert = { fg = col.base; bg = col.mauve; };
          lualine_a_visual = { fg = col.base; bg = col.mauve; };
          lualine_a_replace = { fg = col.base; bg = col.red; };
          lualine_a_command = { fg = col.base; bg = col.lavender; };
          lualine_a_terminal = { fg = col.base; bg = col.lavender; };


          YaziFloatBorder.fg = col.lavender;

          FlashMatch.fg = col.base0F;
          FlashLabel.fg = "#F22C86";
          FlashBackdrop.fg = "#886C9C";
          TelescopeSelection = {
            fg = "none";
            bg = col.base08;
          };
          CursorLine.bg = "#47345E";
          RenderMarkdownCode.bg = "#3B224C";
          RenderMarkdownBullet.fg = col.base01;
          RenderMarkdownCodeInline.bg = "#3B224C";
          #TermCursor.bg = col.text
          Character.fg = col.base01;
          Constant.fg = "#C78DFC";
          #FunctionBuiltIn.fg = col.green
          #Number.fg = col.peach
          #Boolean.fg = col.peach
          #Float.fg = col.peach
          # Repeat.fg = col.base08";
          # Type.fg = "#D5E7FF";
          "@lsp.type.class".fg = "#D5E7FF";
          "@lsp.type.comment".fg = col.base07;
          "@lsp.type.enum".fg = "#D5E7FF";
          "@lsp.type.enumMember".fg = col.base01;
          "@lsp.type.function".fg = col.base09;
          "@lsp.type.method".fg = "#D5E7FF";
          "@lsp.type.number".fg = "#EFBA5D";
          "Delimiter".fg = col.base01;
          "@paramater".fg = col.base01;
          "@property".fg = "#D5E7FF";
          #"@lsp.type.property".fg = "";
          "@lsp.type.string".fg = "#A5E07F";
          "@lsp.type.struct".fg = "#D5E7FF";
          "@lsp.type.type".fg = "#D5E7FF";
          #"@lsp.type.typeParameter".fg = "";
          "@lsp.type.variable".fg = col.base01;


          FloatBorder.fg = col.base08;
          MatchParen = { fg = col.base0C; bg = "None"; };
          Conditional.fg = col.base0A;
          Keyword.fg = col.base0A;
          "@lsp.type.keyword".fg = col.base0A;
          FlashCurrent.fg = col.base0A;
          CursorLineNr.fg = col.base08;
          LineNr.fg = col.base08;
          NoiceCmdlinePopupTitleSearch.fg = col.base08;
          NoiceCmdlinePopupBorderHelp.fg = col.base08;
          NoiceCmdlinePopupTitleHelp.fg = col.base08;
          NoiceCmdlinePopupTitle.fg = col.base08;
          NoiceCmdlinePopupBorder.fg = col.base08;
          NoiceCmdlineIcon.fg = col.base08;
          NoiceCmdlinePopupBorderLua.fg = col.base08;
          NoiceCmdlinePopupBorderCalculator.fg = col.base08;
          NoiceCmdlinePopupTitleCalculator.fg = col.base08;
          NoiceCmdlinePopupBorderSearch.fg = col.base08;
          NoiceCmdlineIconSearch.fg = col.base08;
          TelescopeBorder.fg = col.base08;
          TelescopeTitle.fg = col.base08;
          SnacksIndentChunk.fg = col.base08;
          SnacksIndentScope.fg = col.base08;
          RenderMarkdownInlineHighlight.fg = col.base08;
          RenderMarkdownTableHead.fg = col.base08;
          RenderMarkdownTableRow.fg = col.base08;
          RenderMarkdownTableFill.fg = col.base08;
          Statement.fg = col.base08;
          Macro.fg = col.base08;
          Special.fg = col.base08;
          SpecialChar.fg = col.base08;
          "@function.builtin".fg = col.base08;
          "@lsp.type.macro".fg = col.base08;
          "@constant.macro".fg = col.base08;
          "@lsp.type.operator".fg = col.base08;
          "@operator".fg = col.base08;
          "Operator".fg = col.base08;
          "@module".fg = col.base08;
          TelescopeResultsDiffUntracked.fg = col.base07;
          MiniIndentscopeSymbol.fg = col.base07;
          LineNrAbove.fg = col.base07;
          LineNrBelow.fg = col.base07;
          Comment.fg = col.base07;
          SpecialComment.fg = col.base07;
          String.fg = col.base0F;
        };
      };
    };
  };
}
