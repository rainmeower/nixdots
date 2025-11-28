{
  userDirs,
  ...
}: let
  cfg = userDirs.extraConfig.XDG_CONFIG_HOME;
in {
  xdg.configFile."npm/npmrc".text = /* ini */ ''
prefix=${cfg}/npm
cache=${cfg}/npm
init-module=${cfg}/npm/config/npm-init.js
logs-dir=${cfg}/npm/logs
  '';
}
