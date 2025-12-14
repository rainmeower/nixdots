{
  username,
  pkgs,
  config,
  userDirs,
  ...
}: let
  inherit (config.hm.xdg) userDirs;
in {
  services.mpd = {
    enable = true;
    user = username;
    musicDirectory = userDirs.music;

    dataDir = userDirs.extraConfig.XDG_DATA_HOME + "/mpd";
    extraConfig = ''
      port "6669"
      audio_output {
        type "pipewire"
        name "meowwire"
      }
    '';
  };

  environment.systemPackages = with pkgs; [
    mpc
  ];

  systemd.services.mpd.wantedBy = [ "graphical.target" ];
  systemd.services.mpd.environment = {
    # https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/609
    XDG_RUNTIME_DIR = "/run/user/1000"; # only worked when i manually specified 1000
  };
}
