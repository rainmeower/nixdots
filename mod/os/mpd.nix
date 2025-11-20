{
  username,
  pkgs,
  ...
}: {
  services.mpd = {
    enable = true;
    user = username;
    musicDirectory = "/home/${username}/music/";
    # FIXME cant access home-manager config from nixos config
    # musicDirectory = config.xdg.userDirs.music;

    dataDir = "/home/${username}/.local/share/mpd";
      extraConfig = ''
      port "6669"
      audio_output {
        type "pipewire"
        name "meowwire"
      }
    '';
  };

	# services.mpd-mpris.enable = true;

  environment.systemPackages = with pkgs; [
    mpc
  ];

  systemd.services.mpd.environment = {
    # https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/609
    XDG_RUNTIME_DIR = "/run/user/1000"; # only worked when i manually specified 1000
  };
}
