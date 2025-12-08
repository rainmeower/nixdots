{
  username,
  flake_dir,
  inputs,
  config,
  lib,
  theme,
  self,
  ...
}: let
  theme_trimmed = lib.strings.removeSuffix "_zen" theme;
in {
  imports = [
    inputs.home-manager.nixosModules.home-manager
    {
      nixpkgs.overlays = import ../../over;
    }
  ];
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "bak";
    extraSpecialArgs = {
      inherit 
        inputs
        self 
        username 
        flake_dir 
      ;
      inherit (config)
        theme
        rounding
        wm
        font_name
        font_path
        font_pkg
        monitor
      ;
      host = config.networking.hostName;
      os_config = config;

      inherit (config.home-manager.users.${username}.xdg)
        userDirs;
      home = config.home-manager.users.${username}.home.homeDirectory;

      # FIXME
      # col = import (builtins.toPath "${flake_dir}/theme/${theme_trimmed}/colors.nix");
    };

    users.${username} = {
      home.stateVersion = "24.11";
      imports = [
        ../../theme/blacchiato/hm
        ../../theme/everforest/hm
        ../../theme/lix/hm
        ../../theme/macchiato/hm
        ../../theme/quiet/hm
        ../../theme/kanso/hm
        ../../theme/kantsi/hm


        ../../mod/hm/desktop.nix
        ../../mod/hm/env.nix
        ../../mod/hm/gui/browser_css
        ../../mod/hm/gui/reaper.nix
        ../../mod/hm/gui/cursor.nix
        ../../mod/hm/gui/dunst.nix
        ../../mod/hm/gui/emacs/emacs.nix
        ../../mod/hm/gui/firefox/firefox.nix
        ../../mod/hm/gui/mango
        ../../mod/hm/gui/media/mpv.nix
        ../../mod/hm/gui/media/obs.nix
        ../../mod/hm/gui/media/swayimg.nix
        ../../mod/hm/gui/media/ytsub.nix
        ../../mod/hm/gui/niri
        ../../mod/hm/gui/rofi.nix
        ../../mod/hm/gui/shell.nix
        ../../mod/hm/gui/slippi.nix
        ../../mod/hm/gui/terminal/foot.nix
        ../../mod/hm/gui/terminal/ghostty.nix
        ../../mod/hm/gui/terminal/kitty.nix
        ../../mod/hm/gui/textfox.nix
        ../../mod/hm/gui/tofi.nix
        # ../../mod/hm/gui/discord/vesktop.nix
        ../../mod/hm/gui/discord/nixcord.nix
        ../../mod/hm/gui/vicinae.nix
        ../../mod/hm/gui/walker.nix
        ../../mod/hm/gui/wlr-which-key.nix
        ../../mod/hm/gui/zen/zen.nix
        ../../mod/hm/home.nix
        ../../mod/hm/mimetypes.nix
        ../../mod/hm/service/easyeffects.nix
        ../../mod/hm/service/hyprkan.nix
        ../../mod/hm/service/termfilechooser.nix
        ../../mod/hm/service/swww.nix
        ../../mod/hm/tui/bash.nix
        ../../mod/hm/tui/btop.nix
        ../../mod/hm/tui/clipse.nix
        ../../mod/hm/tui/fzf.nix
        ../../mod/hm/tui/git.nix
        ../../mod/hm/tui/iamb.nix
        ../../mod/hm/tui/navi.nix
        ../../mod/hm/tui/ncmpcpp.nix
        ../../mod/hm/tui/nh.nix
        ../../mod/hm/tui/nixvim
        ../../mod/hm/tui/nushell.nix
        ../../mod/hm/tui/rust-fmt.nix
        ../../mod/hm/tui/starship.nix
        ../../mod/hm/tui/yazi
        ../../mod/hm/tui/zoxide.nix
        ../../mod/hm/xdg.nix
        ./niri.nix
        # ../../mod/hm/gui/hyprland.nix
      ];
    };
  };
}
