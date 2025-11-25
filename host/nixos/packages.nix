{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    godot

    # steamcmd

    bmm

    blender


    nix-search-tv

    xdg-utils

    # reaper # borken
    # reaper-reapack-extension
    # reaper-sws-extension
    zynaddsubfx

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
    quickshell


    xwayland

    # (discord.override {
    #  withMoonlight = true;
    #  moonlight = inputs.moonlight.packages.${pkgs.stdenv.hostPlatform.system}.moonlight-mod;
    #  })
    vesktop

    inputs.pollymc.packages."x86_64-linux".default
  ];
}
