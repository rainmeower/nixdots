{
  lib,
  theme,
  ...
}: let
  col = import ../colors.nix;
in {
  config = lib.mkIf (theme == "kanso_zen") {
    programs.ghostty.settings = {
      palette = lib.mkDefault [
        "0=${col.black}"
        "1=${col.red2}"
        "2=${col.green3}"
        "3=${col.yellow3}"
        "4=${col.blue}"
        "5=${col.violet}"
        "6=${col.blue4}"
        "7=${col.white}"

        "8=${col.zen_bg1}"
        "9=${col.red2_sat}"
        "10=${col.green3_sat}"
        "11=${col.yellow3_sat}"
        "12=${col.blue_sat}"
        "13=${col.violet_sat}"
        "14=${col.blue4_sat}"
        "15=${col.white}"
      ];

    };
  };
}
