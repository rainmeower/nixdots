{
  programs.niri.settings.spawn-at-startup = [
    { command = [ "foot" "--server" ]; }
    { command = [ "foot" "-H" "xwayland-satellite" ]; }
    { command = [ "foot" "-H" "~/.config/kanata/hyprkan -d" ]; }
    { command = [ "clipse" "-listen" ]; }
    { command = [ "udiskie" "-a" ]; }
    { command = [ "dunst" ]; }
    { command = [ "hyprpaper" ]; }
    { command = [ "walker" "--gapplication-service" ]; }
    { command = [ "vesktop" "--enable-features=UseOzonePlatform" "--ozone-platform=wayland" ]; }
    { command = [ "env" "DISPLAY=:0" "steam" "-silent" ]; }
  ];
}
