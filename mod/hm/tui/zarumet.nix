{
  inputs,
  lib,
  p,
  os_config,
  ...
}:{
  imports = [
    inputs.zarumet.homeModules.default
  ];

  programs.zarumet = {
    enable = true;
    settings = {
      mpd.address = "localhost:6600";

      colors = {
        album = p.fg;
        artist = p.fg;
        border = p.accent;
        status = p.fg;
        title = p.fg;
      };
      # do not touch
      pipewire.bit_perfect_enabled = lib.mkForce false;
    };
  };
}
