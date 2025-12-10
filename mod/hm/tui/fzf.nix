{
  prompt_sym,
  p,
  ...
}:{
  programs.fzf = {
    enable = true;
    # TODO nushell
    enableBashIntegration = true;

    colors = {
      fg = p.fg;
      hl = p.accent;
      "fg+" = p.bg;
      "bg+" = p.accent;
      "hl+" = p.bg;
      info = "#ff0000";
      prompt = p.accent;
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

