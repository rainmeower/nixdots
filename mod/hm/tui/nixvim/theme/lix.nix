{
  if_theme,
  p,
  ...
}: if_theme "lix" {
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
        mini = {
          enable = true;
          indentscope_color = p.bg_desaturated;
        };

      };
      no_italic = true;
      no_bold = true;
      no_underline = true;

      highlight_overrides.all = {
        # TODO move this

        Visual.bg = p.bg_fade;
        VisualNOS.bg = p.bg_fade;


        # IncSearch = { fg = };
        Search = { bg = p.bg_desaturated; fg = p.bubblegum; };
        CurSearch = { bg = p.bubblegum; fg = p.bg; };


        FlashCurrent.fg = p.base0B;
        FlashLabel.fg = p.red;
        TelescopeSelection = { fg = p.bg; bg = "#DBBFEF"; };
        TelescopeSelectionCaret.fg = p.bg;
        TelescopePromptPrefix.fg = p.bg;
        TelescopePromptCounter.fg = p.bg;
        TelescopePrevieHyphen.fg = p.bg;
        MatchParen = { fg = p.red; bg = "none"; };

        RenderMarkdownBullet.fg = p.base01;
        RenderMarkdownCodeInline.bg = p.bg;
#TermCursor.bg = p.text
        Character.fg = p.base01;
        String.fg = p.mint;
        Constant.fg = "#C78DFC";
#FunctionBuiltIn.fg = p.green
#Number.fg = p.peach
#Boolean.fg = p.peach
#Float.fg = p.peach
        Conditional.fg = p.base0B;
# Repeat.fg = p.base08;
# Label.fg = p.base08;
        Keyword.fg = p.base0B;
# Exception.fg = p.base08;
# Include.fg = p.base08;
# PreProc.fg = p.base08;
# Define.fg = p.base08;
# PreCondit.fg = p.base08;
# StorageClass.fg = p.base08;
# Type.fg = "#D5E7FF";
# Structure.fg = p.base08;
# Typedef.fg = p.base08;
# Tag.fg = p.base08;
# Debug.fg = p.base08;
# Ignore.fg = p.base08;
        "@lsp.type.class".fg = "#D5E7FF";
#"@lsp.type.decorator".fg = "";
        "@lsp.type.enum".fg = "#D5E7FF";
        "@lsp.type.enumMember".fg = p.base01;
#"@lsp.type.event".fg = "";
        "@lsp.type.function".fg = "#D5E7FF";
#"@lsp.type.interface".fg = "";
        "@lsp.type.keyword".fg = p.base0B;
        "@lsp.type.method".fg = "#D5E7FF";
#"@lsp.type.modifier".fg = "";
#"@type.qualifier".fg = "";
#"@lsp.type.namespace".fg = "";
        "@lsp.type.number".fg = p.base09;
        Number.fg = p.base09;
        "Delimiter".fg = p.base01;
#"@lsp.type.parameter".fg = "";
        "@parameter".fg = p.base0A;
        "@property".fg = "#D5E7FF";
#"@lsp.type.property".fg = "";
        "@lsp.type.string".fg = p.mint;
        "@lsp.type.struct".fg = "#D5E7FF";
        "@lsp.type.type".fg = "#D5E7FF";
#"@lsp.type.typeParameter".fg = "";
        "@lsp.type.variable".fg = p.base01;


        FlashMatch.fg = p.base08;
        LineNr.fg = p.base08;
        CursorLineNr.fg = p.base08;
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
        RenderMarkdownCode.bg = p.bg;
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
        FlashBackdrop.fg = p.base07;
        TelescopeResultsDiffUntracked.fg = p.base07;
        MiniIndentscopeSymbol.fg = p.base07;
        LineNrAbove.fg = p.base07;
        LineNrBelow.fg = p.base07;
        Comment.fg = p.base07;
        SpecialComment.fg = p.base07;
        "@lsp.type.comment".fg = p.base07;

        PreProc.fg = p.base01;
        rustFoldBraces.fg = p.base01;
        cBlock.fg = p.base01;
        cParen.fg = p.base01;
        cBracket.fg = p.base01;
        "@punctuation.bracket".fg = p.base01;
        "@lsp.mod.paramater.c".fg = p.base0A;
        "@lsp.type.paramater.c".fg = p.base0A;

        Identifier.fg = p.base01;


        Type.fg = p.base0E;
        Structure.fg = p.base0E;
        rustStructure.fg = p.base0E;
        "@lsp.type.class.c".fg = p.base0A; # typedef
          "@type.builtin".fg = p.base0E;


        StorageClass.fg = p.base08;


      };
    };
  };
}
