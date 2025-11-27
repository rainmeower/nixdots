{
  pkgs,
  lib,
  theme,
  ...
}: let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../../theme/${theme_trimmed}/colors.nix;
in {
  programs.nixvim.highlightOverride = {
    CursorLine.bg = null;
    CursorLineNr.fg = col.accent;
    LineNr.fg = col.selection;

    MatchParen = {
      fg = col.bg;
      bg = col.accent;
      # bold = true;
    };

    # telescope {{{
    TelescopeBorder.fg = col.accent;
    TelescopeTitle.fg = col.accent;
    TelescopeSelection.fg = col.accent;
    TelescopeSelectionCaret.fg = col.accent;
    TelescopePromptPrefix.fg = col.accent;
    TelescopePromptCounter.fg = null;
    TelescopePreviewBorder.fg = col.accent;
    TelescopeResultsBorder.fg = col.accent;
    # }}}

    # noice {{{
    NoiceCmdlinePopupTitle.fg = col.accent;
    NoiceCmdlinePopupTitleCalculator.fg = col.accent;
    NoiceCmdlinePopupTitleCmdline.fg = col.accent;
    NoiceCmdlinePopupTitleFilter.fg = col.accent;
    NoiceCmdlinePopupTitleHelp.fg = col.accent;
    NoiceCmdlinePopupTitleInput.fg = col.accent;
    NoiceCmdlinePopupTitleLua.fg = col.accent;

    NoiceCmdlinePopupBorder.fg = col.accent;
    NoiceCmdlinePopupBorderCalculator.fg = col.accent;
    NoiceCmdlinePopupBorderCmdline.fg = col.accent;
    NoiceCmdlinePopupBorderFilter.fg = col.accent;
    NoiceCmdlinePopupBorderHelp.fg = col.accent;
    NoiceCmdlinePopupBorderInput.fg = col.accent;
    NoiceCmdlinePopupBorderLua.fg = col.accent;

    NoiceCmdlineIcon.fg = col.accent;
    NoiceCmdlineIconCalculator.fg = col.accent;
    NoiceCmdlineIconCmdline.fg = col.accent;
    NoiceCmdlineIconFilter.fg = col.accent;
    NoiceCmdlineIconHelp.fg = col.accent;
    NoiceCmdlineIconInput.fg = col.accent;
    NoiceCmdlineIconLua.fg = col.accent;

    NoiceConfirmBorder.fg = col.accent;
    # }}}

    MiniIndentscopeSymbol.fg = col.accent;
    IndentLine.fg = col.accent;
  };
}
