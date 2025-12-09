{
  lib,
  theme,
  prompt_sym,
  ...
}:{
  config = lib.mkIf (theme == "lix") {
    programs.starship = {
      settings = {
        character = {
          success_symbol = "[${prompt_sym}](purple)";
          error_symbol = "[${prompt_sym}](red)";
        };

        nix_shell = {
          symbol = "";
        };

        directory = {
          style = "bold #DBBFEF";
        };

        hostname.style = "bold blue";
        username.style_user = "bold blue";

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
