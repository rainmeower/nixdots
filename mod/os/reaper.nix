{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    reaper
    reaper-reapack-extension
    reaper-sws-extension
    zynaddsubfx
  ];
}
