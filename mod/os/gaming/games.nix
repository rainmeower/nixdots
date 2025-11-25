{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    osu-lazer
    # luanti
    mindustry

    /* terminal */
    # tt
    # ttyper
    vitetris
    cl-wordle
  ];
}
