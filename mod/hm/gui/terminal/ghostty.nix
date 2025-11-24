{
  config,
  os_config,
  lib,
  theme,
  ...
}:
let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
  col = import ../../../../theme/${theme_trimmed}/colors.nix;
  def = lib.mkDefault;
in {
  programs.ghostty = {
    enable = true;
    settings = {
      font-family = os_config.font_path;
      font-size = 22;
      gtk-single-instance = true;

      window-padding-x = 6;
      window-padding-y = 0;
      window-padding-balance = true;

      adjust-cursor-thickness = 2;
      confirm-close-surface = false;

      foreground = def col.fg;
      background = def col.bg;
      background-opacity = def 0.8;
      # cursor-color = def col.fg;
      cursor-color = def col.fg2;
      cursor-text = def col.bg;
      selection-background = def col.blue;
      selection-foreground = def col.bg;

      keybind = [
        "page_up=scroll_page_up"
        "page_down=scroll_page_down"
        "home=scroll_to_top"
        "end=scroll_to_bottom"
      ];

      palette = lib.mkDefault [ # {{{
        "0=${col.black}"
        "1=${col.red}"
        "2=${col.green}"
        "3=${col.yellow}"
        "4=${col.blue}"
        "5=${col.violet}"
        "6=${col.aqua}"
        "7=${col.white}"
        "8=${col.black}"
        "9=${col.red}"
        "10=${col.green}"
        "11=${col.yellow}"
        "12=${col.blue}"
        "13=${col.violet}"
        "14=${col.aqua}"
        "15=${col.white}"
      ]; # }}}

      # cursor smear
      custom-shader = if os_config.animations then "cursor_smear.glsl" else null;
    };
  };
  home.file.".config/ghostty/cursor_smear.glsl".source = ../../../../stuff/cursor_smear.glsl;
}
