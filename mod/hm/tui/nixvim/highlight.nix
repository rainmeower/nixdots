{
  p,
  lib,
  ...
}:{
  nv.highlightOverride = {
    CursorLine.bg = null;
    CursorLineNr.fg = p.accent;
    LineNr.fg = p.sel;


    # MatchParen.reverse = true;
    #
    # # FIXME doesnt do anything
    # MatchParen = {
    #   fg = p.bg;
    #   bg = p.accent;
    #   bold = true;
    # };
    # MatchParenCur = {
    #   fg = p.bg;
    #   bg = p.accent;
    #   bold = true;
    # };
    #
    # # FIXME does nothing
    # "@neorg.markup.bold" = lib.mkForce {
    #   fg = lib.mkForce p.bg;
    #   bg = lib.mkForce p.accent;
    # };



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


    NoiceCmdlinePopupTitle.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupTitleCalculator.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupTitleCmdline.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupTitleFilter.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupTitleHelp.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupTitleInput.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupTitleLua.fg = lib.mkDefault p.accent;

    NoiceCmdlinePopupBorder.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupBorderCalculator.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupBorderCmdline.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupBorderFilter.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupBorderHelp.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupBorderInput.fg = lib.mkDefault p.accent;
    NoiceCmdlinePopupBorderLua.fg = lib.mkDefault p.accent;

    NoiceCmdlineIcon.fg = lib.mkDefault p.accent; # files icon i think?
    NoiceCmdlineIconCalculator.fg = lib.mkDefault p.accent;
    NoiceCmdlineIconCmdline.fg = lib.mkDefault p.accent;
    NoiceCmdlineIconFilter.fg = lib.mkDefault p.accent;
    NoiceCmdlineIconHelp.fg = lib.mkDefault p.accent;
    NoiceCmdlineIconInput.fg = lib.mkDefault p.accent;
    NoiceCmdlineIconLua.fg = lib.mkDefault p.accent;

    NoiceConfirmBorder.fg = lib.mkDefault p.accent;
    # }}}


    MiniIndentscopeSymbol.fg = p.accent;
    IndentLine.fg = p.accent;
  };
}
