{
  programs.zarumet = {
    enable = true;
    settings = {
      mpd = {
        address = "localhost:6600";
      };
      colors = {
        album = "#fae280";
        artist = "#fae280";
        border = "#fae280";
        status = "#fae280";
        title = "#fae280";
      };
      pipewire = {
        bit_perfect_enabled = true;
      };
    };
  };
}
