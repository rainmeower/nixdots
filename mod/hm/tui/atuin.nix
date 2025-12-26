{
  lib,
  ...
}:{
  programs.atuin = {
    enable = true;

    enableNushellIntegration = true;

    flags = [
      # "--disable-up-arrow" # TODO compact
    ];

    settings = {
      auto_sync = false;
      keymap_mode = "vim-insert";

      style = "compact";
      dialect = "uk"; # anywhere except america = british lmao
      update_check = lib.mkForce false;
      search_mode = "fuzzy";

      filter_mode = "host"; # TODO search.filters
      workspaces = true;

      inline_height_shell_up_key_binding = 10;

      cwd_filter = [
        "secret"
      ];

      stats = {
        ignored_commands = [
          "cd"
          "ls"
          "y"
          "yazi"
          "nr"
        ];

        common_subcommands = [
          "cargo"
          "composer"
          "docker"
          "dotnet"
          "git"
          "go"
          "ip"
          "jj"
          "kubectl"
          "nix"
          "nmcli"
          "npm"
          "pecl"
          "pnpm"
          "podman"
          "port"
          "systemctl"
          "tmux"
          "yarn"
          "mmsg"
          "niri"
          "hyprctl"
          "sudo"
          "xargs"
          "bmm"
        ];
      };
    };
  };
}
