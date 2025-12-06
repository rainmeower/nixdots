{
  font_name,
  os_config,
  theme,
  self,
  ...
}: let
  col = import (self + /theme/${builtins.elemAt (builtins.split "_" theme) 0}/colors.nix);
in {

  home.sessionVariables = {
    FZF_DEFAULT_OPTS = "--color=fg:${col.fg},hl:${col.blue},fg+:#ff0000,bg+:${col.blue},hl+:#00ffff,info:#ffff00,prompt:${col.blue},spinner:-1,pointer:${col.blue},gutter:-1,info:#00ff00,border:-1 --border=none --info=hidden --header='' --prompt='󰘧 ' --no-bold -i --pointer=''";
  };

  programs.fzf = {
    enable = true;
    # TODO nushell
    enableBashIntegration = true;




    #   # TODO move this to themes/*
    # colors = {
    #   fg = "#A4A0E8";
    #   hl = "#DBBFEF";
    #   "fg+" = "#A4A0E8";
    #   "bg+" = "#5A3D6E";
    #   "hl+" = "#DBBFEF";
    #   info = "#886C9C";
    #   prompt = "#DBBFEF";
    #   spinner = "-1";
    #   pointer = "-1";
    #   gutter = "-1";
    #   border = "-1";
    # };
    # defaultCommand = "";
    # defaultOptions = [
    #   "--margin=1"
    #   # "--layout=reverse"
    #   "--border=none"
    #   "--info='hidden'"
    #   "--header=''"
    #   "--prompt='󰘧 '"
    #   "-i"
    #   "--no-bold"
    #   # "--bind='enter:execute(nvim {})'"
    #   # "--preview='bat --style=numbers --color=always --line-range :500 {}'"
    # ];
  };
}

