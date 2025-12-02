{
  programs.nixvim.plugins.neorg = {
    enable = true;

    lazyLoad.enable = true;
    lazyLoad.settings.event = [
      "DeferredUIEnter"
    ];

    telescopeIntegration.enable = true;

    settings = {
      load = {
        "core.concealer" = {
          config = {
            icon_preset = "basic";
            folds = true;
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
