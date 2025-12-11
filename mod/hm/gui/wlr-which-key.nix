{
  flake_dir,
  wm,
  ...
}: let
  err = "notify-send error with config.wm value";
in {
  
  home.file.".config/wlr-which-key/config.yaml".text = /* yaml */ ''
font: none
background: "#00000000"
color: "#cad3f500"
border: "#b7bdf800"

# Permits key bindings that conflict with compositor key bindings.
# Default is `false`.
inhibit_compositor_keyboard_shortcuts: true

menu:
  - key: [ "q", "Mod4+q" ]
    desc: quit
    cmd: ${if (wm == "hyprland") then "hyprctl dispatch exit"
           else if (wm == "niri") then "niri msg action quit"
           else if (wm == "mango") then "${flake_dir}/stuff/scripts/keys/quit.sh mango"
           else err
          }

  - key: [ "s", "Mod4+s" ]
    desc: screenshot
    cmd: ${if (wm == "hyprland" || wm == "mango") then "${flake_dir}/stuff/scripts/keys/screenshot.sh"
           else if (wm == "niri") then "niri msg action screenshot -p false"
           else err
          }

  - key: [ "o", "Mod4+o" ]
    desc: kill window
    cmd: niri msg --json pick-window | jq '.pid' | xargs kill

  # - key: [ "p", "Mod4+p" ]
  #   desc: pick colour
  #   cmd: hex=$(niri msg pick-color | grep -o '#.*') && echo -n "$hex" | wl-copy && notify-send "$hex"

  - key: [ "p", "Mod4+p" ]
    desc: pick colour
    cmd: hyprpicker | wl-copy

  - key: [ "k", "Mod4+k" ]
    desc: restart kanata
    cmd: systemctl restart kanata-lily-58

  - key: [ "f", "Mod4+f" ]
    desc: float active
    cmd: ${if (wm == "hyprland") then "notify-send TODO"
           else if (wm == "niri") then "niri msg action toggle-window-floating"
           else if (wm == "mango") then "mmsg -d togglefloating"
           else err
          }

  - key: [ "c", "Mod4+c" ]
    desc: center window
    cmd: ${if (wm == "hyprland") then "notify-send TODO"
           else if (wm == "niri") then "niri msg action center-column"
           else if (wm == "mango") then "mmsg -d centerwin"
           else err
          }

  - key: [ "w", "Mod4+w" ]
    desc: switch wallpaper
    cmd: ${flake_dir}/stuff/scripts/bgselector

  - key: [ "x", "Mod4+x" ]
    desc: clear
    cmd: ${flake_dir}/stuff/scripts/clear.sh

  - key: [ "m", "Mod4+m" ]
    desc: fullscreen-like action
    cmd: ${if (wm == "hyprland") then "notify-send TODO"
           else if (wm == "niri") then "niri msg action maximize-column"
           else if (wm == "mango") then "mmsg -d togglefakefullscreen"
           else err
          }

  - key: [ "h", "Mod4+h" ]
    desc: first col
    cmd: niri msg action move-column-left

  - key: [ "i", "Mod4+i" ]
    desc: first col
    cmd: niri msg action move-column-right

  - key: [ "a", "Mod4+a" ]
    desc: first col
    cmd: niri msg action focus-column-first

  - key: [ "e", "Mod4+e" ]
    desc: last col
    cmd: niri msg action focus-column-last

  - key: [ "t", "Mod4+t" ]
    desc: last col
    cmd: niri msg action toggle-column-tabbed-display

  - key: [ "z", "Mod4+z" ]
    desc: eep
    cmd: ${flake_dir}/stuff/scripts/eep.sh

  # - key: [ "<enter>", "Mod4+<enter>" ]
  #   desc: float active
  #   cmd: ${flake_dir}/stuff/scripts/projectopen.nu
  #
  '';
}
