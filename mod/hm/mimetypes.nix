{
  xdg.mimeApps = {
    enable = true;

    associations.added = {
      "audio/*" = [ "mpv" ];
      "video/*" = [ "mpv" ];
      "image/*" = [ "swayimg" "krita" "aseprite" ];
      "image/gif" = [ "mpv" "swayimg" "krita" "aseprite" ];
      "image/svg+xml" = [ "inkscape" "swayimg" "nvim" ];
    };

    defaultApplications = {
      "application/json" = [ "nvim" ];
      "application/toml" = [ "nvim" ];
      "text/plain" = [ "nvim" ];
      "image/*"   = [ "swayimg" "krita" "aseprite" "inkscape" ];
      "image/gif" = [ "mpv" "swayimg" "krita" "aseprite" ];
      "video/*"   = [ "mpv" ];
      "audio/*"   = [ "mpv" ];
    };
  };
}
