{
  inputs = { # {{{
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs_stable.url = "github:nixos/nixpkgs/nixos-25.05";
    lix = {
      url = "https://git.lix.systems/lix-project/lix/archive/main.tar.gz";
      flake = false;
    };
    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/main.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.lix.follows = "lix";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-gaming.url = "github:fufexan/nix-gaming";
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    awww.url = "git+https://codeberg.org/LGFae/awww";

    niri.url = "github:sodiboo/niri-flake";
    mango = {
      url = "github:DreamMaoMao/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixcord.url = "github:kaylorben/nixcord";

    # firefox-nightly.url = "github:nix-community/flake-firefox-nightly";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    neovim-nightly = {
      url = "github:nix-community/neovim-nightly-overlay";
    };

    # tmodloader.url = "github:andOrlando/nix-tmodloader";
    slippi = {
      url = "github:lytedev/slippi-nix";
      # https://github.com/lytedev/slippi-nix/issues/10
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # vicinae.url = "github:vicinaehq/vicinae";

    ytsub.url = "github:/sarowish/ytsub";
    # zarumet = {
    #   url = "github:Immelancholy/zarumet";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  }; # }}}

  outputs = inputs @ {
    self,
    nixpkgs,
    nixpkgs_stable,
    home-manager,
    lix-module,
    nur,
    ...
  }: let
    username = "meow";
    # flake_dir = "/home/${username}/nix";
    flake_dir = "/home/${username}/nix";
    # flake_ns_path = builtins.toString ./.; # flake nix store path
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem rec { # {{{
        specialArgs = let  # TODO can i modify this inside modules
          system = "x86_64-linux";
        in {
          pkgs_stable = import nixpkgs_stable {
            inherit system;
            config.allowUnfree = true;
          };
          inherit
            self
            inputs
            home-manager
            username
            flake_dir
            specialArgs
          ;
        };
        modules = [
          ./host/nixos

          lix-module.nixosModules.default
          nur.modules.nixos.default
					{
						nixpkgs.overlays = import ./over;
					}
        ];
      }; # }}}

      laptop = nixpkgs.lib.nixosSystem { # {{{
        specialArgs = {
          inherit
            self
            inputs
            username
            flake_dir 
          ;
        };
        modules = [
          ./host/laptop
          lix-module.nixosModules.default
          # {
          #   nixpkgs.overlays = import ./over;
          # }
        ];
      }; # }}}
    };
  };
}
