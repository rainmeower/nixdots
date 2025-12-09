{
  rounding,
  ...
}:{
  nv = {
    plugins.yazi = {
      enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings = {
      cmd = "Yazi";
      keys = [
      {
        __unkeyed-1 = "<leader>y"; # tc toggle color
        __unkeyed-3 = ":Yazi<CR>";
        desc = "open yazi";
        options.silent = true;
      }
      ];
    }; # }}}

      settings = {
        yazi_floating_window_border = 
          if rounding then "rounded" else "single";

        highlight_hovered_buffers_in_same_directory = false;
      };
    };
  };
}
