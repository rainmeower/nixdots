{
  pkgs,
  lib,
  ...
}:{
  # nixpkgs.overlays = [
  #   (final: prev: {
  #     clipse = prev.buildGoModule {
  #       pname = "clipse";
  #       version = "9.9.9";
  #
  #       src = prev.fetchFromGitHub {
  #         owner = "savedra1";
  #         repo = "clipse";
  #         rev = "ea4c0e1ca61881f5736ae18574dc64ed793df80f";
  #         hash = "sha256-b9D6fkdPe6Hh8VghasoHoe9eyQT7Y3mvdM+JEBbFnhI=";
  #       };
  #
  #       vendorHash = "sha256-0/Qf59+uiXwB/GbzBTzw3jSfSVcAtcHWzmlzbZZEtUY=";
  #
  #       meta = {
  #         description = "Configurable TUI clipboard manager for Unix ";
  #         homepage = "https://github.com/savedra1/clipse";
  #         license = lib.licenses.mit;
  #         maintainers = [ lib.maintainers.savedra1 ];
  #       };
  #     };
  #   })
  # ];
  #
  # environment.systemPackages = with pkgs; [
  #   clipse
  # ];
}
