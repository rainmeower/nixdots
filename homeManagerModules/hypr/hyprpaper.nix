{ ... }: {

  services.hyprpaper = {
   enable = true;
    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "~/nix/stuff/7_hor.png" 
        "~/nix/stuff/1_vert.png" 
      ];

      wallpaper = [
        "DP-1,~/nix/stuff/7_hor.png"
        "DP-3,~/nix/stuff/1_vert.png"
      ];
    };
  };
}
