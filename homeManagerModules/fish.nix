{ config, pkgs, ... }: {

  programs.fish = {
    enable = true;
    plugins = [
      { name = "tide"; src = pkgs.fishPlugins.tide.src; }
    ];
    shellAliases = {

    };
    # shellInit = ''
      # function fish_prompt
          # echo ' '
      # end
    # '';
  };
}
