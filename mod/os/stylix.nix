{
  inputs,
  self,
  config,
  ...
}: let
  p = import (self + /theme/${builtins.elemAt (builtins.split "_" config.theme) 0}/colors.nix);
in {
  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix = {
    autoEnable = false;
    targets = {
      gtk.enable = true;
      qt.enable = true;
    };

    base16Scheme = {
      
      base00 = p.black;
      base01 = p.red;
      base02 = p.green;
      base03 = p.yellow;
      base04 = p.blue;
      base05 = p.violet;
      base06 = p.blue;
      base07= p.white;

      base08 = p.bg;
      base09 = p.red_sat;
      base0A = p.green_sat;
      base0B = p.yellow_sat;
      base0C = p.blue_sat;
      base0D = p.violet_sat;
      base0E = p.blue_sat;
      base0F = p.white;
    };
  };
}
