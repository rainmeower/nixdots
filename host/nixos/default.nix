{
  lib,
  username,
  ...
}:{
  imports = [
    ./boot.nix
    ./options.nix
    ./config.nix
    ./nixos.nix
    ./hardware-configuration.nix
    ./kanata.nix
    ./packages.nix
    ./services.nix

    ./hm.nix
    (lib.mkAliasOptionModule [ "hm" ] [ "home-manager" "users" username ])
    (lib.mkAliasOptionModule [ "hm_alt" ] [ "home-manager" "users" "alt" ])

    ../../mod/shared/misc.nix

    ../../mod/os/services/audio.nix
    ../../mod/os/cleanup.nix
    ../../mod/os/tui/clipse.nix
    ../../mod/os/core/hardware.nix
    ../../mod/os/core/graphics.nix
    ../../mod/os/core/polkit.nix
    ../../mod/os/core/security.nix
    ../../mod/os/dev.nix
    ../../mod/os/gui/hyprlock.nix
    ../../mod/os/gaming/terraria.nix
    ../../mod/os/gaming/misc.nix
    ../../mod/os/gaming/celeste.nix
    ../../mod/os/stylix.nix
    ../../mod/os/gaming/games.nix
    ../../mod/os/gui/font.nix
    ../../mod/os/gui/mango.nix
    ../../mod/os/nix-ld.nix
    ../../mod/os/gui/fontconfig.nix
    ../../mod/os/services/gamemode.nix
    ../../mod/os/gui/appimage.nix
    ../../mod/os/services/mpd.nix
    ../../mod/os/services/ssh.nix
    ../../mod/os/gaming/nix-gaming.nix
    ../../mod/os/shared.nix
    ../../mod/os/portals/mango.nix
    ../../mod/os/portals/wlr.nix
    ../../mod/os/gui/steam.nix
    ../../mod/os/services/disk.nix
    ../../mod/os/gui/wine.nix
    ../../mod/os/ydotool.nix
    ../../mod/os/gui/appimage.nix

    ../../theme/blacchiato/os
    ../../theme/everforest/os
    ../../theme/quiet/os
    ../../theme/lix/os
    ../../theme/macchiato/os
    ../../theme/kanso/os
    ../../theme/kantsi/os
  ];
}
