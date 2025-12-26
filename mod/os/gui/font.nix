{
  lib,
  config,
  pkgs,
  ...
}:{
  config = lib.mkMerge [
    (lib.mkIf (config.font == "mononoki") {
      font_name = "Mononoki Nerd Font Mono";
      font_path = "${pkgs.nerd-fonts.mononoki}/share/fonts/truetype/NerdFonts/Mononoki/MononokiNerdFontMono-Regular.ttf";
      font_path_bold = "${pkgs.nerd-fonts.mononoki}/share/fonts/truetype/NerdFonts/Mononoki/MononokiNerdFontMono-Bold.ttf";
      font_pkg = pkgs.nerd-fonts.mononoki;
    })

    (lib.mkIf (config.font == "iosevka") {
      font_name = "Iosevka Nerd Font Mono";
      font_path = "${pkgs.nerd-fonts.iosevka}/share/fonts/truetype/NerdFonts/Iosevka/IosevkaNerdFontMono-Regular.ttf";
      font_path_bold = "${pkgs.nerd-fonts.iosevka}/share/fonts/truetype/NerdFonts/Iosevka/IosevkaNerdFontMono-Bold.ttf";
      font_pkg = pkgs.nerd-fonts.iosevka;
    })
  ];
}
      # config = let
      #   f = pkgs.nerd-fonts.mononoki;
      #   p = "/share/fonts/truetype/NerdFonts/Mononoki/MononokiNerdFontMono-";
      # in {
      #   font_path = "${f}${p}Regular.ttf";
      #   font_path_bold = "${f}${p}Bold.ttf";
      # };
