{
  description = "meow meow meow meow :3";

  inputs = { # {{{
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
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

    # firefox-nightly.url = "github:nix-community/flake-firefox-nightly";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # textfox.url = "github:adriankarlen/textfox";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    slippi.url = "github:lytedev/slippi-nix";
    # nuhxboard.url = "github:justDeeevin/NuhxBoard";
    pollymc.url = "github:fn2006/PollyMC";
    vicinae.url = "github:vicinaehq/vicinae";


    ytsub.url = "github:/sarowish/ytsub";

    # ags.url = "github:aylur/ags";
    # meow-shell.url = "github:nyxmeowmeow/shell";

    tmodloader.url = "github:andOrlando/nix-tmodloader";
  }; # }}}

  outputs = inputs @ {
    self, # TODO wtf is this
    nixpkgs,
    home-manager,
    nur,
    ...
  }: let
    username = "meow";
    flake_dir = "/home/${username}/nix";
    # flake_ns_path = builtins.toString ./.; # flake nix store path
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem { # {{{
        specialArgs = {
          inherit
            inputs
            home-manager
            username
            flake_dir
          ;
        };
        modules = [
          ./host/nixos/default.nix
          ./host/nixos/hm.nix

          {
            nixpkgs.overlays = import ./over/default.nix;
          }
          nur.modules.nixos.default
        ];
      }; # }}}

      laptop = nixpkgs.lib.nixosSystem { # {{{
        specialArgs = {
          inherit username flake_dir inputs;
        };
        modules = [

          ./host/laptop/default.nix
          ./host/laptop/hm.nix


          home-manager.nixosModules.home-manager
          # {
          #   nixpkgs.overlays = import ./over/default.nix;
          # }


        ];
      }; # }}}
    };
  };
}
