{
  nv.plugins.treesitter-context = {
    enable = false;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "LspAttach"
    ]; # }}}

    settings = {
      line_numbers = true;
      max_lines = 0;
      min_window_height = 0;
      mode = "topline";
      multiline_threshold = 1;
      separator = "─";
      trim_scope = "inner";
      zindex = 20;
    };
  };
}
