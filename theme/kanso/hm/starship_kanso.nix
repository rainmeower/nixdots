{
  if_theme,
  prompt_sym,
  ...
}: if_theme "kanso" {
  programs.starship.settings = {
    character = {
      success_symbol = "[${prompt_sym}](blue)";
      error_symbol = "[${prompt_sym}](red)";
    };

    directory.style = "bold blue";
  };
}
