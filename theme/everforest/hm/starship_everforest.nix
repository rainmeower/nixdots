{
  p,
  if_theme,
  prompt_sym,
  ...
}: if_theme "everforest" {
  programs.starship = {
    settings = {
      character = {
        success_symbol = "[${prompt_sym}](${p.fg})";
        error_symbol = "[${prompt_sym}](red)";
      };

      nix_shell = {
        symbol = "";
      };

      directory = {
        style = "bold " + p.fg;
      };
    };
  };
}
