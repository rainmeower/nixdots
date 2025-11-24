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
    TelescopeBorder.fg = col.accent;
    TelescopeTitle.fg = col.accent;
    TelescopeSelection.fg = col.accent;
    TelescopeSelectionCaret.fg = col.accent;
    TelescopePromptPrefix.fg = col.accent;
    TelescopePreviewBorder.fg = col.accent;
    TelescopeResultsBorder.fg = col.accent;

    LineNr.fg = col.selection;
    MiniIndentscopeSymbol.fg = col.accent;
  };
}
