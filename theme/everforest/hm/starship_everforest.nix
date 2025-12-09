{
  lib,
  theme,
  prompt_sym,
  ...
}:{
  config = lib.mkIf (theme == "everforest_hard" || theme == "everforest_medium" || theme == "everforest_soft") {

    programs.starship = {
      settings = {
        character = {
          success_symbol = "[${prompt_sym}](#9DA9A0)";
          error_symbol = "[${prompt_sym}](red)";
        };

        nix_shell = {
          symbol = "";
        };

        directory = {
          style = "bold #9DA9A0";
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
