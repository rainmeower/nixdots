{
  pkgs,
  p,
  font_path,
  prompt_sym,
  border_width,
  ...
}:{
  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = font_path + ":size=22";
        terminal = "${pkgs.foot}/bin/foot";
        layer = "overlay";
        prompt = prompt_sym;
        hide-before-typing = true;
        lines = 5;
        dpi-aware = false;
      };


      colors = {
        background = p.bg_trans;
        text = p.fg;
        input = p.fg;
        prompt = p.accent;
        border = p.accent;
        selection = p.accent;
        selection-text= p.bg;
        match = p.accent;
        selection-match = p.bg;
      };

      border = {
        width = border_width;
        radius = 10; # TODO
      };

    };
  };
}
