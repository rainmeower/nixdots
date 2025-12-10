{
  lib,
  if_theme,
  p,
  ...
}:if_theme "kanso" {
  programs.ghostty.settings = {
    palette = lib.mkDefault [
      "0=${p.black}"
      "1=${p.red}"
      "2=${p.green3}"
      "3=${p.yellow3}"
      "4=${p.blue}"
      "5=${p.violet}"
      "6=${p.blue4}"
      "7=${p.white}"

      "8=${p.zen_bg1}"
      "9=${p.red_sat}"
      "10=${p.green3_sat}"
      "11=${p.yellow3_sat}"
      "12=${p.blue_sat}"
      "13=${p.violet_sat}"
      "14=${p.blue4_sat}"
      "15=${p.white}"
    ];
  };
}
