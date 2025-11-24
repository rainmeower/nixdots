{
  xdg.mimeApps = {
    enable = true;

    associations.added = {
      "image/jpeg" = [ "swayimg" "krita" "aseprite" ];
      "image/jpg" = [ "swayimg" "krita" "aseprite" ];
      "image/png" = [ "swayimg" "krita" "aseprite" ];
      "image/gif" = [ "mpv" "swayimg" "krita" "aseprite" ];
      "image/svg+xml" = [ "inkscape" "swayimg" ];
      "audio/mpeg" = [ "mpv" ];
      "video/mp3" = [ "mpv" ];
      "video/mp4" = [ "mpv" ];
      "video/webm" = [ "mpv" ];
      "video/quicktime" = [ "mpv" ];
    };

    defaultApplications = {
      "application/json" = [ "nvim" ];
      "application/toml" = [ "nvim" ];
      "text/plain" = [ "nvim" ];
      "audio/*"   = [ "mpv" ];
      "audio/mp3" = [ "mpv" ];
      "image/*"   = [ "swayimg" "krita" "aseprite" "inkscape" ];
      "image/jpg" = [ "swayimg" "krita" "aseprite" ];
      "image/png" = [ "swayimg" "krita" "aseprite" ];
      "image/gif" = [ "mpv" "swayimg" "krita" "aseprite" ];
      "video/*"   = [ "mpv" ];
      "video/mp4" = [ "mpv" ];
    };
  };
}
