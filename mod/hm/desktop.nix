{
  flake_dir,
  inputs,
  os_config,
  ...
}: {
  xdg.desktopEntries = {
    melee = {
      name = "melee";
      comment = "melee bash script";
      exec = "${flake_dir}/stuff/scripts/melee.sh";
      icon = "${flake_dir}/stuff/icons/slippi.svg";
      terminal = true;
    };

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

    Celeste = {
      name = "celeste";
      comment = "celeste with everest";
      exec = "gamemoderun Celeste";
      icon = "Celeste";
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
  };
}
