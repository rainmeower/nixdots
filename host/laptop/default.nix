{
  lib,
  username,
}:{
  imports = [
    # ./kanata.nix
    ../../mod/os/cleanup.nix
    ../../mod/os/core/polkit.nix
    ../../mod/os/services/ssh.nix
    ../../mod/os/font.nix
    ../../mod/os/shared.nix
    ./boot.nix
    ./configuration.nix
    ./hardware-configuration.nix


    ../../mod/shared/misc.nix

    ./hm.nix
    (lib.mkAliasOptionModule [ "hm" ] [ "home-manager" "users" username ])

    ./packages.nix
    ./services.nix
#    ../../theme/blacchiato/os
#    ../../theme/everforest/os
#    ../../theme/lix/os
#    ../../theme/macchiato/os
  ];
}
