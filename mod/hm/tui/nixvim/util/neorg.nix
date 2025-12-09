{
  rounding,
  ...
}:{
  nv.plugins.neorg = {
    enable = true;

    lazyLoad.enable = true; # {{{
    lazyLoad.settings = {
      event = [ "UIEnter" ];
      # event = [ "BufEnter" ];
      # pattern = "*.norg";
    }; # }}}

    telescopeIntegration.enable = true;

    settings = {
      load = {
        "core.concealer" = {
          config = {
            icon_preset = if rounding then "basic" else "diamond";
            folds = true;
            quote.icons = ["▍"];
          };
        };
        "core.dirman" = {
          config = {
            workspaces = {
              notes = "~/notes";
            };
          };
        };
      };
    };
  };
}
