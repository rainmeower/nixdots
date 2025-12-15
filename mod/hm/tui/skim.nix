{
  p,
  prompt_sym,
  ...
}:{
  programs.skim = {
    enable = true;
    enableBashIntegration = true;
    # enableNushellIntegration = true;

    defaultCommand = "fd";
    # defaultOptions = [
    #   "--prompt='${prompt_sym} '"
    #   "--cmd-prompt='$$${prompt_sym} '"
    #   "--tabstop=4"
    #   "--no-mouse"
    #
    #   "--color=fg:${p.fg},hl:${p.accent},fg+:${p.bg},bg+:${p.accent},hl+:${p.bg},info:#ff0000,prompt:${p.accent},spinner:-1,pointer:-1,gutter:-1,border:-1"
    # ];
  };

  home.sessionVariables.SKIM_DEFAULT_OPTS = "--prompt='${prompt_sym} ',--cmd-prompt='$$${prompt_sym} ',--tabstop=4,--no-mouse,--color=fg:${p.fg},hl:${p.accent},fg+:${p.bg},bg+:${p.accent},hl+:${p.bg},info:#ff0000,prompt:${p.accent},spinner:-1,pointer:-1,gutter:-1,border:-1";
}
