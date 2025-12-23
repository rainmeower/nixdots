[
  # (import ./gui/obs.nix)
  # (import ./gui/rofi.nix)
  # (import ./service/dbus.nix)
  # (import ./gui/dunst.nix)
  # (import ./gui/gtk.nix)

  (import ./gui/foot.nix)
  (import ./gui/awww.nix)
  (import ./gui/fuzzel.nix)
  (import ./tui/luajit.nix)
  (import ./tui/fastfetch.nix)
  (import ./tui/ncmpcpp.nix)
  # (import ./tui/ffmpeg.nix)
  (import ./tui/nvim.nix)
  (import ./tui/yazi.nix)
  (import ./tui/skim.nix)
  (import ./tui/uutils.nix)
  (import ./tui/gurk.nix)
  (import ./gui/mpv.nix)
  (import ./service/mpd.nix)
  # (import ./service/systemd.nix)
  (import ./gui/swayimg.nix)
  (import ./tui/ripgrep.nix)

  (import ./tui/shell/nushell.nix)
  # rebuilds like 3000 packages?
  # (import ./tui/shell/bash.nix)
  # (import ./tui/shell/dash.nix)
  (import ./tui/shell/starship.nix)

  # (import ./gui/vicinae-extension-nix.nix)
  (import ./tui/keyb0xx.nix)

]
