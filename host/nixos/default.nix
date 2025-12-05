{
  lib,
  username,
  ...
}: {
  imports = [
    ./boot.nix
    ./options.nix
    ./config.nix
    ./configuration.nix
    ./hardware-configuration.nix
    ./kanata.nix
    ./packages.nix
    ./services.nix

    ./hm.nix
    (lib.mkAliasOptionModule  [ "hm" ] [ "home-manager" "users" username ])

    ../../mod/os/services/audio.nix
    ../../mod/os/cleanup.nix
    ../../mod/os/clipse.nix
    ../../mod/os/core/hardware.nix
    ../../mod/os/core/graphics.nix
    ../../mod/os/core/polkit.nix
    ../../mod/os/core/security.nix
    ../../mod/os/dev.nix
    ../../mod/os/gaming/terraria.nix
    ../../mod/os/gaming/misc.nix
    ../../mod/os/gaming/celeste.nix
    ../../mod/os/gaming/games.nix
    ../../mod/os/font.nix
    ../../mod/os/nix-ld.nix
    ../../mod/os/fontconfig.nix
    ../../mod/os/services/gamemode.nix
    ../../mod/os/services/preload.nix
    ../../mod/os/appimage.nix
    ../../mod/os/services/mpd.nix
    ../../mod/os/services/ssh.nix
    ../../mod/os/gaming/nix-gaming.nix
    ../../mod/os/shared.nix
    ../../mod/os/steam.nix
    ../../mod/os/services/disk.nix
    ../../mod/os/wine.nix
    ../../mod/os/ydotool.nix
    ../../mod/os/appimage.nix

    ../../theme/blacchiato/os
    ../../theme/everforest/os
    ../../theme/quiet/os
    ../../theme/lix/os
    ../../theme/macchiato/os
    ../../theme/kanso/os
    ../../theme/kantsi/os
  ];
}
