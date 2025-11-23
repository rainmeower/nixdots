{
  username,
  config,
  ...
}:
let
  h = "/home/${username}";

  cfg = "${h}/.config";
  # data = "${h}/.local/share";
  data = config.xdg.userDirs.extraConfig.XDG_DATA_HOME;
  cache = "${h}/.cache";
in {
  home.file."${cfg}/npm/npmrc".text = ''
prefix=${cfg}/npm
cache=${cfg}/npm
init-module=${cfg}/npm/config/npm-init.js
logs-dir=${cfg}/npm/logs
  '';
}
