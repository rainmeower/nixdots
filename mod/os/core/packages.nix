{
  pkgs,
  ...
}:{
  environment.systemPackages = with pkgs; [

    nix-output-monitor

    dash

    moreutils
    trash-cli
    file

    zip
    unzip
    rar
    unrar
    _7zz

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
