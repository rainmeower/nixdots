{
  lib,
  theme,
  prompt_sym,
  ...
}: let
  col = import ../colors.nix;
in {
  config = lib.mkIf (theme == "quiet") {
    programs.starship = {
      settings = {
        character = {
          success_symbol = "[${prompt_sym}](${col.accent})";
          error_symbol = "[${prompt_sym}](red)";
        };

        directory = {
          style = "bold ${col.accent}";
        };
        git_metrics.disabled = false;
        git_status = {
          format = "(\[$all_status$ahead_behind\]($style) )";
          ahead = "\${count}";
          behind = "\${count}";
          diverged = "\${ahead_count}\${behind_count}";
        };
      };
    };
  };
}
