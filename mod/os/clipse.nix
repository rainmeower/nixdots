{
  pkgs,
  lib,
  ...
}:{
  nixpkgs.overlays = [
    (final: prev: {
      my-clipse = prev.buildGoModule {
        pname = "clipse";
        version = "9.9.9";

        src = prev.fetchFromGitHub {
          owner = "savedra1";
          repo = "clipse";
          rev = "ea4c0e1ca61881f5736ae18574dc64ed793df80f";
          hash = "";
        };

        vendorHash = "";

        meta = {
          description = "Configurable TUI clipboard manager for Unix ";
          homepage = "https://github.com/savedra1/clipse";
          license = lib.licenses.mit;
          maintainers = [ lib.maintainers.savedra1 ];
        };
      };
    })
  ];

  environment.systemPackages = with pkgs; [
    clipse
  ];
}
