{
  if_theme,
  p,
  ...
}: if_theme "macchiato" {
  nv.colorschemes.catppuccin = {
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
        # TODO move this

        lualine_a_normal = { fg = p.base; bg = p.lavender; };
        lualine_a_insert = { fg = p.base; bg = p.mauve; };
        lualine_a_visual = { fg = p.base; bg = p.mauve; };
        lualine_a_replace = { fg = p.base; bg = p.red; };
        lualine_a_command = { fg = p.base; bg = p.lavender; };
        lualine_a_terminal = { fg = p.base; bg = p.lavender; };


        YaziFloatBorder.fg = p.lavender;

        FlashMatch.fg = p.base0F;
        FlashLabel.fg = "#F22C86";
        FlashBackdrop.fg = "#886C9C";
        TelescopeSelection = {
          fg = "none";
          bg = p.base08;
        };
        CursorLine.bg = "#47345E";
        RenderMarkdownCode.bg = "#3B224C";
        RenderMarkdownBullet.fg = p.base01;
        RenderMarkdownCodeInline.bg = "#3B224C";
        #TermCursor.bg = p.text
        Character.fg = p.base01;
        Constant.fg = "#C78DFC";
        #FunctionBuiltIn.fg = p.green
        #Number.fg = p.peach
        #Boolean.fg = p.peach
        #Float.fg = p.peach
        # Repeat.fg = p.base08";
        # Type.fg = "#D5E7FF";
        "@lsp.type.class".fg = "#D5E7FF";
        "@lsp.type.comment".fg = p.base07;
        "@lsp.type.enum".fg = "#D5E7FF";
        "@lsp.type.enumMember".fg = p.base01;
        "@lsp.type.function".fg = p.base09;
        "@lsp.type.method".fg = "#D5E7FF";
        "@lsp.type.number".fg = "#EFBA5D";
        "Delimiter".fg = p.base01;
        "@paramater".fg = p.base01;
        "@property".fg = "#D5E7FF";
        #"@lsp.type.property".fg = "";
        "@lsp.type.string".fg = "#A5E07F";
        "@lsp.type.struct".fg = "#D5E7FF";
        "@lsp.type.type".fg = "#D5E7FF";
        #"@lsp.type.typeParameter".fg = "";
        "@lsp.type.variable".fg = p.base01;


        FloatBorder.fg = p.base08;
        MatchParen = { fg = p.base0C; bg = "None"; };
        Conditional.fg = p.base0A;
        Keyword.fg = p.base0A;
        "@lsp.type.keyword".fg = p.base0A;
        FlashCurrent.fg = p.base0A;
        CursorLineNr.fg = p.base08;
        LineNr.fg = p.base08;
        NoiceCmdlinePopupTitleSearch.fg = p.base08;
        NoiceCmdlinePopupBorderHelp.fg = p.base08;
        NoiceCmdlinePopupTitleHelp.fg = p.base08;
        NoiceCmdlinePopupTitle.fg = p.base08;
        NoiceCmdlinePopupBorder.fg = p.base08;
        NoiceCmdlineIcon.fg = p.base08;
        NoiceCmdlinePopupBorderLua.fg = p.base08;
        NoiceCmdlinePopupBorderCalculator.fg = p.base08;
        NoiceCmdlinePopupTitleCalculator.fg = p.base08;
        NoiceCmdlinePopupBorderSearch.fg = p.base08;
        NoiceCmdlineIconSearch.fg = p.base08;
        TelescopeBorder.fg = p.base08;
        TelescopeTitle.fg = p.base08;
        SnacksIndentChunk.fg = p.base08;
        SnacksIndentScope.fg = p.base08;
        RenderMarkdownInlineHighlight.fg = p.base08;
        RenderMarkdownTableHead.fg = p.base08;
        RenderMarkdownTableRow.fg = p.base08;
        RenderMarkdownTableFill.fg = p.base08;
        Statement.fg = p.base08;
        Macro.fg = p.base08;
        Special.fg = p.base08;
        SpecialChar.fg = p.base08;
        "@function.builtin".fg = p.base08;
        "@lsp.type.macro".fg = p.base08;
        "@constant.macro".fg = p.base08;
        "@lsp.type.operator".fg = p.base08;
        "@operator".fg = p.base08;
        "Operator".fg = p.base08;
        "@module".fg = p.base08;
        TelescopeResultsDiffUntracked.fg = p.base07;
        MiniIndentscopeSymbol.fg = p.base07;
        LineNrAbove.fg = p.base07;
        LineNrBelow.fg = p.base07;
        Comment.fg = p.base07;
        SpecialComment.fg = p.base07;
        String.fg = p.base0F;
      };
    };
  };
}
