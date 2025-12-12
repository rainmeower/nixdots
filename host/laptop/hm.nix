{
  username,
  flake_dir,
  inputs,
  config,
  lib,
  self,
  ...
}:{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "bak";
    extraSpecialArgs = {
      inherit username flake_dir inputs;
      inherit (config) theme wm;
      host = config.networking.hostName;

      if_theme = t: lib.mkIf (t == (builtins.elemAt (builtins.split "_" config.theme) 0));
      p = import (self + /theme/${builtins.elemAt (builtins.split "_" config.theme) 0}/colors.nix);
    };

    users.${username} = {
      imports = [
        ../../theme/blacchiato/home-manager
        ../../theme/everforest/home-manager
        ../../theme/lix/home-manager
        ../../theme/macchiato/home-manager
        ../../theme/kanso/home-manager
        ../../modules/home-manager/desktop.nix

        inputs.home-manager.nixosModules.home-manager
        inputs.nixvim.homeModules.nixvim
        ../../modules/home-manager/tui/nixvim/default.nix



        # ./hyprland.nix
        ../../modules/home-manager/gui/dunst.nix
        ../../modules/home-manager/gui/terminal/foot.nix
        ../../modules/home-manager/gui/niri
        ../../modules/home-manager/gui/tofi.nix
        ../../modules/home-manager/gui/vesktop.nix
        ../../modules/home-manager/gui/zen/zen.nix
        ../../modules/home-manager/tui/bash.nix
        ../../modules/home-manager/tui/btop.nix
        ../../modules/home-manager/tui/fzf.nix
        ../../modules/home-manager/tui/git.nix
        ../../modules/home-manager/tui/nh.nix
        ../../modules/home-manager/tui/nushell.nix
        ../../modules/home-manager/tui/starship.nix
        ../../modules/home-manager/tui/yazi
        ../../modules/home-manager/tui/zoxide.nix
        ../../mod/hm/env.nix
        ./niri.nix
        # ../../modules/home-manager/tui/clipse.nix
        # ../../modules/home-manager/tui/navi.nix
        # ../../modules/home-manager/tui/zellij/default.nix
#        ../../modules/home-manager/gui/emacs/emacs.nix
#        ../../modules/home-manager/gui/mpv.nix
#        ../../modules/home-manager/gui/obs.nix
#        ../../modules/home-manager/tui/ncmpcpp.nix
      ];
    };
  };
}
