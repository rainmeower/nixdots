{
  p,
  lib,
  ...
}:{
  nv.highlightOverride = {
    CursorLine.bg = null;
    CursorLineNr.fg = p.accent;
    LineNr.fg = p.selection;

    MatchParen.reverse = true;

    # FIXME doesnt do anything
    MatchParen = {
      fg = p.bg;
      bg = p.accent;
      bold = true;
    };
    MatchParenCur = {
      fg = p.bg;
      bg = p.accent;
      bold = true;
    };

    # FIXME does nothing
    "@neorg.markup.bold" = lib.mkForce {
      fg = lib.mkForce p.bg;
      bg = lib.mkForce p.accent;
    };



    # telescope {{{
    TelescopeBorder.fg = p.accent;
    TelescopeTitle.fg = p.accent;
    TelescopeSelection.fg = p.accent;
    TelescopeSelectionCaret.fg = p.accent;
    TelescopePromptPrefix.fg = p.accent;
    TelescopePromptCounter.fg = null;
    TelescopePreviewBorder.fg = p.accent;
    TelescopeResultsBorder.fg = p.accent;
    # }}}

    # noice {{{


    # NoiceCmdlinePopupTitle.fg = p.accent;
    NoiceCmdlinePopupTitleCalculator.fg = p.accent;
    NoiceCmdlinePopupTitleCmdline.fg = p.accent;
    NoiceCmdlinePopupTitleFilter.fg = p.accent;
    NoiceCmdlinePopupTitleHelp.fg = p.accent;
    NoiceCmdlinePopupTitleInput.fg = p.accent;
    NoiceCmdlinePopupTitleLua.fg = p.accent;

    NoiceCmdlinePopupBorder.fg = p.accent;
    NoiceCmdlinePopupBorderCalculator.fg = p.accent;
    NoiceCmdlinePopupBorderCmdline.fg = p.accent;
    NoiceCmdlinePopupBorderFilter.fg = p.accent;
    NoiceCmdlinePopupBorderHelp.fg = p.accent;
    NoiceCmdlinePopupBorderInput.fg = p.accent;
    NoiceCmdlinePopupBorderLua.fg = p.accent;

    NoiceCmdlineIcon.fg = p.accent;
    NoiceCmdlineIconCalculator.fg = p.accent;
    NoiceCmdlineIconCmdline.fg = p.accent;
    NoiceCmdlineIconFilter.fg = p.accent;
    NoiceCmdlineIconHelp.fg = p.accent;
    NoiceCmdlineIconInput.fg = p.accent;
    NoiceCmdlineIconLua.fg = p.accent;

    NoiceConfirmBorder.fg = p.accent;
    # }}}


    MiniIndentscopeSymbol.fg = p.accent;
    IndentLine.fg = p.accent;
  };
}
