{
  lib,
  theme,
  pkgs,
  font_name,
  ...
}: lib.mkIf (theme == "quiet") {

  gtk = {
    enable = true;
    # theme = {
    #   name = "catppuccin-macchiato-lavender-compact";
    #   package = pkgs.catppuccin-gtk.override {
    #     variant = "macchiato";
    #     accents = [ "lavender" ]; # can specify multiple accents
    #       size = "compact"; # compact, standard, large
    #       # tweaks = [ "rimless" "black" ];
    #   };
    # };

    iconTheme = {
      # package = pkgs.gnome.adwaita-icon-theme;
      name = "Tela-circle-dracula";
    };

    font = {
      name = font_name;
      size = 12;
    };

    gtk3.extraConfig.gtk-key-theme-name = "Emacs";
    gtk4.extraConfig.gtk-key-theme-name = "Emacs";
  };
}
