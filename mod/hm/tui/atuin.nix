{
  programs.atuin = {
    enable = true;

    enableNushellIntegration = true;

    flags = [
      "--disable-up-arrow"
    ];

    settings = {
      auto_sync = false;

      stats = {
        # Set commands where we should consider the subcommand for statistics. Eg kubectl get vs just kubectl
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
