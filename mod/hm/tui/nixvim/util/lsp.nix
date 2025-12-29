{
  flake_dir,
  host,
  ...
}:{
  nv.lsp = {
    inlayHints.enable = false;
    servers = {
      nixd = {
        enable = true;
        config.settings.nixd = {
          nixpkgs.expr = # nix
            "import (builtins.getFlake \"${flake_dir}\").inputs.nixpkgs {}";
          options = {
            nixos.expr = # nix
              "(builtins.getFlake \"${flake_dir}\").nixosConfigurations.${host}.options";
            home-manager.expr = # nix
              "(builtins.getFlake \"${flake_dir}\").nixosConfigurations.${host}.options.home-manager.users.type.getSubOptions []";
          };
        };
      };


      # qmlls.enable = true;
      # hls = {
      #   enable = true;
      #   installGhc = false;
      # };
      clangd.enable = true;
      rust_analyzer = {
        enable = true;
        # installRustc = false;
        # installCargo = false;
      };
    };

    keymaps = [
    {
      key = "gd";
      lspBufAction = "definition";
    }
    {
      key = "gD";
      lspBufAction = "declaration";
    }
    {
      key = "gV";
      lspBufAction = "references";
    }
    {
      key = "gb";
      lspBufAction = "type_definition";
    }
    {
      key = "gn";
      lspBufAction = "implementation";
    }
    {
      key = "K";
      lspBufAction = "hover";
    }
    # {
    #   action = ":Telescope lsp_definitions<cr>"; # TODO
    #   key = "<Leader>t";
    # }
    # {
    #   action = "<CMD>Lspsaga hover_doc<Enter>";
    #   key = "K";
    # }
    ];
  };
}
