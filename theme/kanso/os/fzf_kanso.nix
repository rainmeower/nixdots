{
  lib,
  config,
  p,
  ...
}: lib.mkIf (lib.hasPrefix "kanso" config.theme) {
  environment.sessionVariables = {
    # FZF_DEFAULT_OPTS = "--color=fg:${p.fg},hl:${p.blue},fg+:#24273a,bg+:${p.blue},hl+:#8bd5ca,info:#7f8c8d,prompt:${p.blue},spinner:-1,pointer:${p.blue},gutter:-1,info:#939ab7,border:-1 --border=none --info=hidden --header='' --prompt='󰘧 ' --no-bold -i --pointer=''";
  };
}
