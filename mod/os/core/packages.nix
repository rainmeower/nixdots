{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    wlr-which-key

    nix-output-monitor

    dash

    moreutils
    trash-cli
    file

    zip
    unzip
    rar
    unrar

    git

    jq
    yq

    ripgrep
    wget
    fd
    eza
    fzf
    zoxide

    dbus
    kanata
  ];
}
