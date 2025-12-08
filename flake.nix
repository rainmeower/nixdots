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
    # textfox.url = "github:adriankarlen/textfox";

    nixvim.url = "github:nix-community/nixvim";

    slippi = {
      url = "github:lytedev/slippi-nix";
      # https://github.com/lytedev/slippi-nix/issues/10
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # nuhxboard.url = "github:justDeeevin/NuhxBoard";
    # pollymc.url = "github:fn2006/PollyMC";
    vicinae.url = "github:vicinaehq/vicinae";

    # moonlight.url = "github:moonlight-mod/moonlight";

    ytsub.url = "github:/sarowish/ytsub";

    # ags.url = "github:aylur/ags";
    # meow-shell.url = "github:nyxmeowmeow/shell";

    tmodloader.url = "github:andOrlando/nix-tmodloader";
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
          # To use packages from nixpkgs-stable,
          # we configure some parameters for it first
          pkgs_stable = import nixpkgs_stable {
            inherit system;
            # To use Chrome, we need to allow the
            # installation of non-free software.
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
