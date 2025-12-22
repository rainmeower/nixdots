{
  pkgs,
  lib,
  p,
  font_path,
  font_name,
  prompt_sym,
  border_width,
  rounding,
  ...
}: let
  radius = if rounding then 10 else 0;
in {
  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        # font = font_path + ":size=22";
        font = font_name + ":size=22";
        terminal = "${pkgs.foot}/bin/foot";
        layer = "overlay";
        prompt = prompt_sym + " ";
        hide-before-typing = true;
        lines = 5;
        dpi-aware = false;
      };


      colors = let
        rh = lib.removePrefix "#";
      in {
        # NOTE cannot omit alpha
        background = rh p.bg_trans;
        text = rh p.fg + "ff";
        input = rh p.fg + "ff";
        prompt = rh p.accent + "ff";
        border = rh p.accent + "ff";
        selection = rh p.accent + "ff";
        selection-text= rh p.bg + "ff";
        match = rh p.accent + "ff";
        selection-match = rh p.bg + "ff";
      };

      border = {
        width = border_width;
        inherit radius; # TODO
      };

    };
  };
}
