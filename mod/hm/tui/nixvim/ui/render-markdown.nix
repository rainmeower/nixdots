{
  nv.plugins.render-markdown = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings.event = [
      "BufEnter" # TODO only on markdown files
    ]; # }}}

    settings = {
      debounce = 50;

      code = {
        sign = false;
        # width = "block";
        disable_background = true;
        left_pad = 2;
        border = "none";
        language_border = " ";
        language_left = "|";
      };
    };
  };
}
