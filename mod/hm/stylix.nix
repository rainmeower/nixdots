{
  inputs,
  p,
  lib,
  ...
}: let
  rh = lib.removePrefix "#";
in {
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;

    autoEnable = false;
    targets = {
      gtk.enable = true;
      gtk.colors.enable = true;
      gtk.extraCss = "window.background { border-radius: 0; }";
      qt.enable = true;
    };

    opacity = {
      desktop = p.bg_opacity;
      terminal = p.bg_opacity;
      popups = p.bg_opacity;
      applications = p.bg_opacity;
    };

    base16Scheme = {
      system = "base16";
      name = "meow";
      author = "nyx";
      variant = "dark";

      palette = {
        base00 = rh p.bg;
        base01 = rh p.bg;
        base02 = rh p.bg;
        base03 = rh p.bg;
        base04 = rh p.grey;
        base05 = rh p.comment;
        base06 = rh p.fg;
        base07 = rh p.fg;

        base08 = rh p.red;
        base09 = rh p.orange;
        base0A = rh p.yellow;
        base0B = rh p.green;
        base0C = rh p.cyan;
        base0D = rh p.blue;
        base0E = rh p.purple;
        base0F = rh p.pink;
      };
    };
  };
}
