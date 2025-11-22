(final: prev: {
  neovim = prev.neovim.overrideAttrs (old: {
    cmakeFlags = [
      "-DCMAKE_C_FLAGS=-O3 -march=native -pipe"
      "-DCMAKE_CXX_FLAGS=-O3 -march=native -pipe"
    ];
  });
})
