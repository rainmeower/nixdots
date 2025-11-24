{
  font_name,
  lib,
  theme,
  ...
}: let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
in {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        term = "foot";
        font = "${font_name}:size=22";
        dpi-aware = false;
        shell = "nu";
        pad = "12x6";
        box-drawings-uses-font-glyphs = false;
      };

      cursor = {
        style = "beam";
        blink = false;
        unfocused-style = "unchanged";
      };

      tweak.box-drawing-base-thickness = "0.05";

      key-bindings = {
        scrollback-up-half-page = "Page_Up";
        scrollback-down-half-page = "Page_Down";
        scrollback-home = "Home";
        scrollback-end = "End";
      };

      colors = let # {{{
        rh = lib.strings.removePrefix "#"; # remove hash
      in lib.mkDefault {
        alpha = col.bg_opacity;

        cursor = rh col.bg + " " + rh col.fg;

        background = rh col.bg;
        foreground = rh col.fg;

        # 0-7
        regular0 = rh col.black; # black
        regular1 = rh col.red; # red
        regular2 = rh col.green; # green
        regular3 = rh col.yellow; # yellow
        regular4 = rh col.blue; # blue
        regular5 = rh col.magenta; # magenta
        regular6 = rh col.cyan; # cyan
        regular7 = rh col.white; # white

        # 8-15
        bright0 = rh col.black; # black
        bright1 = rh col.red; # red
        bright2 = rh col.green; # green
        bright3 = rh col.yellow; # yellow
        bright4 = rh col.blue; # blue
        bright5 = rh col.magenta; # magenta
        bright6 = rh col.cyan; # cyan
        bright7 = rh col.white; # white
      }; # }}}
    };
  };
}
