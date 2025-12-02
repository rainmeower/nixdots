{
  flake_dir,
  config,
  os_config,
  lib,
  ...
}: let
  games_dir = config.xdg.userDirs.extraConfig.XDG_GAMES_DIR;
in {
  xdg.desktopEntries = {
    # games {{{
    melee = {
      name = "melee";
      comment = "melee bash script";
      exec = "${flake_dir}/stuff/scripts/melee.sh";
      icon = "${flake_dir}/stuff/icons/slippi.svg";
      terminal = true;
    };

    Celeste = {
      name = "celeste";
      comment = "celeste with everest";
      exec = "gamemoderun Celeste";
      icon = "Celeste";
    };

    valheim = rec {
      name = "valheim";
      comment = name;
      exec = "steam-run ${games_dir}/${name}/${name}.x86_64";
    };

    terraria = rec {
      name = "terraria";
      comment = name;
      exec = "${games_dir}/${name}/${name}/Terraria";
      icon = exec + ".png";
    };

    silksong = rec {
      name = "silksong";
      comment = name;
      exec = "steam-run ${games_dir}/hollow-knight-silksong/Hollow\\ Knight\\ Silksong";
      icon = lib.removePrefix "steam-run " exec + "_Data/Resources/UnityPlayer.png";
    };
    # }}}


    wallpapers = {
      name = "wallpapers";
      comment = "rofi wallpaper switcher";
      exec = "${flake_dir}/stuff/scripts/bgselector";
      icon = "${flake_dir}/stuff/icons/wallpaper.svg";
    };

    hammer = {
      name = "hammer";
      comment = "hammer with bottles";
      exec = "bottles-cli run -p hammer -b \"hammer\" -- %u";
      icon = "${flake_dir}/stuff/icons/hammer.png";
    };

    # hidden desktop entries {{{

    btop.exec = "";
    btop.name = "";
    btop.noDisplay = true;
    cups.exec = "";
    cups.name = "";
    cups.noDisplay = !os_config.services.printing.enable;
    nixos-manual.exec = "";
    nixos-manual.name = "";
    nixos-manual.noDisplay = true;
    nvim.exec = "";
    nvim.name = "";
    nvim.noDisplay = true;
    rofi-theme-selector.exec = "";
    rofi-theme-selector.name = "";
    rofi-theme-selector.noDisplay = true;
    vitetris.exec = "";
    vitetris.name = "";
    vitetris.noDisplay = true;
    yazi.exec = "";
    yazi.name = "";
    yazi.noDisplay = true;

    # }}}

  # hidden_entries = builtins.map (
  #   meow: {
  #     meow.exec = ""; meow.name = ""; meow.noDisplay = true;
  #   }
  #   ) hidden;
};
}
