{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    wlr-which-key

    nix-output-monitor

    dash

    coreutils
    moreutils
    trash-cli
    file
    zip
    unzip
    rar
    unrar

    btop
    nushell

    libqalculate
    gh
    git
    jq
    ripgrep
    fd
    eza
    fzf
    zoxide
    wget
    dbus

    yazi
    kanata
  ];
}
