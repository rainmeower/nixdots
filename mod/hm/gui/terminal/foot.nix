{
  font_name,
  lib,
  p,
  ...
}:{
  programs.foot = {
    enable = true;
    # server.enable = true;

    settings = {
      main = {
        term = "foot";
        font = "${font_name}:size=22";
        dpi-aware = false;
        shell = "nu";
        pad = "12x6";
        workers = 64;
        box-drawings-uses-font-glyphs = false;
      };

      scrollback.lines = 16384;

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
        show-urls-copy = "Alt+w";
        show-urls-launch = "Alt+u";
        # pipe-command-output = ''[sh -c "f=$(mktemp); cat - > $f; footclient emacsclient -nw $f; rm $f"] Control+Shift+g'';
        pipe-command-output = ''[sh -c "f=$(mktemp -p /tmp); cat - > $f; footclient nvim $f; rm $f"] Control+Shift+e'';
      };

      colors = let # {{{
        rh = lib.strings.removePrefix "#"; # remove hash
      in lib.mkDefault {
        alpha = p.bg_opacity;

        cursor = rh p.bg + " " + rh p.fg;

        background = rh p.bg;
        foreground = rh p.fg;

        # 0-7
        regular0 = rh p.black; # black
        regular1 = rh p.red; # red
        regular2 = rh p.green; # green
        regular3 = rh p.yellow; # yellow
        regular4 = rh p.blue; # blue
        regular5 = rh p.magenta; # magenta
        regular6 = rh p.cyan; # cyan
        regular7 = rh p.white; # white

        # 8-15
        bright0 = rh p.black; # black
        bright1 = rh p.red; # red
        bright2 = rh p.green; # green
        bright3 = rh p.yellow; # yellow
        bright4 = rh p.blue; # blue
        bright5 = rh p.magenta; # magenta
        bright6 = rh p.cyan; # cyan
        bright7 = rh p.white; # white
      }; # }}}
    };
  };
}
