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
        pad = "12x6";
        terminal = "${pkgs.foot}/bin/foot";
        layer = "overlay";
        prompt = ''"${prompt_sym} "'';
        hide-before-typing = true;
        lines = 5;
        dpi-aware = false;
        # gross
        enable-mouse = false;
      };

      colors = let
        rh = lib.removePrefix "#";
      in rec {
        # NOTE cannot omit alpha
        background = rh p.bg_trans;
        text = rh p.fg + "ff";
        input = text;
        selection-text= rh p.bg + "ff";
        selection = rh p.accent + "ff";
        border = selection;
        prompt = selection;
        match = selection;
        selection-match = rh p.bg + "ff";
      };

      border = {
        width = border_width;
        inherit radius; # TODO
      };

    };
  };
}
