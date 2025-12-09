{
  nv.plugins.rustaceanvim = {
    enable = true;

    # NOTE lazy loading not needed

    settings = {
      server = {
        standalone = false;
        cmd = [
          "rustup"
            "run"
            "nightly"
            "rust-analyzer"
        ];
        default_settings = {
          rust-analyzer = {
            check = {
              command = "clippy";
            };
            inlayHints = {
              lifetimeElisionHints = {
                enable = "always";
              };
            };
          };
        };
      };
    };
  };
}
