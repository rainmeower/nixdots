{
  font_name,
  animations,
  lib,
  p,
  ...
}: let
  def = lib.mkDefault;
in {
  programs.ghostty = {
    enable = true;
    settings = {
      font-family = font_name;
      font-size = 22;
      gtk-single-instance = true;

      foreground = def p.fg;
      background = def p.bg;
      background-opacity = def 0.8;
      # cursor-color = def p.fg;
      cursor-color = def p.fg2;
      cursor-text = def p.bg;
      selection-background = def p.blue;
      selection-foreground = def p.bg;

      window-padding-x = 6;
      window-padding-y = 0;
      window-padding-balance = true;

      adjust-cursor-thickness = 2;
      confirm-close-surface = false;

      keybind = [
        "page_up=scroll_page_up"
        "page_down=scroll_page_down"
        "home=scroll_to_top"
        "end=scroll_to_bottom"
      ];

      palette = lib.mkDefault [ # {{{
        "0=${p.black}"
        "1=${p.red}"
        "2=${p.green}"
        "3=${p.yellow}"
        "4=${p.blue}"
        "5=${p.violet}"
        "6=${p.aqua}"
        "7=${p.white}"
        "8=${p.black}"
        "9=${p.red}"
        "10=${p.green}"
        "11=${p.yellow}"
        "12=${p.blue}"
        "13=${p.violet}"
        "14=${p.aqua}"
        "15=${p.white}"
      ]; # }}}

      # cursor smear
      custom-shader = if animations then "cursor_smear.glsl" else null;
    };
  };
  home.file.".config/ghostty/cursor_smear.glsl".source = ../../../../stuff/cursor_smear.glsl;
}
