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
      show_help = false;
      style = "compact";
      dialect = "uk"; # anywhere except america = british lmao

      auto_sync = false;
      keymap_mode = "vim-insert";

      enter_accept = false;

      update_check = lib.mkForce false;
      search_mode = "fuzzy";

      filter_mode = "host"; # TODO search.filters
      workspaces = true; # TODO

      inline_height_shell_up_key_binding = 9;

## possible values: emacs, subl
# word_jump_mode = "emacs"

## characters that count as a part of a word
# word_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"


      # default history list format - can also be specified with the --format arg
      history_format = "{time}\t{command}";


      history_filter = [
        "token" "TOKEN" "Token"
        "secret" "SECRET" "Secret"
        "^rm " "rm$" " rm"
        "shred"
        "^dd "
      ];

      cwd_filter = [
        "secret"
      ];

      stats = {
        ignored_commands = [
          "cd"
          "ls"
          "y" "yazi"
          "nr"
          "date"
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
