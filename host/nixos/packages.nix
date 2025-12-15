{
  pkgs,
  ...
}:{
  environment.systemPackages = with pkgs; [
    uutils-coreutils-noprefix

    godot

    bmm

    nix-search-tv

    xdg-utils


    rqbit

    /* image */
    # gimp
    krita
    # inkscape
    # aseprite
    # qview
    # pastel
    imagemagick

    /* video */
    ffmpeg
    # davinci-resolve
    wf-recorder

    /* misc terminal stuff */
    termdown
    # tty-clock
    fastfetch
    # zellij
    # expect
    yt-dlp
    tldr

    /* audio */
    playerctl


    /* misc */
    wl-clipboard
    dconf
    libevdev
    # qemu_kvm
    hyprpicker
    # quickshell
    xwayland
    meow
    libqalculate
    wlr-which-key
  ];
}
