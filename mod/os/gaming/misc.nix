{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    lutris

    keyb0xx
  ];
}
