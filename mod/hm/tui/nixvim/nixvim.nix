{
  pkgs,
  inputs,
  system,
  ...
}:{
  nv.enable = true;
  # FIXME
  # nv.package = inputs.neovim-nightly.packages."x86_64-linux".default.overrideAttrs {
  #   cmakeFlags = [
  #     "-DCMAKE_C_FLAGS=-O3 -march=native -pipe"
  #     "-DCMAKE_CXX_FLAGS=-O3 -march=native -pipe"
  #   ];
  # };
  # nv.package = pkgs.neovim.overrideAttrs {
  #   cmakeFlags = [
  #     "-DCMAKE_C_FLAGS=-O3 -march=native -pipe"
  #     "-DCMAKE_CXX_FLAGS=-O3 -march=native -pipe"
  #   ];
  # };
}
