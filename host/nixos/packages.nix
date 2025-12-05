{
  pkgs,
  inputs,
  ...
}:{
  environment.systemPackages = with pkgs; [
    godot

    bmm

    blender


    nix-search-tv

    xdg-utils


    rofi

    zoom-us

    cryptsetup

    rqbit

    /* image */
    # gimp
    krita
    inkscape
    # aseprite
    # qview
    # pastel
    imagemagick

    /* video */
    ffmpeg
    # davinci-resolve
    obs-studio
    wf-recorder

    /* misc terminal stuff */
    termdown
    # tty-clock
    fastfetch
    # zellij
    expect
    yt-dlp
    tldr

    /* audio */
    playerctl


    /* misc */
    wl-clipboard
    dconf
    libevdev
    qemu_kvm
    hyprpicker
    quickshell
    xwayland
    meow
    libqalculate

    # moonlight
    # (discord.override {
    #  withMoonlight = true;
    #  moonlight = inputs.moonlight.packages.${pkgs.stdenv.hostPlatform.system}.moonlight;
    #  })
    vesktop

    # inputs.pollymc.packages."x86_64-linux".default
  ];
}
