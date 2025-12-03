{
  imports = [
    # ./kanata.nix
    ../../mod/os/cleanup.nix
    ../../mod/os/config.nix
    ../../mod/os/core/networking.nix
    ../../mod/os/core/nix.nix
    ../../mod/os/core/nixpkgs.nix
    ../../mod/os/core/packages.nix
    ../../mod/os/core/polkit.nix
    ../../mod/os/services/ssh.nix
    ../../mod/os/font.nix
    ../../mod/os/options.nix
    ../../mod/os/shared.nix
    ./boot.nix
    ./configuration.nix
    ./hardware-configuration.nix
    ./hm.nix
    ./packages.nix
    ./services.nix
#    ../../theme/blacchiato/os
#    ../../theme/everforest/os
#    ../../theme/lix/os
#    ../../theme/macchiato/os
  ];
}
