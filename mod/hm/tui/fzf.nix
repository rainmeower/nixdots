{
  font_name,
  os_config,
  theme,
  self,
  prompt_sym,
  ...
}: let
  col = import (self + /theme/${builtins.elemAt (builtins.split "_" theme) 0}/colors.nix);
in {
  programs.fzf = {
    enable = true;
    # TODO nushell
    enableBashIntegration = true;

    colors = {
      fg = col.fg;
      hl = col.accent;
      "fg+" = col.bg;
      "bg+" = col.accent;
      "hl+" = col.bg;
      info = "#ff0000";
      prompt = col.accent;
      spinner = "-1";
      pointer = "-1";
      gutter = "-1";
      border = "-1";
    };
    defaultCommand = "";
    defaultOptions = [
      "--margin=1"
      # "--layout=reverse"
      "--border=none"
      "--info='hidden'"
      "--header=''"
      "--prompt='${prompt_sym} '"
      "-i"
      "--no-bold"
      # "--bind='enter:execute(nvim {})'"
      # "--preview='bat --style=numbers --color=always --line-range :500 {}'"
    ];
  };
}

