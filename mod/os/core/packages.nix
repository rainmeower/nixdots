{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    meow
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

    libqalculate

    gh
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
