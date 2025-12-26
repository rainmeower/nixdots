{
  pkgs,
  ...
}:{
  programs.appimage = {
    enable = true;
    binfmt = true;
    # needed for slippi to run
    package = pkgs.appimage-run.override {
      extraPkgs = pkgs: [
        pkgs.curl
        pkgs.libmpg123
      ];
    };
  };
}
