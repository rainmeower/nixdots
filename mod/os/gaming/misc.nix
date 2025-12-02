{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    lutris
    umu-launcher

    keyb0xx
  ];
}
