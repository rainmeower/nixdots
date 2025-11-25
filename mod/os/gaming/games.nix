{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    osu-lazer
    # luanti

    /* terminal */
    # tt
    # ttyper
    vitetris
    cl-wordle
  ];
}
