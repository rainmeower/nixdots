{
  pkgs,
  ...
}:{
  home.packages = with pkgs; [
    reaper
    reaper-reapack-extension
    reaper-sws-extension
    zynaddsubfx
  ];
}
