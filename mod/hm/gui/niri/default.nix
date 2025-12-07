{
  pkgs,
  inputs,
  lib,
  wm,
  ...
}:
let
  portals = with pkgs; [
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
  ];
in {
  imports = [
    inputs.niri.homeModules.niri 
    ./settings.nix 
    ./env.nix
    ./binds.nix 
    ./layout.nix
    ./animations.nix
    ./startup.nix
    ./window_rules.nix
    ./input.nix
    ./layer_rules.nix
  ];

  config = lib.mkIf (wm == "niri") {

    home.packages = with pkgs; [
      xwayland-satellite
      # gnome-keyring
    ];

    xdg.portal.configPackages = portals;
    xdg.portal.extraPortals = portals;

    programs.niri.enable = if wm == "niri" then true else false;
    programs.niri.package = pkgs.niri;
  };
}
