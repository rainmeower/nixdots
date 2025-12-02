{
  config,
  lib,
  theme,
  ...
}:
let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
in {
  programs.yazi.theme = {
    which = {
      mask.hidden = true;
      cand.fg = col.accent;
      rest.fg = col.accent;
      desc.fg = col.comment;
      separator = " ";
    };
    mgr = {
      border_symbol = " ";
      hovered.reversed = true;
      preview_hovered.underline = true;
    };
    tabs = {
      active = {
        bg = col.accent;
        fg = col.bg;
      };
      inactive = {
        bg = col.bg;
        fg = col.accent;
      };
      sep_inner = {
        open = "";
        close = "";
      };
      sep_outer = {
        open = "";
        close = "";
      };
    };
    spot = {
      title.fg = col.accent;
      tbl_cell = {
        fg = col.bg;
        bg = col.accent;
      };
    };
  };
}
