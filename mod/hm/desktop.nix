{
  flake_dir,
  config,
  os_config,
  lib,
  ...
}: let
  games_dir = config.xdg.userDirs.extraConfig.XDG_GAMES_DIR;
  icon_dir = flake_dir + "/stuff/icons";
in {
  xdg.desktopEntries = {
    # games {{{
    melee = {
      name = "melee";
      comment = "melee bash script";
      exec = "gamemoderun ${flake_dir}/stuff/scripts/melee.sh";
      icon = icon_dir + "/slippi.svg";
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
      exec = "gamemoderun steam-run ${games_dir}/${name}/${name}.x86_64";
      icon = "${games_dir}/${name}/${name}_Data/Resources/UnityPlayer.png";
    };

    terraria = rec {
      name = "terraria";
      comment = name;
      exec = "gamemoderun ${games_dir}/${name}/${name}/Terraria";
      icon = (lib.removePrefix "gamemoderun " exec) + ".png";
    };

    silksong = rec {
      name = "silksong";
      comment = name;
      exec = ''gamemoderun steam-run ${games_dir}/hollow-knight-silksong/Hollow\ Knight\ Silksong'';
      icon = ''${games_dir}/hollow-knight-silksong/Hollow\ Knight\ Silksong_Data/Resources/UnityPlayer.png'';
    };

    balatro = rec {
      name = "balatro";
      comment = name;
      exec = "gamemoderun umu-run ${games_dir}/${name}/game/Balatro.exe";
      icon = icon_dir + "/balatro.png";
    };
    # }}}

    wallpapers = {
      name = "wallpapers";
      comment = "rofi wallpaper switcher";
      exec = flake_dir + "/stuff/scripts/bgselector";
      icon = icon_dir + "/wallpaper.svg";
    };

    hammer = {
      name = "hammer";
      comment = "hammer with bottles";
      exec = "bottles-cli run -p hammer -b \"hammer\" -- %u";
      icon = icon_dir + "/hammer.png";
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
