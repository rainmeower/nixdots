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


    # rqbit

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
    fastfetch
    # zellij
    # expect
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
