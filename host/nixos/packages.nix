{
  pkgs,
  lib,
  ...
}:{
  # remove rsync, and strace
  environment.defaultPackages = lib.mkForce [ pkgs.perl ];

  environment.systemPackages = with pkgs; [


    # replace gnu coreutils with uutils
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
    xwayland
    libqalculate
    wlr-which-key

    # (inputs.quickshell.packages.${pkgs.system}.default.override {
    #   withJemalloc = true;
    #   withQtSvg = true;
    #   withWayland = true;
    #   withX11 = false;
    #   withPipewire = false;
    #   withPam = false;
    #   withHyprland = wm.hyprland;
    #   withI3 = false;
    #   # TODO niri, mango
    # })
  ];
}
