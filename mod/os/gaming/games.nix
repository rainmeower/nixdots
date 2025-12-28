{
  pkgs,
  ...
}:{
  environment.systemPackages = with pkgs; [
    # osu-lazer
    # luanti
    # mindustry-wayland

    /* terminal */
    # tt
    # ttyper
    # vitetris
    # cl-wordle
  ];
}
