{
  pkgs,
  ...
}:{
  home.packages = with pkgs; [
    sc-im
  ];

  xdg.configFile."sc-im/scimrc".text = ''
color "type=STRG fg=GREEN bg=DEFAULT_COLOR bold=0 dim=0"
color "type=NUMB fg=MAGENTA bg=DEFAULT_COLOR bold=0 dim=0"

color "type=HEADINGS fg=BLACK bg=BLUE bold=0 dim=0"
color "type=HEADINGS_ODD fg=BLACK bg=BLUE bold=0 dim=0"

color "type=CELL_SELECTION fg=BLUE bg=DEFAULT_COLOR bold=0 dim=0"
color "type=CELL_SELECTION_SC fg=BLACK bg=BLUE bold=0 dim=0"

color "type=DATEF fg=YELLOW bg=DEFAULT_COLOR bold=0 dim=0"

color "type=WELCOME fg=BLACK bg=DEFAULT_COLOR bold=0 dim=0"
  '';
}
