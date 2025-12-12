{
  flake_dir,
  if_theme,
  ...
}: if_theme "kanso" {
  services.hyprpaper = {
    settings = {
      preload = [
        "${flake_dir}/stuff/wallpapers/rocks_blur.png" 
      ];

      wallpaper = [
        "DP-1, ${flake_dir}/stuff/wallpapers/rocks_blur.png"
        "DP-3, ${flake_dir}/stuff/wallpapers/rocks_blur.png"
      ];
    };
  };
}
