{
  flake_dir,
  lib,
  wm,
  ...
}: lib.mkIf wm.niri {
  programs.niri.settings.spawn-at-startup = [
    { command = [ "${flake_dir}/stuff/scripts/startup.sh" ]; }
    { command = [ "${flake_dir}/stuff/scripts/awww.sh" ]; }
    # { command = [ "clipse" "-listen" ]; }
    { command = [ "udiskie" "-a" ]; }
    # { command = [ "dunst" ]; }
    { command = [ "~/misc/niriusd" ]; }
    { command = [ "foot --server" ]; }
    # { command = [ "hyprpaper" ]; }
    { command = [ "vesktop" "--enable-features=UseOzonePlatform" "--ozone-platform=wayland" ]; }
    # { command = [ "steam" "-silent" ]; }
    { command = [ "awww-daemon" ]; }
  ];
}
