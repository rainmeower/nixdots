{
  pkgs,
  ...
}:{
  nv.enable = true;
  # FIXME
  # nv.package = pkgs.neovim.overrideAttrs {
  #   cmakeFlags = [
  #     "-DCMAKE_C_FLAGS=-O3 -march=native -pipe"
  #     "-DCMAKE_CXX_FLAGS=-O3 -march=native -pipe"
  #   ];
  # };
}
