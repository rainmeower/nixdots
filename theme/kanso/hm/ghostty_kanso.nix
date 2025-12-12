{
  if_theme,
  p,
  ...
}:if_theme "kanso" {
  programs.ghostty.settings = {
    palette = [
      "0=${p.black}"
      "1=${p.red}"
      "2=${p.green}"
      "3=${p.yellow}"
      "4=${p.blue}"
      "5=${p.violet}"
      "6=${p.blue}"
      "7=${p.white}"

      "8=${p.bg}"
      "9=${p.red_sat}"
      "10=${p.green_sat}"
      "11=${p.yellow_sat}"
      "12=${p.blue_sat}"
      "13=${p.violet_sat}"
      "14=${p.blue_sat}"
      "15=${p.white}"
    ];
  };
}
