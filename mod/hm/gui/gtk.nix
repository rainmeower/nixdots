{
  pkgs,
  ...
}: {
  gtk.cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 20;
  };
}
