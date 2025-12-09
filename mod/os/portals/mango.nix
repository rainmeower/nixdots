{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:{
  imports = [
    inputs.mango.nixosModules.mango
  ];

  config = lib.mkIf (config.wm == "mango") {
    xdg.portal = {
      enable = true;

      wlr.enable = true;

      config = {
        common = {
          default = [ "gtk" "termfilechooser" ];
          # "org.freedesktop.impl.portal.Secret" = [ "gnome-keyring" ];
          "org.freedesktop.impl.portal.ScreenCast" = [ "wlr" ];
          "org.freedesktop.impl.portal.ScreenShot" = [ "wlr" ];

          "org.freedesktop.impl.portal.Inhibit" = [];
          "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
        };
        mango = {
          default = [ "gtk" "termfilechooser" ];
          # "org.freedesktop.impl.portal.Secret" = [ "gnome-keyring" ];
          "org.freedesktop.impl.portal.ScreenCast" = [ "wlr" ];
          "org.freedesktop.impl.portal.ScreenShot" = [ "wlr" ];

          "org.freedesktop.impl.portal.Inhibit" = [];
          "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
        };
      };

      extraPortals = with pkgs; [
        xdg-desktop-portal
        xdg-desktop-portal-wlr
        xdg-desktop-portal-gtk
        xdg-desktop-portal-termfilechooser
      ];
    };
  };
}
