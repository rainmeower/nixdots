{
  pkgs,
  userDirs,
  lib,
  ...
}:{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    historyFile = userDirs.extraConfig.XDG_CONFIG_HOME + "/.bash_history";
    historyIgnore = [
      "ls"
      "mkdir"
      "rm"
      "shutdown"
      "reboot"
    ];
    sessionVariables = {
      MANPAGER = "nvim +Man!"; # use nvim for man
      SUDO_TIMESTAMP_TIMEOUT = 0;
      EDITOR = "nvim";
      VISUAL = "nvim";
      BROWSER = "zen";
      NIXOS_OZONE_WL = "1"; # tell things to use wayland
      NIXPKGS_ALLOW_UNFREE = "1";
    };

    shellAliases = {
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
      "....." = "cd ../../../..";

      hist="history | sk | read -l command; eval $command";

      sudo = "sudo -k"; # prompt every time
      s = "sudo -k"; # prompt every time
      rm = "rm -i"; # prompt every time
      mv = "mv -i"; # prompt every time
      ln = "ln -i"; # prompt every time

      ga = "git add .";
      gcl = "git clone";
      gd = "git diff HEAD^";
      gs = "git status";

      cr = "cargo run";

      meow = "echo :3"; # so silly

      ns = "nix-shell -p";

      n = "nvim";
    };
    initExtra = ''
    source ${pkgs.bash-completion}/etc/bash_completion.d/000_bash_completion_compat.bash
    '';
  };
}
