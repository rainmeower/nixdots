{
  if_theme,
  prompt_sym,
  ...
}: if_theme "kanso" {
  programs.starship = {
    settings = {
      character = {
        success_symbol = "[${prompt_sym}](blue)";
        error_symbol = "[${prompt_sym}](red)";
      };

      directory = {
        style = "bold blue";
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
}
